.class public Landroid/graphics/DashPathEffect;
.super Landroid/graphics/PathEffect;
.source "DashPathEffect.java"


# direct methods
.method public constructor <init>([FF)V
    .locals 2
    .param p1, "intervals"    # [F
    .param p2, "phase"    # F

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    #@3
    .line 35
    array-length v0, p1

    #@4
    const/4 v1, 0x2

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 36
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@9
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@c
    throw v0

    #@d
    .line 38
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/DashPathEffect;->nativeCreate([FF)J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Landroid/graphics/DashPathEffect;->native_instance:J

    #@13
    .line 34
    return-void
.end method

.method private static native nativeCreate([FF)J
.end method
