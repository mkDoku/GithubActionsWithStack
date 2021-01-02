{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_GithubActionWithStack (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/bubeck/Documents/Programming/wwwHome/GithubActionsWithStack/.stack-work/install/x86_64-linux-tinfo6/5bdc3453b8bd2d9fa4573c8fb52ee98ca286884e68daf2abb6ce355283508b6c/8.8.3/bin"
libdir     = "/home/bubeck/Documents/Programming/wwwHome/GithubActionsWithStack/.stack-work/install/x86_64-linux-tinfo6/5bdc3453b8bd2d9fa4573c8fb52ee98ca286884e68daf2abb6ce355283508b6c/8.8.3/lib/x86_64-linux-ghc-8.8.3/GithubActionWithStack-0.1.0.0-7JtR00E1IGuIDj3Zz2Z4Zw-test"
dynlibdir  = "/home/bubeck/Documents/Programming/wwwHome/GithubActionsWithStack/.stack-work/install/x86_64-linux-tinfo6/5bdc3453b8bd2d9fa4573c8fb52ee98ca286884e68daf2abb6ce355283508b6c/8.8.3/lib/x86_64-linux-ghc-8.8.3"
datadir    = "/home/bubeck/Documents/Programming/wwwHome/GithubActionsWithStack/.stack-work/install/x86_64-linux-tinfo6/5bdc3453b8bd2d9fa4573c8fb52ee98ca286884e68daf2abb6ce355283508b6c/8.8.3/share/x86_64-linux-ghc-8.8.3/GithubActionWithStack-0.1.0.0"
libexecdir = "/home/bubeck/Documents/Programming/wwwHome/GithubActionsWithStack/.stack-work/install/x86_64-linux-tinfo6/5bdc3453b8bd2d9fa4573c8fb52ee98ca286884e68daf2abb6ce355283508b6c/8.8.3/libexec/x86_64-linux-ghc-8.8.3/GithubActionWithStack-0.1.0.0"
sysconfdir = "/home/bubeck/Documents/Programming/wwwHome/GithubActionsWithStack/.stack-work/install/x86_64-linux-tinfo6/5bdc3453b8bd2d9fa4573c8fb52ee98ca286884e68daf2abb6ce355283508b6c/8.8.3/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "GithubActionWithStack_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "GithubActionWithStack_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "GithubActionWithStack_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "GithubActionWithStack_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "GithubActionWithStack_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "GithubActionWithStack_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
