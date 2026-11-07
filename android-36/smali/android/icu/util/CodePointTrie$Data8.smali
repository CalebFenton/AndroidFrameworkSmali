.class final Landroid/icu/util/CodePointTrie$Data8;
.super Landroid/icu/util/CodePointTrie$Data;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Data8"
.end annotation


# instance fields
.field blacklist array:[B


# direct methods
.method constructor blacklist <init>([B)V
    .registers 3
    .param p1, "a"    # [B

    .line 619
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/util/CodePointTrie$Data;-><init>(Landroid/icu/util/CodePointTrie-IA;)V

    iput-object p1, p0, Landroid/icu/util/CodePointTrie$Data8;->array:[B

    return-void
.end method


# virtual methods
.method blacklist getDataLength()I
    .registers 2

    .line 621
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Data8;->array:[B

    array-length v0, v0

    return v0
.end method

.method blacklist getFromIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .line 622
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Data8;->array:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method blacklist getValueWidth()Landroid/icu/util/CodePointTrie$ValueWidth;
    .registers 2

    .line 620
    sget-object v0, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_8:Landroid/icu/util/CodePointTrie$ValueWidth;

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

    .line 624
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Data8;->array:[B

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-byte v3, v0, v2

    .local v3, "v":B
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .end local v3    # "v":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 625
    :cond_e
    iget-object v0, p0, Landroid/icu/util/CodePointTrie$Data8;->array:[B

    array-length v0, v0

    return v0
.end method
