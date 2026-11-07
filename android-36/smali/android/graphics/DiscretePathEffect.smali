.class public Landroid/graphics/DiscretePathEffect;
.super Landroid/graphics/PathEffect;
.source "DiscretePathEffect.java"


# direct methods
.method public constructor whitelist <init>(FF)V
    .registers 5
    .param p1, "segmentLength"    # F
    .param p2, "deviation"    # F

    .line 26
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 27
    invoke-static {p1, p2}, Landroid/graphics/DiscretePathEffect;->nativeCreate(FF)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/DiscretePathEffect;->native_instance:J

    .line 28
    return-void
.end method

.method private static native greylist-max-o nativeCreate(FF)J
.end method
