.class public abstract Landroid/icu/util/CodePointTrie$Small;
.super Landroid/icu/util/CodePointTrie;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Small"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>([CLandroid/icu/util/CodePointTrie$Data;III)V
    .registers 13
    .param p1, "index"    # [C
    .param p2, "data"    # Landroid/icu/util/CodePointTrie$Data;
    .param p3, "highStart"    # I
    .param p4, "index3NullOffset"    # I
    .param p5, "dataNullOffset"    # I

    .line 866
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "index":[C
    .end local p2    # "data":Landroid/icu/util/CodePointTrie$Data;
    .end local p3    # "highStart":I
    .end local p4    # "index3NullOffset":I
    .end local p5    # "dataNullOffset":I
    .local v1, "index":[C
    .local v2, "data":Landroid/icu/util/CodePointTrie$Data;
    .local v3, "highStart":I
    .local v4, "index3NullOffset":I
    .local v5, "dataNullOffset":I
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/CodePointTrie;-><init>([CLandroid/icu/util/CodePointTrie$Data;IIILandroid/icu/util/CodePointTrie-IA;)V

    .line 867
    return-void
.end method

.method synthetic constructor blacklist <init>([CLandroid/icu/util/CodePointTrie$Data;IIILandroid/icu/util/CodePointTrie-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/icu/util/CodePointTrie$Small;-><init>([CLandroid/icu/util/CodePointTrie$Data;III)V

    return-void
.end method

.method public static blacklist fromBinary(Landroid/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie$Small;
    .registers 3
    .param p0, "valueWidth"    # Landroid/icu/util/CodePointTrie$ValueWidth;
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .line 881
    sget-object v0, Landroid/icu/util/CodePointTrie$Type;->SMALL:Landroid/icu/util/CodePointTrie$Type;

    invoke-static {v0, p0, p1}, Landroid/icu/util/CodePointTrie;->fromBinary(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie;

    move-result-object v0

    check-cast v0, Landroid/icu/util/CodePointTrie$Small;

    return-object v0
.end method


# virtual methods
.method protected final blacklist cpIndex(I)I
    .registers 3
    .param p1, "c"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 897
    if-ltz p1, :cond_17

    .line 898
    const/16 v0, 0xfff

    if-gt p1, v0, :cond_b

    .line 899
    invoke-virtual {p0, p1}, Landroid/icu/util/CodePointTrie$Small;->fastIndex(I)I

    move-result v0

    return v0

    .line 900
    :cond_b
    const v0, 0x10ffff

    if-gt p1, v0, :cond_17

    .line 901
    sget-object v0, Landroid/icu/util/CodePointTrie$Type;->SMALL:Landroid/icu/util/CodePointTrie$Type;

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/CodePointTrie$Small;->smallIndex(Landroid/icu/util/CodePointTrie$Type;I)I

    move-result v0

    return v0

    .line 904
    :cond_17
    iget v0, p0, Landroid/icu/util/CodePointTrie$Small;->dataLength:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final blacklist getType()Landroid/icu/util/CodePointTrie$Type;
    .registers 2

    .line 888
    sget-object v0, Landroid/icu/util/CodePointTrie$Type;->SMALL:Landroid/icu/util/CodePointTrie$Type;

    return-object v0
.end method

.method public final blacklist stringIterator(Ljava/lang/CharSequence;I)Landroid/icu/util/CodePointMap$StringIterator;
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "sIndex"    # I

    .line 912
    new-instance v0, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/icu/util/CodePointTrie$Small$SmallStringIterator;-><init>(Landroid/icu/util/CodePointTrie$Small;Ljava/lang/CharSequence;ILandroid/icu/util/CodePointTrie-IA;)V

    return-object v0
.end method
