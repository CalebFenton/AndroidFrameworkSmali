.class public final Lcom/android/server/selinux/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/server/selinux/flags/FeatureFlags; = null

.field public static final blacklist FLAG_SELINUX_LOGS_COLLECT:Ljava/lang/String; = "com.android.server.selinux.flags.selinux_logs_collect"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/android/server/selinux/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/selinux/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/selinux/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/selinux/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist selinuxLogsCollect()Z
    .registers 1

    .line 14
    sget-object v0, Lcom/android/server/selinux/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/selinux/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/selinux/flags/FeatureFlags;->selinuxLogsCollect()Z

    move-result v0

    return v0
.end method
