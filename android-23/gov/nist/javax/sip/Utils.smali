.class public Lgov/nist/javax/sip/Utils;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lgov/nist/javax/sip/UtilsExt;


# static fields
.field private static callIDCounter:I

.field private static counter:J

.field private static digester:Ljava/security/MessageDigest;

.field private static instance:Lgov/nist/javax/sip/Utils;

.field private static rand:Ljava/util/Random;

.field private static signature:Ljava/lang/String;

.field private static final toHex:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 51
    const-wide/16 v2, 0x0

    #@2
    sput-wide v2, Lgov/nist/javax/sip/Utils;->counter:J

    #@4
    .line 57
    new-instance v1, Lgov/nist/javax/sip/Utils;

    #@6
    invoke-direct {v1}, Lgov/nist/javax/sip/Utils;-><init>()V

    #@9
    sput-object v1, Lgov/nist/javax/sip/Utils;->instance:Lgov/nist/javax/sip/Utils;

    #@b
    .line 63
    const/16 v1, 0x10

    #@d
    new-array v1, v1, [C

    #@f
    fill-array-data v1, :array_0

    #@12
    sput-object v1, Lgov/nist/javax/sip/Utils;->toHex:[C

    #@14
    .line 68
    :try_start_0
    const-string/jumbo v1, "MD5"

    #@17
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@1a
    move-result-object v1

    #@1b
    sput-object v1, Lgov/nist/javax/sip/Utils;->digester:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 72
    new-instance v1, Ljava/util/Random;

    #@1f
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    #@22
    sput-object v1, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    #@24
    .line 73
    sget-object v1, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    #@26
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    #@29
    move-result v1

    #@2a
    rem-int/lit16 v1, v1, 0x3e8

    #@2c
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@2f
    move-result v1

    #@30
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@37
    move-result-object v1

    #@38
    invoke-static {v1}, Lgov/nist/javax/sip/Utils;->toHexString([B)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    sput-object v1, Lgov/nist/javax/sip/Utils;->signature:Ljava/lang/String;

    #@3e
    .line 45
    return-void

    #@3f
    .line 69
    :catch_0
    move-exception v0

    #@40
    .line 70
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@42
    const-string/jumbo v2, "Could not intialize Digester "

    #@45
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@48
    throw v1

    #@49
    .line 63
    nop

    #@4a
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Lgov/nist/javax/sip/Utils;
    .locals 1

    #@0
    .prologue
    .line 78
    sget-object v0, Lgov/nist/javax/sip/Utils;->instance:Lgov/nist/javax/sip/Utils;

    #@2
    return-object v0
.end method

.method public static getQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x22

    #@2
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "\""

    #@e
    const-string/jumbo v2, "\\\""

    #@11
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public static getSignature()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 189
    sget-object v0, Lgov/nist/javax/sip/Utils;->signature:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 193
    new-instance v2, Ljava/util/HashSet;

    #@2
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 194
    .local v2, "branchIds":Ljava/util/HashSet;
    const/4 v0, 0x0

    #@6
    .local v0, "b":I
    :goto_0
    const v3, 0x186a0

    #@9
    if-ge v0, v3, :cond_1

    #@b
    .line 195
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 196
    .local v1, "bid":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 197
    new-instance v3, Ljava/lang/RuntimeException;

    #@1b
    const-string/jumbo v4, "Duplicate Branch ID"

    #@1e
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v3

    #@22
    .line 199
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@25
    .line 194
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 202
    .end local v1    # "bid":Ljava/lang/String;
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2a
    const-string/jumbo v4, "Done!!"

    #@2d
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 192
    return-void
.end method

.method protected static reduceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 120
    .local v2, "newString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    .line 121
    .local v1, "len":I
    const-string/jumbo v3, ""

    #@b
    .line 122
    .local v3, "retval":Ljava/lang/String;
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@e
    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v4

    #@12
    const/16 v5, 0x20

    #@14
    if-eq v4, v5, :cond_0

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v4

    #@1a
    const/16 v5, 0x9

    #@1c
    if-ne v4, v5, :cond_1

    #@1e
    .line 122
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 126
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v5

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    goto :goto_1

    #@37
    .line 128
    :cond_2
    return-object v3
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B

    #@0
    .prologue
    .line 90
    const/4 v2, 0x0

    #@1
    .line 91
    .local v2, "pos":I
    array-length v4, p0

    #@2
    mul-int/lit8 v4, v4, 0x2

    #@4
    new-array v0, v4, [C

    #@6
    .line 92
    .local v0, "c":[C
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v4, p0

    #@8
    if-ge v1, v4, :cond_0

    #@a
    .line 93
    add-int/lit8 v3, v2, 0x1

    #@c
    .end local v2    # "pos":I
    .local v3, "pos":I
    sget-object v4, Lgov/nist/javax/sip/Utils;->toHex:[C

    #@e
    aget-byte v5, p0, v1

    #@10
    shr-int/lit8 v5, v5, 0x4

    #@12
    and-int/lit8 v5, v5, 0xf

    #@14
    aget-char v4, v4, v5

    #@16
    aput-char v4, v0, v2

    #@18
    .line 94
    add-int/lit8 v2, v3, 0x1

    #@1a
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    sget-object v4, Lgov/nist/javax/sip/Utils;->toHex:[C

    #@1c
    aget-byte v5, p0, v1

    #@1e
    and-int/lit8 v5, v5, 0xf

    #@20
    aget-char v4, v4, v5

    #@22
    aput-char v4, v0, v3

    #@24
    .line 92
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 96
    :cond_0
    new-instance v4, Ljava/lang/String;

    #@29
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    #@2c
    return-object v4
.end method


# virtual methods
.method public declared-synchronized generateBranchId()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 173
    :try_start_0
    sget-object v1, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    #@3
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    #@6
    move-result-wide v4

    #@7
    sget-wide v6, Lgov/nist/javax/sip/Utils;->counter:J

    #@9
    const-wide/16 v8, 0x1

    #@b
    add-long/2addr v8, v6

    #@c
    sput-wide v8, Lgov/nist/javax/sip/Utils;->counter:J

    #@e
    add-long/2addr v4, v6

    #@f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v6

    #@13
    add-long v2, v4, v6

    #@15
    .line 175
    .local v2, "num":J
    sget-object v1, Lgov/nist/javax/sip/Utils;->digester:Ljava/security/MessageDigest;

    #@17
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    #@22
    move-result-object v0

    #@23
    .line 177
    .local v0, "bid":[B
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "z9hG4bK"

    #@2b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0}, Lgov/nist/javax/sip/Utils;->toHexString([B)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    sget-object v4, Lgov/nist/javax/sip/Utils;->signature:Ljava/lang/String;

    #@39
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    move-result-object v1

    #@41
    monitor-exit p0

    #@42
    return-object v1

    #@43
    .end local v0    # "bid":[B
    .end local v2    # "num":J
    :catchall_0
    move-exception v1

    #@44
    monitor-exit p0

    #@45
    throw v1
.end method

.method public declared-synchronized generateCallIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 137
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v4

    #@5
    sget v3, Lgov/nist/javax/sip/Utils;->callIDCounter:I

    #@7
    add-int/lit8 v6, v3, 0x1

    #@9
    sput v6, Lgov/nist/javax/sip/Utils;->callIDCounter:I

    #@b
    int-to-long v6, v3

    #@c
    add-long/2addr v4, v6

    #@d
    .line 138
    sget-object v3, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    #@f
    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    #@12
    move-result-wide v6

    #@13
    .line 137
    add-long/2addr v4, v6

    #@14
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 139
    .local v2, "date":Ljava/lang/String;
    sget-object v3, Lgov/nist/javax/sip/Utils;->digester:Ljava/security/MessageDigest;

    #@1a
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    #@21
    move-result-object v0

    #@22
    .line 141
    .local v0, "cid":[B
    invoke-static {v0}, Lgov/nist/javax/sip/Utils;->toHexString([B)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 142
    .local v1, "cidString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    const-string/jumbo v4, "@"

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    move-result-object v3

    #@3e
    monitor-exit p0

    #@3f
    return-object v3

    #@40
    .end local v0    # "cid":[B
    .end local v1    # "cidString":Ljava/lang/String;
    .end local v2    # "date":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@41
    monitor-exit p0

    #@42
    throw v3
.end method

.method public declared-synchronized generateTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 158
    :try_start_0
    sget-object v0, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    #@3
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v0

    #@b
    monitor-exit p0

    #@c
    return-object v0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public responseBelongsToUs(Lgov/nist/javax/sip/message/SIPResponse;)Z
    .locals 3
    .param p1, "response"    # Lgov/nist/javax/sip/message/SIPResponse;

    #@0
    .prologue
    .line 183
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@3
    move-result-object v1

    #@4
    .line 184
    .local v1, "topmostVia":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 185
    .local v0, "branch":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    sget-object v2, Lgov/nist/javax/sip/Utils;->signature:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@f
    move-result v2

    #@10
    :goto_0
    return v2

    #@11
    :cond_0
    const/4 v2, 0x0

    #@12
    goto :goto_0
.end method
