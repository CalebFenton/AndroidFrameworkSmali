.class final Landroid/icu/util/CodePointTrie$Data16;
.super Landroid/icu/util/CodePointTrie$Data;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Data16"
.end annotation


# instance fields
.field blacklist array:[C


# direct methods
.method constructor blacklist <init>([C)V
    .registers 3
    .param p1, "a"    # [C

    .line 595
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/util/CodePointTrie$Data;-><init>(Landroid/icu/util/CodePointTrie-IA;)V

    iput-object p1, p0, Landroid/icu/util/CodePointTrie$Data16;->array:[C

    return-void
.end method


# virtual methods
.method blacklist getDataLength()I
    .registers 2

    .line 597
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Data16;->array:[C

    array-length v0, v0

    return v0
.end method

.method blacklist getFromIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .line 598
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Data16;->array:[C

    aget-char v0, v0, p1

    return v0
.end method

.method blacklist getValueWidth()Landroid/icu/util/CodePointTrie$ValueWidth;
    .registers 2

    .line 596
    sget-object v0, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_16:Landroid/icu/util/CodePointTrie$ValueWidth;

    return-object v0
.end method

.method blacklist write(Ljava/io/DataOutputStream;)I
    .registers 6
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Data16;->array:[C

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-char v3, v0, v2

    .local v3, "v":C
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeChar(I)V

    .end local v3    # "v":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 601
    :cond_e
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Data16;->array:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
