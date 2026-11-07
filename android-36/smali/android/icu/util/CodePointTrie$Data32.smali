.class final Landroid/icu/util/CodePointTrie$Data32;
.super Landroid/icu/util/CodePointTrie$Data;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Data32"
.end annotation


# instance fields
.field blacklist array:[I


# direct methods
.method constructor blacklist <init>([I)V
    .registers 3
    .param p1, "a"    # [I

    .line 607
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/util/CodePointTrie$Data;-><init>(Landroid/icu/util/CodePointTrie-IA;)V

    iput-object p1, p0, Landroid/icu/util/CodePointTrie$Data32;->array:[I

    return-void
.end method


# virtual methods
.method blacklist getDataLength()I
    .registers 2

    .line 609
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Data32;->array:[I

    array-length v0, v0

    return v0
.end method

.method blacklist getFromIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .line 610
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Data32;->array:[I

    aget v0, v0, p1

    return v0
.end method

.method blacklist getValueWidth()Landroid/icu/util/CodePointTrie$ValueWidth;
    .registers 2

    .line 608
    sget-object v0, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_32:Landroid/icu/util/CodePointTrie$ValueWidth;

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

    .line 612
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Data32;->array:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget v3, v0, v2

    .local v3, "v":I
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 613
    :cond_e
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Data32;->array:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method
