// -*- C++ -*-
/**
 * Code generated by the The ACE ORB (TAO) IDL Compiler v2.5.21
 * TAO and the TAO IDL Compiler have been developed by:
 *       Center for Distributed Object Computing
 *       Washington University
 *       St. Louis, MO
 *       USA
 * and
 *       Distributed Object Computing Laboratory
 *       University of California at Irvine
 *       Irvine, CA
 *       USA
 * and
 *       Institute for Software Integrated Systems
 *       Vanderbilt University
 *       Nashville, TN
 *       USA
 *       https://www.isis.vanderbilt.edu/
 *
 * Information about TAO is available at:
 *     https://www.dre.vanderbilt.edu/~schmidt/TAO.html
 **/

// TAO_IDL - Generated from
// C:\OpenDDS-3.29.1\ace_wrappers\tao\TAO_IDL\be\be_codegen.cpp:454

#ifndef _TAO_IDL_C__DEV_OPENDDS_STANDALONE_ISOLATEDENV_IDL_PERSON__PERSONS_29TKWG_H_
#define _TAO_IDL_C__DEV_OPENDDS_STANDALONE_ISOLATEDENV_IDL_PERSON__PERSONS_29TKWG_H_


#include "PersonC.h"
#include "tao/PortableServer/Basic_SArguments.h"
#include "tao/PortableServer/Special_Basic_SArguments.h"
#include "tao/PortableServer/Fixed_Size_SArgument_T.h"
#include "tao/PortableServer/Var_Size_SArgument_T.h"
#include "tao/PortableServer/UB_String_SArguments.h"

#if !defined (ACE_LACKS_PRAGMA_ONCE)
# pragma once
#endif /* ACE_LACKS_PRAGMA_ONCE */

// TAO_IDL - Generated from
// C:\OpenDDS-3.29.1\ace_wrappers\tao\TAO_IDL\be\be_visitor_arg_traits.cpp:64



TAO_BEGIN_VERSIONED_NAMESPACE_DECL


// Arg traits specializations.
namespace TAO
{
  // TAO_IDL - Generated from
  // C:\OpenDDS-3.29.1\ace_wrappers\tao\TAO_IDL\be\be_visitor_arg_traits.cpp:932

  

  template<>
  class SArg_Traits< ::Identity::Person>
    : public
        Var_Size_SArg_Traits_T<
            ::Identity::Person,
            TAO::Any_Insert_Policy_Stream
          >
  {
  };
}

TAO_END_VERSIONED_NAMESPACE_DECL


// TAO_IDL - Generated from
// C:\OpenDDS-3.29.1\ace_wrappers\tao\TAO_IDL\be\be_visitor_module\module_sh.cpp:34

namespace POA_Identity
{
  


// TAO_IDL - Generated from
// C:\OpenDDS-3.29.1\ace_wrappers\tao\TAO_IDL\be\be_visitor_module\module_sh.cpp:65

} // module Identity

#endif /* ifndef */

