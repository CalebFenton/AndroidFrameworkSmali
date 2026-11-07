.class public Landroid/graphics/PaintFlagsDrawFilter;
.super Landroid/graphics/DrawFilter;
.source "PaintFlagsDrawFilter.java"


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 5
    .param p1, "clearBits"    # I
    .param p2, "setBits"    # I

    .line 29
    invoke-direct {p0}, Landroid/graphics/DrawFilter;-><init>()V

    .line 32
    invoke-static {p1, p2}, Landroid/graphics/PaintFlagsDrawFilter;->nativeConstructor(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PaintFlagsDrawFilter;->mNativeInt:J

    .line 33
    return-void
.end method

.method private static native greylist-max-o nativeConstructor(II)J
.end method
