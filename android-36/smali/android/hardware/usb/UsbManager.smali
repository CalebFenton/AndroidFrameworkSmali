.class public Landroid/hardware/usb/UsbManager;
.super Ljava/lang/Object;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbManager$AccessoryHandle;,
        Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;,
        Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;,
        Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;,
        Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;,
        Landroid/hardware/usb/UsbManager$UsbHalVersion;,
        Landroid/hardware/usb/UsbManager$UsbGadgetHalVersion;,
        Landroid/hardware/usb/UsbManager$UsbFunctionMode;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_USB_ACCESSORY_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

.field public static final whitelist ACTION_USB_ACCESSORY_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

.field public static final whitelist ACTION_USB_ACCESSORY_HANDSHAKE:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_HANDSHAKE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_USB_DEVICE_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_ATTACHED"

.field public static final whitelist ACTION_USB_DEVICE_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_DETACHED"

.field public static final whitelist ACTION_USB_PORT_CHANGED:Ljava/lang/String; = "android.hardware.usb.action.USB_PORT_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_USB_PORT_COMPLIANCE_CHANGED:Ljava/lang/String; = "android.hardware.usb.action.USB_PORT_COMPLIANCE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_USB_STATE:Ljava/lang/String; = "android.hardware.usb.action.USB_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final whitelist EXTRA_ACCESSORY_HANDSHAKE_END:Ljava/lang/String; = "android.hardware.usb.extra.ACCESSORY_HANDSHAKE_END"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ACCESSORY_START:Ljava/lang/String; = "android.hardware.usb.extra.ACCESSORY_START"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ACCESSORY_STRING_COUNT:Ljava/lang/String; = "android.hardware.usb.extra.ACCESSORY_STRING_COUNT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ACCESSORY_UEVENT_TIME:Ljava/lang/String; = "android.hardware.usb.extra.ACCESSORY_UEVENT_TIME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_CAN_BE_DEFAULT:Ljava/lang/String; = "android.hardware.usb.extra.CAN_BE_DEFAULT"

.field public static final whitelist EXTRA_DEVICE:Ljava/lang/String; = "device"

.field public static final blacklist EXTRA_PACKAGE:Ljava/lang/String; = "android.hardware.usb.extra.PACKAGE"

.field public static final whitelist EXTRA_PERMISSION_GRANTED:Ljava/lang/String; = "permission"

.field public static final greylist-max-o EXTRA_PORT:Ljava/lang/String; = "port"

.field public static final greylist-max-o EXTRA_PORT_STATUS:Ljava/lang/String; = "portStatus"

.field public static final whitelist FUNCTION_ACCESSORY:J = 0x2L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_ADB:J = 0x1L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_AUDIO_SOURCE:J = 0x40L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_MIDI:J = 0x8L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_MTP:J = 0x4L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o FUNCTION_NAME_TO_CODE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FUNCTION_NCM:J = 0x400L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_NONE:J = 0x0L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_PTP:J = 0x10L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_RNDIS:J = 0x20L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_UVC:J = 0x80L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist GADGET_HAL_NOT_SUPPORTED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist GADGET_HAL_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final blacklist GADGET_HAL_V1_0:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist GADGET_HAL_V1_1:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist GADGET_HAL_V1_2:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist GADGET_HAL_V2_0:I = 0x14
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist GADGET_HAL_VERSION_1_0:Ljava/lang/String; = "V1_0"

.field public static final blacklist GADGET_HAL_VERSION_1_1:Ljava/lang/String; = "V1_1"

.field public static final blacklist GADGET_HAL_VERSION_1_2:Ljava/lang/String; = "V1_2"

.field public static final blacklist GADGET_HAL_VERSION_2_0:Ljava/lang/String; = "V2_0"

.field private static final greylist-max-o SETTABLE_FUNCTIONS:J = 0x4bcL

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UsbManager"

.field public static final whitelist USB_CONFIGURED:Ljava/lang/String; = "configured"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_CONNECTED:Ljava/lang/String; = "connected"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_10G:I = 0x2800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_20G:I = 0x5000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_40G:I = 0xa000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_5G:I = 0x1400
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_FULL_SPEED:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_HIGH_SPEED:I = 0x1e0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_LOW_SPEED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-r USB_DATA_UNLOCKED:Ljava/lang/String; = "unlocked"

.field public static final greylist-max-o USB_FUNCTION_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final greylist-max-o USB_FUNCTION_ADB:Ljava/lang/String; = "adb"

.field public static final greylist-max-o USB_FUNCTION_AUDIO_SOURCE:Ljava/lang/String; = "audio_source"

.field public static final greylist-max-o USB_FUNCTION_MIDI:Ljava/lang/String; = "midi"

.field public static final greylist-max-o USB_FUNCTION_MTP:Ljava/lang/String; = "mtp"

