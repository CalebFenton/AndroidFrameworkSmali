.class public final Lcom/android/internal/widget/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/widget/flags/FeatureFlags; = null

.field public static final blacklist FLAG_HIDE_LAST_CHAR_WITH_PHYSICAL_INPUT:Ljava/lang/String; = "com.android.internal.widget.flags.hide_last_char_with_physical_input"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/android/internal/widget/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/widget/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/widget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/widget/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist hideLastCharWithPhysicalInput()Z
    .registers 1

    .line 14
    sget-object v0, Lcom/android/internal/widget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/widget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/widget/flags/FeatureFlags;->hideLastCharWithPhysicalInput()Z

    move-result v0

    return v0
.end method
