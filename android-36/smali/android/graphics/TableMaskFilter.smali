.class public Landroid/graphics/TableMaskFilter;
.super Landroid/graphics/MaskFilter;
.source "TableMaskFilter.java"


# direct methods
.method private constructor greylist-max-o <init>(J)V
    .registers 3
    .param p1, "ni"    # J

    .line 34
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    .line 35
    iput-wide p1, p0, Landroid/graphics/TableMaskFilter;->native_instance:J

    .line 36
    return-void
.end method

.method public constructor greylist-max-o <init>([B)V
    .registers 4
    .param p1, "table"    # [B

    .line 27
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    .line 28
    array-length v0, p1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_f

    .line 31
    invoke-static {p1}, Landroid/graphics/TableMaskFilter;->nativeNewTable([B)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/TableMaskFilter;->native_instance:J

    .line 32
    return-void

    .line 29
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "table.length must be >= 256"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist CreateClipTable(II)Landroid/graphics/TableMaskFilter;
    .registers 5
    .param p0, "min"    # I
    .param p1, "max"    # I

    .line 40
    new-instance v0, Landroid/graphics/TableMaskFilter;

    invoke-static {p0, p1}, Landroid/graphics/TableMaskFilter;->nativeNewClip(II)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/TableMaskFilter;-><init>(J)V

    return-object v0
.end method

.method public static greylist-max-o CreateGammaTable(F)Landroid/graphics/TableMaskFilter;
    .registers 4
    .param p0, "gamma"    # F

    .line 44
    new-instance v0, Landroid/graphics/TableMaskFilter;

    invoke-static {p0}, Landroid/graphics/TableMaskFilter;->nativeNewGamma(F)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/TableMaskFilter;-><init>(J)V

    return-object v0
.end method

.method private static native greylist-max-o nativeNewClip(II)J
.end method

.method private static native greylist-max-o nativeNewGamma(F)J
.end method

.method private static native greylist-max-o nativeNewTable([B)J
.end method
