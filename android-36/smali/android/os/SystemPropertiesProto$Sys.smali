.class public final Landroid/os/SystemPropertiesProto$Sys;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Sys"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemPropertiesProto$Sys$Usb;
    }
.end annotation


# static fields
.field public static final greylist-max-o BOOT_COMPLETED:J = 0x10500000001L

.field public static final greylist-max-o BOOT_FROM_CHARGER_MODE:J = 0x10500000002L

.field public static final greylist-max-o RETAILDEMO_ENABLED:J = 0x10500000003L

.field public static final greylist-max-o SHUTDOWN_REQUESTED:J = 0x10900000004L

.field public static final greylist-max-o USB:J = 0x10b00000005L


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

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
