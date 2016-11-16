.class public Landroid/graphics/CornerPathEffect;
.super Landroid/graphics/PathEffect;
.source "CornerPathEffect.java"


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1, "radius"    # F

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    #@3
    .line 28
    invoke-static {p1}, Landroid/graphics/CornerPathEffect;->nativeCreate(F)J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/graphics/CornerPathEffect;->native_instance:J

    #@9
    .line 27
    return-void
.end method

.method private static native nativeCreate(F)J
.end method
