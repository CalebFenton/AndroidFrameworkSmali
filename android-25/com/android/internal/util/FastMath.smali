.class public Lcom/android/internal/util/FastMath;
.super Ljava/lang/Object;
.source "FastMath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static round(F)I
    .locals 5
    .param p0, "value"    # F

    #@0
    .prologue
    .line 30
    const/high16 v2, 0x4b800000    # 1.6777216E7f

    #@2
    mul-float/2addr v2, p0

    #@3
    float-to-long v0, v2

    #@4
    .line 31
    .local v0, "lx":J
    const-wide/32 v2, 0x800000

    #@7
    add-long/2addr v2, v0

    #@8
    const/16 v4, 0x18

    #@a
    shr-long/2addr v2, v4

    #@b
    long-to-int v2, v2

    #@c
    return v2
.end method
