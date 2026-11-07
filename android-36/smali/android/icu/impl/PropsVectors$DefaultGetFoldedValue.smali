.class Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;
.super Ljava/lang/Object;
.source "PropsVectors.java"

# interfaces
.implements Landroid/icu/impl/TrieBuilder$DataManipulate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/PropsVectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultGetFoldedValue"
.end annotation


# instance fields
.field private blacklist builder:Landroid/icu/impl/IntTrieBuilder;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/IntTrieBuilder;)V
    .registers 2
    .param p1, "inBuilder"    # Landroid/icu/impl/IntTrieBuilder;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-object p1, p0, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;->builder:Landroid/icu/impl/IntTrieBuilder;

    .line 539
    return-void
.end method


# virtual methods
.method public blacklist getFoldedValue(II)I
    .registers 8
    .param p1, "start"    # I
    .param p2, "offset"    # I

    .line 543
    iget-object v0, p0, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;->builder:Landroid/icu/impl/IntTrieBuilder;

    iget v0, v0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    .line 544
    .local v0, "initialValue":I
    add-int/lit16 v1, p1, 0x400

    .line 545
    .local v1, "limit":I
    :goto_6
    const/4 v2, 0x0

    if-ge p1, v1, :cond_1f

    .line 546
    const/4 v3, 0x1

    new-array v3, v3, [Z

    .line 547
    .local v3, "inBlockZero":[Z
    iget-object v4, p0, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;->builder:Landroid/icu/impl/IntTrieBuilder;

    invoke-virtual {v4, p1, v3}, Landroid/icu/impl/IntTrieBuilder;->getValue(I[Z)I

    move-result v4

    .line 548
    .local v4, "value":I
    aget-boolean v2, v3, v2

    if-eqz v2, :cond_19

    .line 549
    add-int/lit8 p1, p1, 0x20

    goto :goto_1e

    .line 550
    :cond_19
    if-eq v4, v0, :cond_1c

    .line 551
    return p2

    .line 553
    :cond_1c
    add-int/lit8 p1, p1, 0x1

    .line 555
    .end local v3    # "inBlockZero":[Z
    .end local v4    # "value":I
    :goto_1e
    goto :goto_6

    .line 556
    :cond_1f
    return v2
.end method
