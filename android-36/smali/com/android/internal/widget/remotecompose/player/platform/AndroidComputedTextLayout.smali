.class public Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;
.super Ljava/lang/Object;
.source "AndroidComputedTextLayout.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;


# instance fields
.field blacklist mHeight:F

.field blacklist mStaticLayout:Landroid/text/StaticLayout;

.field blacklist mWidth:F


# direct methods
.method public constructor blacklist <init>(Landroid/text/StaticLayout;FF)V
    .registers 4
    .param p1, "staticLayout"    # Landroid/text/StaticLayout;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->mStaticLayout:Landroid/text/StaticLayout;

    .line 29
    iput p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->mWidth:F

    .line 30
    iput p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->mHeight:F

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist get()Landroid/text/StaticLayout;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->mStaticLayout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method public blacklist getHeight()F
    .registers 2

    .line 58
    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->mHeight:F

    return v0
.end method

.method public blacklist getWidth()F
    .registers 2

    .line 53
    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->mWidth:F

    return v0
.end method

.method public blacklist set(Landroid/text/StaticLayout;)V
    .registers 2
    .param p1, "layout"    # Landroid/text/StaticLayout;

    .line 39
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->mStaticLayout:Landroid/text/StaticLayout;

    .line 40
    return-void
.end method
