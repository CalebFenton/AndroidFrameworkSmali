.class public abstract Ljavax/net/ssl/SNIServerName;
.super Ljava/lang/Object;
.source "SNIServerName.java"


# static fields
.field private static final greylist-max-o HEXES:[C


# instance fields
.field private final greylist-max-o encoded:[B

.field private final greylist-max-o type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljavax/net/ssl/SNIServerName;->HEXES:[C

    return-void
.end method

.method protected constructor whitelist test-api <init>(I[B)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "encoded"    # [B

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-ltz p1, :cond_26

    .line 78
    const/16 v0, 0xff

    if-gt p1, v0, :cond_1e

    .line 82
    iput p1, p0, Ljavax/net/ssl/SNIServerName;->type:I

    .line 84
    if-eqz p2, :cond_16

    .line 88
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    .line 89
    return-void

    .line 85
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Server name encoded value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Server name type cannot be greater than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Server name type cannot be less than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o toHexString([B)Ljava/lang/String;
    .registers 9
    .param p0, "bytes"    # [B

    .line 192
    array-length v0, p0

    if-nez v0, :cond_6

    .line 193
    const-string v0, "(empty)"

    return-object v0

    .line 196
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 197
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 198
    .local v1, "isInitial":Z
    array-length v2, p0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_37

    aget-byte v4, p0, v3

    .line 199
    .local v4, "b":B
    if-eqz v1, :cond_1b

    .line 200
    const/4 v1, 0x0

    goto :goto_20

    .line 202
    :cond_1b
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :goto_20
    and-int/lit16 v5, v4, 0xff

    .line 206
    .local v5, "k":I
    sget-object v6, Ljavax/net/ssl/SNIServerName;->HEXES:[C

    ushr-int/lit8 v7, v5, 0x4

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    sget-object v6, Ljavax/net/ssl/SNIServerName;->HEXES:[C

    and-int/lit8 v7, v5, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    .end local v4    # "b":B
    .end local v5    # "k":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 210
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 119
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 120
    return v0

    .line 123
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    .line 124
    return v3

    .line 127
    :cond_10
    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/SNIServerName;

    .line 128
    .local v1, "that":Ljavax/net/ssl/SNIServerName;
    iget v2, p0, Ljavax/net/ssl/SNIServerName;->type:I

    iget v4, v1, Ljavax/net/ssl/SNIServerName;->type:I

    if-ne v2, v4, :cond_24

    iget-object v2, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    iget-object v4, v1, Ljavax/net/ssl/SNIServerName;->encoded:[B

    .line 129
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    move v0, v3

    .line 128
    :goto_25
    return v0
.end method

.method public final whitelist test-api getEncoded()[B
    .registers 2

    .line 107
    iget-object v0, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final whitelist test-api getType()I
    .registers 2

    .line 98
    iget v0, p0, Ljavax/net/ssl/SNIServerName;->type:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 142
    const/16 v0, 0x11

    .line 143
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ljavax/net/ssl/SNIServerName;->type:I

    add-int/2addr v1, v2

    .line 144
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 146
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 183
    iget v0, p0, Ljavax/net/ssl/SNIServerName;->type:I

    if-nez v0, :cond_1e

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type=host_name (0), value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    invoke-static {v1}, Ljavax/net/ssl/SNIServerName;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/net/ssl/SNIServerName;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    invoke-static {v1}, Ljavax/net/ssl/SNIServerName;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
