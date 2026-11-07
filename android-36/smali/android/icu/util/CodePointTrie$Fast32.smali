.class public final Landroid/icu/util/CodePointTrie$Fast32;
.super Landroid/icu/util/CodePointTrie$Fast;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fast32"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist dataArray:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1030
    const-class v0, Landroid/icu/util/CodePointTrie;

    return-void
.end method

.method constructor blacklist <init>([C[IIII)V
    .registers 13
    .param p1, "index"    # [C
    .param p2, "data32"    # [I
    .param p3, "highStart"    # I
    .param p4, "index3NullOffset"    # I
    .param p5, "dataNullOffset"    # I

    .line 1035
    new-instance v2, Landroid/icu/util/CodePointTrie$Data32;

    invoke-direct {v2, p2}, Landroid/icu/util/CodePointTrie$Data32;-><init>([I)V

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

    .line 1036
    iput-object p2, v0, Landroid/icu/util/CodePointTrie$Fast32;->dataArray:[I

    .line 1037
    return-void
.end method

.method public static blacklist fromBinary(Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie$Fast32;
    .registers 3
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 1048
    sget-object v0, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    sget-object v1, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_32:Landroid/icu/util/CodePointTrie$ValueWidth;

    invoke-static {v0, v1, p0}, Landroid/icu/util/CodePointTrie;->fromBinary(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie;

    move-result-object v0

    check-cast v0, Landroid/icu/util/CodePointTrie$Fast32;

    return-object v0
.end method


# virtual methods
.method public final blacklist bmpGet(I)I
    .registers 4
    .param p1, "c"    # I

    .line 1064
    nop

    .line 1065
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Fast32;->dataArray:[I

    invoke-virtual {p0, p1}, Landroid/icu/util/CodePointTrie$Fast32;->fastIndex(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final blacklist get(I)I
    .registers 4
    .param p1, "c"    # I

    .line 1056
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Fast32;->dataArray:[I

    invoke-virtual {p0, p1}, Landroid/icu/util/CodePointTrie$Fast32;->cpIndex(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final blacklist suppGet(I)I
    .registers 4
    .param p1, "c"    # I

    .line 1073
    nop

    .line 1074
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Fast32;->dataArray:[I

    sget-object v1, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    invoke-virtual {p0, v1, p1}, Landroid/icu/util/CodePointTrie$Fast32;->smallIndex(Landroid/icu/util/CodePointTrie$Type;I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method
