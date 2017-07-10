
[Defines]
    DSC_SPECIFICATION           = 0x00010016
    PLATFORM_NAME               = Application
    PLATFORM_GUID               = 10AAF82F-A92A-4FD7-832F-F9D4411F7EBB
    PLATFORM_VERSION            = 0.00
    SKUID_IDENTIFIER            = DEFAULT
    SUPPORTED_ARCHITECTURES     = X64
    BUILD_TARGETS               = DEBUG|RELEASE
    OUTPUT_DIRECTORY            = Build/Application

[Libraries]

[LibraryClasses]
    ## MdePkg - Entry point
    UefiApplicationEntryPoint|MdePkg/Library/UefiApplicationEntryPoint/UefiApplicationEntryPoint.inf

    ## MdePkg - Basic
    BaseLib|MdePkg/Library/BaseLib/BaseLib.inf
    BaseMemoryLib|MdePkg/Library/BaseMemoryLib/BaseMemoryLib.inf
    PrintLib|MdePkg/Library/BasePrintLib/BasePrintLib.inf
    IoLib|MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic.inf
    PciLib|MdePkg/Library/BasePciLibCf8/BasePciLibCf8.inf
    PciCf8Lib|MdePkg/Library/BasePciCf8Lib/BasePciCf8Lib.inf

    ## MdePkg - UEFI & PI
    UefiBootServicesTableLib|MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib.inf
    UefiRuntimeServicesTableLib|MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib.inf
    UefiRuntimeLib|MdePkg/Library/UefiRuntimeLib/UefiRuntimeLib.inf
    UefiLib|MdePkg/Library/UefiLib/UefiLib.inf
    DevicePathLib|MdePkg/Library/UefiDevicePathLib/UefiDevicePathLib.inf

    ## MdePkg - Generic Modules
    PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf

    ## MdePkg - Misc
    DebugPrintErrorLevelLib|MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib.inf

[LibraryClasses.common.UEFI_APPLICATION]
    MemoryAllocationLib|MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf
    DebugLib|MdePkg/Library/UefiDebugLibConOut/UefiDebugLibConOut.inf

[Components]
    ApplicationPkg/Application/Main/Main.inf

[BuildOptions]
