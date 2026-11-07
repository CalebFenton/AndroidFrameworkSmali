.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist icu25q2Api:Z

.field private static blacklist icuVApi:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist telephonyLookupMccExtension:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->icu25q2Api:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->icuVApi:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->telephonyLookupMccExtension:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 6

    .line 16
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "com.android.icu"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 17
    .local v2, "reader":Landroid/os/flagging/AconfigPackage;
    const-string v3, "icu_25q2_api"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->icu25q2Api:Z

    .line 18
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->icuVApi:Z

    .line 19
    const-string/jumbo v3, "telephony_lookup_mcc_extension"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->telephonyLookupMccExtension:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_27
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_1d} :catch_1e

    .end local v2    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_2f

    .line 23
    :catch_1e
    move-exception v2

    .line 26
    .local v2, "e":Ljava/lang/LinkageError;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 20
    .end local v2    # "e":Ljava/lang/LinkageError;
    :catch_27
    move-exception v2

    .line 22
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2f
    nop

    .line 28
    :goto_30
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->isCached:Z

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist icu25q2Api()Z
    .registers 2

    .line 32
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 33
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->init()V

    .line 35
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->icu25q2Api:Z

    return v0
.end method

.method public blacklist icuVApi()Z
    .registers 2

    .line 40
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 41
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->init()V

    .line 43
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->icuVApi:Z

    return v0
.end method

.method public blacklist telephonyLookupMccExtension()Z
    .registers 2

    .line 48
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 49
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->init()V

    .line 51
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;->telephonyLookupMccExtension:Z

    return v0
.end method
