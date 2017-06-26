
// MdePkg
#include <Uefi/UefiBaseType.h>
#include <Library/UefiApplicationEntryPoint.h>
#include <Library/UefiLib.h>
#include <Library/IoLib.h>
#include <Library/PciLib.h>

EFI_STATUS EFIAPI UefiMain(IN EFI_HANDLE ImageHandle, IN EFI_SYSTEM_TABLE *SystemTable) {
    EFI_STATUS Status  = EFI_SUCCESS;
    UINT32 VidDid = 0;
    Print(L"Hello World!\n");
    IoWrite8(0x0080, 0x88);
    VidDid = MmioRead32(0x80000000);
    Print(L"Read memory address 0x80000000 = 0x%08x\n", VidDid);
    VidDid = PciRead32(PCI_LIB_ADDRESS(0x00, 0x00, 0x00, 0x00));
    Print(L"Read PCI Bus 0x00 Device 0x00 Function 0x00 Reg 0x00 = 0x%08x\n", VidDid);
    return Status;
}

