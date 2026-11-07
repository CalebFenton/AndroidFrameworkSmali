.class public final Landroid/os/SystemPropertiesProto$Ro$Boot;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Boot"
.end annotation


# static fields
.field public static final greylist-max-o AVB_VERSION:J = 0x10900000001L

.field public static final greylist-max-o BASEBAND:J = 0x10900000002L

.field public static final greylist-max-o BOOTDEVICE:J = 0x10900000003L

.field public static final greylist-max-o BOOTLOADER:J = 0x10900000004L

.field public static final greylist-max-o BOOTTIME:J = 0x20900000005L

.field public static final greylist-max-o CONSOLE:J = 0x10900000006L

.field public static final greylist-max-o FAKE_BATTERY:J = 0x10500000007L

.field public static final greylist-max-o HARDWARE:J = 0x10900000008L

.field public static final greylist-max-o HARDWARE_COLOR:J = 0x10900000009L

.field public static final greylist-max-o HARDWARE_REVISION:J = 0x1090000000aL

.field public static final greylist-max-o HARDWARE_SKU:J = 0x1090000000bL

.field public static final greylist-max-o KEYMASTER:J = 0x1090000000cL

.field public static final greylist-max-o MODE:J = 0x1090000000dL

.field public static final greylist-max-o REVISION:J = 0x1090000000eL

.field public static final greylist-max-o SLOT_SUFFIX:J = 0x1090000000fL

.field public static final greylist-max-o VBMETA_AVB_VERSION:J = 0x10900000010L

.field public static final greylist-max-o VENDOR_OVERLAY_THEME:J = 0x10900000011L

.field public static final greylist-max-o VERIFIEDBOOTSTATE:J = 0x10900000012L

.field public static final greylist-max-o VERITYMODE:J = 0x10900000013L

.field public static final greylist-max-o WIFICOUNTRYCODE:J = 0x10900000014L


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

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
