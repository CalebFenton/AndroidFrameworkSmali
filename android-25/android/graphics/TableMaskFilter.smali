.class public Landroid/graphics/TableMaskFilter;
.super Landroid/graphics/MaskFilter;
.source "TableMaskFilter.java"


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "ni"    # J

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    #@3
    .line 32
    iput-wide p1, p0, Landroid/graphics/TableMaskFilter;->native_instance:J

    #@5
    .line 31
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "table"    # [B

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    #@3
    .line 25
    array-length v0, p1

    #@4
    const/16 v1, 0x100

    #@6
    if-ge v0, v1, :cond_0

    #@8
    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v1, "table.length must be >= 256"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 28
    :cond_0
    invoke-static {p1}, Landroid/graphics/TableMaskFilter;->nativeNewTable([B)J

    #@14
    move-result-wide v0

    #@15
    iput-wide v0, p0, Landroid/graphics/TableMaskFilter;->native_instance:J

    #@17
    .line 24
    return-void
.end method

.method public static CreateClipTable(II)Landroid/graphics/TableMaskFilter;
    .locals 4
    .param p0, "min"    # I
    .param p1, "max"    # I

    #@0
    .prologue
    .line 36
    new-instance v0, Landroid/graphics/TableMaskFilter;

    #@2
    invoke-static {p0, p1}, Landroid/graphics/TableMaskFilter;->nativeNewClip(II)J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Landroid/graphics/TableMaskFilter;-><init>(J)V

    #@9
    return-object v0
.end method

.method public static CreateGammaTable(F)Landroid/graphics/TableMaskFilter;
    .locals 4
    .param p0, "gamma"    # F

    #@0
    .prologue
    .line 40
    new-instance v0, Landroid/graphics/TableMaskFilter;

    #@2
    invoke-static {p0}, Landroid/graphics/TableMaskFilter;->nativeNewGamma(F)J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Landroid/graphics/TableMaskFilter;-><init>(J)V

    #@9
    return-object v0
.end method

.method private static native nativeNewClip(II)J
.end method

.method private static native nativeNewGamma(F)J
.end method

.method private static native nativeNewTable([B)J
.end method
