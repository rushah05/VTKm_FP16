//============================================================================
//  Copyright (c) Kitware, Inc.
//  All rights reserved.
//  See LICENSE.txt for details.
//
//  This software is distributed WITHOUT ANY WARRANTY; without even
//  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
//  PURPOSE.  See the above copyright notice for more information.
//============================================================================

#include <vtkm/cont/DataSet.h>

namespace vtkm
{
namespace cont
{
void DataSet::Clear()
{
  this->CoordSystems.clear();
  this->CoordSystemsFP16.clear();
  this->Fields.clear();
  this->CellSet = this->CellSet.NewInstance();
}

vtkm::Id DataSet::GetNumberOfCells() const
{
  return this->CellSet.GetNumberOfCells();
}

vtkm::Id DataSet::GetNumberOfPoints() const
{
  if (this->CoordSystems.empty())
  {
    return 0;
  }
  return this->CoordSystems[0].GetNumberOfPoints();
}

vtkm::Id DataSet::GetNumberOfPointsFP16() const
{
  if (this->CoordSystemsFP16.empty())
  {
    return 0;
  }
  return this->CoordSystemsFP16[0].GetNumberOfPoints();
}

void DataSet::CopyStructure(const vtkm::cont::DataSet& source)
{
  this->CoordSystems = source.CoordSystems;
  this->CoordSystemsFP16 = source.CoordSystemsFP16;
  this->CellSet = source.CellSet;
}

const vtkm::cont::Field& DataSet::GetField(vtkm::Id index) const
{
  VTKM_ASSERT((index >= 0) && (index < this->GetNumberOfFields()));
  auto it = this->Fields.cbegin();
  std::advance(it, index);
  return it->second;
}

vtkm::cont::Field& DataSet::GetField(vtkm::Id index)
{
  VTKM_ASSERT((index >= 0) && (index < this->GetNumberOfFields()));
  auto it = this->Fields.begin();
  std::advance(it, index);
  return it->second;
}

vtkm::Id DataSet::GetFieldIndex(const std::string& name, vtkm::cont::Field::Association assoc) const
{
  bool found;
  vtkm::Id index = this->FindFieldIndex(name, assoc, found);
  if (found)
  {
    return index;
  }
  else
  {
    throw vtkm::cont::ErrorBadValue("No field with requested name: " + name);
  }
}

const vtkm::cont::CoordinateSystem& DataSet::GetCoordinateSystem(vtkm::Id index) const
{
  VTKM_ASSERT((index >= 0) && (index < this->GetNumberOfCoordinateSystems()));
  return this->CoordSystems[static_cast<std::size_t>(index)];
}

const vtkm::cont::CoordinateSystemFP16& DataSet::GetCoordinateSystemFP16(vtkm::Id index) const
{
  VTKM_ASSERT((index >= 0) && (index < this->GetNumberOfCoordinateSystemsFP16()));
  return this->CoordSystemsFP16[static_cast<std::size_t>(index)];
}


vtkm::cont::CoordinateSystem& DataSet::GetCoordinateSystem(vtkm::Id index)
{
  VTKM_ASSERT((index >= 0) && (index < this->GetNumberOfCoordinateSystems()));
  return this->CoordSystems[static_cast<std::size_t>(index)];
}

vtkm::cont::CoordinateSystemFP16& DataSet::GetCoordinateSystemFP16(vtkm::Id index)
{
  VTKM_ASSERT((index >= 0) && (index < this->GetNumberOfCoordinateSystemsFP16()));
  return this->CoordSystemsFP16[static_cast<std::size_t>(index)];
}

vtkm::Id DataSet::GetCoordinateSystemIndex(const std::string& name) const
{
  vtkm::Id index = -1;
  for (auto i = this->CoordSystems.begin(); i != this->CoordSystems.end(); ++i)
  {
    if (i->GetName() == name)
    {
      index = static_cast<vtkm::Id>(std::distance(this->CoordSystems.begin(), i));
      break;
    }
  }
  return index;
}

vtkm::Id DataSet::GetCoordinateSystemIndexFP16(const std::string& name) const
{
  vtkm::Id index = -1;
  for (auto i = this->CoordSystemsFP16.begin(); i != this->CoordSystemsFP16.end(); ++i)
  {
    if (i->GetName() == name)
    {
      index = static_cast<vtkm::Id>(std::distance(this->CoordSystemsFP16.begin(), i));
      break;
    }
  }
  return index;
}


const vtkm::cont::CoordinateSystem& DataSet::GetCoordinateSystem(const std::string& name) const
{
  vtkm::Id index = this->GetCoordinateSystemIndex(name);
  if (index < 0)
  {
    std::string error_message("No coordinate system with the name " + name +
                              " valid names are: \n");
    for (const auto& cs : this->CoordSystems)
    {
      error_message += cs.GetName() + "\n";
    }
    throw vtkm::cont::ErrorBadValue(error_message);
  }
  return this->GetCoordinateSystem(index);
}

const vtkm::cont::CoordinateSystemFP16& DataSet::GetCoordinateSystemFP16(const std::string& name) const
{
  vtkm::Id index = this->GetCoordinateSystemIndexFP16(name);
  if (index < 0)
  {
    std::string error_message("No coordinate system with the name " + name +
                              " valid names are: \n");
    for (const auto& cs : this->CoordSystemsFP16)
    {
      error_message += cs.GetName() + "\n";
    }
    throw vtkm::cont::ErrorBadValue(error_message);
  }
  return this->GetCoordinateSystemFP16(index);
}

vtkm::cont::CoordinateSystem& DataSet::GetCoordinateSystem(const std::string& name)
{
  vtkm::Id index = this->GetCoordinateSystemIndex(name);
  if (index < 0)
  {
    std::string error_message("No coordinate system with the name " + name +
                              " valid names are: \n");
    for (const auto& cs : this->CoordSystems)
    {
      error_message += cs.GetName() + "\n";
    }
    throw vtkm::cont::ErrorBadValue(error_message);
  }
  return this->GetCoordinateSystem(index);
}

vtkm::cont::CoordinateSystemFP16& DataSet::GetCoordinateSystemFP16(const std::string& name)
{
  vtkm::Id index = this->GetCoordinateSystemIndexFP16(name);
  if (index < 0)
  {
    std::string error_message("No coordinate system with the name " + name +
                              " valid names are: \n");
    for (const auto& cs : this->CoordSystemsFP16)
    {
      error_message += cs.GetName() + "\n";
    }
    throw vtkm::cont::ErrorBadValue(error_message);
  }
  return this->GetCoordinateSystemFP16(index);
}

void DataSet::PrintSummary(std::ostream& out) const
{
  out << "DataSet:\n";
  out << "  CoordSystems[" << this->CoordSystems.size() << "]\n";
  for (std::size_t index = 0; index < this->CoordSystems.size(); index++)
  {
    this->CoordSystems[index].PrintSummary(out);
  }

  out << "  CellSet \n";
  this->GetCellSet().PrintSummary(out);

  out << "  Fields[" << this->GetNumberOfFields() << "]\n";
  for (vtkm::Id index = 0; index < this->GetNumberOfFields(); index++)
  {
    this->GetField(index).PrintSummary(out);
  }

  out.flush();
}

void DataSet::PrintSummaryFP16(std::ostream& out) const
{
  out << "DataSet:\n";
  out << "  CoordSystemsFP16[" << this->CoordSystemsFP16.size() << "]\n";
  for (std::size_t index = 0; index < this->CoordSystemsFP16.size(); index++)
  {
    this->CoordSystemsFP16[index].PrintSummary(out);
  }

  out << "  CellSet \n";
  this->GetCellSet().PrintSummary(out);

  out << "  Fields[" << this->GetNumberOfFields() << "]\n";
  for (vtkm::Id index = 0; index < this->GetNumberOfFields(); index++)
  {
    this->GetField(index).PrintSummary(out);
  }

  out.flush();
}

vtkm::Id DataSet::FindFieldIndex(const std::string& name,
                                 vtkm::cont::Field::Association association,
                                 bool& found) const
{
  const auto it = this->Fields.find({ name, association });
  if (it != this->Fields.end())
  {
    found = true;
    return static_cast<vtkm::Id>(std::distance(this->Fields.begin(), it));
  }

  found = false;
  return -1;
}

VTKM_CONT void DataSet::AddField(const Field& field)
{
  // map::insert will not replace the duplicated element
  this->Fields[{ field.GetName(), field.GetAssociation() }] = field;
}

} // namespace cont
} // namespace vtkm
