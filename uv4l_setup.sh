# Copyright (c) 2018 by UBTECH.
# All Rights Reserved.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

#!/usr/bin/env bash


function uv4l_setup() {
  # Install the packages for uv4l
  local uv4l_isinstalled=`grep uv4l_repo /etc/apt/sources.list -rn | wc -l`

  if [ $uv4l_isinstalled -eq 0 ];
  then
    echo "deb http://www.linux-projects.org/listing/uv4l_repo/raspbian/stretch stretch main" >> /etc/apt/sources.list
  fi
}
