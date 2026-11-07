.class public final Lcom/android/server/AppStateTrackerProto;
.super Ljava/lang/Object;
.source "AppStateTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppStateTrackerProto$ExemptedPackage;,
        Lcom/android/server/AppStateTrackerProto$RunAnyInBackgroundRestrictedPackages;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVE_UIDS:J = 0x20500000002L

.field public static final blacklist EXEMPTED_BUCKET_PACKAGES:J = 0x20b0000000aL

.field public static final blacklist FORCED_APP_STANDBY_FEATURE_ENABLED:J = 0x1080000000dL

.field public static final blacklist FORCE_ALL_APPS_STANDBY:J = 0x10800000001L

.field public static final blacklist FORCE_ALL_APPS_STANDBY_FOR_SMALL_BATTERY:J = 0x10800000007L

.field public static final blacklist FOREGROUND_UIDS:J = 0x2050000000bL

.field public static final blacklist IS_PLUGGED_IN:J = 0x10800000008L

.field public static final blacklist IS_SMALL_BATTERY_DEVICE:J = 0x10800000006L

.field public static final blacklist POWER_SAVE_EXEMPT_APP_IDS:J = 0x20500000003L

.field public static final blacklist POWER_SAVE_USER_EXEMPT_APP_IDS:J = 0x2050000000cL

.field public static final blacklist RUN_ANY_IN_BACKGROUND_RESTRICTED_PACKAGES:J = 0x20b00000005L

.field public static final blacklist STATS:J = 0x10b00000009L

.field public static final blacklist TEMP_POWER_SAVE_EXEMPT_APP_IDS:J = 0x20500000004L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
