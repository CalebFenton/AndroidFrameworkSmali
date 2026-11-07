.class Ljava/util/Base64$EncOutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncOutputStream"
.end annotation


# instance fields
.field private greylist-max-o b0:I

.field private greylist-max-o b1:I

.field private greylist-max-o b2:I

.field private final greylist-max-o base64:[C

.field private blacklist buf:[B

.field private greylist-max-o closed:Z

.field private final greylist-max-o doPadding:Z

.field private greylist-max-o leftover:I

.field private final greylist-max-o linemax:I

.field private greylist-max-o linepos:I

.field private final greylist-max-o newline:[B


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/OutputStream;[C[BIZ)V
    .registers 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "base64"    # [C
    .param p3, "newline"    # [B
    .param p4, "linemax"    # I
    .param p5, "doPadding"    # Z

    .line 902
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 889
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    .line 891
    iput-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    .line 897
    iput v0, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    .line 903
    iput-object p2, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    .line 904
    iput-object p3, p0, Ljava/util/Base64$EncOutputStream;->newline:[B

    .line 905
    iput p4, p0, Ljava/util/Base64$EncOutputStream;->linemax:I

    .line 906
    iput-boolean p5, p0, Ljava/util/Base64$EncOutputStream;->doPadding:Z

    .line 907
    if-gtz p4, :cond_17

    const/16 v0, 0x1fbc

    goto :goto_18

    :cond_17
    move v0, p4

    :goto_18
    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/Base64$EncOutputStream;->buf:[B

    .line 908
    return-void
.end method

.method private greylist-max-o checkNewline()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 918
    iget v0, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    iget v1, p0, Ljava/util/Base64$EncOutputStream;->linemax:I

    if-ne v0, v1, :cond_10

    .line 919
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 920
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    .line 922
    :cond_10
    return-void
.end method

.method private blacklist writeb4(CCCC)V
    .registers 9
    .param p1, "b1"    # C
    .param p2, "b2"    # C
    .param p3, "b3"    # C
    .param p4, "b4"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 925
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->buf:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 926
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->buf:[B

    const/4 v1, 0x1

    int-to-byte v3, p2

    aput-byte v3, v0, v1

    .line 927
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->buf:[B

    const/4 v1, 0x2

    int-to-byte v3, p3

    aput-byte v3, v0, v1

    .line 928
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->buf:[B

    const/4 v1, 0x3

    int-to-byte v3, p4

    aput-byte v3, v0, v1

    .line 929
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->buf:[B

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 930
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 990
    iget-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    if-nez v0, :cond_83

    .line 991
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    .line 992
    iget v1, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    const/16 v2, 0x3d

    const/4 v3, 0x2

    if-ne v1, v0, :cond_3c

    .line 993
    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 994
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shr-int/lit8 v3, v4, 0x2

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 995
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v3, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 996
    iget-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_7b

    .line 997
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 998
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_7b

    .line 1000
    :cond_3c
    iget v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    if-ne v0, v3, :cond_7b

    .line 1001
    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 1002
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shr-int/2addr v4, v3

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1003
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1004
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shl-int/lit8 v3, v4, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1005
    iget-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_7b

    .line 1006
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1009
    :cond_7b
    :goto_7b
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    .line 1010
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1012
    :cond_83
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 912
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 913
    .local v1, "buf":[B
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 914
    invoke-virtual {p0, v1, v3, v0}, Ljava/util/Base64$EncOutputStream;->write([BII)V

    .line 915
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 16
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    iget-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    if-nez v0, :cond_128

    .line 936
    if-ltz p2, :cond_122

    if-ltz p3, :cond_122

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_122

    .line 938
    if-nez p3, :cond_f

    .line 939
    return-void

    .line 940
    :cond_f
    iget v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_6f

    .line 941
    iget v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    if-ne v0, v2, :cond_2c

    .line 942
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    .line 943
    add-int/lit8 p3, p3, -0x1

    .line 944
    if-nez p3, :cond_2b

    .line 945
    iget p2, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    add-int/2addr p2, v2

    iput p2, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    .line 946
    return-void

    .line 944
    :cond_2b
    move p2, v0

    .line 949
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_2c
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Ljava/util/Base64$EncOutputStream;->b2:I

    .line 950
    add-int/lit8 p3, p3, -0x1

    .line 951
    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 952
    iget-object p2, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v3, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shr-int/2addr v3, v1

    aget-char p2, p2, v3

    iget-object v3, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aget-char v3, v3, v4

    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v5, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shl-int/2addr v5, v1

    and-int/lit8 v5, v5, 0x3f

    iget v6, p0, Ljava/util/Base64$EncOutputStream;->b2:I

    shr-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    aget-char v4, v4, v5

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v6, p0, Ljava/util/Base64$EncOutputStream;->b2:I

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-direct {p0, p2, v3, v4, v5}, Ljava/util/Base64$EncOutputStream;->writeb4(CCCC)V

    .line 956
    iget p2, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    move p2, v0

    .line 958
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_6f
    div-int/lit8 v0, p3, 0x3

    .line 959
    .local v0, "nBits24":I
    mul-int/lit8 v3, v0, 0x3

    sub-int v3, p3, v3

    iput v3, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    .line 961
    :goto_77
    if-lez v0, :cond_ff

    .line 962
    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 963
    iget v3, p0, Ljava/util/Base64$EncOutputStream;->linemax:I

    if-gtz v3, :cond_84

    iget-object v3, p0, Ljava/util/Base64$EncOutputStream;->buf:[B

    array-length v3, v3

    goto :goto_8a

    :cond_84
    iget-object v3, p0, Ljava/util/Base64$EncOutputStream;->buf:[B

    array-length v3, v3

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    sub-int/2addr v3, v4

    .line 964
    .local v3, "dl":I
    :goto_8a
    div-int/lit8 v4, v3, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, p2

    .line 965
    .local v4, "sl":I
    const/4 v5, 0x0

    .line 966
    .local v5, "dp":I
    move v6, p2

    .local v6, "sp":I
    :goto_95
    if-ge v6, v4, :cond_ec

    .line 967
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "sp":I
    .local v7, "sp":I
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "sp":I
    .local v8, "sp":I
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "sp":I
    .restart local v7    # "sp":I
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v6, v8

    .line 970
    .local v6, "bits":I
    iget-object v8, p0, Ljava/util/Base64$EncOutputStream;->buf:[B

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "dp":I
    .local v9, "dp":I
    iget-object v10, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v11, v6, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v5

    .line 971
    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->buf:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "dp":I
    .local v8, "dp":I
    iget-object v10, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v11, v6, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    .line 972
    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->buf:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dp":I
    .restart local v9    # "dp":I
    iget-object v10, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v11, v6, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    int-to-byte v10, v10

    aput-byte v10, v5, v8

    .line 973
    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->buf:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "dp":I
    .restart local v8    # "dp":I
    iget-object v10, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    and-int/lit8 v11, v6, 0x3f

    aget-char v10, v10, v11

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    .line 974
    .end local v6    # "bits":I
    move v6, v7

    move v5, v8

    goto :goto_95

    .line 975
    .end local v7    # "sp":I
    .end local v8    # "dp":I
    .restart local v5    # "dp":I
    :cond_ec
    iget-object v6, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v7, p0, Ljava/util/Base64$EncOutputStream;->buf:[B

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 976
    move p2, v4

    .line 977
    iget v6, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    add-int/2addr v6, v5

    iput v6, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    .line 978
    div-int/lit8 v6, v5, 0x4

    sub-int/2addr v0, v6

    .line 979
    .end local v3    # "dl":I
    .end local v4    # "sl":I
    .end local v5    # "dp":I
    goto/16 :goto_77

    .line 980
    :cond_ff
    iget v3, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    if-ne v3, v2, :cond_10d

    .line 981
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    move p2, v1

    goto :goto_121

    .line 982
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_10d
    iget v2, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    if-ne v2, v1, :cond_121

    .line 983
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    .line 984
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    .line 986
    :cond_121
    :goto_121
    return-void

    .line 937
    .end local v0    # "nBits24":I
    :cond_122
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 935
    :cond_128
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
