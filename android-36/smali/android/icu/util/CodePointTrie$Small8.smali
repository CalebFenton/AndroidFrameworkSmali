.class public final Landroid/icu/util/CodePointTrie$Small8;
.super Landroid/icu/util/CodePointTrie$Small;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Small8"
.end annotation


# direct methods
.method constructor blacklist <init>([C[BIII)V
    .registers 13
    .param p1, "index"    # [C
    .param p2, "data8"    # [B
    .param p3, "highStart"    # I
    .param p4, "index3NullOffset"    # I
    .param p5, "dataNullOffset"    # I

    .line 1187
    new-instance v2, Landroid/icu/util/CodePointTrie$Data8;

    invoke-direct {v2, p2}, Landroid/icu/util/CodePointTrie$Data8;-><init>([B)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "index":[C
    .end local p3    # "highStart":I
    .end local p4    # "index3NullOffset":I
    .end local p5    # "dataNullOffset":I
    .local v1, "index":[C
    .local v3, "highStart":I
    .local v4, "index3NullOffset":I
    .local v5, "dataNullOffset":I
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/CodePointTrie$Small;-><init>([CLandroid/icu/util/CodePointTrie$Data;IIILandroid/icu/util/CodePointTrie-IA;)V

    .line 1188
    return-void
.end method

.method public static blacklist fromBinary(Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie$Small8;
    .registers 3
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 1199
    sget-object v0, Landroid/icu/util/CodePointTrie$Type;->SMALL:Landroid/icu/util/CodePointTrie$Type;

    sget-object v1, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_8:Landroid/icu/util/CodePointTrie$ValueWidth;

    invoke-static {v0, v1, p0}, Landroid/icu/util/CodePointTrie;->fromBinary(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie;

    move-result-object v0

    check-cast v0, Landroid/icu/util/CodePointTrie$Small8;

    return-object v0
.end method
