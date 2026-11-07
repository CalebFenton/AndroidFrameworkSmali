.class public interface abstract Landroid/system/virtualmachine/VirtualMachineCallback;
.super Ljava/lang/Object;
.source "VirtualMachineCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualmachine/VirtualMachineCallback$StopReason;,
        Landroid/system/virtualmachine/VirtualMachineCallback$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_PAYLOAD_CHANGED:I = 0x2

.field public static final whitelist ERROR_PAYLOAD_INVALID_CONFIG:I = 0x3

.field public static final whitelist ERROR_PAYLOAD_VERIFICATION_FAILED:I = 0x1

.field public static final whitelist ERROR_UNKNOWN:I = 0x0

.field public static final whitelist STOP_REASON_BOOTLOADER_INSTANCE_IMAGE_CHANGED:I = 0xa

.field public static final whitelist STOP_REASON_BOOTLOADER_PUBLIC_KEY_MISMATCH:I = 0x9

.field public static final whitelist STOP_REASON_CRASH:I = 0x6

.field public static final whitelist STOP_REASON_HANGUP:I = 0x10

.field public static final whitelist STOP_REASON_INFRASTRUCTURE_ERROR:I = 0x0

.field public static final whitelist STOP_REASON_KILLED:I = 0x1

.field public static final whitelist STOP_REASON_MICRODROID_FAILED_TO_CONNECT_TO_VIRTUALIZATION_SERVICE:I = 0xb

.field public static final whitelist STOP_REASON_MICRODROID_INVALID_PAYLOAD_CONFIG:I = 0xe

.field public static final whitelist STOP_REASON_MICRODROID_PAYLOAD_HAS_CHANGED:I = 0xc

.field public static final whitelist STOP_REASON_MICRODROID_PAYLOAD_VERIFICATION_FAILED:I = 0xd

.field public static final whitelist STOP_REASON_MICRODROID_UNKNOWN_RUNTIME_ERROR:I = 0xf

.field public static final whitelist STOP_REASON_PVM_FIRMWARE_INSTANCE_IMAGE_CHANGED:I = 0x8

.field public static final whitelist STOP_REASON_PVM_FIRMWARE_PUBLIC_KEY_MISMATCH:I = 0x7

.field public static final whitelist STOP_REASON_REBOOT:I = 0x5

.field public static final whitelist STOP_REASON_SHUTDOWN:I = 0x3

.field public static final whitelist STOP_REASON_START_FAILED:I = 0x4

.field public static final whitelist STOP_REASON_UNKNOWN:I = 0x2

.field public static final whitelist STOP_REASON_VIRTUALIZATION_SERVICE_DIED:I = -0x1


# virtual methods
.method public abstract whitelist onError(Landroid/system/virtualmachine/VirtualMachine;ILjava/lang/String;)V
.end method

.method public abstract whitelist onPayloadFinished(Landroid/system/virtualmachine/VirtualMachine;I)V
.end method

.method public abstract whitelist onPayloadReady(Landroid/system/virtualmachine/VirtualMachine;)V
.end method

.method public abstract whitelist onPayloadStarted(Landroid/system/virtualmachine/VirtualMachine;)V
.end method

.method public abstract whitelist onStopped(Landroid/system/virtualmachine/VirtualMachine;I)V
.end method
