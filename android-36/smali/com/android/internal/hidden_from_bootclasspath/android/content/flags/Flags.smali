.class public final Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_BIND_PACKAGE_ISOLATED_PROCESS:Ljava/lang/String; = "android.content.flags.enable_bind_package_isolated_process"

.field public static final blacklist FLAG_INTENT_SAVE_TO_XML_PACKAGE:Ljava/lang/String; = "android.content.flags.intent_save_to_xml_package"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableBindPackageIsolatedProcess()Z
    .registers 1

    .line 16
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;->enableBindPackageIsolatedProcess()Z

    move-result v0

    return v0
.end method

.method public static blacklist intentSaveToXmlPackage()Z
    .registers 1

    .line 23
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;->intentSaveToXmlPackage()Z

    move-result v0

    return v0
.end method
