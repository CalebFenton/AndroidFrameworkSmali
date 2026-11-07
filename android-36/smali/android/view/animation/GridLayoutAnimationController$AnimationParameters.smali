.class public Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
.super Landroid/view/animation/LayoutAnimationController$AnimationParameters;
.source "GridLayoutAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/GridLayoutAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationParameters"
.end annotation


# instance fields
.field public whitelist column:I

.field public whitelist columnsCount:I

.field public whitelist row:I

.field public whitelist rowsCount:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 404
    invoke-direct {p0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    return-void
.end method
