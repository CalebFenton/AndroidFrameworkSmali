.class public final Landroid/os/SystemPropertiesProto$Sys$Usb;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Sys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Usb"
.end annotation


# static fields
.field public static final greylist-max-o CONFIG:J = 0x10900000001L

.field public static final greylist-max-o CONFIGFS:J = 0x10500000002L

.field public static final greylist-max-o CONTROLLER:J = 0x10900000003L

.field public static final greylist-max-o FFS_MAX_READ:J = 0x10500000004L

.field public static final greylist-max-o FFS_MAX_WRITE:J = 0x10500000005L

.field public static final greylist-max-o FFS_MTP_READY:J = 0x10500000006L

.field public static final greylist-max-o FFS_READY:J = 0x10500000007L

.field public static final greylist-max-o MTP_DEVICE_TYPE:J = 0x10500000008L

.field public static final greylist-max-o STATE:J = 0x10900000009L


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemPropertiesProto$Sys;)V
    .registers 2
    .param p1, "this$1"    # Landroid/os/SystemPropertiesProto$Sys;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
