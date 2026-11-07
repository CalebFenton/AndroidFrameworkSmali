.class public final Landroid/os/SystemPropertiesProto$Ro$Hardware;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Hardware"
.end annotation


# static fields
.field public static final greylist-max-o ACTIVITY_RECOGNITION:J = 0x10900000002L

.field public static final greylist-max-o AUDIO:J = 0x10900000003L

.field public static final greylist-max-o AUDIO_A2DP:J = 0x10900000005L

.field public static final greylist-max-o AUDIO_POLICY:J = 0x10900000004L

.field public static final greylist-max-o AUDIO_PRIMARY:J = 0x10900000006L

.field public static final greylist-max-o AUDIO_USB:J = 0x10900000007L

.field public static final greylist-max-o BOOTCTRL:J = 0x10900000008L

.field public static final greylist-max-o CAMERA:J = 0x10900000009L

.field public static final greylist-max-o CONSUMERIR:J = 0x1090000000aL

.field public static final greylist-max-o CONTEXT_HUB:J = 0x1090000000bL

.field public static final greylist-max-o EGL:J = 0x1090000000cL

.field public static final greylist-max-o FINGERPRINT:J = 0x1090000000dL

.field public static final greylist-max-o FLP:J = 0x1090000000eL

.field public static final greylist-max-o GATEKEEPER:J = 0x1090000000fL

.field public static final greylist-max-o GPS:J = 0x10900000010L

.field public static final greylist-max-o GRALLOC:J = 0x10900000011L

.field public static final greylist-max-o HDMI_CEC:J = 0x10900000012L

.field public static final greylist-max-o HWCOMPOSER:J = 0x10900000013L

.field public static final greylist-max-o INPUT:J = 0x10900000014L

.field public static final greylist-max-o KEYSTORE:J = 0x10900000015L

.field public static final greylist-max-o LIGHTS:J = 0x10900000016L

.field public static final greylist-max-o LOCAL_TIME:J = 0x10900000017L

.field public static final greylist-max-o MEMTRACK:J = 0x10900000018L

.field public static final greylist-max-o NFC:J = 0x10900000019L

.field public static final greylist-max-o NFC_NCI:J = 0x1090000001aL

.field public static final greylist-max-o NFC_TAG:J = 0x1090000001bL

.field public static final greylist-max-o NVRAM:J = 0x1090000001cL

.field public static final greylist-max-o POWER:J = 0x1090000001dL

.field public static final greylist-max-o RADIO:J = 0x1090000001eL

.field public static final greylist-max-o SENSORS:J = 0x1090000001fL

.field public static final greylist-max-o SOUND_TRIGGER:J = 0x10900000020L

.field public static final greylist-max-o THERMAL:J = 0x10900000021L

.field public static final greylist-max-o TV_INPUT:J = 0x10900000022L

.field public static final greylist-max-o TYPE:J = 0x10900000023L

.field public static final greylist-max-o VALUE:J = 0x10900000001L

.field public static final greylist-max-o VEHICLE:J = 0x10900000024L

.field public static final greylist-max-o VIBRATOR:J = 0x10900000025L

.field public static final greylist-max-o VIRTUAL_DEVICE:J = 0x10900000026L

.field public static final greylist-max-o VULKAN:J = 0x10900000027L


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemPropertiesProto$Ro;)V
    .registers 2
    .param p1, "this$1"    # Landroid/os/SystemPropertiesProto$Ro;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
