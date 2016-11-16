.class public final Landroid/system/UnixSocketAddress;
.super Ljava/net/SocketAddress;
.source "UnixSocketAddress.java"


# static fields
.field private static final NAMED_PATH_LENGTH:I

.field private static final UNNAMED_PATH:[B


# instance fields
.field private sun_path:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    sget v0, Landroid/system/OsConstants;->UNIX_PATH_MAX:I

    #@2
    sput v0, Landroid/system/UnixSocketAddress;->NAMED_PATH_LENGTH:I

    #@4
    .line 31
    const/4 v0, 0x0

    #@5
    new-array v0, v0, [B

    #@7
    sput-object v0, Landroid/system/UnixSocketAddress;->UNNAMED_PATH:[B

    #@9
    .line 28
    return-void
.end method

.method private constructor <init>([B)V
    .locals 3
    .param p1, "sun_path"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 40
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    #@4
    .line 41
    if-nez p1, :cond_0

    #@6
    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "sun_path must not be null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 44
    :cond_0
    array-length v0, p1

    #@10
    sget v1, Landroid/system/UnixSocketAddress;->NAMED_PATH_LENGTH:I

    #@12
    if-le v0, v1, :cond_1

    #@14
    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "sun_path exceeds the maximum length"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 48
    :cond_1
    array-length v0, p1

    #@1e
    if-nez v0, :cond_2

    #@20
    .line 49
    sget-object v0, Landroid/system/UnixSocketAddress;->UNNAMED_PATH:[B

    #@22
    iput-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    #@24
    .line 40
    :goto_0
    return-void

    #@25
    .line 51
    :cond_2
    array-length v0, p1

    #@26
    new-array v0, v0, [B

    #@28
    iput-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    #@2a
    .line 52
    iget-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    #@2c
    array-length v1, p1

    #@2d
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@30
    goto :goto_0
.end method

.method public static createAbstract(Ljava/lang/String;)Landroid/system/UnixSocketAddress;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@5
    move-result-object v0

    #@6
    .line 62
    .local v0, "nameBytes":[B
    array-length v2, v0

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    new-array v1, v2, [B

    #@b
    .line 63
    .local v1, "path":[B
    array-length v2, v0

    #@c
    const/4 v3, 0x0

    #@d
    const/4 v4, 0x1

    #@e
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11
    .line 64
    new-instance v2, Landroid/system/UnixSocketAddress;

    #@13
    invoke-direct {v2, v1}, Landroid/system/UnixSocketAddress;-><init>([B)V

    #@16
    return-object v2
.end method

.method public static createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;
    .locals 4
    .param p0, "pathName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 71
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@6
    move-result-object v1

    #@7
    .line 73
    .local v1, "pathNameBytes":[B
    array-length v2, v1

    #@8
    add-int/lit8 v2, v2, 0x1

    #@a
    new-array v0, v2, [B

    #@c
    .line 74
    .local v0, "path":[B
    array-length v2, v1

    #@d
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@10
    .line 75
    new-instance v2, Landroid/system/UnixSocketAddress;

    #@12
    invoke-direct {v2, v0}, Landroid/system/UnixSocketAddress;-><init>([B)V

    #@15
    return-object v2
.end method

.method public static createUnnamed()Landroid/system/UnixSocketAddress;
    .locals 2

    #@0
    .prologue
    .line 82
    new-instance v0, Landroid/system/UnixSocketAddress;

    #@2
    sget-object v1, Landroid/system/UnixSocketAddress;->UNNAMED_PATH:[B

    #@4
    invoke-direct {v0, v1}, Landroid/system/UnixSocketAddress;-><init>([B)V

    #@7
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 97
    if-ne p0, p1, :cond_0

    #@2
    .line 98
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 100
    :cond_0
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/system/UnixSocketAddress;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v2

    #@e
    if-eq v1, v2, :cond_2

    #@10
    .line 101
    :cond_1
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 104
    check-cast v0, Landroid/system/UnixSocketAddress;

    #@15
    .line 105
    .local v0, "that":Landroid/system/UnixSocketAddress;
    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    #@17
    iget-object v2, v0, Landroid/system/UnixSocketAddress;->sun_path:[B

    #@19
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@1c
    move-result v1

    #@1d
    return v1
.end method

.method public getSunPath()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 87
    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    #@3
    array-length v1, v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 88
    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    #@8
    return-object v1

    #@9
    .line 90
    :cond_0
    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    #@b
    array-length v1, v1

    #@c
    new-array v0, v1, [B

    #@e
    .line 91
    .local v0, "sunPathCopy":[B
    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    #@10
    iget-object v2, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    #@12
    array-length v2, v2

    #@13
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@16
    .line 92
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "UnixSocketAddress[sun_path="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 116
    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    #@e
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 117
    const/16 v1, 0x5d

    #@18
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method
