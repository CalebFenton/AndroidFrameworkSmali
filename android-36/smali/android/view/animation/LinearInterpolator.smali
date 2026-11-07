.class public Landroid/view/animation/LinearInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "LinearInterpolator.java"

# interfaces
.implements Landroid/graphics/animation/NativeInterpolator;


# annotations
.annotation runtime Landroid/graphics/animation/HasNativeInterpolator;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 32
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public greylist-max-o createNativeInterpolator()J
    .registers 3

    .line 44
    invoke-static {}, Landroid/graphics/animation/NativeInterpolatorFactory;->createLinearInterpolator()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolation(F)F
    .registers 2
    .param p1, "input"    # F

    .line 38
    return p1
.end method
