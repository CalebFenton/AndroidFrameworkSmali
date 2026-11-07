.class public final Landroid/providers/settings/SystemSettingsProto$Notification;
.super Ljava/lang/Object;
.source "SystemSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SystemSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Notification"
.end annotation


# static fields
.field public static final blacklist CAMERA_FLASH_NOTIFICATION:J = 0x10b00000005L

.field public static final blacklist LIGHT_PULSE:J = 0x10b00000003L

.field public static final blacklist SCREEN_FLASH_NOTIFICATION:J = 0x10b00000006L

.field public static final blacklist SCREEN_FLASH_NOTIFICATION_COLOR_GLOBAL:J = 0x10b00000007L

.field public static final blacklist SOUND:J = 0x10b00000001L

.field public static final blacklist SOUND_CACHE:J = 0x10b00000002L

.field public static final blacklist VIBRATION_INTENSITY:J = 0x10b00000004L


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/SystemSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/SystemSettingsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
