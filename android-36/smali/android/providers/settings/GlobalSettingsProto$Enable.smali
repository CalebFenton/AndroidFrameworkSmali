.class public final Landroid/providers/settings/GlobalSettingsProto$Enable;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Enable"
.end annotation


# static fields
.field public static final blacklist ACCESSIBILITY_GLOBAL_GESTURE_ENABLED:J = 0x10b00000001L

.field public static final blacklist CACHE_QUOTA_CALCULATION:J = 0x10b00000006L

.field public static final blacklist CELLULAR_ON_BOOT:J = 0x10b00000004L

.field public static final blacklist DELETION_HELPER_NO_THRESHOLD_TOGGLE:J = 0x10b00000007L

.field public static final blacklist DISKSTATS_LOGGING:J = 0x10b00000005L

.field public static final blacklist EPHEMERAL_FEATURE:J = 0x10b00000003L

.field public static final blacklist GNSS_RAW_MEAS_FULL_TRACKING:J = 0x10b00000008L

.field public static final blacklist GPU_DEBUG_LAYERS:J = 0x10b00000002L


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

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
