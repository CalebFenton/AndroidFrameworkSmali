.class public Landroid/graphics/CornerPathEffect;
.super Landroid/graphics/PathEffect;
.source "CornerPathEffect.java"


# direct methods
.method public constructor whitelist <init>(F)V
    .registers 4
    .param p1, "radius"    # F

    .line 28
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 29
    invoke-static {p1}, Landroid/graphics/CornerPathEffect;->nativeCreate(F)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/CornerPathEffect;->native_instance:J

    .line 30
    return-void
.end method

.method private static native greylist-max-o nativeCreate(F)J
.end method
