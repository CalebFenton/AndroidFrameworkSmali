.class public Landroid/graphics/DiscretePathEffect;
.super Landroid/graphics/PathEffect;
.source "DiscretePathEffect.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .param p1, "segmentLength"    # F
    .param p2, "deviation"    # F

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    #@3
    .line 26
    invoke-static {p1, p2}, Landroid/graphics/DiscretePathEffect;->nativeCreate(FF)J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/graphics/DiscretePathEffect;->native_instance:J

    #@9
    .line 25
    return-void
.end method

.method private static native nativeCreate(FF)J
.end method
