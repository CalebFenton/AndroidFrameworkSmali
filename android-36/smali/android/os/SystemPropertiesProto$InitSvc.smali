.class public final Landroid/os/SystemPropertiesProto$InitSvc;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InitSvc"
.end annotation


# static fields
.field public static final greylist-max-o ADBD:J = 0x10e00000001L

.field public static final greylist-max-o AUDIOSERVER:J = 0x10e00000002L

.field public static final greylist-max-o BOOTANIM:J = 0x10e00000003L

.field public static final greylist-max-o BUFFERHUBD:J = 0x10e00000004L

.field public static final greylist-max-o CAMERASERVER:J = 0x10e00000005L

.field public static final greylist-max-o CLEAR_BCB:J = 0x10e00000006L

.field public static final greylist-max-o DRM:J = 0x10e00000007L

.field public static final greylist-max-o GATEKEEPERD:J = 0x10e00000008L

.field public static final greylist-max-o HEALTHD:J = 0x10e00000009L

.field public static final greylist-max-o HIDL_MEMORY:J = 0x10e0000000aL

.field public static final greylist-max-o HOSTAPD:J = 0x10e0000000bL

.field public static final greylist-max-o HWSERVICEMANAGER:J = 0x10e0000000cL

.field public static final greylist-max-o INSTALLD:J = 0x10e0000000dL

.field public static final greylist-max-o KEYSTORE:J = 0x10e0000000eL

.field public static final greylist-max-o LMKD:J = 0x10e0000000fL

.field public static final greylist-max-o LOGD:J = 0x10e00000010L

.field public static final greylist-max-o LOGD_REINIT:J = 0x10e00000011L

.field public static final greylist-max-o MEDIA:J = 0x10e00000012L

.field public static final greylist-max-o MEDIADRM:J = 0x10e00000013L

.field public static final greylist-max-o MEDIAEXTRACTOR:J = 0x10e00000014L

.field public static final greylist-max-o MEDIAMETRICS:J = 0x10e00000015L

.field public static final greylist-max-o NETD:J = 0x10e00000016L

.field public static final greylist-max-o PERFORMANCED:J = 0x10e00000017L

.field public static final greylist-max-o RIL_DAEMON:J = 0x10e00000018L

.field public static final greylist-max-o SERVICEMANAGER:J = 0x10e00000019L

.field public static final greylist-max-o STATUS_RUNNING:I = 0x1

.field public static final greylist-max-o STATUS_STOPPED:I = 0x2

.field public static final greylist-max-o STATUS_UNKNOWN:I = 0x0

.field public static final greylist-max-o STORAGED:J = 0x10e0000001aL

.field public static final greylist-max-o SURFACEFLINGER:J = 0x10e0000001bL

.field public static final greylist-max-o THERMALSERVICE:J = 0x10e0000001cL

.field public static final greylist-max-o TOMBSTONED:J = 0x10e0000001dL

.field public static final greylist-max-o UEVENTD:J = 0x10e0000001eL

.field public static final greylist-max-o UPDATE_ENGINE:J = 0x10e0000001fL

.field public static final blacklist UPDATE_VERIFIER:J = 0x10e00000020L

.field public static final greylist-max-o VIRTUAL_TOUCHPAD:J = 0x10e00000021L

.field public static final greylist-max-o VNDSERVICEMANAGER:J = 0x10e00000022L

.field public static final greylist-max-o VOLD:J = 0x10e00000023L

.field public static final greylist-max-o VR_HWC:J = 0x10e00000024L

.field public static final greylist-max-o WEBVIEW_ZYGOTE32:J = 0x10e00000025L

.field public static final greylist-max-o WIFICOND:J = 0x10e00000026L

.field public static final greylist-max-o WPA_SUPPLICANT:J = 0x10e00000027L

.field public static final greylist-max-o ZYGOTE:J = 0x10e00000028L

.field public static final greylist-max-o ZYGOTE_SECONDARY:J = 0x10e00000029L


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemPropertiesProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/SystemPropertiesProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
