.class final Lsun/security/ssl/SessionId;
.super Ljava/lang/Object;
.source "SessionId.java"


# instance fields
.field private sessionId:[B


# direct methods
.method constructor <init>(ZLjava/security/SecureRandom;)V
    .locals 1
    .param p1, "isRejoinable"    # Z
    .param p2, "generator"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    if-eqz p1, :cond_0

    #@5
    .line 51
    new-instance v0, Lsun/security/ssl/RandomCookie;

    #@7
    invoke-direct {v0, p2}, Lsun/security/ssl/RandomCookie;-><init>(Ljava/security/SecureRandom;)V

    #@a
    iget-object v0, v0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@c
    iput-object v0, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    #@e
    .line 47
    :goto_0
    return-void

    #@f
    .line 53
    :cond_0
    const/4 v0, 0x0

    #@10
    new-array v0, v0, [B

    #@12
    iput-object v0, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    #@14
    goto :goto_0
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "sessionId"    # [B

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    iput-object p1, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    #@5
    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 100
    instance-of v3, p1, Lsun/security/ssl/SessionId;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 101
    return v5

    #@6
    :cond_0
    move-object v2, p1

    #@7
    .line 103
    nop

    #@8
    nop

    #@9
    .line 104
    .local v2, "s":Lsun/security/ssl/SessionId;
    invoke-virtual {v2}, Lsun/security/ssl/SessionId;->getId()[B

    #@c
    move-result-object v0

    #@d
    .line 106
    .local v0, "b":[B
    array-length v3, v0

    #@e
    iget-object v4, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    #@10
    array-length v4, v4

    #@11
    if-eq v3, v4, :cond_1

    #@13
    .line 107
    return v5

    #@14
    .line 108
    :cond_1
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    #@17
    array-length v3, v3

    #@18
    if-ge v1, v3, :cond_3

    #@1a
    .line 109
    aget-byte v3, v0, v1

    #@1c
    iget-object v4, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    #@1e
    aget-byte v4, v4, v1

    #@20
    if-eq v3, v4, :cond_2

    #@22
    .line 110
    return v5

    #@23
    .line 108
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 112
    :cond_3
    const/4 v3, 0x1

    #@27
    return v3
.end method

.method getId()[B
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 90
    const/4 v1, 0x0

    #@1
    .line 92
    .local v1, "retval":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 93
    iget-object v2, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    #@9
    aget-byte v2, v2, v0

    #@b
    add-int/2addr v1, v2

    #@c
    .line 92
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 94
    :cond_0
    return v1
.end method

.method length()I
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 73
    iget-object v3, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    #@2
    array-length v1, v3

    #@3
    .line 74
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuffer;

    #@5
    mul-int/lit8 v3, v1, 0x2

    #@7
    add-int/lit8 v3, v3, 0xa

    #@9
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    #@c
    .line 76
    .local v2, "s":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "{"

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 77
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@15
    .line 78
    iget-object v3, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    #@17
    aget-byte v3, v3, v0

    #@19
    and-int/lit16 v3, v3, 0xff

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1e
    .line 79
    add-int/lit8 v3, v1, -0x1

    #@20
    if-eq v0, v3, :cond_0

    #@22
    .line 80
    const-string/jumbo v3, ", "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 82
    :cond_1
    const-string/jumbo v3, "}"

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    return-object v3
.end method
