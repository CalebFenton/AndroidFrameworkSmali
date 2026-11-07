.class public final Landroid/providers/settings/GlobalSettingsProto$Sounds;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Sounds"
.end annotation


# static fields
.field public static final blacklist CAR_DOCK:J = 0x10b00000001L

.field public static final blacklist CAR_UNDOCK:J = 0x10b00000002L

.field public static final blacklist CHARGING_STARTED:J = 0x10b00000004L

.field public static final blacklist DESK_DOCK:J = 0x10b00000005L

.field public static final blacklist DESK_UNDOCK:J = 0x10b00000006L

.field public static final blacklist DOCK_SOUNDS_ENABLED:J = 0x10b00000007L

.field public static final blacklist DOCK_SOUNDS_ENABLED_WHEN_ACCESSIBILITY:J = 0x10b00000008L

.field public static final blacklist LOCK:J = 0x10b00000009L

.field public static final blacklist LOW_BATTERY:J = 0x10b0000000aL

.field public static final blacklist LOW_BATTERY_SOUNDS_ENABLED:J = 0x10b0000000cL

.field public static final blacklist LOW_BATTERY_SOUND_TIMEOUT:J = 0x10b0000000bL

.field public static final blacklist TRUSTED:J = 0x10b0000000dL

.field public static final blacklist UNLOCK:J = 0x10b0000000eL

.field public static final blacklist WIRELESS_CHARGING_STARTED:J = 0x10b0000000fL


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/GlobalSettingsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
