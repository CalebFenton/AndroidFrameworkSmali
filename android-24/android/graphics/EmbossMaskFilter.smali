.class public Landroid/graphics/EmbossMaskFilter;
.super Landroid/graphics/MaskFilter;
.source "EmbossMaskFilter.java"


# direct methods
.method public constructor <init>([FFFF)V
    .locals 2
    .param p1, "direction"    # [F
    .param p2, "ambient"    # F
    .param p3, "specular"    # F
    .param p4, "blurRadius"    # F

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    #@3
    .line 30
    array-length v0, p1

    #@4
    const/4 v1, 0x3

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 31
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@9
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@c
    throw v0

    #@d
    .line 33
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/EmbossMaskFilter;->nativeConstructor([FFFF)J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Landroid/graphics/EmbossMaskFilter;->native_instance:J

    #@13
    .line 29
    return-void
.end method

.method private static native nativeConstructor([FFFF)J
.end method
