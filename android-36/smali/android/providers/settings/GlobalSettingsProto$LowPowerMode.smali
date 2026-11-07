.class public final Landroid/providers/settings/GlobalSettingsProto$LowPowerMode;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LowPowerMode"
.end annotation


# static fields
.field public static final blacklist AUTOMATIC_POWER_SAVER_MODE:J = 0x10b00000004L

.field public static final blacklist ENABLED:J = 0x10b00000001L

.field public static final blacklist STICKY_AUTO_DISABLE_ENABLED:J = 0x10b00000006L

.field public static final blacklist STICKY_AUTO_DISABLE_LEVEL:J = 0x10b00000007L

.field public static final blacklist STICKY_ENABLED:J = 0x10b00000005L

.field public static final blacklist TRIGGER_LEVEL:J = 0x10b00000002L

.field public static final blacklist TRIGGER_LEVEL_MAX:J = 0x10b00000003L


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

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
