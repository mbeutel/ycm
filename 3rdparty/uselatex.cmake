#=============================================================================
# Copyright 2013-2019 Istituto Italiano di Tecnologia (IIT)
#   Authors: Daniele E. Domenichelli <daniele.domenichelli@iit.it>
#
# Distributed under the OSI-approved BSD License (the "License");
# see accompanying file Copyright.txt for details.
#
# This software is distributed WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the License for more information.
#=============================================================================
# (To distribute this file outside of YCM, substitute the full
#  License text for the above reference.)


##############################################################################
# UseLATEX.cmake is taken from the UseLATEX repository

set(_files UseLATEX.cmake f0f49b4029a872b41a7247c2b1e1dd3ddb14c607)
set(_ref 56d5753c842ab327fb3f297c6bcbd51622ffbe9c)
set(_dir "${CMAKE_CURRENT_BINARY_DIR}/uselatex")

_ycm_download(3rdparty-uselatex
              "UseLATEX git repository"
              "https://gitlab.kitware.com/kmorel/UseLATEX/raw/<REF>/<FILE>"
              ${_ref} "${_dir}" "${_files}")

file(WRITE "${_dir}/README.UseLATEX"
"Some of the files in this folder and its subfolder come from the UseLATEX git
repository (ref ${_ref}):

  https://gitlab.kitware.com/kmorel/UseLATEX/

Redistribution and use is allowed according to the terms of the 3-clause
BSD license. See accompanying file COPYING.UseLATEX for details.
")

file(WRITE "${_dir}/COPYING.UseLATEX"
"This software is released under the BSD 3-Clause License.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
contributors may be used to endorse or promote products derived from this
software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS
IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
")

_ycm_install(3rdparty-vtk FILES "${_dir}/UseLATEX.cmake"
                          DESTINATION "${YCM_INSTALL_MODULE_DIR}/3rdparty")

_ycm_install(3rdparty-vtk FILES "${_dir}/COPYING.UseLATEX"
                          DESTINATION "${YCM_INSTALL_MODULE_DIR}/3rdparty")

_ycm_install(3rdparty-vtk FILES "${_dir}/README.UseLATEX"
                          DESTINATION "${YCM_INSTALL_MODULE_DIR}/3rdparty")
