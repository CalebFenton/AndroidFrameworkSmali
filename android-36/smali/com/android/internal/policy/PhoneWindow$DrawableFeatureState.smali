.class final Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DrawableFeatureState"
.end annotation


# instance fields
.field blacklist alpha:I

.field blacklist child:Landroid/graphics/drawable/Drawable;

.field blacklist cur:Landroid/graphics/drawable/Drawable;

.field blacklist curAlpha:I

.field blacklist def:Landroid/graphics/drawable/Drawable;

.field final blacklist featureId:I

.field blacklist local:Landroid/graphics/drawable/Drawable;

.field blacklist resid:I

.field blacklist uri:Landroid/net/Uri;


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "_featureId"    # I

    .line 3541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3559
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 3561
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 3542
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->featureId:I

    .line 3543
    return-void
.end method
