.class public Landroid/filterfw/format/PrimitiveFormat;
.super Ljava/lang/Object;
.source "PrimitiveFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createByteFormat(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .param p0, "target"    # I

    #@0
    .prologue
    .line 49
    const/4 v0, 0x2

    #@1
    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createByteFormat(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .param p0, "count"    # I
    .param p1, "target"    # I

    #@0
    .prologue
    .line 29
    const/4 v0, 0x2

    #@1
    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createDoubleFormat(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .param p0, "target"    # I

    #@0
    .prologue
    .line 65
    const/4 v0, 0x6

    #@1
    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createDoubleFormat(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .param p0, "count"    # I
    .param p1, "target"    # I

    #@0
    .prologue
    .line 45
    const/4 v0, 0x6

    #@1
    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createFloatFormat(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .param p0, "target"    # I

    #@0
    .prologue
    .line 61
    const/4 v0, 0x5

    #@1
    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createFloatFormat(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .param p0, "count"    # I
    .param p1, "target"    # I

    #@0
    .prologue
    .line 41
    const/4 v0, 0x5

    #@1
    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static createFormat(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 2
    .param p0, "baseType"    # I
    .param p1, "target"    # I

    #@0
    .prologue
    .line 75
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    #@5
    .line 76
    .local v0, "result":Landroid/filterfw/core/MutableFrameFormat;
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensionCount(I)V

    #@9
    .line 77
    return-object v0
.end method

.method private static createFormat(III)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .param p0, "baseType"    # I
    .param p1, "count"    # I
    .param p2, "target"    # I

    #@0
    .prologue
    .line 69
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    #@2
    invoke-direct {v0, p0, p2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    #@5
    .line 70
    .local v0, "result":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(I)V

    #@8
    .line 71
    return-object v0
.end method

.method public static createInt16Format(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .param p0, "target"    # I

    #@0
    .prologue
    .line 53
    const/4 v0, 0x3

    #@1
    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createInt16Format(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .param p0, "count"    # I
    .param p1, "target"    # I

    #@0
    .prologue
    .line 33
    const/4 v0, 0x3

    #@1
    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createInt32Format(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .param p0, "target"    # I

    #@0
    .prologue
    .line 57
    const/4 v0, 0x4

    #@1
    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createInt32Format(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .param p0, "count"    # I
    .param p1, "target"    # I

    #@0
    .prologue
    .line 37
    const/4 v0, 0x4

    #@1
    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