.field public static final whitelist USB_FUNCTION_NCM:Ljava/lang/String; = "ncm"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist USB_FUNCTION_NONE:Ljava/lang/String; = "none"

.field public static final greylist-max-o USB_FUNCTION_PTP:Ljava/lang/String; = "ptp"

.field public static final whitelist USB_FUNCTION_RNDIS:Ljava/lang/String; = "rndis"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USB_FUNCTION_UVC:Ljava/lang/String; = "uvc"

.field public static final blacklist USB_HAL_NOT_SUPPORTED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist USB_HAL_RETRY:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist USB_HAL_V1_0:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist USB_HAL_V1_1:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist USB_HAL_V1_2:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist USB_HAL_V1_3:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist USB_HAL_V2_0:I = 0x14
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o USB_HOST_CONNECTED:Ljava/lang/String; = "host_connected"

.field private static final blacklist sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private blacklist mAccessoryHandleMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/hardware/usb/UsbManager$AccessoryHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAccessoryHandleMapLock:Ljava/lang/Object;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mDisplayPortListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayPortListenersLock:Ljava/lang/Object;

.field private blacklist mDisplayPortServiceListener:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;

.field private final greylist-max-o mService:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayPortListeners(Landroid/hardware/usb/UsbManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayPortListenersLock(Landroid/hardware/usb/UsbManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcloseHandleForAccessory(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/usb/UsbManager;->closeHandleForAccessory(Landroid/hardware/usb/UsbAccessory;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 728
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    .line 733
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 736
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mtp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ptp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "rndis"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "midi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "accessory"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "audio_source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "adb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x400

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ncm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x80

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "uvc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/usb/IUsbManager;

    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListenersLock:Ljava/lang/Object;

    .line 1051
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMapLock:Ljava/lang/Object;

    .line 1061
    iput-object p1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    .line 1062
    iput-object p2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    .line 1063
    return-void
.end method

.method public static greylist-max-o areSettableFunctions(J)Z
    .registers 8
    .param p0, "functions"    # J

    .line 2082
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    const-wide/16 v4, -0x4bd

    and-long/2addr v4, p0

    cmp-long v0, v4, v0

    if-nez v0, :cond_1b

    .line 2084
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    if-eq v0, v3, :cond_1d

    const-wide/16 v0, 0x420

    cmp-long v0, p0, v0

    if-nez v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    nop

    .line 2082
    :goto_1e
    return v3
.end method

.method private blacklist closeHandleForAccessory(Landroid/hardware/usb/UsbAccessory;Z)V
    .registers 7
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "closingInputStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 896
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 897
    :try_start_3
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager$AccessoryHandle;

    .line 899
    .local v1, "currentHandle":Landroid/hardware/usb/UsbManager$AccessoryHandle;
    if-eqz v1, :cond_2b

    .line 904
    invoke-direct {p0, p2, v1}, Landroid/hardware/usb/UsbManager;->getModifiedHandleForClosingStream(ZLandroid/hardware/usb/UsbManager$AccessoryHandle;)Landroid/hardware/usb/UsbManager$AccessoryHandle;

    move-result-object v2

    .line 906
    .local v2, "modifiedHandle":Landroid/hardware/usb/UsbManager$AccessoryHandle;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isOpen()Z

    move-result v3

    if-nez v3, :cond_24

    .line 908
    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 909
    iget-object v3, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 911
    :cond_24
    iget-object v3, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    .end local v1    # "currentHandle":Landroid/hardware/usb/UsbManager$AccessoryHandle;
    .end local v2    # "modifiedHandle":Landroid/hardware/usb/UsbManager$AccessoryHandle;
    :goto_29
    monitor-exit v0

    .line 914
    return-void

    .line 900
    .restart local v1    # "currentHandle":Landroid/hardware/usb/UsbManager$AccessoryHandle;
    :cond_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No handle has been initialised for this accessory!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/usb/UsbManager;
    .end local p1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local p2    # "closingInputStream":Z
    throw v2

    .line 913
    .end local v1    # "currentHandle":Landroid/hardware/usb/UsbManager$AccessoryHandle;
    .restart local p0    # "this":Landroid/hardware/usb/UsbManager;
    .restart local p1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .restart local p2    # "closingInputStream":Z
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method private blacklist getModifiedHandleForClosingStream(ZLandroid/hardware/usb/UsbManager$AccessoryHandle;)Landroid/hardware/usb/UsbManager$AccessoryHandle;
    .registers 7
    .param p1, "closingInputStream"    # Z
    .param p2, "currentHandle"    # Landroid/hardware/usb/UsbManager$AccessoryHandle;

    .line 918
    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isInputStreamOpened()Z

    move-result v0

    if-nez v0, :cond_11

    if-nez p1, :cond_9

    goto :goto_11

    .line 919
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to close an input stream that has not been opened for this accessory!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_11
    :goto_11
    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isOutputStreamOpened()Z

    move-result v0

    if-nez v0, :cond_22

    if-eqz p1, :cond_1a

    goto :goto_22

    .line 925
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to close an output stream that has not been opened for this accessory!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_22
    :goto_22
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2e

    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isInputStreamOpened()Z

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v0

    goto :goto_2f

    :cond_2e
    move v2, v1

    .line 931
    .local v2, "isInputStreamOpened":Z
    :goto_2f
    if-eqz p1, :cond_38

    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isOutputStreamOpened()Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 933
    .local v0, "isOutputStreamOpened":Z
    :goto_39
    new-instance v1, Landroid/hardware/usb/UsbManager$AccessoryHandle;

    .line 934
    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Landroid/hardware/usb/UsbManager$AccessoryHandle;-><init>(Landroid/os/ParcelFileDescriptor;ZZ)V

    .line 933
    return-object v1
.end method

.method private blacklist getModifiedHandleForOpeningStream(ZLandroid/hardware/usb/UsbManager$AccessoryHandle;)Landroid/hardware/usb/UsbManager$AccessoryHandle;
    .registers 7
    .param p1, "openingInputStream"    # Z
    .param p2, "currentHandle"    # Landroid/hardware/usb/UsbManager$AccessoryHandle;

    .line 873
    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isInputStreamOpened()Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p1, :cond_9

    goto :goto_11

    .line 874
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input stream already open for this accessory! Please close the existing input stream before opening a new one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_11
    :goto_11
    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isOutputStreamOpened()Z

    move-result v0

    if-eqz v0, :cond_22

    if-eqz p1, :cond_1a

    goto :goto_22

    .line 879
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Output stream already open for this accessory! Please close the existing output stream before opening a new one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_22
    :goto_22
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2f

    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isInputStreamOpened()Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_2f

    :cond_2d
    move v2, v0

    goto :goto_30

    :cond_2f
    :goto_2f
    move v2, v1

    .line 884
    .local v2, "isInputStreamOpened":Z
    :goto_30
    if-eqz p1, :cond_38

    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isOutputStreamOpened()Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_38
    move v0, v1

    .line 886
    .local v0, "isOutputStreamOpened":Z
    :cond_39
    new-instance v1, Landroid/hardware/usb/UsbManager$AccessoryHandle;

    .line 887
    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Landroid/hardware/usb/UsbManager$AccessoryHandle;-><init>(Landroid/os/ParcelFileDescriptor;ZZ)V

    .line 886
    return-object v1
.end method

.method private blacklist isPortDisabled(Landroid/hardware/usb/UsbPort;)Z
    .registers 4
    .param p1, "usbPort"    # Landroid/hardware/usb/UsbPort;

    .line 1714
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbManager;->getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v0

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static whitelist isUvcSupportEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1674
    const-string v0, "ro.usb.uvc.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist openHandleForAccessory(Landroid/hardware/usb/UsbAccessory;Z)Landroid/hardware/usb/UsbManager$AccessoryHandle;
    .registers 7
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "openingInputStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 840
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 841
    :try_start_3
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    if-nez v1, :cond_e

    .line 842
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    .line 846
    :cond_e
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 848
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 849
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/hardware/usb/UsbManager$AccessoryHandle;

    if-nez p2, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    invoke-direct {v2, v1, p2, v3}, Landroid/hardware/usb/UsbManager$AccessoryHandle;-><init>(Landroid/os/ParcelFileDescriptor;ZZ)V

    .line 851
    .local v2, "newHandle":Landroid/hardware/usb/UsbManager$AccessoryHandle;
    iget-object v3, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    monitor-exit v0

    return-object v2

    .line 857
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "newHandle":Landroid/hardware/usb/UsbManager$AccessoryHandle;
    :cond_2d
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager$AccessoryHandle;

    .line 858
    .local v1, "currentHandle":Landroid/hardware/usb/UsbManager$AccessoryHandle;
    if-eqz v1, :cond_42

    .line 862
    invoke-direct {p0, p2, v1}, Landroid/hardware/usb/UsbManager;->getModifiedHandleForOpeningStream(ZLandroid/hardware/usb/UsbManager$AccessoryHandle;)Landroid/hardware/usb/UsbManager$AccessoryHandle;

    move-result-object v2

    .line 865
    .local v2, "modifiedHandle":Landroid/hardware/usb/UsbManager$AccessoryHandle;
    iget-object v3, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    monitor-exit v0

    return-object v2

    .line 859
    .end local v2    # "modifiedHandle":Landroid/hardware/usb/UsbManager$AccessoryHandle;
    :cond_42
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Accessory doesn\'t have an associated handle yet!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/usb/UsbManager;
    .end local p1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local p2    # "openingInputStream":Z
    throw v2

    .line 868
    .end local v1    # "currentHandle":Landroid/hardware/usb/UsbManager$AccessoryHandle;
    .restart local p0    # "this":Landroid/hardware/usb/UsbManager;
    .restart local p1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .restart local p2    # "openingInputStream":Z
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private blacklist registerDisplayPortAltModeEventsIfNeededLocked()Z
    .registers 4

    .line 1950
    new-instance v0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbManager-IA;)V

    .line 1953
    .local v0, "displayPortDispatchingListener":Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;
    :try_start_6
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, v0}, Landroid/hardware/usb/IUsbManager;->registerForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1954
    iput-object v0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortServiceListener:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_14

    .line 1955
    const/4 v1, 0x1

    return v1

    .line 1957
    :cond_12
    const/4 v1, 0x0

    return v1

    .line 1958
    :catch_14
    move-exception v1

    .line 1959
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist setUsbDataSignal(Ljava/util/List;ZZ)Z
    .registers 9
    .param p2, "disable"    # Z
    .param p3, "revertOnFailure"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbPort;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1697
    .local p1, "usbPorts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/usb/UsbPort;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1698
    .local v0, "changedPorts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/usb/UsbPort;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 1699
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbPort;

    .line 1700
    .local v2, "port":Landroid/hardware/usb/UsbPort;
    invoke-direct {p0, v2}, Landroid/hardware/usb/UsbManager;->isPortDisabled(Landroid/hardware/usb/UsbPort;)Z

    move-result v3

    if-eq v3, p2, :cond_4e

    .line 1701
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1702
    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbPort;->enableUsbData(Z)I

    move-result v3

    if-eqz v3, :cond_4e

    if-eqz p3, :cond_4e

    .line 1704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set usb data signal for portID("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UsbManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    xor-int/lit8 v3, p2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Landroid/hardware/usb/UsbManager;->setUsbDataSignal(Ljava/util/List;ZZ)Z

    .line 1706
    return v4

    .line 1698
    .end local v2    # "port":Landroid/hardware/usb/UsbPort;
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1710
    .end local v1    # "i":I
    :cond_51
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist unregisterDisplayPortAltModeEventsLocked()V
    .registers 4

    .line 2012
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortServiceListener:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;

    if-eqz v0, :cond_1a

    .line 2014
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortServiceListener:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;

    invoke-interface {v1, v2}, Landroid/hardware/usb/IUsbManager;->unregisterForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_11
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    .line 2020
    iput-object v0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortServiceListener:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;

    .line 2021
    goto :goto_1a

    .line 2020
    :catchall_f
    move-exception v1

    goto :goto_17

    .line 2015
    :catch_11
    move-exception v1

    .line 2016
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_12
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/usb/UsbManager;
    throw v2
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    .line 2020
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/usb/UsbManager;
    :goto_17
    iput-object v0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortServiceListener:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;

    .line 2021
    throw v1

    .line 2023
    :cond_1a
    :goto_1a
    return-void
.end method

.method public static greylist-max-o usbFunctionsFromString(Ljava/lang/String;)J
    .registers 9
    .param p0, "functions"    # Ljava/lang/String;

    .line 2135
    if-eqz p0, :cond_52

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_52

    .line 2138
    :cond_b
    const-wide/16 v0, 0x0

    .line 2139
    .local v0, "ret":J
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_51

    aget-object v5, v2, v4

    .line 2140
    .local v5, "function":Ljava/lang/String;
    sget-object v6, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 2141
    sget-object v6, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v0, v6

    goto :goto_35

    .line 2142
    :cond_2f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_38

    .line 2139
    .end local v5    # "function":Ljava/lang/String;
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 2143
    .restart local v5    # "function":Ljava/lang/String;
    :cond_38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid usb function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2146
    .end local v5    # "function":Ljava/lang/String;
    :cond_51
    return-wide v0

    .line 2136
    .end local v0    # "ret":J
    :cond_52
    :goto_52
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static greylist-max-o usbFunctionsToString(J)Ljava/lang/String;
    .registers 7
    .param p0, "functions"    # J

    .line 2096
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 2097
    .local v0, "joiner":Ljava/util/StringJoiner;
    const-wide/16 v1, 0x4

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_15

    .line 2098
    const-string v1, "mtp"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2100
    :cond_15
    const-wide/16 v1, 0x10

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_21

    .line 2101
    const-string v1, "ptp"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2103
    :cond_21
    const-wide/16 v1, 0x20

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2d

    .line 2104
    const-string v1, "rndis"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2106
    :cond_2d
    const-wide/16 v1, 0x8

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_39

    .line 2107
    const-string v1, "midi"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2109
    :cond_39
    const-wide/16 v1, 0x2

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_45

    .line 2110
    const-string v1, "accessory"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2112
    :cond_45
    const-wide/16 v1, 0x40

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_51

    .line 2113
    const-string v1, "audio_source"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2115
    :cond_51
    const-wide/16 v1, 0x400

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5d

    .line 2116
    const-string v1, "ncm"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2118
    :cond_5d
    const-wide/16 v1, 0x80

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_69

    .line 2119
    const-string v1, "uvc"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2121
    :cond_69
    const-wide/16 v1, 0x1

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_75

    .line 2122
    const-string v1, "adb"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2124
    :cond_75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist usbGadgetHalVersionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "version"    # I

    .line 2193
    const/16 v0, 0x14

    if-ne p0, v0, :cond_7

    .line 2194
    const-string v0, "V2_0"

    .local v0, "halVersion":Ljava/lang/String;
    goto :goto_1e

    .line 2195
    .end local v0    # "halVersion":Ljava/lang/String;
    :cond_7
    const/16 v0, 0xc

    if-ne p0, v0, :cond_e

    .line 2196
    const-string v0, "V1_2"

    .restart local v0    # "halVersion":Ljava/lang/String;
    goto :goto_1e

    .line 2197
    .end local v0    # "halVersion":Ljava/lang/String;
    :cond_e
    const/16 v0, 0xb

    if-ne p0, v0, :cond_15

    .line 2198
    const-string v0, "V1_1"

    .restart local v0    # "halVersion":Ljava/lang/String;
    goto :goto_1e

    .line 2199
    .end local v0    # "halVersion":Ljava/lang/String;
    :cond_15
    const/16 v0, 0xa

    if-ne p0, v0, :cond_1c

    .line 2200
    const-string v0, "V1_0"

    .restart local v0    # "halVersion":Ljava/lang/String;
    goto :goto_1e

    .line 2202
    .end local v0    # "halVersion":Ljava/lang/String;
    :cond_1c
    const-string v0, "unknown"

    .line 2205
    .restart local v0    # "halVersion":Ljava/lang/String;
    :goto_1e
    return-object v0
.end method

.method public static blacklist usbSpeedToBandwidth(I)I
    .registers 3
    .param p0, "speed"    # I

    .line 2157
    const/16 v0, 0x2800

    const/16 v1, 0x5000

    packed-switch p0, :pswitch_data_1e

    .line 2179
    const/4 v0, -0x1

    return v0

    .line 2159
    :pswitch_9
    const v0, 0xa000

    return v0

    .line 2161
    :pswitch_d
    return v1

    .line 2163
    :pswitch_e
    return v1

    .line 2165
    :pswitch_f
    return v0

    .line 2167
    :pswitch_10
    return v1

    .line 2169
    :pswitch_11
    return v0

    .line 2171
    :pswitch_12
    const/16 v0, 0x1400

    return v0

    .line 2173
    :pswitch_15
    const/16 v0, 0x1e0

    return v0

    .line 2175
    :pswitch_18
    const/16 v0, 0xc

    return v0

    .line 2177
    :pswitch_1b
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method blacklist enableContaminantDetection(Landroid/hardware/usb/UsbPort;Z)V
    .registers 5
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;
    .param p2, "enable"    # Z

    .line 1809
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/hardware/usb/IUsbManager;->enableContaminantDetection(Ljava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 1812
    nop

    .line 1813
    return-void

    .line 1810
    :catch_b
    move-exception v0

    .line 1811
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist enableLimitPowerTransfer(Landroid/hardware/usb/UsbPort;ZILandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 10
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;
    .param p2, "limit"    # Z
    .param p3, "operationId"    # I
    .param p4, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;

    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLimitPowerTransfer:port must not be null. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1834
    :try_start_16
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/hardware/usb/IUsbManager;->enableLimitPowerTransfer(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_21

    .line 1844
    nop

    .line 1845
    return-void

    .line 1835
    :catch_21
    move-exception v0

    .line 1836
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLimitPowerTransfer failed. opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1838
    const/4 v1, 0x1

    :try_start_3b
    invoke-interface {p4, v1}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 1842
    goto :goto_56

    .line 1839
    :catch_3f
    move-exception v1

    .line 1840
    .local v1, "r":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLimitPowerTransfer failed to call onOperationComplete. opId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1843
    .end local v1    # "r":Landroid/os/RemoteException;
    :goto_56
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist enableUsbData(Landroid/hardware/usb/UsbPort;ZILandroid/hardware/usb/IUsbOperationInternal;)Z
    .registers 10
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;
    .param p2, "enable"    # Z
    .param p3, "operationId"    # I
    .param p4, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableUsbData: port must not be null. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1905
    :try_start_16
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/hardware/usb/IUsbManager;->enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z

    move-result v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_21

    return v0

    .line 1906
    :catch_21
    move-exception v0

    .line 1907
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUsbData: failed. opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1909
    const/4 v1, 0x1

    :try_start_3b
    invoke-interface {p4, v1}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 1913
    goto :goto_56

    .line 1910
    :catch_3f
    move-exception v1

    .line 1911
    .local v1, "r":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableUsbData: failed to call onOperationComplete. opId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1914
    .end local v1    # "r":Landroid/os/RemoteException;
    :goto_56
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist enableUsbDataSignal(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .line 1692
    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataSignal(Ljava/util/List;ZZ)Z

    move-result v0

    return v0
.end method

.method blacklist enableUsbDataWhileDocked(Landroid/hardware/usb/UsbPort;ILandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 9
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;
    .param p2, "operationId"    # I
    .param p3, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;

    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableUsbDataWhileDocked: port must not be null. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1934
    :try_start_16
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/hardware/usb/IUsbManager;->enableUsbDataWhileDocked(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_21

    .line 1944
    nop

    .line 1945
    return-void

    .line 1935
    :catch_21
    move-exception v0

    .line 1936
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUsbDataWhileDocked: failed. opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1938
    const/4 v1, 0x1

    :try_start_3b
    invoke-interface {p3, v1}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 1942
    goto :goto_56

    .line 1939
    :catch_3f
    move-exception v1

    .line 1940
    .local v1, "r":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableUsbDataWhileDocked: failed to call onOperationComplete. opId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1943
    .end local v1    # "r":Landroid/os/RemoteException;
    :goto_56
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAccessoryList()[Landroid/hardware/usb/UsbAccessory;
    .registers 4

    .line 1125
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1126
    return-object v1

    .line 1129
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 1130
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_f

    .line 1131
    return-object v1

    .line 1133
    :cond_f
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/hardware/usb/UsbAccessory;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_16

    return-object v1

    .line 1135
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :catch_16
    move-exception v0

    .line 1136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "function"    # J

    .line 1219
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1220
    :catch_7
    move-exception v0

    .line 1221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCurrentFunctions()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1529
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getCurrentFunctions()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 1530
    :catch_7
    move-exception v0

    .line 1531
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDeviceList()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .line 1075
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1076
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v1, :cond_a

    .line 1077
    return-object v0

    .line 1079
    :cond_a
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1081
    .local v1, "bundle":Landroid/os/Bundle;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v2, v1}, Landroid/hardware/usb/IUsbManager;->getDeviceList(Landroid/os/Bundle;)V

    .line 1082
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1083
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_31} :catch_34

    .line 1084
    nop

    .end local v3    # "name":Ljava/lang/String;
    goto :goto_1c

    .line 1085
    :cond_33
    return-object v0

    .line 1086
    :catch_34
    move-exception v2

    .line 1087
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public blacklist getGadgetHalVersion()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1616
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getGadgetHalVersion()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1617
    :catch_7
    move-exception v0

    .line 1618
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;
    .registers 4
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;

    .line 1766
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/usb/IUsbManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 1767
    :catch_b
    move-exception v0

    .line 1768
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPorts()Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbPort;",
            ">;"
        }
    .end annotation

    .line 1734
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v0, :cond_9

    .line 1735
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1740
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getPorts()Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_34

    .line 1743
    .local v0, "parcelablePorts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/usb/ParcelableUsbPort;>;"
    nop

    .line 1745
    if-nez v0, :cond_17

    .line 1746
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1748
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1750
    .local v1, "numPorts":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1751
    .local v2, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/UsbPort;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v1, :cond_33

    .line 1752
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/ParcelableUsbPort;

    invoke-virtual {v4, p0}, Landroid/hardware/usb/ParcelableUsbPort;->getUsbPort(Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbPort;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1755
    .end local v3    # "i":I
    :cond_33
    return-object v2

    .line 1741
    .end local v0    # "parcelablePorts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/usb/ParcelableUsbPort;>;"
    .end local v1    # "numPorts":I
    .end local v2    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/UsbPort;>;"
    :catch_34
    move-exception v0

    .line 1742
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getScreenUnlockedFunctions()J
    .registers 3

    .line 1569
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getScreenUnlockedFunctions()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 1570
    :catch_7
    move-exception v0

    .line 1571
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUsbBandwidthMbps()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1595
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getCurrentUsbSpeed()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_c

    .line 1598
    .local v0, "usbSpeed":I
    nop

    .line 1599
    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbSpeedToBandwidth(I)I

    move-result v1

    return v1

    .line 1596
    .end local v0    # "usbSpeed":I
    :catch_c
    move-exception v0

    .line 1597
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUsbHalVersion()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1636
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getUsbHalVersion()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1637
    :catch_7
    move-exception v0

    .line 1638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o grantPermission(Landroid/hardware/usb/UsbDevice;)V
    .registers 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 1379
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/usb/UsbManager;->grantPermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 1380
    return-void
.end method

.method public greylist-max-o grantPermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .line 1392
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1395
    nop

    .line 1396
    return-void

    .line 1393
    :catch_7
    move-exception v0

    .line 1394
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist grantPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .registers 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1410
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    .line 1411
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 1412
    .local v0, "uid":I
    invoke-virtual {p0, p1, v0}, Landroid/hardware/usb/UsbManager;->grantPermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1415
    .end local v0    # "uid":I
    goto :goto_33

    .line 1413
    :catch_14
    move-exception v0

    .line 1414
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1416
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_33
    return-void
.end method

.method public whitelist hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 1282
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v0, :cond_6

    .line 1283
    const/4 v0, 0x0

    return v0

    .line 1286
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1287
    :catch_d
    move-exception v0

    .line 1288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z
    .registers 6
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1303
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v0, :cond_6

    .line 1304
    const/4 v0, 0x0

    return v0

    .line 1307
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/usb/IUsbManager;->hasAccessoryPermissionWithIdentity(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1308
    :catch_d
    move-exception v0

    .line 1309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 1239
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v0, :cond_6

    .line 1240
    const/4 v0, 0x0

    return v0

    .line 1243
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/usb/IUsbManager;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return v0

    .line 1244
    :catch_13
    move-exception v0

    .line 1245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z
    .registers 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 1261
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v0, :cond_6

    .line 1262
    const/4 v0, 0x0

    return v0

    .line 1265
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/usb/IUsbManager;->hasDevicePermissionWithIdentity(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1266
    :catch_d
    move-exception v0

    .line 1267
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r isFunctionEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "function"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1435
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1436
    :catch_7
    move-exception v0

    .line 1437
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist isModeChangeSupported(Landroid/hardware/usb/UsbPort;)Z
    .registers 4
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;

    .line 1781
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/usb/IUsbManager;->isModeChangeSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 1782
    :catch_b
    move-exception v0

    .line 1783
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isUvcGadgetSupportEnabled()Z
    .registers 3

    .line 1450
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->isUvcGadgetSupportEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1451
    :catch_7
    move-exception v0

    .line 1452
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 1157
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1158
    :catch_7
    move-exception v0

    .line 1159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist openAccessoryInputStream(Landroid/hardware/usb/UsbAccessory;)Ljava/io/InputStream;
    .registers 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 1178
    :try_start_0
    new-instance v0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;

    .line 1179
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/hardware/usb/UsbManager;->openHandleForAccessory(Landroid/hardware/usb/UsbAccessory;Z)Landroid/hardware/usb/UsbManager$AccessoryHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Landroid/os/ParcelFileDescriptor;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1178
    return-object v0

    .line 1181
    :catch_f
    move-exception v0

    .line 1182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist openAccessoryOutputStream(Landroid/hardware/usb/UsbAccessory;)Ljava/io/OutputStream;
    .registers 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 1198
    :try_start_0
    new-instance v0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;

    .line 1199
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/hardware/usb/UsbManager;->openHandleForAccessory(Landroid/hardware/usb/UsbAccessory;Z)Landroid/hardware/usb/UsbManager$AccessoryHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Landroid/os/ParcelFileDescriptor;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1198
    return-object v0

    .line 1200
    :catch_f
    move-exception v0

    .line 1201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;
    .registers 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 1101
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/hardware/usb/IUsbManager;->openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1103
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_23

    .line 1104
    new-instance v2, Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {v2, p1}, Landroid/hardware/usb/UsbDeviceConnection;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 1105
    .local v2, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    iget-object v3, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1, v3}, Landroid/hardware/usb/UsbDeviceConnection;->open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/Context;)Z

    move-result v3

    .line 1106
    .local v3, "result":Z
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_24

    .line 1107
    if-eqz v3, :cond_23

    .line 1108
    return-object v2

    .line 1113
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    .end local v3    # "result":Z
    :cond_23
    goto :goto_2c

    .line 1111
    :catch_24
    move-exception v0

    .line 1112
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UsbManager"

    const-string v2, "exception in UsbManager.openDevice"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist registerDisplayPortAltModeInfoListener(Ljava/util/concurrent/Executor;Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1984
    const-string v0, "registerDisplayPortAltModeInfoListener: executor must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1986
    const-string v0, "registerDisplayPortAltModeInfoListener: listener must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1989
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1990
    :try_start_d
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_18

    .line 1991
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    .line 1995
    :cond_18
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortServiceListener:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;

    if-nez v1, :cond_2b

    .line 1996
    invoke-direct {p0}, Landroid/hardware/usb/UsbManager;->registerDisplayPortAltModeEventsIfNeededLocked()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_2b

    .line 1997
    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected failure registering service listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/usb/UsbManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;
    throw v1

    .line 2001
    .restart local p0    # "this":Landroid/hardware/usb/UsbManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;
    :cond_2b
    :goto_2b
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 2005
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    monitor-exit v0

    .line 2007
    return-void

    .line 2002
    :cond_3a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Listener has already been registered."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/usb/UsbManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;
    throw v1

    .line 2006
    .restart local p0    # "this":Landroid/hardware/usb/UsbManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_42

    throw v1
.end method

.method public whitelist requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "pi"    # Landroid/app/PendingIntent;

    .line 1365
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/hardware/usb/IUsbManager;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1368
    nop

    .line 1369
    return-void

    .line 1366
    :catch_d
    move-exception v0

    .line 1367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "pi"    # Landroid/app/PendingIntent;

    .line 1338
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/hardware/usb/IUsbManager;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1341
    nop

    .line 1342
    return-void

    .line 1339
    :catch_d
    move-exception v0

    .line 1340
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist resetUsbGadget()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1655
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->resetUsbGadget()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1658
    nop

    .line 1659
    return-void

    .line 1656
    :catch_7
    move-exception v0

    .line 1657
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist resetUsbPort(Landroid/hardware/usb/UsbPort;ILandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 9
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;
    .param p2, "operationId"    # I
    .param p3, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;

    .line 1868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetUsbPort: port must not be null. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1870
    :try_start_16
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/hardware/usb/IUsbManager;->resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_21

    .line 1880
    nop

    .line 1881
    return-void

    .line 1871
    :catch_21
    move-exception v0

    .line 1872
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "resetUsbPort: failed. "

    const-string v2, "UsbManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1874
    const/4 v1, 0x1

    :try_start_2a
    invoke-interface {p3, v1}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 1878
    goto :goto_45

    .line 1875
    :catch_2e
    move-exception v1

    .line 1876
    .local v1, "r":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetUsbPort: failed to call onOperationComplete. opId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1879
    .end local v1    # "r":Landroid/os/RemoteException;
    :goto_45
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist setCurrentFunction(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "usbDataUnlocked"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1503
    sget-object v0, Landroid/hardware/usb/UsbManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    .line 1505
    .local v0, "operationId":I
    :try_start_b
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/hardware/usb/IUsbManager;->setCurrentFunction(Ljava/lang/String;ZI)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 1510
    nop

    .line 1511
    return-void

    .line 1506
    :catch_12
    move-exception v1

    .line 1507
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentFunction: failed to call setCurrentFunction. functions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", opId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsbManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1509
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setCurrentFunctions(J)V
    .registers 7
    .param p1, "functions"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1481
    sget-object v0, Landroid/hardware/usb/UsbManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    .line 1483
    .local v0, "operationId":I
    :try_start_b
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/hardware/usb/IUsbManager;->setCurrentFunctions(JI)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 1488
    nop

    .line 1489
    return-void

    .line 1484
    :catch_12
    move-exception v1

    .line 1485
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentFunctions: failed to call setCurrentFunctions. functions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", opId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsbManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1487
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method blacklist setPortRoles(Landroid/hardware/usb/UsbPort;II)V
    .registers 6
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;
    .param p2, "powerRole"    # I
    .param p3, "dataRole"    # I

    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPortRoles Package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :try_start_1e
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/hardware/usb/IUsbManager;->setPortRoles(Ljava/lang/String;II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_29

    .line 1798
    nop

    .line 1799
    return-void

    .line 1796
    :catch_29
    move-exception v0

    .line 1797
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setScreenUnlockedFunctions(J)V
    .registers 5
    .param p1, "functions"    # J

    .line 1553
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->setScreenUnlockedFunctions(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1556
    nop

    .line 1557
    return-void

    .line 1554
    :catch_7
    move-exception v0

    .line 1555
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "usbDeviceConnectionHandler"    # Landroid/content/ComponentName;

    .line 2064
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2067
    nop

    .line 2068
    return-void

    .line 2065
    :catch_7
    move-exception v0

    .line 2066
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterDisplayPortAltModeInfoListener(Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2038
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2039
    :try_start_3
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_9

    .line 2040
    monitor-exit v0

    return-void

    .line 2042
    :cond_9
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2044
    invoke-direct {p0}, Landroid/hardware/usb/UsbManager;->unregisterDisplayPortAltModeEventsLocked()V

    .line 2046
    :cond_19
    monitor-exit v0

    .line 2047
    return-void

    .line 2046
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method
