.class final Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;
.super Landroid/icu/util/CodePointMap$StringIterator;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointTrie$Small;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmallStringIterator"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/util/CodePointTrie$Small;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/util/CodePointTrie$Small;Ljava/lang/CharSequence;I)V
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

    .line 916
    iput-object p1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Small;

    .line 917
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/CodePointMap$StringIterator;-><init>(Landroid/icu/util/CodePointMap;Ljava/lang/CharSequence;I)V

    .line 918
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/CodePointTrie$Small;Ljava/lang/CharSequence;ILandroid/icu/util/CodePointTrie-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;-><init>(Landroid/icu/util/CodePointTrie$Small;Ljava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public blacklist next()Z
    .registers 7

    .line 922
    iget v0, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 923
    const/4 v0, 0x0

    return v0

    .line 925
    :cond_c
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 926
    .local v0, "lead":C
    iput v0, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    .line 928
    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    .line 929
    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Small;

    iget v3, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    invoke-virtual {v1, v3}, Landroid/icu/util/CodePointTrie$Small;->cpIndex(I)I

    move-result v1

    .local v1, "dataIndex":I
    goto :goto_64

    .line 932
    .end local v1    # "dataIndex":I
    :cond_2a
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    iget v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    iget-object v3, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_5f

    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->s:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    .line 933
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v3, v1

    .local v3, "trail":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 934
    iget v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    .line 935
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    iput v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    .line 936
    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Small;

    sget-object v4, Landroid/icu/util/CodePointTrie$Type;->SMALL:Landroid/icu/util/CodePointTrie$Type;

    iget v5, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    invoke-virtual {v1, v4, v5}, Landroid/icu/util/CodePointTrie$Small;->smallIndex(Landroid/icu/util/CodePointTrie$Type;I)I

    move-result v1

    .restart local v1    # "dataIndex":I
    goto :goto_64

    .line 938
    .end local v1    # "dataIndex":I
    .end local v3    # "trail":C
    :cond_5f
    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Small;

    iget v1, v1, Landroid/icu/util/CodePointTrie$Small;->dataLength:I

    sub-int/2addr v1, v2

    .line 941
    .restart local v1    # "dataIndex":I
    :goto_64
    iget-object v3, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Small;

    iget-object v3, v3, Landroid/icu/util/CodePointTrie$Small;->data:Landroid/icu/util/CodePointTrie$Data;

    invoke-virtual {v3, v1}, Landroid/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v3

    iput v3, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->value:I

    .line 942
    return v2
.end method

.method public blacklist previous()Z
    .registers 7

    .line 947
    iget v0, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    if-gtz v0, :cond_6

    .line 948
    const/4 v0, 0x0

    return v0

    .line 950
    :cond_6
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 951
    .local v0, "trail":C
    iput v0, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    .line 953
    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_23

    .line 954
    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Small;

    iget v3, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    invoke-virtual {v1, v3}, Landroid/icu/util/CodePointTrie$Small;->cpIndex(I)I

    move-result v1

    .local v1, "dataIndex":I
    goto :goto_58

    .line 957
    .end local v1    # "dataIndex":I
    :cond_23
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v1

    if-nez v1, :cond_53

    iget v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    if-lez v1, :cond_53

    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->s:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    sub-int/2addr v3, v2

    .line 958
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v3, v1

    .local v3, "lead":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 959
    iget v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    .line 960
    invoke-static {v3, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    iput v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    .line 961
    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Small;

    sget-object v4, Landroid/icu/util/CodePointTrie$Type;->SMALL:Landroid/icu/util/CodePointTrie$Type;

    iget v5, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    invoke-virtual {v1, v4, v5}, Landroid/icu/util/CodePointTrie$Small;->smallIndex(Landroid/icu/util/CodePointTrie$Type;I)I

    move-result v1

    .restart local v1    # "dataIndex":I
    goto :goto_58

    .line 963
    .end local v1    # "dataIndex":I
    .end local v3    # "lead":C
    :cond_53
    iget-object v1, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Small;

    iget v1, v1, Landroid/icu/util/CodePointTrie$Small;->dataLength:I

    sub-int/2addr v1, v2

    .line 966
    .restart local v1    # "dataIndex":I
    :goto_58
    iget-object v3, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Landroid/icu/util/CodePointTrie$Small;

    iget-object v3, v3, Landroid/icu/util/CodePointTrie$Small;->data:Landroid/icu/util/CodePointTrie$Data;

    invoke-virtual {v3, v1}, Landroid/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v3

    iput v3, p0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;->value:I

    .line 967
    return v2
.end method
