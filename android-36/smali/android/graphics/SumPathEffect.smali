.class public Landroid/graphics/SumPathEffect;
.super Landroid/graphics/PathEffect;
.source "SumPathEffect.java"


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V
    .registers 7
    .param p1, "first"    # Landroid/graphics/PathEffect;
    .param p2, "second"    # Landroid/graphics/PathEffect;

    .line 26
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 27
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    iget-wide v2, p2, Landroid/graphics/PathEffect;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/SumPathEffect;->nativeCreate(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/SumPathEffect;->native_instance:J

    .line 29
    return-void
.end method

.method private static native greylist-max-o nativeCreate(JJ)J
.end method
