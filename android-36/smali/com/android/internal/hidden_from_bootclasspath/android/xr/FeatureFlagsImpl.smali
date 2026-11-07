.class public final Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static volatile blacklist isCached:Z

.field private static blacklist xrManifestEntries:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;->xrManifestEntries:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 5

    .line 14
    const-string v0, "FeatureFlagsImplExport"

    :try_start_2
    const-string v1, "android.xr"

    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v1

    .line 15
    .local v1, "reader":Landroid/os/flagging/AconfigPackage;
    const-string/jumbo v2, "xr_manifest_entries"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;->xrManifestEntries:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_1c
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_12} :catch_13

    .end local v1    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_24

    .line 19
    :catch_13
    move-exception v1

    .line 22
    .local v1, "e":Ljava/lang/LinkageError;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 16
    .end local v1    # "e":Ljava/lang/LinkageError;
    :catch_1c
    move-exception v1

    .line 18
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_24
    nop

    .line 24
    :goto_25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;->isCached:Z

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist xrManifestEntries()Z
    .registers 2

    .line 28
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 29
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;->init()V

    .line 31
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;->xrManifestEntries:Z

    return v0
.end method
