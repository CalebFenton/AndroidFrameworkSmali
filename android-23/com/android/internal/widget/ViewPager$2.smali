.class final Lcom/android/internal/widget/ViewPager$2;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    #@0
    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    .line 132
    sub-float/2addr p1, v1

    #@3
    .line 133
    mul-float v0, p1, p1

    #@5
    mul-float/2addr v0, p1

    #@6
    mul-float/2addr v0, p1

    #@7
    mul-float/2addr v0, p1

    #@8
    add-float/2addr v0, v1

    #@9
    return v0
.end method
