.class public final Lcom/android/media/performance/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/media/performance/flags/FeatureFlags; = null

.field public static final blacklist FLAG_MEDIA_DESCRIPTION_ASHMEM_BITMAP:Ljava/lang/String; = "com.android.media.performance.flags.media_description_ashmem_bitmap"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/android/media/performance/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/media/performance/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/media/performance/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/performance/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist mediaDescriptionAshmemBitmap()Z
    .registers 1

    .line 14
    sget-object v0, Lcom/android/media/performance/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/performance/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/performance/flags/FeatureFlags;->mediaDescriptionAshmemBitmap()Z

    move-result v0

    return v0
.end method
