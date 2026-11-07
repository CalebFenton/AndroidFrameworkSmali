.class public Lgov/nist/javax/sip/Utils;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lgov/nist/javax/sip/UtilsExt;


# static fields
.field private static greylist callIDCounter:I

.field private static greylist counter:J

.field private static greylist digester:Ljava/security/MessageDigest;

.field private static greylist instance:Lgov/nist/javax/sip/Utils;

.field private static greylist rand:Ljava/util/Random;

.field private static greylist signature:Ljava/lang/String;

.field private static final greylist toHex:[C


# direct methods
.method static constructor greylist <clinit>()V
    .registers 3

    .line 51
    const-wide/16 v0, 0x0

    sput-wide v0, Lgov/nist/javax/sip/Utils;->counter:J

    .line 57
    new-instance v0, Lgov/nist/javax/sip/Utils;

    invoke-direct {v0}, Lgov/nist/javax/sip/Utils;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/Utils;->instance:Lgov/nist/javax/sip/Utils;

    .line 63
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_48

    sput-object v0, Lgov/nist/javax/sip/Utils;->toHex:[C

    .line 68
    :try_start_14
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/Utils;->digester:Ljava/security/MessageDigest;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_3f

    .line 71
    nop

    .line 72
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    .line 73
    sget-object v0, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lgov/nist/javax/sip/Utils;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/Utils;->signature:Ljava/lang/String;

    .line 74
    return-void

    .line 69
    :catch_3f
    move-exception v0

    .line 70
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not intialize Digester "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :array_48
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

.method public constructor greylist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getInstance()Lgov/nist/javax/sip/Utils;
    .registers 1

    .line 78
    sget-object v0, Lgov/nist/javax/sip/Utils;->instance:Lgov/nist/javax/sip/Utils;

    return-object v0
.end method

.method public static greylist getQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getSignature()Ljava/lang/String;
    .registers 1

    .line 189
    sget-object v0, Lgov/nist/javax/sip/Utils;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 194
    .local v0, "branchIds":Ljava/util/HashSet;
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_6
    const v2, 0x186a0

    if-ge v1, v2, :cond_27

    .line 195
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "bid":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 199
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v2    # "bid":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 197
    .restart local v2    # "bid":Ljava/lang/String;
    :cond_1f
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Duplicate Branch ID"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    .end local v1    # "b":I
    .end local v2    # "bid":Ljava/lang/String;
    :cond_27
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Done!!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method protected static greylist reduceString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "input"    # Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "newString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 121
    .local v1, "len":I
    const-string v2, ""

    .line 122
    .local v2, "retval":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_36

    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_33

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1e

    .line 124
    goto :goto_33

    .line 126
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    :cond_33
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 128
    .end local v3    # "i":I
    :cond_36
    return-object v2
.end method

.method public static greylist toHexString([B)Ljava/lang/String;
    .registers 7
    .param p0, "b"    # [B

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "pos":I
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 92
    .local v1, "c":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_27

    .line 93
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "pos":I
    .local v3, "pos":I
    sget-object v4, Lgov/nist/javax/sip/Utils;->toHex:[C

    aget-byte v5, p0, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v0

    .line 94
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "pos":I
    .restart local v0    # "pos":I
    sget-object v4, Lgov/nist/javax/sip/Utils;->toHex:[C

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 96
    .end local v2    # "i":I
    :cond_27
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method


# virtual methods
.method public declared-synchronized greylist generateBranchId()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 173
    :try_start_1
    sget-object v0, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    sget-wide v2, Lgov/nist/javax/sip/Utils;->counter:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lgov/nist/javax/sip/Utils;->counter:J

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 175
    .local v0, "num":J
    sget-object v2, Lgov/nist/javax/sip/Utils;->digester:Ljava/security/MessageDigest;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 177
    .local v2, "bid":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "z9hG4bK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lgov/nist/javax/sip/Utils;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lgov/nist/javax/sip/Utils;->signature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    monitor-exit p0

    return-object v3

    .line 172
    .end local v0    # "num":J
    .end local v2    # "bid":[B
    .end local p0    # "this":Lgov/nist/javax/sip/Utils;
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public declared-synchronized greylist generateCallIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    monitor-enter p0

    .line 137
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lgov/nist/javax/sip/Utils;->callIDCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lgov/nist/javax/sip/Utils;->callIDCounter:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    .line 138
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "date":Ljava/lang/String;
    sget-object v1, Lgov/nist/javax/sip/Utils;->digester:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 141
    .local v1, "cid":[B
    invoke-static {v1}, Lgov/nist/javax/sip/Utils;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "cidString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return-object v3

    .line 136
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "cid":[B
    .end local v2    # "cidString":Ljava/lang/String;
    .end local p0    # "this":Lgov/nist/javax/sip/Utils;
    .end local p1    # "address":Ljava/lang/String;
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public declared-synchronized greylist generateTag()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 158
    :try_start_1
    sget-object v0, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 158
    .end local p0    # "this":Lgov/nist/javax/sip/Utils;
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public greylist responseBelongsToUs(Lgov/nist/javax/sip/message/SIPResponse;)Z
    .registers 5
    .param p1, "response"    # Lgov/nist/javax/sip/message/SIPResponse;

    .line 183
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    .line 184
    .local v0, "topmostVia":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "branch":Ljava/lang/String;
    if-eqz v1, :cond_14

    sget-object v2, Lgov/nist/javax/sip/Utils;->signature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method
