.class public final Landroid/system/UnixSocketAddress;
.super Ljava/net/SocketAddress;
.source "UnixSocketAddress.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static final blacklist NAMED_PATH_LENGTH:I

.field private static final blacklist UNNAMED_PATH:[B


# instance fields
.field private final blacklist sun_path:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    sget v0, Landroid/system/OsConstants;->UNIX_PATH_MAX:I

    sput v0, Landroid/system/UnixSocketAddress;->NAMED_PATH_LENGTH:I

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/system/UnixSocketAddress;->UNNAMED_PATH:[B

    return-void
.end method

.method private constructor blacklist <init>([B)V
    .registers 5
    .param p1, "sun_path"    # [B

    .line 50
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 51
    if-eqz p1, :cond_27

    .line 54
    array-length v0, p1

    sget v1, Landroid/system/UnixSocketAddress;->NAMED_PATH_LENGTH:I

    if-gt v0, v1, :cond_1f

    .line 58
    array-length v0, p1

    if-nez v0, :cond_12

    .line 59
    sget-object v0, Landroid/system/UnixSocketAddress;->UNNAMED_PATH:[B

    iput-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    goto :goto_1e

    .line 61
    :cond_12
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    .line 62
    iget-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    :goto_1e
    return-void

    .line 55
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sun_path exceeds the maximum length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sun_path must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createAbstract(Ljava/lang/String;)Landroid/system/UnixSocketAddress;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 77
    .local v0, "nameBytes":[B
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 78
    .local v1, "path":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    new-instance v2, Landroid/system/UnixSocketAddress;

    invoke-direct {v2, v1}, Landroid/system/UnixSocketAddress;-><init>([B)V

    return-object v2
.end method

.method public static blacklist test-api createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;
    .registers 5
    .param p0, "pathName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 95
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 97
    .local v0, "pathNameBytes":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 98
    .local v1, "path":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    new-instance v2, Landroid/system/UnixSocketAddress;

    invoke-direct {v2, v1}, Landroid/system/UnixSocketAddress;-><init>([B)V

    return-object v2
.end method

.method public static blacklist createUnnamed()Landroid/system/UnixSocketAddress;
    .registers 2

    .line 108
    new-instance v0, Landroid/system/UnixSocketAddress;

    sget-object v1, Landroid/system/UnixSocketAddress;->UNNAMED_PATH:[B

    invoke-direct {v0, v1}, Landroid/system/UnixSocketAddress;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 130
    if-ne p0, p1, :cond_4

    .line 131
    const/4 v0, 0x1

    return v0

    .line 133
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 137
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/system/UnixSocketAddress;

    .line 138
    .local v0, "that":Landroid/system/UnixSocketAddress;
    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    iget-object v2, v0, Landroid/system/UnixSocketAddress;->sun_path:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 134
    .end local v0    # "that":Landroid/system/UnixSocketAddress;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSunPath()[B
    .registers 5

    .line 117
    iget-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    array-length v0, v0

    if-nez v0, :cond_8

    .line 118
    iget-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    return-object v0

    .line 120
    :cond_8
    iget-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 121
    .local v0, "sunPathCopy":[B
    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    iget-object v2, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 146
    iget-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnixSocketAddress[sun_path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    .line 155
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    return-object v0
.end method
