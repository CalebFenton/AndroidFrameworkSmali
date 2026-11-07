.class public final Landroid/icu/util/CodePointTrie$Fast8;
.super Landroid/icu/util/CodePointTrie$Fast;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fast8"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist dataArray:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1083
    const-class v0, Landroid/icu/util/CodePointTrie;

    return-void
.end method

.method constructor blacklist <init>([C[BIII)V
    .registers 13
    .param p1, "index"    # [C
    .param p2, "data8"    # [B
    .param p3, "highStart"    # I
    .param p4, "index3NullOffset"    # I
    .param p5, "dataNullOffset"    # I

    .line 1088
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
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/CodePointTrie$Fast;-><init>([CLandroid/icu/util/CodePointTrie$Data;IIILandroid/icu/util/CodePointTrie-IA;)V

    .line 1089
    iput-object p2, v0, Landroid/icu/util/CodePointTrie$Fast8;->dataArray:[B

    .line 1090
    return-void
.end method

.method public static blacklist fromBinary(Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie$Fast8;
    .registers 3
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 1101
    sget-object v0, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    sget-object v1, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_8:Landroid/icu/util/CodePointTrie$ValueWidth;

    invoke-static {v0, v1, p0}, Landroid/icu/util/CodePointTrie;->fromBinary(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie;

    move-result-object v0

    check-cast v0, Landroid/icu/util/CodePointTrie$Fast8;

    return-object v0
.end method


# virtual methods
.method public final blacklist bmpGet(I)I
    .registers 4
    .param p1, "c"    # I

    .line 1117
    nop

    .line 1118
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Fast8;->dataArray:[B

    invoke-virtual {p0, p1}, Landroid/icu/util/CodePointTrie$Fast8;->fastIndex(I)I

    move-result v1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final blacklist get(I)I
    .registers 4
    .param p1, "c"    # I

    .line 1109
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Fast8;->dataArray:[B

    invoke-virtual {p0, p1}, Landroid/icu/util/CodePointTrie$Fast8;->cpIndex(I)I

    move-result v1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final blacklist suppGet(I)I
    .registers 4
    .param p1, "c"    # I

    .line 1126
    nop

    .line 1127
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Fast8;->dataArray:[B

    sget-object v1, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    invoke-virtual {p0, v1, p1}, Landroid/icu/util/CodePointTrie$Fast8;->smallIndex(Landroid/icu/util/CodePointTrie$Type;I)I

    move-result v1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
