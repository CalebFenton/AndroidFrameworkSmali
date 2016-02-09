.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;
.super Ljava/lang/Object;
.source "GmmSettings.java"


# static fields
.field private static final FEATURE_TEST_DEFAULT_START:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;


# instance fields
.field private final defaultRemoteStringVersion:Ljava/lang/String;

.field protected isFirstInvocation:Z

.field private migrateLatitudeUserTermsPrefOnUpgrade:Z

.field private final remoteStringResource:Ljava/lang/String;

.field private requireTermsAndConditionsOnUpgrade:Z

.field private upgradeChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 62
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@2
    const v1, 0x2625a00

    #@5
    const v2, -0x59a5380

    #@8
    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(II)V

    #@b
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->FEATURE_TEST_DEFAULT_START:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@d
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 81
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->upgradeChecked:Z

    #@6
    .line 84
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->requireTermsAndConditionsOnUpgrade:Z

    #@8
    .line 90
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->migrateLatitudeUserTermsPrefOnUpgrade:Z

    #@a
    const-string/jumbo v1, "no-remote-strings"

    #@d
    .line 134
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->defaultRemoteStringVersion:Ljava/lang/String;

    #@f
    const-string/jumbo v1, "/strings_remote_no-remote-strings.dat"

    #@12
    .line 137
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->remoteStringResource:Ljava/lang/String;

    #@14
    .line 174
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->isTermsAndConditionsPrefSet()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    :goto_0
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->isFirstInvocation:Z

    #@1c
    .line 175
    return-void

    #@1d
    :cond_0
    const/4 v0, 0x1

    #@1e
    .line 174
    goto :goto_0
.end method

.method public static isDebugBuild()Z
    .locals 1

    #@0
    .prologue
    .line 993
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method private static isTermsAndConditionsPrefSet()Z
    .locals 2

    #@0
    .prologue
    .line 184
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@7
    move-result-object v0

    #@8
    .local v0, "store":Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    const-string/jumbo v1, "T_AND_C_ACCEPT"

    #@b
    .line 185
    invoke-interface {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    #@e
    move-result-object v1

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v1, 0x0

    #@12
    :goto_0
    return v1

    #@13
    :cond_0
    const/4 v1, 0x1

    #@14
    goto :goto_0
.end method
