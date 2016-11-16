.class Lsun/net/www/protocol/http/DigestAuthentication$Parameters;
.super Ljava/lang/Object;
.source "DigestAuthentication.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/DigestAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parameters"
.end annotation


# static fields
.field private static final cnonceRepeat:I = 0x5

.field private static final cnoncelen:I = 0x28

.field private static random:Ljava/util/Random; = null

.field private static final serialVersionUID:J = -0x31bedb8dba36ea2cL


# instance fields
.field private NCcount:I

.field private algorithm:Ljava/lang/String;

.field private cachedHA1:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field cnonce_count:I

.field private nonce:Ljava/lang/String;

.field private opaque:Ljava/lang/String;

.field private redoCachedHA1:Z

.field private serverQop:Z


# direct methods
.method static synthetic -get0(Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->nonce:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 81
    new-instance v0, Ljava/util/Random;

    #@2
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@5
    sput-object v0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->random:Ljava/util/Random;

    #@7
    .line 58
    return-void
.end method

.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 66
    iput v2, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->NCcount:I

    #@7
    .line 72
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->redoCachedHA1:Z

    #@a
    .line 103
    iput v2, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce_count:I

    #@c
    .line 85
    iput-boolean v2, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->serverQop:Z

    #@e
    .line 86
    iput-object v1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->opaque:Ljava/lang/String;

    #@10
    .line 87
    iput-object v1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->algorithm:Ljava/lang/String;

    #@12
    .line 88
    iput-object v1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cachedHA1:Ljava/lang/String;

    #@14
    .line 89
    iput-object v1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->nonce:Ljava/lang/String;

    #@16
    .line 90
    invoke-virtual {p0}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNewCnonce()V

    #@19
    .line 84
    return-void
.end method


# virtual methods
.method authQop()Z
    .locals 1

    #@0
    .prologue
    .line 94
    iget-boolean v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->serverQop:Z

    #@2
    return v0
.end method

.method declared-synchronized getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 166
    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->algorithm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method declared-synchronized getCachedHA1()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 154
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->redoCachedHA1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 155
    const/4 v0, 0x0

    #@6
    monitor-exit p0

    #@7
    return-object v0

    #@8
    .line 157
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cachedHA1:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method declared-synchronized getCnonce()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 107
    :try_start_0
    iget v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce_count:I

    #@3
    const/4 v1, 0x5

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 108
    invoke-virtual {p0}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNewCnonce()V

    #@9
    .line 110
    :cond_0
    iget v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce_count:I

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    iput v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce_count:I

    #@f
    .line 111
    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    return-object v0

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method declared-synchronized getNCCount()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 100
    :try_start_0
    iget v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->NCcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method declared-synchronized getNonce()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 143
    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->nonce:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method declared-synchronized getOpaque()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 140
    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->opaque:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method declared-synchronized incrementNC()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 97
    :try_start_0
    iget v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->NCcount:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->NCcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 96
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method declared-synchronized setAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 167
    :try_start_0
    iput-object p1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->algorithm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method declared-synchronized setCachedHA1(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 162
    :try_start_0
    iput-object p1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cachedHA1:Ljava/lang/String;

    #@3
    .line 163
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->redoCachedHA1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 161
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method declared-synchronized setNewCnonce()V
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x14

    #@2
    monitor-enter p0

    #@3
    .line 114
    const/16 v4, 0x14

    #@5
    :try_start_0
    new-array v0, v4, [B

    #@7
    .line 115
    .local v0, "bb":[B
    const/16 v4, 0x28

    #@9
    new-array v1, v4, [C

    #@b
    .line 116
    .local v1, "cc":[C
    sget-object v4, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->random:Ljava/util/Random;

    #@d
    invoke-virtual {v4, v0}, Ljava/util/Random;->nextBytes([B)V

    #@10
    .line 117
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    #@13
    .line 118
    aget-byte v4, v0, v2

    #@15
    add-int/lit16 v3, v4, 0x80

    #@17
    .line 119
    .local v3, "x":I
    mul-int/lit8 v4, v2, 0x2

    #@19
    div-int/lit8 v5, v3, 0x10

    #@1b
    add-int/lit8 v5, v5, 0x41

    #@1d
    int-to-char v5, v5

    #@1e
    aput-char v5, v1, v4

    #@20
    .line 120
    mul-int/lit8 v4, v2, 0x2

    #@22
    add-int/lit8 v4, v4, 0x1

    #@24
    rem-int/lit8 v5, v3, 0x10

    #@26
    add-int/lit8 v5, v5, 0x41

    #@28
    int-to-char v5, v5

    #@29
    aput-char v5, v1, v4

    #@2b
    .line 117
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 122
    .end local v3    # "x":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    #@30
    const/4 v5, 0x0

    #@31
    const/16 v6, 0x28

    #@33
    invoke-direct {v4, v1, v5, v6}, Ljava/lang/String;-><init>([CII)V

    #@36
    iput-object v4, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce:Ljava/lang/String;

    #@38
    .line 123
    const/4 v4, 0x0

    #@39
    iput v4, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce_count:I

    #@3b
    .line 124
    const/4 v4, 0x1

    #@3c
    iput-boolean v4, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->redoCachedHA1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    monitor-exit p0

    #@3f
    .line 113
    return-void

    #@40
    .end local v0    # "bb":[B
    .end local v1    # "cc":[C
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    #@41
    monitor-exit p0

    #@42
    throw v4
.end method

.method declared-synchronized setNonce(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 146
    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->nonce:Ljava/lang/String;

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 147
    iput-object p1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->nonce:Ljava/lang/String;

    #@b
    .line 148
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->NCcount:I

    #@e
    .line 149
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->redoCachedHA1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 145
    return-void

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method declared-synchronized setOpaque(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 141
    :try_start_0
    iput-object p1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->opaque:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method declared-synchronized setQop(Ljava/lang/String;)V
    .locals 3
    .param p1, "qop"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 128
    if-eqz p1, :cond_1

    #@3
    .line 129
    :try_start_0
    new-instance v0, Ljava/util/StringTokenizer;

    #@5
    const-string/jumbo v1, " "

    #@8
    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 130
    .local v0, "st":Ljava/util/StringTokenizer;
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 131
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, "auth"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 132
    const/4 v1, 0x1

    #@1f
    iput-boolean v1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->serverQop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 133
    return-void

    #@23
    .line 137
    .end local v0    # "st":Ljava/util/StringTokenizer;
    :cond_1
    const/4 v1, 0x0

    #@24
    :try_start_1
    iput-boolean v1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->serverQop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit p0

    #@27
    .line 127
    return-void

    #@28
    :catchall_0
    move-exception v1

    #@29
    monitor-exit p0

    #@2a
    throw v1
.end method
