.class public Landroid/icu/impl/PVecToTrieCompactHandler;
.super Ljava/lang/Object;
.source "PVecToTrieCompactHandler.java"

# interfaces
.implements Landroid/icu/impl/PropsVectors$CompactHandler;


# instance fields
.field public builder:Landroid/icu/impl/IntTrieBuilder;

.field public initialValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public setRowIndexForErrorValue(I)V
    .locals 0
    .param p1, "rowIndex"    # I

    #@0
    .prologue
    .line 20
    return-void
.end method

.method public setRowIndexForInitialValue(I)V
    .locals 0
    .param p1, "rowIndex"    # I

    #@0
    .prologue
    .line 24
    iput p1, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->initialValue:I

    #@2
    .line 23
    return-void
.end method

.method public setRowIndexForRange(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "rowIndex"    # I

    #@0
    .prologue
    .line 28
    iget-object v0, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    #@2
    add-int/lit8 v1, p2, 0x1

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {v0, p1, v1, p3, v2}, Landroid/icu/impl/IntTrieBuilder;->setRange(IIIZ)Z

    #@8
    .line 27
    return-void
.end method

.method public startRealValues(I)V
    .locals 6
    .param p1, "rowIndex"    # I

    #@0
    .prologue
    .line 32
    const v0, 0xffff

    #@3
    if-le p1, v0, :cond_0

    #@5
    .line 34
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@7
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@a
    throw v0

    #@b
    .line 36
    :cond_0
    new-instance v0, Landroid/icu/impl/IntTrieBuilder;

    #@d
    iget v3, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->initialValue:I

    #@f
    .line 37
    iget v4, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->initialValue:I

    #@11
    .line 36
    const/4 v1, 0x0

    #@12
    const v2, 0x186a0

    #@15
    .line 37
    const/4 v5, 0x0

    #@16
    .line 36
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;-><init>([IIIIZ)V

    #@19
    iput-object v0, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    #@1b
    .line 31
    return-void
.end method
