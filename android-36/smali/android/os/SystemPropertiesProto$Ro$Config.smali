.class public final Landroid/os/SystemPropertiesProto$Ro$Config;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Config"
.end annotation


# static fields
.field public static final greylist-max-o ALARM_ALERT:J = 0x10900000001L

.field public static final greylist-max-o MEDIA_VOL_STEPS:J = 0x10500000002L

.field public static final greylist-max-o NOTIFICATION_SOUND:J = 0x10900000003L

.field public static final greylist-max-o RINGTONE:J = 0x10900000004L

.field public static final greylist-max-o VC_CALL_VOL_STEPS:J = 0x10500000005L


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

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
