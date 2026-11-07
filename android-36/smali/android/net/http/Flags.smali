.class public final Landroid/net/http/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/net/http/FeatureFlags; = null

.field public static final blacklist FLAG_PRELOAD_HTTPENGINE_IN_ZYGOTE:Ljava/lang/String; = "android.net.http.preload_httpengine_in_zygote"

.field public static final blacklist FLAG_PRELOAD_HTTPENGINE_JAVA_IMPL_CLASSES:Ljava/lang/String; = "android.net.http.preload_httpengine_java_impl_classes"

.field public static final blacklist FLAG_PRELOAD_HTTPENGINE_SHARED_LIBRARY:Ljava/lang/String; = "android.net.http.preload_httpengine_shared_library"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/net/http/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/net/http/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/net/http/Flags;->FEATURE_FLAGS:Landroid/net/http/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist preloadHttpengineInZygote()Z
    .registers 1

    .line 18
    sget-object v0, Landroid/net/http/Flags;->FEATURE_FLAGS:Landroid/net/http/FeatureFlags;

    invoke-interface {v0}, Landroid/net/http/FeatureFlags;->preloadHttpengineInZygote()Z

    move-result v0

    return v0
.end method

.method public static greylist preloadHttpengineJavaImplClasses()Z
    .registers 1

    .line 25
    sget-object v0, Landroid/net/http/Flags;->FEATURE_FLAGS:Landroid/net/http/FeatureFlags;

    invoke-interface {v0}, Landroid/net/http/FeatureFlags;->preloadHttpengineJavaImplClasses()Z

    move-result v0

    return v0
.end method

.method public static greylist preloadHttpengineSharedLibrary()Z
    .registers 1

    .line 32
    sget-object v0, Landroid/net/http/Flags;->FEATURE_FLAGS:Landroid/net/http/FeatureFlags;

    invoke-interface {v0}, Landroid/net/http/FeatureFlags;->preloadHttpengineSharedLibrary()Z

    move-result v0

    return v0
.end method
