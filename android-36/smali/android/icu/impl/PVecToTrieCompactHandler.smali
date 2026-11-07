.class public Landroid/icu/impl/PVecToTrieCompactHandler;
.super Ljava/lang/Object;
.source "PVecToTrieCompactHandler.java"

# interfaces
.implements Landroid/icu/impl/PropsVectors$CompactHandler;


# instance fields
.field public blacklist builder:Landroid/icu/impl/IntTrieBuilder;

.field public blacklist initialValue:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setRowIndexForErrorValue(I)V
    .registers 2
    .param p1, "rowIndex"    # I

    .line 28
    return-void
.end method

.method public blacklist setRowIndexForInitialValue(I)V
    .registers 2
    .param p1, "rowIndex"    # I

    .line 32
    iput p1, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->initialValue:I

    .line 33
    return-void
.end method

.method public blacklist setRowIndexForRange(III)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "rowIndex"    # I

    .line 37
    iget-object v0, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, p3, v2}, Landroid/icu/impl/IntTrieBuilder;->setRange(IIIZ)Z

    .line 38
    return-void
.end method

.method public blacklist startRealValues(I)V
    .registers 9
    .param p1, "rowIndex"    # I

    .line 42
    const v0, 0xffff

    if-gt p1, v0, :cond_16

    .line 46
    new-instance v1, Landroid/icu/impl/IntTrieBuilder;

    iget v4, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->initialValue:I

    iget v5, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->initialValue:I

    const/4 v6, 0x0

    const/4 v2, 0x0

    const v3, 0x186a0

    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/IntTrieBuilder;-><init>([IIIIZ)V

    iput-object v1, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    .line 49
    return-void

    .line 44
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
