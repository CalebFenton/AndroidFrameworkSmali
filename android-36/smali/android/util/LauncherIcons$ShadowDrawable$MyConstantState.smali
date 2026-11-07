.class Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LauncherIcons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/LauncherIcons$ShadowDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyConstantState"
.end annotation


# instance fields
.field final greylist-max-o mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

.field final greylist-max-o mPaint:Landroid/graphics/Paint;

.field final greylist-max-o mShadow:Landroid/graphics/Bitmap;


# direct methods
.method constructor greylist-max-o <init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 5
    .param p1, "shadow"    # Landroid/graphics/Bitmap;
    .param p2, "childState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .line 173
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mPaint:Landroid/graphics/Paint;

    .line 174
    iput-object p1, p0, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mShadow:Landroid/graphics/Bitmap;

    .line 175
    iput-object p2, p0, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 176
    return-void
.end method


# virtual methods
.method public whitelist getChangingConfigurations()I
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 180
    new-instance v0, Landroid/util/LauncherIcons$ShadowDrawable;

    invoke-direct {v0, p0}, Landroid/util/LauncherIcons$ShadowDrawable;-><init>(Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;)V

    return-object v0
.end method
