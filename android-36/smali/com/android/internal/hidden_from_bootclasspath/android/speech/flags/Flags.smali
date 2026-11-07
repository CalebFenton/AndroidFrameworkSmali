.class public final Lcom/android/internal/hidden_from_bootclasspath/android/speech/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/speech/flags/FeatureFlags; = null

.field public static final blacklist FLAG_MULTILANG_EXTRA_LAUNCH:Ljava/lang/String; = "android.speech.flags.multilang_extra_launch"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/speech/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/speech/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/speech/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/speech/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist multilangExtraLaunch()Z
    .registers 1

    .line 14
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/speech/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/speech/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/speech/flags/FeatureFlags;->multilangExtraLaunch()Z

    move-result v0

    return v0
.end method
