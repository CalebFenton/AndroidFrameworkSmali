.class Landroid/widget/ProgressBar$ProgressTintInfo;
.super Ljava/lang/Object;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressTintInfo"
.end annotation


# instance fields
.field greylist-max-o mHasIndeterminateTint:Z

.field greylist-max-o mHasIndeterminateTintMode:Z

.field greylist-max-o mHasProgressBackgroundTint:Z

.field greylist-max-o mHasProgressBackgroundTintMode:Z

.field greylist-max-o mHasProgressTint:Z

.field greylist-max-o mHasProgressTintMode:Z

.field greylist-max-o mHasSecondaryProgressTint:Z

.field greylist-max-o mHasSecondaryProgressTintMode:Z

.field blacklist mIndeterminateBlendMode:Landroid/graphics/BlendMode;

.field greylist-max-o mIndeterminateTintList:Landroid/content/res/ColorStateList;

.field blacklist mProgressBackgroundBlendMode:Landroid/graphics/BlendMode;

.field greylist-max-o mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

.field blacklist mProgressBlendMode:Landroid/graphics/BlendMode;

.field greylist-max-o mProgressTintList:Landroid/content/res/ColorStateList;

.field blacklist mSecondaryProgressBlendMode:Landroid/graphics/BlendMode;

.field greylist-max-o mSecondaryProgressTintList:Landroid/content/res/ColorStateList;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ProgressBar-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>()V

    return-void
.end method
