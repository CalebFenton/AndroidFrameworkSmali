.class public final Landroid/app/assist/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/app/assist/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_PLACEHOLDER_VIEW_FOR_NULL_CHILD:Ljava/lang/String; = "android.app.assist.flags.add_placeholder_view_for_null_child"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Landroid/app/assist/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/app/assist/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/app/assist/flags/Flags;->FEATURE_FLAGS:Landroid/app/assist/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addPlaceholderViewForNullChild()Z
    .registers 1

    .line 14
    sget-object v0, Landroid/app/assist/flags/Flags;->FEATURE_FLAGS:Landroid/app/assist/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/assist/flags/FeatureFlags;->addPlaceholderViewForNullChild()Z

    move-result v0

    return v0
.end method
