.class final Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;
.super Landroid/icu/util/CodePointMap$StringIterator;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointTrie$Fast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FastStringIterator"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/util/CodePointTrie$Fast;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/util/CodePointTrie$Fast;Ljava/lang/CharSequence;I)V
    .registers 4
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "sIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 802
    iput-object p1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Fast;

    .line 803
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/CodePointMap$StringIterator;-><init>(Landroid/icu/util/CodePointMap;Ljava/lang/CharSequence;I)V

    .line 804
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/CodePointTrie$Fast;Ljava/lang/CharSequence;ILandroid/icu/util/CodePointTrie-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;-><init>(Landroid/icu/util/CodePointTrie$Fast;Ljava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public blacklist next()Z
    .registers 7

    .line 808
    iget v0, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 809
    const/4 v0, 0x0

    return v0

    .line 811
    :cond_c
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 812
    .local v0, "lead":C
    iput v0, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    .line 814
    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    .line 815
    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Fast;

    iget v3, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    invoke-virtual {v1, v3}, Landroid/icu/util/CodePointTrie$Fast;->fastIndex(I)I

    move-result v1

    .local v1, "dataIndex":I
    goto :goto_64

    .line 818
    .end local v1    # "dataIndex":I
    :cond_2a
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    iget v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    iget-object v3, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_5f

    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->s:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    .line 819
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v3, v1

    .local v3, "trail":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 820
    iget v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    .line 821
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    iput v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    .line 822
    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Fast;

    sget-object v4, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    iget v5, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    invoke-virtual {v1, v4, v5}, Landroid/icu/util/CodePointTrie$Fast;->smallIndex(Landroid/icu/util/CodePointTrie$Type;I)I

    move-result v1

    .restart local v1    # "dataIndex":I
    goto :goto_64

    .line 824
    .end local v1    # "dataIndex":I
    .end local v3    # "trail":C
    :cond_5f
    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Fast;

    iget v1, v1, Landroid/icu/util/CodePointTrie$Fast;->dataLength:I

    sub-int/2addr v1, v2

    .line 827
    .restart local v1    # "dataIndex":I
    :goto_64
    iget-object v3, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Fast;

    iget-object v3, v3, Landroid/icu/util/CodePointTrie$Fast;->data:Landroid/icu/util/CodePointTrie$Data;

    invoke-virtual {v3, v1}, Landroid/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v3

    iput v3, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->value:I

    .line 828
    return v2
.end method

.method public blacklist previous()Z
    .registers 7

    .line 833
    iget v0, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    if-gtz v0, :cond_6

    .line 834
    const/4 v0, 0x0

    return v0

    .line 836
    :cond_6
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 837
    .local v0, "trail":C
    iput v0, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    .line 839
    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_23

    .line 840
    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Fast;

    iget v3, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    invoke-virtual {v1, v3}, Landroid/icu/util/CodePointTrie$Fast;->fastIndex(I)I

    move-result v1

    .local v1, "dataIndex":I
    goto :goto_58

    .line 843
    .end local v1    # "dataIndex":I
    :cond_23
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v1

    if-nez v1, :cond_53

    iget v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    if-lez v1, :cond_53

    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->s:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    sub-int/2addr v3, v2

    .line 844
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v3, v1

    .local v3, "lead":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 845
    iget v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    .line 846
    invoke-static {v3, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    iput v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    .line 847
    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Fast;

    sget-object v4, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    iget v5, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    invoke-virtual {v1, v4, v5}, Landroid/icu/util/CodePointTrie$Fast;->smallIndex(Landroid/icu/util/CodePointTrie$Type;I)I

    move-result v1

    .restart local v1    # "dataIndex":I
    goto :goto_58

    .line 849
    .end local v1    # "dataIndex":I
    .end local v3    # "lead":C
    :cond_53
    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Fast;

    iget v1, v1, Landroid/icu/util/CodePointTrie$Fast;->dataLength:I

    sub-int/2addr v1, v2

    .line 852
    .restart local v1    # "dataIndex":I
    :goto_58
    iget-object v3, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Fast;

    iget-object v3, v3, Landroid/icu/util/CodePointTrie$Fast;->data:Landroid/icu/util/CodePointTrie$Data;

    invoke-virtual {v3, v1}, Landroid/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v3

    iput v3, p0, Landroid/icu/util/CodePointTrie$Fast$FastStringIterator;->value:I

    .line 853
    return v2
.end method
