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
.field private builder:Landroid/icu/impl/IntTrieBuilder;


# direct methods
.method public constructor <init>(Landroid/icu/impl/IntTrieBuilder;)V
    .locals 0
    .param p1, "inBuilder"    # Landroid/icu/impl/IntTrieBuilder;

    #@0
    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 532
    iput-object p1, p0, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;->builder:Landroid/icu/impl/IntTrieBuilder;

    #@5
    .line 531
    return-void
.end method


# virtual methods
.method public getFoldedValue(II)I
    .locals 6
    .param p1, "start"    # I
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 536
    iget-object v4, p0, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;->builder:Landroid/icu/impl/IntTrieBuilder;

    #@3
    iget v1, v4, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    #@5
    .line 537
    .local v1, "initialValue":I
    add-int/lit16 v2, p1, 0x400

    #@7
    .line 538
    .local v2, "limit":I
    :goto_0
    if-ge p1, v2, :cond_2

    #@9
    .line 539
    const/4 v4, 0x1

    #@a
    new-array v0, v4, [Z

    #@c
    .line 540
    .local v0, "inBlockZero":[Z
    iget-object v4, p0, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;->builder:Landroid/icu/impl/IntTrieBuilder;

    #@e
    invoke-virtual {v4, p1, v0}, Landroid/icu/impl/IntTrieBuilder;->getValue(I[Z)I

    #@11
    move-result v3

    #@12
    .line 541
    .local v3, "value":I
    aget-boolean v4, v0, v5

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 542
    add-int/lit8 p1, p1, 0x20

    #@18
    goto :goto_0

    #@19
    .line 543
    :cond_0
    if-eq v3, v1, :cond_1

    #@1b
    .line 544
    return p2

    #@1c
    .line 546
    :cond_1
    add-int/lit8 p1, p1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 549
    .end local v0    # "inBlockZero":[Z
    .end local v3    # "value":I
    :cond_2
    return v5
.end method
