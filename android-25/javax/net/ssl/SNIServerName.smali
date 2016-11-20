.class public abstract Ljavax/net/ssl/SNIServerName;
.super Ljava/lang/Object;
.source "SNIServerName.java"


# static fields
.field private static final HEXES:[C


# instance fields
.field private final encoded:[B

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, "0123456789ABCDEF"

    #@3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@6
    move-result-object v0

    #@7
    sput-object v0, Ljavax/net/ssl/SNIServerName;->HEXES:[C

    #@9
    .line 47
    return-void
.end method

.method protected constructor <init>(I[B)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "encoded"    # [B

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    if-gez p1, :cond_0

    #@5
    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 77
    const-string/jumbo v1, "Server name type cannot be less than zero"

    #@a
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 78
    :cond_0
    const/16 v0, 0xff

    #@10
    if-le p1, v0, :cond_1

    #@12
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    .line 80
    const-string/jumbo v1, "Server name type cannot be greater than 255"

    #@17
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 82
    :cond_1
    iput p1, p0, Ljavax/net/ssl/SNIServerName;->type:I

    #@1d
    .line 84
    if-nez p2, :cond_2

    #@1f
    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    #@21
    .line 86
    const-string/jumbo v1, "Server name encoded value cannot be null"

    #@24
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 88
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, [B

    #@2e
    iput-object v0, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    #@30
    .line 74
    return-void
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 192
    array-length v5, p0

    #@2
    if-nez v5, :cond_0

    #@4
    .line 193
    const-string/jumbo v4, "(empty)"

    #@7
    return-object v4

    #@8
    .line 196
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    array-length v5, p0

    #@b
    mul-int/lit8 v5, v5, 0x3

    #@d
    add-int/lit8 v5, v5, -0x1

    #@f
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@12
    .line 197
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    #@13
    .line 198
    .local v1, "isInitial":Z
    array-length v5, p0

    #@14
    :goto_0
    if-ge v4, v5, :cond_2

    #@16
    aget-byte v0, p0, v4

    #@18
    .line 199
    .local v0, "b":B
    if-eqz v1, :cond_1

    #@1a
    .line 200
    const/4 v1, 0x0

    #@1b
    .line 205
    :goto_1
    and-int/lit16 v2, v0, 0xff

    #@1d
    .line 206
    .local v2, "k":I
    sget-object v6, Ljavax/net/ssl/SNIServerName;->HEXES:[C

    #@1f
    ushr-int/lit8 v7, v2, 0x4

    #@21
    aget-char v6, v6, v7

    #@23
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 207
    sget-object v6, Ljavax/net/ssl/SNIServerName;->HEXES:[C

    #@28
    and-int/lit8 v7, v2, 0xf

    #@2a
    aget-char v6, v6, v7

    #@2c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 198
    add-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_0

    #@32
    .line 202
    .end local v2    # "k":I
    :cond_1
    const/16 v6, 0x3a

    #@34
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    goto :goto_1

    #@38
    .line 210
    .end local v0    # "b":B
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 119
    if-ne p0, p1, :cond_0

    #@3
    .line 120
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 123
    :cond_0
    invoke-virtual {p0}, Ljavax/net/ssl/SNIServerName;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v3

    #@d
    if-eq v2, v3, :cond_1

    #@f
    .line 124
    return v1

    #@10
    :cond_1
    move-object v0, p1

    #@11
    .line 127
    check-cast v0, Ljavax/net/ssl/SNIServerName;

    #@13
    .line 128
    .local v0, "that":Ljavax/net/ssl/SNIServerName;
    iget v2, p0, Ljavax/net/ssl/SNIServerName;->type:I

    #@15
    iget v3, v0, Ljavax/net/ssl/SNIServerName;->type:I

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 129
    iget-object v1, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    #@1b
    iget-object v2, v0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    #@1d
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@20
    move-result v1

    #@21
    .line 128
    :cond_2
    return v1
.end method

.method public final getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public final getType()I
    .locals 1

    #@0
    .prologue
    .line 98
    iget v0, p0, Ljavax/net/ssl/SNIServerName;->type:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 143
    iget v1, p0, Ljavax/net/ssl/SNIServerName;->type:I

    #@2
    add-int/lit16 v0, v1, 0x20f

    #@4
    .line 144
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@6
    iget-object v2, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    #@8
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    #@b
    move-result v2

    #@c
    add-int v0, v1, v2

    #@e
    .line 146
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 183
    iget v0, p0, Ljavax/net/ssl/SNIServerName;->type:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "type=host_name (0), value="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    #@12
    invoke-static {v1}, Ljavax/net/ssl/SNIServerName;->toHexString([B)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v1, "type=("

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget v1, p0, Ljavax/net/ssl/SNIServerName;->type:I

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    const-string/jumbo v1, "), value="

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    iget-object v1, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    #@3a
    invoke-static {v1}, Ljavax/net/ssl/SNIServerName;->toHexString([B)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    return-object v0
.end method
