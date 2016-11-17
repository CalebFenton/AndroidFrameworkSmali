.class public final Ljavax/obex/ObexHelper;
.super Ljava/lang/Object;
.source "ObexHelper.java"


# static fields
.field public static final BASE_PACKET_LENGTH:I = 0x3

.field public static final LOWER_LIMIT_MAX_PACKET_SIZE:I = 0xff

.field public static final MAX_CLIENT_PACKET_SIZE:I = 0xfc00

.field public static final MAX_PACKET_SIZE_INT:I = 0xfffe

.field public static final OBEX_AUTH_REALM_CHARSET_ASCII:I = 0x0

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_1:I = 0x1

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_2:I = 0x2

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_3:I = 0x3

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_4:I = 0x4

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_5:I = 0x5

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_6:I = 0x6

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_7:I = 0x7

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_8:I = 0x8

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_9:I = 0x9

.field public static final OBEX_AUTH_REALM_CHARSET_UNICODE:I = 0xff

.field public static final OBEX_OPCODE_ABORT:I = 0xff

.field public static final OBEX_OPCODE_CONNECT:I = 0x80

.field public static final OBEX_OPCODE_DISCONNECT:I = 0x81

.field public static final OBEX_OPCODE_FINAL_BIT_MASK:I = 0x80

.field public static final OBEX_OPCODE_GET:I = 0x3

.field public static final OBEX_OPCODE_GET_FINAL:I = 0x83

.field public static final OBEX_OPCODE_PUT:I = 0x2

.field public static final OBEX_OPCODE_PUT_FINAL:I = 0x82

.field public static final OBEX_OPCODE_RESERVED:I = 0x4

.field public static final OBEX_OPCODE_RESERVED_FINAL:I = 0x84

.field public static final OBEX_OPCODE_SETPATH:I = 0x85

.field public static final OBEX_SRMP_WAIT:B = 0x1t

.field public static final OBEX_SRM_DISABLE:B = 0x0t

.field public static final OBEX_SRM_ENABLE:B = 0x1t

.field public static final OBEX_SRM_SUPPORT:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "ObexHelper"

.field public static final VDBG:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static computeAuthenticationChallenge([BLjava/lang/String;ZZ)[B
    .locals 9
    .param p0, "nonce"    # [B
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "access"    # Z
    .param p3, "userID"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/16 v7, 0x10

    #@3
    const/4 v6, 0x1

    #@4
    const/16 v5, 0x14

    #@6
    const/4 v4, 0x0

    #@7
    .line 1001
    const/4 v0, 0x0

    #@8
    .line 1003
    .local v0, "authChall":[B
    array-length v1, p0

    #@9
    if-eq v1, v7, :cond_0

    #@b
    .line 1004
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v2, "Nonce must be 16 bytes long"

    #@10
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 1025
    :cond_0
    if-nez p1, :cond_3

    #@16
    .line 1026
    const/16 v1, 0x15

    #@18
    new-array v0, v1, [B

    #@1a
    .line 1039
    .local v0, "authChall":[B
    :goto_0
    aput-byte v4, v0, v4

    #@1c
    .line 1040
    aput-byte v7, v0, v6

    #@1e
    .line 1041
    invoke-static {p0, v4, v0, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@21
    .line 1044
    const/16 v1, 0x12

    #@23
    aput-byte v6, v0, v1

    #@25
    .line 1045
    const/16 v1, 0x13

    #@27
    aput-byte v6, v0, v1

    #@29
    .line 1046
    aput-byte v4, v0, v5

    #@2b
    .line 1048
    if-nez p2, :cond_1

    #@2d
    .line 1049
    aget-byte v1, v0, v5

    #@2f
    or-int/lit8 v1, v1, 0x2

    #@31
    int-to-byte v1, v1

    #@32
    aput-byte v1, v0, v5

    #@34
    .line 1051
    :cond_1
    if-eqz p3, :cond_2

    #@36
    .line 1052
    aget-byte v1, v0, v5

    #@38
    or-int/lit8 v1, v1, 0x1

    #@3a
    int-to-byte v1, v1

    #@3b
    aput-byte v1, v0, v5

    #@3d
    .line 1055
    :cond_2
    return-object v0

    #@3e
    .line 1028
    .local v0, "authChall":[B
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@41
    move-result v1

    #@42
    const/16 v2, 0xff

    #@44
    if-lt v1, v2, :cond_4

    #@46
    .line 1029
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@48
    const-string/jumbo v2, "Realm must be less then 255 bytes"

    #@4b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v1

    #@4f
    .line 1031
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@52
    move-result v1

    #@53
    add-int/lit8 v1, v1, 0x18

    #@55
    new-array v0, v1, [B

    #@57
    .line 1032
    .local v0, "authChall":[B
    const/16 v1, 0x15

    #@59
    aput-byte v8, v0, v1

    #@5b
    .line 1033
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5e
    move-result v1

    #@5f
    add-int/lit8 v1, v1, 0x1

    #@61
    int-to-byte v1, v1

    #@62
    const/16 v2, 0x16

    #@64
    aput-byte v1, v0, v2

    #@66
    .line 1034
    const/16 v1, 0x17

    #@68
    aput-byte v6, v0, v1

    #@6a
    .line 1035
    const-string/jumbo v1, "ISO8859_1"

    #@6d
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@70
    move-result-object v1

    #@71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@74
    move-result v2

    #@75
    const/16 v3, 0x18

    #@77
    invoke-static {v1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@7a
    goto :goto_0
.end method

.method public static computeMd5Hash([B)[B
    .locals 3
    .param p0, "in"    # [B

    #@0
    .prologue
    .line 978
    :try_start_0
    const-string/jumbo v2, "MD5"

    #@3
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v1

    #@7
    .line 979
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v2

    #@b
    return-object v2

    #@c
    .line 980
    .end local v1    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    #@d
    .line 981
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@f
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@12
    throw v2
.end method

.method public static convertToByteArray(J)[B
    .locals 6
    .param p0, "l"    # J

    #@0
    .prologue
    const-wide/16 v4, 0xff

    #@2
    .line 840
    const/4 v1, 0x4

    #@3
    new-array v0, v1, [B

    #@5
    .line 842
    .local v0, "b":[B
    const/16 v1, 0x18

    #@7
    shr-long v2, p0, v1

    #@9
    and-long/2addr v2, v4

    #@a
    long-to-int v1, v2

    #@b
    int-to-byte v1, v1

    #@c
    const/4 v2, 0x0

    #@d
    aput-byte v1, v0, v2

    #@f
    .line 843
    const/16 v1, 0x10

    #@11
    shr-long v2, p0, v1

    #@13
    and-long/2addr v2, v4

    #@14
    long-to-int v1, v2

    #@15
    int-to-byte v1, v1

    #@16
    const/4 v2, 0x1

    #@17
    aput-byte v1, v0, v2

    #@19
    .line 844
    const/16 v1, 0x8

    #@1b
    shr-long v2, p0, v1

    #@1d
    and-long/2addr v2, v4

    #@1e
    long-to-int v1, v2

    #@1f
    int-to-byte v1, v1

    #@20
    const/4 v2, 0x2

    #@21
    aput-byte v1, v0, v2

    #@23
    .line 845
    and-long v2, v4, p0

    #@25
    long-to-int v1, v2

    #@26
    int-to-byte v1, v1

    #@27
    const/4 v2, 0x3

    #@28
    aput-byte v1, v0, v2

    #@2a
    .line 847
    return-object v0
.end method

.method public static convertToLong([B)J
    .locals 10
    .param p0, "b"    # [B

    #@0
    .prologue
    .line 817
    const-wide/16 v4, 0x0

    #@2
    .line 818
    .local v4, "result":J
    const-wide/16 v6, 0x0

    #@4
    .line 819
    .local v6, "value":J
    const-wide/16 v2, 0x0

    #@6
    .line 821
    .local v2, "power":J
    array-length v1, p0

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 822
    aget-byte v1, p0, v0

    #@d
    int-to-long v6, v1

    #@e
    .line 823
    const-wide/16 v8, 0x0

    #@10
    cmp-long v1, v6, v8

    #@12
    if-gez v1, :cond_0

    #@14
    .line 824
    const-wide/16 v8, 0x100

    #@16
    add-long/2addr v6, v8

    #@17
    .line 827
    :cond_0
    long-to-int v1, v2

    #@18
    shl-long v8, v6, v1

    #@1a
    or-long/2addr v4, v8

    #@1b
    .line 828
    const-wide/16 v8, 0x8

    #@1d
    add-long/2addr v2, v8

    #@1e
    .line 821
    add-int/lit8 v0, v0, -0x1

    #@20
    goto :goto_0

    #@21
    .line 831
    :cond_1
    return-wide v4
.end method

.method public static convertToUnicode([BZ)Ljava/lang/String;
    .locals 8
    .param p0, "b"    # [B
    .param p1, "includesNull"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 936
    if-eqz p0, :cond_0

    #@4
    array-length v5, p0

    #@5
    if-nez v5, :cond_1

    #@7
    .line 937
    :cond_0
    return-object v7

    #@8
    .line 939
    :cond_1
    array-length v0, p0

    #@9
    .line 940
    .local v0, "arrayLength":I
    rem-int/lit8 v5, v0, 0x2

    #@b
    if-eqz v5, :cond_2

    #@d
    .line 941
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v6, "Byte array not of a valid form"

    #@12
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v5

    #@16
    .line 943
    :cond_2
    shr-int/lit8 v0, v0, 0x1

    #@18
    .line 944
    if-eqz p1, :cond_3

    #@1a
    .line 945
    add-int/lit8 v0, v0, -0x1

    #@1c
    .line 948
    :cond_3
    new-array v1, v0, [C

    #@1e
    .line 949
    .local v1, "c":[C
    const/4 v2, 0x0

    #@1f
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_7

    #@21
    .line 950
    mul-int/lit8 v5, v2, 0x2

    #@23
    aget-byte v4, p0, v5

    #@25
    .line 951
    .local v4, "upper":I
    mul-int/lit8 v5, v2, 0x2

    #@27
    add-int/lit8 v5, v5, 0x1

    #@29
    aget-byte v3, p0, v5

    #@2b
    .line 952
    .local v3, "lower":I
    if-gez v4, :cond_4

    #@2d
    .line 953
    add-int/lit16 v4, v4, 0x100

    #@2f
    .line 955
    :cond_4
    if-gez v3, :cond_5

    #@31
    .line 956
    add-int/lit16 v3, v3, 0x100

    #@33
    .line 960
    :cond_5
    if-nez v4, :cond_6

    #@35
    if-nez v3, :cond_6

    #@37
    .line 961
    new-instance v5, Ljava/lang/String;

    #@39
    invoke-direct {v5, v1, v6, v2}, Ljava/lang/String;-><init>([CII)V

    #@3c
    return-object v5

    #@3d
    .line 964
    :cond_6
    shl-int/lit8 v5, v4, 0x8

    #@3f
    or-int/2addr v5, v3

    #@40
    int-to-char v5, v5

    #@41
    aput-char v5, v1, v2

    #@43
    .line 949
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_0

    #@46
    .line 967
    .end local v3    # "lower":I
    .end local v4    # "upper":I
    :cond_7
    new-instance v5, Ljava/lang/String;

    #@48
    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    #@4b
    return-object v5
.end method

.method public static convertToUnicodeByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 857
    if-nez p0, :cond_0

    #@4
    .line 858
    return-object v3

    #@5
    .line 861
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@8
    move-result-object v0

    #@9
    .line 862
    .local v0, "c":[C
    array-length v3, v0

    #@a
    mul-int/lit8 v3, v3, 0x2

    #@c
    add-int/lit8 v3, v3, 0x2

    #@e
    new-array v2, v3, [B

    #@10
    .line 863
    .local v2, "result":[B
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@12
    if-ge v1, v3, :cond_1

    #@14
    .line 864
    mul-int/lit8 v3, v1, 0x2

    #@16
    aget-char v4, v0, v1

    #@18
    shr-int/lit8 v4, v4, 0x8

    #@1a
    int-to-byte v4, v4

    #@1b
    aput-byte v4, v2, v3

    #@1d
    .line 865
    mul-int/lit8 v3, v1, 0x2

    #@1f
    add-int/lit8 v3, v3, 0x1

    #@21
    aget-char v4, v0, v1

    #@23
    int-to-byte v4, v4

    #@24
    aput-byte v4, v2, v3

    #@26
    .line 863
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 869
    :cond_1
    array-length v3, v2

    #@2a
    add-int/lit8 v3, v3, -0x2

    #@2c
    aput-byte v5, v2, v3

    #@2e
    .line 870
    array-length v3, v2

    #@2f
    add-int/lit8 v3, v3, -0x1

    #@31
    aput-byte v5, v2, v3

    #@33
    .line 872
    return-object v2
.end method

.method public static createHeader(Ljavax/obex/HeaderSet;Z)[B
    .locals 26
    .param p0, "head"    # Ljavax/obex/HeaderSet;
    .param p1, "nullOut"    # Z

    #@0
    .prologue
    .line 360
    const/4 v13, 0x0

    #@1
    .line 361
    .local v13, "intHeader":Ljava/lang/Long;
    const/16 v18, 0x0

    #@3
    .line 362
    .local v18, "stringHeader":Ljava/lang/String;
    const/4 v7, 0x0

    #@4
    .line 363
    .local v7, "dateHeader":Ljava/util/Calendar;
    const/4 v6, 0x0

    #@5
    .line 364
    .local v6, "byteHeader":Ljava/lang/Byte;
    const/4 v4, 0x0

    #@6
    .line 365
    .local v4, "buffer":Ljava/lang/StringBuffer;
    const/16 v20, 0x0

    #@8
    .line 366
    .local v20, "value":[B
    const/16 v17, 0x0

    #@a
    .line 367
    .local v17, "result":[B
    const/16 v21, 0x2

    #@c
    move/from16 v0, v21

    #@e
    new-array v15, v0, [B

    #@10
    .line 369
    .local v15, "lengthArray":[B
    const/4 v11, 0x0

    #@11
    .line 370
    .local v11, "headImpl":Ljavax/obex/HeaderSet;
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    #@13
    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@16
    .line 371
    .local v16, "out":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v11, p0

    #@18
    .line 378
    .local v11, "headImpl":Ljavax/obex/HeaderSet;
    :try_start_0
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@1c
    move-object/from16 v21, v0

    #@1e
    if-eqz v21, :cond_0

    #@20
    const/16 v21, 0x46

    #@22
    move-object/from16 v0, p0

    #@24
    move/from16 v1, v21

    #@26
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@29
    move-result-object v21

    #@2a
    if-nez v21, :cond_0

    #@2c
    .line 380
    const/16 v21, -0x35

    #@2e
    move-object/from16 v0, v16

    #@30
    move/from16 v1, v21

    #@32
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@35
    .line 381
    move-object/from16 v0, p0

    #@37
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@39
    move-object/from16 v21, v0

    #@3b
    move-object/from16 v0, v16

    #@3d
    move-object/from16 v1, v21

    #@3f
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@42
    .line 385
    :cond_0
    const/16 v21, 0xc0

    #@44
    move-object/from16 v0, p0

    #@46
    move/from16 v1, v21

    #@48
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@4b
    move-result-object v21

    #@4c
    move-object/from16 v0, v21

    #@4e
    check-cast v0, Ljava/lang/Long;

    #@50
    move-object v13, v0

    #@51
    .line 386
    .local v13, "intHeader":Ljava/lang/Long;
    if-eqz v13, :cond_1

    #@53
    .line 387
    const/16 v21, -0x40

    #@55
    move-object/from16 v0, v16

    #@57
    move/from16 v1, v21

    #@59
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5c
    .line 388
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    #@5f
    move-result-wide v22

    #@60
    invoke-static/range {v22 .. v23}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@63
    move-result-object v20

    #@64
    .line 389
    .local v20, "value":[B
    move-object/from16 v0, v16

    #@66
    move-object/from16 v1, v20

    #@68
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@6b
    .line 390
    if-eqz p1, :cond_1

    #@6d
    .line 391
    const/16 v21, 0xc0

    #@6f
    const/16 v22, 0x0

    #@71
    move-object/from16 v0, p0

    #@73
    move/from16 v1, v21

    #@75
    move-object/from16 v2, v22

    #@77
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@7a
    .line 396
    .end local v20    # "value":[B
    :cond_1
    const/16 v21, 0x1

    #@7c
    move-object/from16 v0, p0

    #@7e
    move/from16 v1, v21

    #@80
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@83
    move-result-object v21

    #@84
    move-object/from16 v0, v21

    #@86
    check-cast v0, Ljava/lang/String;

    #@88
    move-object/from16 v18, v0

    #@8a
    .line 397
    .local v18, "stringHeader":Ljava/lang/String;
    if-eqz v18, :cond_5

    #@8c
    .line 398
    const/16 v21, 0x1

    #@8e
    move-object/from16 v0, v16

    #@90
    move/from16 v1, v21

    #@92
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@95
    .line 399
    invoke-static/range {v18 .. v18}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    #@98
    move-result-object v20

    #@99
    .line 400
    .restart local v20    # "value":[B
    move-object/from16 v0, v20

    #@9b
    array-length v0, v0

    #@9c
    move/from16 v21, v0

    #@9e
    add-int/lit8 v14, v21, 0x3

    #@a0
    .line 401
    .local v14, "length":I
    shr-int/lit8 v21, v14, 0x8

    #@a2
    move/from16 v0, v21

    #@a4
    and-int/lit16 v0, v0, 0xff

    #@a6
    move/from16 v21, v0

    #@a8
    move/from16 v0, v21

    #@aa
    int-to-byte v0, v0

    #@ab
    move/from16 v21, v0

    #@ad
    const/16 v22, 0x0

    #@af
    aput-byte v21, v15, v22

    #@b1
    .line 402
    and-int/lit16 v0, v14, 0xff

    #@b3
    move/from16 v21, v0

    #@b5
    move/from16 v0, v21

    #@b7
    int-to-byte v0, v0

    #@b8
    move/from16 v21, v0

    #@ba
    const/16 v22, 0x1

    #@bc
    aput-byte v21, v15, v22

    #@be
    .line 403
    move-object/from16 v0, v16

    #@c0
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@c3
    .line 404
    move-object/from16 v0, v16

    #@c5
    move-object/from16 v1, v20

    #@c7
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@ca
    .line 405
    if-eqz p1, :cond_2

    #@cc
    .line 406
    const/16 v21, 0x1

    #@ce
    const/16 v22, 0x0

    #@d0
    move-object/from16 v0, p0

    #@d2
    move/from16 v1, v21

    #@d4
    move-object/from16 v2, v22

    #@d6
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@d9
    .line 416
    .end local v14    # "length":I
    .end local v20    # "value":[B
    :cond_2
    :goto_0
    const/16 v21, 0x42

    #@db
    move-object/from16 v0, p0

    #@dd
    move/from16 v1, v21

    #@df
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@e2
    move-result-object v21

    #@e3
    move-object/from16 v0, v21

    #@e5
    check-cast v0, Ljava/lang/String;

    #@e7
    move-object/from16 v18, v0

    #@e9
    .line 417
    if-eqz v18, :cond_3

    #@eb
    .line 418
    const/16 v21, 0x42

    #@ed
    move-object/from16 v0, v16

    #@ef
    move/from16 v1, v21

    #@f1
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f4
    .line 420
    :try_start_1
    const-string/jumbo v21, "ISO8859_1"

    #@f7
    move-object/from16 v0, v18

    #@f9
    move-object/from16 v1, v21

    #@fb
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@fe
    move-result-object v20

    #@ff
    .line 425
    .restart local v20    # "value":[B
    :try_start_2
    move-object/from16 v0, v20

    #@101
    array-length v0, v0

    #@102
    move/from16 v21, v0

    #@104
    add-int/lit8 v14, v21, 0x4

    #@106
    .line 426
    .restart local v14    # "length":I
    shr-int/lit8 v21, v14, 0x8

    #@108
    move/from16 v0, v21

    #@10a
    and-int/lit16 v0, v0, 0xff

    #@10c
    move/from16 v21, v0

    #@10e
    move/from16 v0, v21

    #@110
    int-to-byte v0, v0

    #@111
    move/from16 v21, v0

    #@113
    const/16 v22, 0x0

    #@115
    aput-byte v21, v15, v22

    #@117
    .line 427
    and-int/lit16 v0, v14, 0xff

    #@119
    move/from16 v21, v0

    #@11b
    move/from16 v0, v21

    #@11d
    int-to-byte v0, v0

    #@11e
    move/from16 v21, v0

    #@120
    const/16 v22, 0x1

    #@122
    aput-byte v21, v15, v22

    #@124
    .line 428
    move-object/from16 v0, v16

    #@126
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@129
    .line 429
    move-object/from16 v0, v16

    #@12b
    move-object/from16 v1, v20

    #@12d
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@130
    .line 430
    const/16 v21, 0x0

    #@132
    move-object/from16 v0, v16

    #@134
    move/from16 v1, v21

    #@136
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@139
    .line 431
    if-eqz p1, :cond_3

    #@13b
    .line 432
    const/16 v21, 0x42

    #@13d
    const/16 v22, 0x0

    #@13f
    move-object/from16 v0, p0

    #@141
    move/from16 v1, v21

    #@143
    move-object/from16 v2, v22

    #@145
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@148
    .line 437
    .end local v14    # "length":I
    .end local v20    # "value":[B
    :cond_3
    const/16 v21, 0xc3

    #@14a
    move-object/from16 v0, p0

    #@14c
    move/from16 v1, v21

    #@14e
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@151
    move-result-object v21

    #@152
    move-object/from16 v0, v21

    #@154
    check-cast v0, Ljava/lang/Long;

    #@156
    move-object v13, v0

    #@157
    .line 438
    if-eqz v13, :cond_4

    #@159
    .line 439
    const/16 v21, -0x3d

    #@15b
    move-object/from16 v0, v16

    #@15d
    move/from16 v1, v21

    #@15f
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@162
    .line 440
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    #@165
    move-result-wide v22

    #@166
    invoke-static/range {v22 .. v23}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@169
    move-result-object v20

    #@16a
    .line 441
    .restart local v20    # "value":[B
    move-object/from16 v0, v16

    #@16c
    move-object/from16 v1, v20

    #@16e
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@171
    .line 442
    if-eqz p1, :cond_4

    #@173
    .line 443
    const/16 v21, 0xc3

    #@175
    const/16 v22, 0x0

    #@177
    move-object/from16 v0, p0

    #@179
    move/from16 v1, v21

    #@17b
    move-object/from16 v2, v22

    #@17d
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@180
    .line 448
    .end local v20    # "value":[B
    :cond_4
    const/16 v21, 0x44

    #@182
    move-object/from16 v0, p0

    #@184
    move/from16 v1, v21

    #@186
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@189
    move-result-object v21

    #@18a
    move-object/from16 v0, v21

    #@18c
    check-cast v0, Ljava/util/Calendar;

    #@18e
    move-object v7, v0

    #@18f
    .line 449
    .local v7, "dateHeader":Ljava/util/Calendar;
    if-eqz v7, :cond_d

    #@191
    .line 455
    new-instance v5, Ljava/lang/StringBuffer;

    #@193
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@196
    .line 456
    .local v5, "buffer":Ljava/lang/StringBuffer;
    const/16 v21, 0x1

    #@198
    :try_start_3
    move/from16 v0, v21

    #@19a
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    #@19d
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    move-result v19

    #@19e
    .line 457
    .local v19, "temp":I
    move/from16 v12, v19

    #@1a0
    .local v12, "i":I
    :goto_1
    const/16 v21, 0x3e8

    #@1a2
    move/from16 v0, v21

    #@1a4
    if-ge v12, v0, :cond_6

    #@1a6
    .line 458
    const-string/jumbo v21, "0"

    #@1a9
    move-object/from16 v0, v21

    #@1ab
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1ae
    .line 457
    mul-int/lit8 v12, v12, 0xa

    #@1b0
    goto :goto_1

    #@1b1
    .line 408
    .end local v5    # "buffer":Ljava/lang/StringBuffer;
    .end local v12    # "i":I
    .end local v19    # "temp":I
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    .local v7, "dateHeader":Ljava/util/Calendar;
    :cond_5
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljavax/obex/HeaderSet;->getEmptyNameHeader()Z

    #@1b4
    move-result v21

    #@1b5
    if-eqz v21, :cond_2

    #@1b7
    .line 409
    const/16 v21, 0x1

    #@1b9
    move-object/from16 v0, v16

    #@1bb
    move/from16 v1, v21

    #@1bd
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1c0
    .line 410
    const/16 v21, 0x0

    #@1c2
    const/16 v22, 0x0

    #@1c4
    aput-byte v21, v15, v22

    #@1c6
    .line 411
    const/16 v21, 0x3

    #@1c8
    const/16 v22, 0x1

    #@1ca
    aput-byte v21, v15, v22

    #@1cc
    .line 412
    move-object/from16 v0, v16

    #@1ce
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1d1
    goto/16 :goto_0

    #@1d3
    .line 719
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .end local v6    # "byteHeader":Ljava/lang/Byte;
    .end local v7    # "dateHeader":Ljava/util/Calendar;
    .end local v13    # "intHeader":Ljava/lang/Long;
    .end local v18    # "stringHeader":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@1d4
    .line 721
    .local v8, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1d7
    move-result-object v17

    #@1d8
    .line 723
    .local v17, "result":[B
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    #@1db
    .line 728
    .end local v8    # "e":Ljava/io/IOException;
    :goto_3
    return-object v17

    #@1dc
    .line 421
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v6    # "byteHeader":Ljava/lang/Byte;
    .restart local v7    # "dateHeader":Ljava/util/Calendar;
    .restart local v13    # "intHeader":Ljava/lang/Long;
    .local v17, "result":[B
    .restart local v18    # "stringHeader":Ljava/lang/String;
    :catch_1
    move-exception v9

    #@1dd
    .line 422
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1de
    .line 720
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .end local v6    # "byteHeader":Ljava/lang/Byte;
    .end local v7    # "dateHeader":Ljava/util/Calendar;
    .end local v9    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v13    # "intHeader":Ljava/lang/Long;
    .end local v18    # "stringHeader":Ljava/lang/String;
    :catchall_0
    move-exception v21

    #@1df
    .line 721
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1e2
    move-result-object v17

    #@1e3
    .line 723
    .local v17, "result":[B
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    #@1e6
    .line 720
    :goto_5
    throw v21

    #@1e7
    .line 460
    .restart local v5    # "buffer":Ljava/lang/StringBuffer;
    .restart local v6    # "byteHeader":Ljava/lang/Byte;
    .local v7, "dateHeader":Ljava/util/Calendar;
    .restart local v12    # "i":I
    .restart local v13    # "intHeader":Ljava/lang/Long;
    .local v17, "result":[B
    .restart local v18    # "stringHeader":Ljava/lang/String;
    .restart local v19    # "temp":I
    :cond_6
    :try_start_8
    move/from16 v0, v19

    #@1e9
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1ec
    .line 461
    const/16 v21, 0x2

    #@1ee
    move/from16 v0, v21

    #@1f0
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    #@1f3
    move-result v19

    #@1f4
    .line 462
    const/16 v21, 0xa

    #@1f6
    move/from16 v0, v19

    #@1f8
    move/from16 v1, v21

    #@1fa
    if-ge v0, v1, :cond_7

    #@1fc
    .line 463
    const-string/jumbo v21, "0"

    #@1ff
    move-object/from16 v0, v21

    #@201
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@204
    .line 465
    :cond_7
    move/from16 v0, v19

    #@206
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@209
    .line 466
    const/16 v21, 0x5

    #@20b
    move/from16 v0, v21

    #@20d
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    #@210
    move-result v19

    #@211
    .line 467
    const/16 v21, 0xa

    #@213
    move/from16 v0, v19

    #@215
    move/from16 v1, v21

    #@217
    if-ge v0, v1, :cond_8

    #@219
    .line 468
    const-string/jumbo v21, "0"

    #@21c
    move-object/from16 v0, v21

    #@21e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@221
    .line 470
    :cond_8
    move/from16 v0, v19

    #@223
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@226
    .line 471
    const-string/jumbo v21, "T"

    #@229
    move-object/from16 v0, v21

    #@22b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22e
    .line 472
    const/16 v21, 0xb

    #@230
    move/from16 v0, v21

    #@232
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    #@235
    move-result v19

    #@236
    .line 473
    const/16 v21, 0xa

    #@238
    move/from16 v0, v19

    #@23a
    move/from16 v1, v21

    #@23c
    if-ge v0, v1, :cond_9

    #@23e
    .line 474
    const-string/jumbo v21, "0"

    #@241
    move-object/from16 v0, v21

    #@243
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@246
    .line 476
    :cond_9
    move/from16 v0, v19

    #@248
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@24b
    .line 477
    const/16 v21, 0xc

    #@24d
    move/from16 v0, v21

    #@24f
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    #@252
    move-result v19

    #@253
    .line 478
    const/16 v21, 0xa

    #@255
    move/from16 v0, v19

    #@257
    move/from16 v1, v21

    #@259
    if-ge v0, v1, :cond_a

    #@25b
    .line 479
    const-string/jumbo v21, "0"

    #@25e
    move-object/from16 v0, v21

    #@260
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@263
    .line 481
    :cond_a
    move/from16 v0, v19

    #@265
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@268
    .line 482
    const/16 v21, 0xd

    #@26a
    move/from16 v0, v21

    #@26c
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    #@26f
    move-result v19

    #@270
    .line 483
    const/16 v21, 0xa

    #@272
    move/from16 v0, v19

    #@274
    move/from16 v1, v21

    #@276
    if-ge v0, v1, :cond_b

    #@278
    .line 484
    const-string/jumbo v21, "0"

    #@27b
    move-object/from16 v0, v21

    #@27d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@280
    .line 486
    :cond_b
    move/from16 v0, v19

    #@282
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@285
    .line 488
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@288
    move-result-object v21

    #@289
    invoke-virtual/range {v21 .. v21}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@28c
    move-result-object v21

    #@28d
    const-string/jumbo v22, "UTC"

    #@290
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@293
    move-result v21

    #@294
    if-eqz v21, :cond_c

    #@296
    .line 489
    const-string/jumbo v21, "Z"

    #@299
    move-object/from16 v0, v21

    #@29b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@29e
    .line 493
    :cond_c
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2a1
    move-result-object v21

    #@2a2
    const-string/jumbo v22, "ISO8859_1"

    #@2a5
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@2a8
    move-result-object v20

    #@2a9
    .line 498
    .restart local v20    # "value":[B
    :try_start_a
    move-object/from16 v0, v20

    #@2ab
    array-length v0, v0

    #@2ac
    move/from16 v21, v0

    #@2ae
    add-int/lit8 v14, v21, 0x3

    #@2b0
    .line 499
    .restart local v14    # "length":I
    shr-int/lit8 v21, v14, 0x8

    #@2b2
    move/from16 v0, v21

    #@2b4
    and-int/lit16 v0, v0, 0xff

    #@2b6
    move/from16 v21, v0

    #@2b8
    move/from16 v0, v21

    #@2ba
    int-to-byte v0, v0

    #@2bb
    move/from16 v21, v0

    #@2bd
    const/16 v22, 0x0

    #@2bf
    aput-byte v21, v15, v22

    #@2c1
    .line 500
    and-int/lit16 v0, v14, 0xff

    #@2c3
    move/from16 v21, v0

    #@2c5
    move/from16 v0, v21

    #@2c7
    int-to-byte v0, v0

    #@2c8
    move/from16 v21, v0

    #@2ca
    const/16 v22, 0x1

    #@2cc
    aput-byte v21, v15, v22

    #@2ce
    .line 501
    const/16 v21, 0x44

    #@2d0
    move-object/from16 v0, v16

    #@2d2
    move/from16 v1, v21

    #@2d4
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2d7
    .line 502
    move-object/from16 v0, v16

    #@2d9
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@2dc
    .line 503
    move-object/from16 v0, v16

    #@2de
    move-object/from16 v1, v20

    #@2e0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@2e3
    .line 504
    if-eqz p1, :cond_1e

    #@2e5
    .line 505
    const/16 v21, 0x44

    #@2e7
    const/16 v22, 0x0

    #@2e9
    move-object/from16 v0, p0

    #@2eb
    move/from16 v1, v21

    #@2ed
    move-object/from16 v2, v22

    #@2ef
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@2f2
    move-object v4, v5

    #@2f3
    .line 510
    .end local v5    # "buffer":Ljava/lang/StringBuffer;
    .end local v12    # "i":I
    .end local v14    # "length":I
    .end local v19    # "temp":I
    .end local v20    # "value":[B
    :cond_d
    :goto_6
    const/16 v21, 0xc4

    #@2f5
    :try_start_b
    move-object/from16 v0, p0

    #@2f7
    move/from16 v1, v21

    #@2f9
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@2fc
    move-result-object v21

    #@2fd
    move-object/from16 v0, v21

    #@2ff
    check-cast v0, Ljava/util/Calendar;

    #@301
    move-object v7, v0

    #@302
    .line 511
    if-eqz v7, :cond_e

    #@304
    .line 512
    const/16 v21, 0xc4

    #@306
    move-object/from16 v0, v16

    #@308
    move/from16 v1, v21

    #@30a
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@30d
    .line 521
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@310
    move-result-object v21

    #@311
    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    #@314
    move-result-wide v22

    #@315
    const-wide/16 v24, 0x3e8

    #@317
    div-long v22, v22, v24

    #@319
    invoke-static/range {v22 .. v23}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@31c
    move-result-object v20

    #@31d
    .line 522
    .restart local v20    # "value":[B
    move-object/from16 v0, v16

    #@31f
    move-object/from16 v1, v20

    #@321
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@324
    .line 523
    if-eqz p1, :cond_e

    #@326
    .line 524
    const/16 v21, 0xc4

    #@328
    const/16 v22, 0x0

    #@32a
    move-object/from16 v0, p0

    #@32c
    move/from16 v1, v21

    #@32e
    move-object/from16 v2, v22

    #@330
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@333
    .line 529
    .end local v20    # "value":[B
    :cond_e
    const/16 v21, 0x5

    #@335
    move-object/from16 v0, p0

    #@337
    move/from16 v1, v21

    #@339
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@33c
    move-result-object v21

    #@33d
    move-object/from16 v0, v21

    #@33f
    check-cast v0, Ljava/lang/String;

    #@341
    move-object/from16 v18, v0

    #@343
    .line 530
    if-eqz v18, :cond_f

    #@345
    .line 531
    const/16 v21, 0x5

    #@347
    move-object/from16 v0, v16

    #@349
    move/from16 v1, v21

    #@34b
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@34e
    .line 532
    invoke-static/range {v18 .. v18}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    #@351
    move-result-object v20

    #@352
    .line 533
    .restart local v20    # "value":[B
    move-object/from16 v0, v20

    #@354
    array-length v0, v0

    #@355
    move/from16 v21, v0

    #@357
    add-int/lit8 v14, v21, 0x3

    #@359
    .line 534
    .restart local v14    # "length":I
    shr-int/lit8 v21, v14, 0x8

    #@35b
    move/from16 v0, v21

    #@35d
    and-int/lit16 v0, v0, 0xff

    #@35f
    move/from16 v21, v0

    #@361
    move/from16 v0, v21

    #@363
    int-to-byte v0, v0

    #@364
    move/from16 v21, v0

    #@366
    const/16 v22, 0x0

    #@368
    aput-byte v21, v15, v22

    #@36a
    .line 535
    and-int/lit16 v0, v14, 0xff

    #@36c
    move/from16 v21, v0

    #@36e
    move/from16 v0, v21

    #@370
    int-to-byte v0, v0

    #@371
    move/from16 v21, v0

    #@373
    const/16 v22, 0x1

    #@375
    aput-byte v21, v15, v22

    #@377
    .line 536
    move-object/from16 v0, v16

    #@379
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@37c
    .line 537
    move-object/from16 v0, v16

    #@37e
    move-object/from16 v1, v20

    #@380
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@383
    .line 538
    if-eqz p1, :cond_f

    #@385
    .line 539
    const/16 v21, 0x5

    #@387
    const/16 v22, 0x0

    #@389
    move-object/from16 v0, p0

    #@38b
    move/from16 v1, v21

    #@38d
    move-object/from16 v2, v22

    #@38f
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@392
    .line 544
    .end local v14    # "length":I
    .end local v20    # "value":[B
    :cond_f
    const/16 v21, 0x46

    #@394
    move-object/from16 v0, p0

    #@396
    move/from16 v1, v21

    #@398
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@39b
    move-result-object v21

    #@39c
    move-object/from16 v0, v21

    #@39e
    check-cast v0, [B

    #@3a0
    move-object/from16 v20, v0

    #@3a2
    .line 545
    .restart local v20    # "value":[B
    if-eqz v20, :cond_10

    #@3a4
    .line 546
    const/16 v21, 0x46

    #@3a6
    move-object/from16 v0, v16

    #@3a8
    move/from16 v1, v21

    #@3aa
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@3ad
    .line 547
    move-object/from16 v0, v20

    #@3af
    array-length v0, v0

    #@3b0
    move/from16 v21, v0

    #@3b2
    add-int/lit8 v14, v21, 0x3

    #@3b4
    .line 548
    .restart local v14    # "length":I
    shr-int/lit8 v21, v14, 0x8

    #@3b6
    move/from16 v0, v21

    #@3b8
    and-int/lit16 v0, v0, 0xff

    #@3ba
    move/from16 v21, v0

    #@3bc
    move/from16 v0, v21

    #@3be
    int-to-byte v0, v0

    #@3bf
    move/from16 v21, v0

    #@3c1
    const/16 v22, 0x0

    #@3c3
    aput-byte v21, v15, v22

    #@3c5
    .line 549
    and-int/lit16 v0, v14, 0xff

    #@3c7
    move/from16 v21, v0

    #@3c9
    move/from16 v0, v21

    #@3cb
    int-to-byte v0, v0

    #@3cc
    move/from16 v21, v0

    #@3ce
    const/16 v22, 0x1

    #@3d0
    aput-byte v21, v15, v22

    #@3d2
    .line 550
    move-object/from16 v0, v16

    #@3d4
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@3d7
    .line 551
    move-object/from16 v0, v16

    #@3d9
    move-object/from16 v1, v20

    #@3db
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@3de
    .line 552
    if-eqz p1, :cond_10

    #@3e0
    .line 553
    const/16 v21, 0x46

    #@3e2
    const/16 v22, 0x0

    #@3e4
    move-object/from16 v0, p0

    #@3e6
    move/from16 v1, v21

    #@3e8
    move-object/from16 v2, v22

    #@3ea
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@3ed
    .line 558
    .end local v14    # "length":I
    :cond_10
    const/16 v21, 0x47

    #@3ef
    move-object/from16 v0, p0

    #@3f1
    move/from16 v1, v21

    #@3f3
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@3f6
    move-result-object v21

    #@3f7
    move-object/from16 v0, v21

    #@3f9
    check-cast v0, [B

    #@3fb
    move-object/from16 v20, v0

    #@3fd
    .line 559
    if-eqz v20, :cond_11

    #@3ff
    .line 560
    const/16 v21, 0x47

    #@401
    move-object/from16 v0, v16

    #@403
    move/from16 v1, v21

    #@405
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@408
    .line 561
    move-object/from16 v0, v20

    #@40a
    array-length v0, v0

    #@40b
    move/from16 v21, v0

    #@40d
    add-int/lit8 v14, v21, 0x3

    #@40f
    .line 562
    .restart local v14    # "length":I
    shr-int/lit8 v21, v14, 0x8

    #@411
    move/from16 v0, v21

    #@413
    and-int/lit16 v0, v0, 0xff

    #@415
    move/from16 v21, v0

    #@417
    move/from16 v0, v21

    #@419
    int-to-byte v0, v0

    #@41a
    move/from16 v21, v0

    #@41c
    const/16 v22, 0x0

    #@41e
    aput-byte v21, v15, v22

    #@420
    .line 563
    and-int/lit16 v0, v14, 0xff

    #@422
    move/from16 v21, v0

    #@424
    move/from16 v0, v21

    #@426
    int-to-byte v0, v0

    #@427
    move/from16 v21, v0

    #@429
    const/16 v22, 0x1

    #@42b
    aput-byte v21, v15, v22

    #@42d
    .line 564
    move-object/from16 v0, v16

    #@42f
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@432
    .line 565
    move-object/from16 v0, v16

    #@434
    move-object/from16 v1, v20

    #@436
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@439
    .line 566
    if-eqz p1, :cond_11

    #@43b
    .line 567
    const/16 v21, 0x47

    #@43d
    const/16 v22, 0x0

    #@43f
    move-object/from16 v0, p0

    #@441
    move/from16 v1, v21

    #@443
    move-object/from16 v2, v22

    #@445
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@448
    .line 572
    .end local v14    # "length":I
    :cond_11
    const/16 v21, 0x4a

    #@44a
    move-object/from16 v0, p0

    #@44c
    move/from16 v1, v21

    #@44e
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@451
    move-result-object v21

    #@452
    move-object/from16 v0, v21

    #@454
    check-cast v0, [B

    #@456
    move-object/from16 v20, v0

    #@458
    .line 573
    if-eqz v20, :cond_12

    #@45a
    .line 574
    const/16 v21, 0x4a

    #@45c
    move-object/from16 v0, v16

    #@45e
    move/from16 v1, v21

    #@460
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@463
    .line 575
    move-object/from16 v0, v20

    #@465
    array-length v0, v0

    #@466
    move/from16 v21, v0

    #@468
    add-int/lit8 v14, v21, 0x3

    #@46a
    .line 576
    .restart local v14    # "length":I
    shr-int/lit8 v21, v14, 0x8

    #@46c
    move/from16 v0, v21

    #@46e
    and-int/lit16 v0, v0, 0xff

    #@470
    move/from16 v21, v0

    #@472
    move/from16 v0, v21

    #@474
    int-to-byte v0, v0

    #@475
    move/from16 v21, v0

    #@477
    const/16 v22, 0x0

    #@479
    aput-byte v21, v15, v22

    #@47b
    .line 577
    and-int/lit16 v0, v14, 0xff

    #@47d
    move/from16 v21, v0

    #@47f
    move/from16 v0, v21

    #@481
    int-to-byte v0, v0

    #@482
    move/from16 v21, v0

    #@484
    const/16 v22, 0x1

    #@486
    aput-byte v21, v15, v22

    #@488
    .line 578
    move-object/from16 v0, v16

    #@48a
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@48d
    .line 579
    move-object/from16 v0, v16

    #@48f
    move-object/from16 v1, v20

    #@491
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@494
    .line 580
    if-eqz p1, :cond_12

    #@496
    .line 581
    const/16 v21, 0x4a

    #@498
    const/16 v22, 0x0

    #@49a
    move-object/from16 v0, p0

    #@49c
    move/from16 v1, v21

    #@49e
    move-object/from16 v2, v22

    #@4a0
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@4a3
    .line 586
    .end local v14    # "length":I
    :cond_12
    const/16 v21, 0x4c

    #@4a5
    move-object/from16 v0, p0

    #@4a7
    move/from16 v1, v21

    #@4a9
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@4ac
    move-result-object v21

    #@4ad
    move-object/from16 v0, v21

    #@4af
    check-cast v0, [B

    #@4b1
    move-object/from16 v20, v0

    #@4b3
    .line 587
    if-eqz v20, :cond_13

    #@4b5
    .line 588
    const/16 v21, 0x4c

    #@4b7
    move-object/from16 v0, v16

    #@4b9
    move/from16 v1, v21

    #@4bb
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@4be
    .line 589
    move-object/from16 v0, v20

    #@4c0
    array-length v0, v0

    #@4c1
    move/from16 v21, v0

    #@4c3
    add-int/lit8 v14, v21, 0x3

    #@4c5
    .line 590
    .restart local v14    # "length":I
    shr-int/lit8 v21, v14, 0x8

    #@4c7
    move/from16 v0, v21

    #@4c9
    and-int/lit16 v0, v0, 0xff

    #@4cb
    move/from16 v21, v0

    #@4cd
    move/from16 v0, v21

    #@4cf
    int-to-byte v0, v0

    #@4d0
    move/from16 v21, v0

    #@4d2
    const/16 v22, 0x0

    #@4d4
    aput-byte v21, v15, v22

    #@4d6
    .line 591
    and-int/lit16 v0, v14, 0xff

    #@4d8
    move/from16 v21, v0

    #@4da
    move/from16 v0, v21

    #@4dc
    int-to-byte v0, v0

    #@4dd
    move/from16 v21, v0

    #@4df
    const/16 v22, 0x1

    #@4e1
    aput-byte v21, v15, v22

    #@4e3
    .line 592
    move-object/from16 v0, v16

    #@4e5
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@4e8
    .line 593
    move-object/from16 v0, v16

    #@4ea
    move-object/from16 v1, v20

    #@4ec
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@4ef
    .line 594
    if-eqz p1, :cond_13

    #@4f1
    .line 595
    const/16 v21, 0x4c

    #@4f3
    const/16 v22, 0x0

    #@4f5
    move-object/from16 v0, p0

    #@4f7
    move/from16 v1, v21

    #@4f9
    move-object/from16 v2, v22

    #@4fb
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@4fe
    .line 600
    .end local v14    # "length":I
    :cond_13
    const/16 v21, 0x4f

    #@500
    move-object/from16 v0, p0

    #@502
    move/from16 v1, v21

    #@504
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@507
    move-result-object v21

    #@508
    move-object/from16 v0, v21

    #@50a
    check-cast v0, [B

    #@50c
    move-object/from16 v20, v0

    #@50e
    .line 601
    if-eqz v20, :cond_14

    #@510
    .line 602
    const/16 v21, 0x4f

    #@512
    move-object/from16 v0, v16

    #@514
    move/from16 v1, v21

    #@516
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@519
    .line 603
    move-object/from16 v0, v20

    #@51b
    array-length v0, v0

    #@51c
    move/from16 v21, v0

    #@51e
    add-int/lit8 v14, v21, 0x3

    #@520
    .line 604
    .restart local v14    # "length":I
    shr-int/lit8 v21, v14, 0x8

    #@522
    move/from16 v0, v21

    #@524
    and-int/lit16 v0, v0, 0xff

    #@526
    move/from16 v21, v0

    #@528
    move/from16 v0, v21

    #@52a
    int-to-byte v0, v0

    #@52b
    move/from16 v21, v0

    #@52d
    const/16 v22, 0x0

    #@52f
    aput-byte v21, v15, v22

    #@531
    .line 605
    and-int/lit16 v0, v14, 0xff

    #@533
    move/from16 v21, v0

    #@535
    move/from16 v0, v21

    #@537
    int-to-byte v0, v0

    #@538
    move/from16 v21, v0

    #@53a
    const/16 v22, 0x1

    #@53c
    aput-byte v21, v15, v22

    #@53e
    .line 606
    move-object/from16 v0, v16

    #@540
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@543
    .line 607
    move-object/from16 v0, v16

    #@545
    move-object/from16 v1, v20

    #@547
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@54a
    .line 608
    if-eqz p1, :cond_14

    #@54c
    .line 609
    const/16 v21, 0x4f

    #@54e
    const/16 v22, 0x0

    #@550
    move-object/from16 v0, p0

    #@552
    move/from16 v1, v21

    #@554
    move-object/from16 v2, v22

    #@556
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@559
    .line 614
    .end local v14    # "length":I
    :cond_14
    const/4 v12, 0x0

    #@55a
    .end local v6    # "byteHeader":Ljava/lang/Byte;
    .restart local v12    # "i":I
    :goto_7
    const/16 v21, 0x10

    #@55c
    move/from16 v0, v21

    #@55e
    if-ge v12, v0, :cond_19

    #@560
    .line 617
    add-int/lit8 v21, v12, 0x30

    #@562
    move-object/from16 v0, p0

    #@564
    move/from16 v1, v21

    #@566
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@569
    move-result-object v21

    #@56a
    move-object/from16 v0, v21

    #@56c
    check-cast v0, Ljava/lang/String;

    #@56e
    move-object/from16 v18, v0

    #@570
    .line 618
    if-eqz v18, :cond_15

    #@572
    .line 619
    int-to-byte v0, v12

    #@573
    move/from16 v21, v0

    #@575
    add-int/lit8 v21, v21, 0x30

    #@577
    move-object/from16 v0, v16

    #@579
    move/from16 v1, v21

    #@57b
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@57e
    .line 620
    invoke-static/range {v18 .. v18}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    #@581
    move-result-object v20

    #@582
    .line 621
    move-object/from16 v0, v20

    #@584
    array-length v0, v0

    #@585
    move/from16 v21, v0

    #@587
    add-int/lit8 v14, v21, 0x3

    #@589
    .line 622
    .restart local v14    # "length":I
    shr-int/lit8 v21, v14, 0x8

    #@58b
    move/from16 v0, v21

    #@58d
    and-int/lit16 v0, v0, 0xff

    #@58f
    move/from16 v21, v0

    #@591
    move/from16 v0, v21

    #@593
    int-to-byte v0, v0

    #@594
    move/from16 v21, v0

    #@596
    const/16 v22, 0x0

    #@598
    aput-byte v21, v15, v22

    #@59a
    .line 623
    and-int/lit16 v0, v14, 0xff

    #@59c
    move/from16 v21, v0

    #@59e
    move/from16 v0, v21

    #@5a0
    int-to-byte v0, v0

    #@5a1
    move/from16 v21, v0

    #@5a3
    const/16 v22, 0x1

    #@5a5
    aput-byte v21, v15, v22

    #@5a7
    .line 624
    move-object/from16 v0, v16

    #@5a9
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@5ac
    .line 625
    move-object/from16 v0, v16

    #@5ae
    move-object/from16 v1, v20

    #@5b0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@5b3
    .line 626
    if-eqz p1, :cond_15

    #@5b5
    .line 627
    add-int/lit8 v21, v12, 0x30

    #@5b7
    const/16 v22, 0x0

    #@5b9
    move-object/from16 v0, p0

    #@5bb
    move/from16 v1, v21

    #@5bd
    move-object/from16 v2, v22

    #@5bf
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@5c2
    .line 632
    .end local v14    # "length":I
    :cond_15
    add-int/lit8 v21, v12, 0x70

    #@5c4
    move-object/from16 v0, p0

    #@5c6
    move/from16 v1, v21

    #@5c8
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@5cb
    move-result-object v21

    #@5cc
    move-object/from16 v0, v21

    #@5ce
    check-cast v0, [B

    #@5d0
    move-object/from16 v20, v0

    #@5d2
    .line 633
    if-eqz v20, :cond_16

    #@5d4
    .line 634
    int-to-byte v0, v12

    #@5d5
    move/from16 v21, v0

    #@5d7
    add-int/lit8 v21, v21, 0x70

    #@5d9
    move-object/from16 v0, v16

    #@5db
    move/from16 v1, v21

    #@5dd
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5e0
    .line 635
    move-object/from16 v0, v20

    #@5e2
    array-length v0, v0

    #@5e3
    move/from16 v21, v0

    #@5e5
    add-int/lit8 v14, v21, 0x3

    #@5e7
    .line 636
    .restart local v14    # "length":I
    shr-int/lit8 v21, v14, 0x8

    #@5e9
    move/from16 v0, v21

    #@5eb
    and-int/lit16 v0, v0, 0xff

    #@5ed
    move/from16 v21, v0

    #@5ef
    move/from16 v0, v21

    #@5f1
    int-to-byte v0, v0

    #@5f2
    move/from16 v21, v0

    #@5f4
    const/16 v22, 0x0

    #@5f6
    aput-byte v21, v15, v22

    #@5f8
    .line 637
    and-int/lit16 v0, v14, 0xff

    #@5fa
    move/from16 v21, v0

    #@5fc
    move/from16 v0, v21

    #@5fe
    int-to-byte v0, v0

    #@5ff
    move/from16 v21, v0

    #@601
    const/16 v22, 0x1

    #@603
    aput-byte v21, v15, v22

    #@605
    .line 638
    move-object/from16 v0, v16

    #@607
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@60a
    .line 639
    move-object/from16 v0, v16

    #@60c
    move-object/from16 v1, v20

    #@60e
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@611
    .line 640
    if-eqz p1, :cond_16

    #@613
    .line 641
    add-int/lit8 v21, v12, 0x70

    #@615
    const/16 v22, 0x0

    #@617
    move-object/from16 v0, p0

    #@619
    move/from16 v1, v21

    #@61b
    move-object/from16 v2, v22

    #@61d
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@620
    .line 646
    .end local v14    # "length":I
    :cond_16
    add-int/lit16 v0, v12, 0xb0

    #@622
    move/from16 v21, v0

    #@624
    move-object/from16 v0, p0

    #@626
    move/from16 v1, v21

    #@628
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@62b
    move-result-object v21

    #@62c
    move-object/from16 v0, v21

    #@62e
    check-cast v0, Ljava/lang/Byte;

    #@630
    move-object v6, v0

    #@631
    .line 647
    .local v6, "byteHeader":Ljava/lang/Byte;
    if-eqz v6, :cond_17

    #@633
    .line 648
    int-to-byte v0, v12

    #@634
    move/from16 v21, v0

    #@636
    move/from16 v0, v21

    #@638
    add-int/lit16 v0, v0, 0xb0

    #@63a
    move/from16 v21, v0

    #@63c
    move-object/from16 v0, v16

    #@63e
    move/from16 v1, v21

    #@640
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@643
    .line 649
    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    #@646
    move-result v21

    #@647
    move-object/from16 v0, v16

    #@649
    move/from16 v1, v21

    #@64b
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@64e
    .line 650
    if-eqz p1, :cond_17

    #@650
    .line 651
    add-int/lit16 v0, v12, 0xb0

    #@652
    move/from16 v21, v0

    #@654
    const/16 v22, 0x0

    #@656
    move-object/from16 v0, p0

    #@658
    move/from16 v1, v21

    #@65a
    move-object/from16 v2, v22

    #@65c
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@65f
    .line 656
    :cond_17
    add-int/lit16 v0, v12, 0xf0

    #@661
    move/from16 v21, v0

    #@663
    move-object/from16 v0, p0

    #@665
    move/from16 v1, v21

    #@667
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@66a
    move-result-object v21

    #@66b
    move-object/from16 v0, v21

    #@66d
    check-cast v0, Ljava/lang/Long;

    #@66f
    move-object v13, v0

    #@670
    .line 657
    if-eqz v13, :cond_18

    #@672
    .line 658
    int-to-byte v0, v12

    #@673
    move/from16 v21, v0

    #@675
    move/from16 v0, v21

    #@677
    add-int/lit16 v0, v0, 0xf0

    #@679
    move/from16 v21, v0

    #@67b
    move-object/from16 v0, v16

    #@67d
    move/from16 v1, v21

    #@67f
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@682
    .line 659
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    #@685
    move-result-wide v22

    #@686
    invoke-static/range {v22 .. v23}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@689
    move-result-object v21

    #@68a
    move-object/from16 v0, v16

    #@68c
    move-object/from16 v1, v21

    #@68e
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@691
    .line 660
    if-eqz p1, :cond_18

    #@693
    .line 661
    add-int/lit16 v0, v12, 0xf0

    #@695
    move/from16 v21, v0

    #@697
    const/16 v22, 0x0

    #@699
    move-object/from16 v0, p0

    #@69b
    move/from16 v1, v21

    #@69d
    move-object/from16 v2, v22

    #@69f
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@6a2
    .line 614
    :cond_18
    add-int/lit8 v12, v12, 0x1

    #@6a4
    goto/16 :goto_7

    #@6a6
    .line 494
    .end local v20    # "value":[B
    .restart local v5    # "buffer":Ljava/lang/StringBuffer;
    .local v6, "byteHeader":Ljava/lang/Byte;
    .restart local v19    # "temp":I
    :catch_2
    move-exception v9

    #@6a7
    .line 495
    .restart local v9    # "e":Ljava/io/UnsupportedEncodingException;
    :try_start_c
    throw v9
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@6a8
    .line 719
    .end local v9    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v12    # "i":I
    .end local v19    # "temp":I
    :catch_3
    move-exception v8

    #@6a9
    .restart local v8    # "e":Ljava/io/IOException;
    move-object v4, v5

    #@6aa
    .end local v5    # "buffer":Ljava/lang/StringBuffer;
    .local v4, "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_2

    #@6ac
    .line 667
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .end local v6    # "byteHeader":Ljava/lang/Byte;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v12    # "i":I
    .restart local v20    # "value":[B
    :cond_19
    :try_start_d
    move-object/from16 v0, p0

    #@6ae
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@6b0
    move-object/from16 v21, v0

    #@6b2
    if-eqz v21, :cond_1a

    #@6b4
    .line 668
    const/16 v21, 0x4d

    #@6b6
    move-object/from16 v0, v16

    #@6b8
    move/from16 v1, v21

    #@6ba
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@6bd
    .line 669
    move-object/from16 v0, p0

    #@6bf
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@6c1
    move-object/from16 v21, v0

    #@6c3
    move-object/from16 v0, v21

    #@6c5
    array-length v0, v0

    #@6c6
    move/from16 v21, v0

    #@6c8
    add-int/lit8 v14, v21, 0x3

    #@6ca
    .line 670
    .restart local v14    # "length":I
    shr-int/lit8 v21, v14, 0x8

    #@6cc
    move/from16 v0, v21

    #@6ce
    and-int/lit16 v0, v0, 0xff

    #@6d0
    move/from16 v21, v0

    #@6d2
    move/from16 v0, v21

    #@6d4
    int-to-byte v0, v0

    #@6d5
    move/from16 v21, v0

    #@6d7
    const/16 v22, 0x0

    #@6d9
    aput-byte v21, v15, v22

    #@6db
    .line 671
    and-int/lit16 v0, v14, 0xff

    #@6dd
    move/from16 v21, v0

    #@6df
    move/from16 v0, v21

    #@6e1
    int-to-byte v0, v0

    #@6e2
    move/from16 v21, v0

    #@6e4
    const/16 v22, 0x1

    #@6e6
    aput-byte v21, v15, v22

    #@6e8
    .line 672
    move-object/from16 v0, v16

    #@6ea
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@6ed
    .line 673
    move-object/from16 v0, p0

    #@6ef
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@6f1
    move-object/from16 v21, v0

    #@6f3
    move-object/from16 v0, v16

    #@6f5
    move-object/from16 v1, v21

    #@6f7
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@6fa
    .line 674
    if-eqz p1, :cond_1a

    #@6fc
    .line 675
    const/16 v21, 0x0

    #@6fe
    move-object/from16 v0, v21

    #@700
    move-object/from16 v1, p0

    #@702
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@704
    .line 680
    .end local v14    # "length":I
    :cond_1a
    move-object/from16 v0, p0

    #@706
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@708
    move-object/from16 v21, v0

    #@70a
    if-eqz v21, :cond_1b

    #@70c
    .line 681
    const/16 v21, 0x4e

    #@70e
    move-object/from16 v0, v16

    #@710
    move/from16 v1, v21

    #@712
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@715
    .line 682
    move-object/from16 v0, p0

    #@717
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@719
    move-object/from16 v21, v0

    #@71b
    move-object/from16 v0, v21

    #@71d
    array-length v0, v0

    #@71e
    move/from16 v21, v0

    #@720
    add-int/lit8 v14, v21, 0x3

    #@722
    .line 683
    .restart local v14    # "length":I
    shr-int/lit8 v21, v14, 0x8

    #@724
    move/from16 v0, v21

    #@726
    and-int/lit16 v0, v0, 0xff

    #@728
    move/from16 v21, v0

    #@72a
    move/from16 v0, v21

    #@72c
    int-to-byte v0, v0

    #@72d
    move/from16 v21, v0

    #@72f
    const/16 v22, 0x0

    #@731
    aput-byte v21, v15, v22

    #@733
    .line 684
    and-int/lit16 v0, v14, 0xff

    #@735
    move/from16 v21, v0

    #@737
    move/from16 v0, v21

    #@739
    int-to-byte v0, v0

    #@73a
    move/from16 v21, v0

    #@73c
    const/16 v22, 0x1

    #@73e
    aput-byte v21, v15, v22

    #@740
    .line 685
    move-object/from16 v0, v16

    #@742
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@745
    .line 686
    move-object/from16 v0, p0

    #@747
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@749
    move-object/from16 v21, v0

    #@74b
    move-object/from16 v0, v16

    #@74d
    move-object/from16 v1, v21

    #@74f
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@752
    .line 687
    if-eqz p1, :cond_1b

    #@754
    .line 688
    const/16 v21, 0x0

    #@756
    move-object/from16 v0, v21

    #@758
    move-object/from16 v1, p0

    #@75a
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@75c
    .line 700
    .end local v14    # "length":I
    :cond_1b
    const/16 v21, 0x97

    #@75e
    move-object/from16 v0, p0

    #@760
    move/from16 v1, v21

    #@762
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@765
    move-result-object v21

    #@766
    move-object/from16 v0, v21

    #@768
    check-cast v0, Ljava/lang/Byte;

    #@76a
    move-object v6, v0

    #@76b
    .line 701
    .local v6, "byteHeader":Ljava/lang/Byte;
    if-eqz v6, :cond_1c

    #@76d
    .line 702
    const/16 v21, -0x69

    #@76f
    move-object/from16 v0, v16

    #@771
    move/from16 v1, v21

    #@773
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@776
    .line 703
    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    #@779
    move-result v21

    #@77a
    move-object/from16 v0, v16

    #@77c
    move/from16 v1, v21

    #@77e
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@781
    .line 704
    if-eqz p1, :cond_1c

    #@783
    .line 705
    const/16 v21, 0x97

    #@785
    const/16 v22, 0x0

    #@787
    move-object/from16 v0, p0

    #@789
    move/from16 v1, v21

    #@78b
    move-object/from16 v2, v22

    #@78d
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@790
    .line 710
    :cond_1c
    const/16 v21, 0x98

    #@792
    move-object/from16 v0, p0

    #@794
    move/from16 v1, v21

    #@796
    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@799
    move-result-object v21

    #@79a
    move-object/from16 v0, v21

    #@79c
    check-cast v0, Ljava/lang/Byte;

    #@79e
    move-object v6, v0

    #@79f
    .line 711
    if-eqz v6, :cond_1d

    #@7a1
    .line 712
    const/16 v21, -0x68

    #@7a3
    move-object/from16 v0, v16

    #@7a5
    move/from16 v1, v21

    #@7a7
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@7aa
    .line 713
    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    #@7ad
    move-result v21

    #@7ae
    move-object/from16 v0, v16

    #@7b0
    move/from16 v1, v21

    #@7b2
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@7b5
    .line 714
    if-eqz p1, :cond_1d

    #@7b7
    .line 715
    const/16 v21, 0x98

    #@7b9
    const/16 v22, 0x0

    #@7bb
    move-object/from16 v0, p0

    #@7bd
    move/from16 v1, v21

    #@7bf
    move-object/from16 v2, v22

    #@7c1
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@7c4
    .line 721
    :cond_1d
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@7c7
    move-result-object v17

    #@7c8
    .line 723
    .local v17, "result":[B
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    #@7cb
    goto/16 :goto_3

    #@7cd
    .line 724
    :catch_4
    move-exception v10

    #@7ce
    .local v10, "ex":Ljava/lang/Exception;
    goto/16 :goto_3

    #@7d0
    .end local v6    # "byteHeader":Ljava/lang/Byte;
    .end local v7    # "dateHeader":Ljava/util/Calendar;
    .end local v10    # "ex":Ljava/lang/Exception;
    .end local v12    # "i":I
    .end local v13    # "intHeader":Ljava/lang/Long;
    .end local v18    # "stringHeader":Ljava/lang/String;
    .end local v20    # "value":[B
    .restart local v8    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v10

    #@7d1
    .restart local v10    # "ex":Ljava/lang/Exception;
    goto/16 :goto_3

    #@7d3
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v10

    #@7d4
    .restart local v10    # "ex":Ljava/lang/Exception;
    goto/16 :goto_5

    #@7d6
    .line 720
    .end local v10    # "ex":Ljava/lang/Exception;
    .restart local v5    # "buffer":Ljava/lang/StringBuffer;
    .local v6, "byteHeader":Ljava/lang/Byte;
    .restart local v7    # "dateHeader":Ljava/util/Calendar;
    .restart local v13    # "intHeader":Ljava/lang/Long;
    .local v17, "result":[B
    .restart local v18    # "stringHeader":Ljava/lang/String;
    :catchall_1
    move-exception v21

    #@7d7
    move-object v4, v5

    #@7d8
    .end local v5    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_4

    #@7da
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v5    # "buffer":Ljava/lang/StringBuffer;
    .restart local v12    # "i":I
    .restart local v14    # "length":I
    .restart local v19    # "temp":I
    .restart local v20    # "value":[B
    :cond_1e
    move-object v4, v5

    #@7db
    .end local v5    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_6
.end method

.method public static findHeaderEnd([BII)I
    .locals 6
    .param p0, "headerArray"    # [B
    .param p1, "start"    # I
    .param p2, "maxSize"    # I

    #@0
    .prologue
    .line 744
    const/4 v0, 0x0

    #@1
    .line 745
    .local v0, "fullLength":I
    const/4 v3, -0x1

    #@2
    .line 746
    .local v3, "lastLength":I
    move v2, p1

    #@3
    .line 747
    .local v2, "index":I
    const/4 v4, 0x0

    #@4
    .line 751
    .local v4, "length":I
    :goto_0
    if-ge v0, p2, :cond_3

    #@6
    array-length v5, p0

    #@7
    if-ge v2, v5, :cond_3

    #@9
    .line 752
    aget-byte v5, p0, v2

    #@b
    if-gez v5, :cond_0

    #@d
    aget-byte v5, p0, v2

    #@f
    add-int/lit16 v1, v5, 0x100

    #@11
    .line 753
    .local v1, "headerID":I
    :goto_1
    move v3, v0

    #@12
    .line 755
    and-int/lit16 v5, v1, 0xc0

    #@14
    sparse-switch v5, :sswitch_data_0

    #@17
    goto :goto_0

    #@18
    .line 761
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    #@1a
    .line 762
    aget-byte v5, p0, v2

    #@1c
    if-gez v5, :cond_1

    #@1e
    aget-byte v5, p0, v2

    #@20
    add-int/lit16 v4, v5, 0x100

    #@22
    .line 764
    :goto_2
    shl-int/lit8 v4, v4, 0x8

    #@24
    .line 765
    add-int/lit8 v2, v2, 0x1

    #@26
    .line 766
    aget-byte v5, p0, v2

    #@28
    if-gez v5, :cond_2

    #@2a
    aget-byte v5, p0, v2

    #@2c
    add-int/lit16 v5, v5, 0x100

    #@2e
    :goto_3
    add-int/2addr v4, v5

    #@2f
    .line 768
    add-int/lit8 v4, v4, -0x3

    #@31
    .line 769
    add-int/lit8 v2, v2, 0x1

    #@33
    .line 770
    add-int/2addr v2, v4

    #@34
    .line 771
    add-int/lit8 v5, v4, 0x3

    #@36
    add-int/2addr v0, v5

    #@37
    .line 772
    goto :goto_0

    #@38
    .line 752
    .end local v1    # "headerID":I
    :cond_0
    aget-byte v1, p0, v2

    #@3a
    goto :goto_1

    #@3b
    .line 763
    .restart local v1    # "headerID":I
    :cond_1
    aget-byte v4, p0, v2

    #@3d
    goto :goto_2

    #@3e
    .line 767
    :cond_2
    aget-byte v5, p0, v2

    #@40
    goto :goto_3

    #@41
    .line 776
    :sswitch_1
    add-int/lit8 v2, v2, 0x1

    #@43
    .line 777
    add-int/lit8 v2, v2, 0x1

    #@45
    .line 778
    add-int/lit8 v0, v0, 0x2

    #@47
    .line 779
    goto :goto_0

    #@48
    .line 783
    :sswitch_2
    add-int/lit8 v2, v2, 0x5

    #@4a
    .line 784
    add-int/lit8 v0, v0, 0x5

    #@4c
    .line 785
    goto :goto_0

    #@4d
    .line 794
    .end local v1    # "headerID":I
    :cond_3
    if-nez v3, :cond_5

    #@4f
    .line 801
    if-ge v0, p2, :cond_4

    #@51
    .line 802
    array-length v5, p0

    #@52
    return v5

    #@53
    .line 804
    :cond_4
    const/4 v5, -0x1

    #@54
    return v5

    #@55
    .line 807
    :cond_5
    add-int v5, v3, p1

    #@57
    return v5

    #@58
    .line 755
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_2
    .end sparse-switch
.end method

.method public static findTag(B[B)I
    .locals 4
    .param p0, "tag"    # B
    .param p1, "value"    # [B

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 906
    const/4 v1, 0x0

    #@2
    .line 908
    .local v1, "length":I
    if-nez p1, :cond_0

    #@4
    .line 909
    return v3

    #@5
    .line 912
    :cond_0
    const/4 v0, 0x0

    #@6
    .line 914
    .local v0, "index":I
    :goto_0
    array-length v2, p1

    #@7
    if-ge v0, v2, :cond_1

    #@9
    aget-byte v2, p1, v0

    #@b
    if-eq v2, p0, :cond_1

    #@d
    .line 915
    add-int/lit8 v2, v0, 0x1

    #@f
    aget-byte v2, p1, v2

    #@11
    and-int/lit16 v1, v2, 0xff

    #@13
    .line 916
    add-int/lit8 v2, v1, 0x2

    #@15
    add-int/2addr v0, v2

    #@16
    goto :goto_0

    #@17
    .line 919
    :cond_1
    array-length v2, p1

    #@18
    if-lt v0, v2, :cond_2

    #@1a
    .line 920
    return v3

    #@1b
    .line 923
    :cond_2
    return v0
.end method

.method public static getMaxRxPacketSize(Ljavax/obex/ObexTransport;)I
    .locals 2
    .param p0, "transport"    # Ljavax/obex/ObexTransport;

    #@0
    .prologue
    .line 1075
    invoke-interface {p0}, Ljavax/obex/ObexTransport;->getMaxReceivePacketSize()I

    #@3
    move-result v0

    #@4
    .line 1076
    .local v0, "size":I
    invoke-static {v0}, Ljavax/obex/ObexHelper;->validateMaxPacketSize(I)I

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public static getMaxTxPacketSize(Ljavax/obex/ObexTransport;)I
    .locals 2
    .param p0, "transport"    # Ljavax/obex/ObexTransport;

    #@0
    .prologue
    .line 1065
    invoke-interface {p0}, Ljavax/obex/ObexTransport;->getMaxTransmitPacketSize()I

    #@3
    move-result v0

    #@4
    .line 1066
    .local v0, "size":I
    invoke-static {v0}, Ljavax/obex/ObexHelper;->validateMaxPacketSize(I)I

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public static getTagValue(B[B)[B
    .locals 4
    .param p0, "tag"    # B
    .param p1, "triplet"    # [B

    #@0
    .prologue
    .line 884
    invoke-static {p0, p1}, Ljavax/obex/ObexHelper;->findTag(B[B)I

    #@3
    move-result v0

    #@4
    .line 885
    .local v0, "index":I
    const/4 v3, -0x1

    #@5
    if-ne v0, v3, :cond_0

    #@7
    .line 886
    const/4 v3, 0x0

    #@8
    return-object v3

    #@9
    .line 889
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@b
    .line 890
    aget-byte v3, p1, v0

    #@d
    and-int/lit16 v1, v3, 0xff

    #@f
    .line 892
    .local v1, "length":I
    new-array v2, v1, [B

    #@11
    .line 893
    .local v2, "result":[B
    add-int/lit8 v0, v0, 0x1

    #@13
    .line 894
    const/4 v3, 0x0

    #@14
    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@17
    .line 896
    return-object v2
.end method

.method public static updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B
    .locals 20
    .param p0, "header"    # Ljavax/obex/HeaderSet;
    .param p1, "headerArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    const/4 v9, 0x0

    #@1
    .line 185
    .local v9, "index":I
    const/4 v10, 0x0

    #@2
    .line 187
    .local v10, "length":I
    const/4 v13, 0x0

    #@3
    .line 188
    .local v13, "value":[B
    const/4 v2, 0x0

    #@4
    .line 189
    .local v2, "body":[B
    move-object/from16 v8, p0

    #@6
    .line 191
    .end local v2    # "body":[B
    .end local v13    # "value":[B
    .local v8, "headerImpl":Ljavax/obex/HeaderSet;
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    #@8
    array-length v14, v0

    #@9
    if-ge v9, v14, :cond_7

    #@b
    .line 192
    aget-byte v14, p1, v9

    #@d
    and-int/lit16 v7, v14, 0xff

    #@f
    .line 193
    .local v7, "headerID":I
    and-int/lit16 v14, v7, 0xc0

    #@11
    sparse-switch v14, :sswitch_data_0

    #@14
    goto :goto_0

    #@15
    .line 206
    :sswitch_0
    const/4 v12, 0x1

    #@16
    .line 207
    .local v12, "trimTail":Z
    add-int/lit8 v9, v9, 0x1

    #@18
    .line 208
    aget-byte v14, p1, v9

    #@1a
    and-int/lit16 v10, v14, 0xff

    #@1c
    .line 209
    shl-int/lit8 v10, v10, 0x8

    #@1e
    .line 210
    add-int/lit8 v9, v9, 0x1

    #@20
    .line 211
    aget-byte v14, p1, v9

    #@22
    and-int/lit16 v14, v14, 0xff

    #@24
    add-int/2addr v10, v14

    #@25
    .line 212
    add-int/lit8 v10, v10, -0x3

    #@27
    .line 213
    add-int/lit8 v9, v9, 0x1

    #@29
    .line 214
    new-array v13, v10, [B

    #@2b
    .line 215
    .local v13, "value":[B
    const/4 v14, 0x0

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-static {v0, v9, v13, v14, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@31
    .line 216
    if-eqz v10, :cond_0

    #@33
    if-lez v10, :cond_1

    #@35
    add-int/lit8 v14, v10, -0x1

    #@37
    aget-byte v14, v13, v14

    #@39
    if-eqz v14, :cond_1

    #@3b
    .line 217
    :cond_0
    const/4 v12, 0x0

    #@3c
    .line 219
    :cond_1
    packed-switch v7, :pswitch_data_0

    #@3f
    .line 282
    :pswitch_0
    and-int/lit16 v14, v7, 0xc0

    #@41
    if-nez v14, :cond_4

    #@43
    .line 284
    const/4 v14, 0x1

    #@44
    .line 283
    invoke-static {v13, v14}, Ljavax/obex/ObexHelper;->convertToUnicode([BZ)Ljava/lang/String;

    #@47
    move-result-object v14

    #@48
    move-object/from16 v0, p0

    #@4a
    invoke-virtual {v0, v7, v14}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@4d
    .line 290
    :goto_1
    add-int/2addr v9, v10

    #@4e
    .line 291
    goto :goto_0

    #@4f
    .line 223
    :pswitch_1
    if-nez v12, :cond_2

    #@51
    .line 224
    :try_start_1
    new-instance v14, Ljava/lang/String;

    #@53
    .line 225
    array-length v15, v13

    #@54
    const-string/jumbo v16, "ISO8859_1"

    #@57
    .line 224
    const/16 v17, 0x0

    #@59
    move/from16 v0, v17

    #@5b
    move-object/from16 v1, v16

    #@5d
    invoke-direct {v14, v13, v0, v15, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@60
    move-object/from16 v0, p0

    #@62
    invoke-virtual {v0, v7, v14}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@65
    goto :goto_1

    #@66
    .line 230
    :catch_0
    move-exception v5

    #@67
    .line 231
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@68
    .line 341
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "headerID":I
    .end local v12    # "trimTail":Z
    .end local v13    # "value":[B
    :catch_1
    move-exception v4

    #@69
    .line 342
    .local v4, "e":Ljava/io/IOException;
    new-instance v14, Ljava/io/IOException;

    #@6b
    const-string/jumbo v15, "Header was not formatted properly"

    #@6e
    invoke-direct {v14, v15, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@71
    throw v14

    #@72
    .line 227
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "headerID":I
    .restart local v12    # "trimTail":Z
    .restart local v13    # "value":[B
    :cond_2
    :try_start_3
    new-instance v14, Ljava/lang/String;

    #@74
    .line 228
    array-length v15, v13

    #@75
    add-int/lit8 v15, v15, -0x1

    #@77
    const-string/jumbo v16, "ISO8859_1"

    #@7a
    .line 227
    const/16 v17, 0x0

    #@7c
    move/from16 v0, v17

    #@7e
    move-object/from16 v1, v16

    #@80
    invoke-direct {v14, v13, v0, v15, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@83
    move-object/from16 v0, p0

    #@85
    invoke-virtual {v0, v7, v14}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@88
    goto :goto_1

    #@89
    .line 236
    :pswitch_2
    :try_start_4
    new-array v14, v10, [B

    #@8b
    move-object/from16 v0, p0

    #@8d
    iput-object v14, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@8f
    .line 237
    move-object/from16 v0, p0

    #@91
    iget-object v14, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@93
    const/4 v15, 0x0

    #@94
    move-object/from16 v0, p1

    #@96
    invoke-static {v0, v9, v14, v15, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@99
    goto :goto_1

    #@9a
    .line 242
    :pswitch_3
    new-array v14, v10, [B

    #@9c
    move-object/from16 v0, p0

    #@9e
    iput-object v14, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@a0
    .line 243
    move-object/from16 v0, p0

    #@a2
    iget-object v14, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@a4
    const/4 v15, 0x0

    #@a5
    move-object/from16 v0, p1

    #@a7
    invoke-static {v0, v9, v14, v15, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@aa
    goto :goto_1

    #@ab
    .line 250
    :pswitch_4
    add-int/lit8 v14, v10, 0x1

    #@ad
    new-array v2, v14, [B

    #@af
    .line 251
    .local v2, "body":[B
    int-to-byte v14, v7

    #@b0
    const/4 v15, 0x0

    #@b1
    aput-byte v14, v2, v15

    #@b3
    .line 252
    const/4 v14, 0x1

    #@b4
    move-object/from16 v0, p1

    #@b6
    invoke-static {v0, v9, v2, v14, v10}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@b9
    goto :goto_1

    #@ba
    .line 257
    .end local v2    # "body":[B
    :pswitch_5
    :try_start_5
    new-instance v3, Ljava/lang/String;

    #@bc
    const-string/jumbo v14, "ISO8859_1"

    #@bf
    invoke-direct {v3, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@c2
    .line 258
    .local v3, "dateString":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@c5
    move-result-object v11

    #@c6
    .line 259
    .local v11, "temp":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@c9
    move-result v14

    #@ca
    const/16 v15, 0x10

    #@cc
    if-ne v14, v15, :cond_3

    #@ce
    .line 260
    const/16 v14, 0xf

    #@d0
    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    #@d3
    move-result v14

    #@d4
    const/16 v15, 0x5a

    #@d6
    if-ne v14, v15, :cond_3

    #@d8
    .line 261
    const-string/jumbo v14, "UTC"

    #@db
    invoke-static {v14}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@de
    move-result-object v14

    #@df
    invoke-virtual {v11, v14}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@e2
    .line 264
    :cond_3
    const/4 v14, 0x0

    #@e3
    const/4 v15, 0x4

    #@e4
    .line 263
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e7
    move-result-object v14

    #@e8
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@eb
    move-result v14

    #@ec
    const/4 v15, 0x1

    #@ed
    invoke-virtual {v11, v15, v14}, Ljava/util/Calendar;->set(II)V

    #@f0
    .line 266
    const/4 v14, 0x4

    #@f1
    const/4 v15, 0x6

    #@f2
    .line 265
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f5
    move-result-object v14

    #@f6
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f9
    move-result v14

    #@fa
    const/4 v15, 0x2

    #@fb
    invoke-virtual {v11, v15, v14}, Ljava/util/Calendar;->set(II)V

    #@fe
    .line 268
    const/4 v14, 0x6

    #@ff
    const/16 v15, 0x8

    #@101
    .line 267
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@104
    move-result-object v14

    #@105
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@108
    move-result v14

    #@109
    const/4 v15, 0x5

    #@10a
    invoke-virtual {v11, v15, v14}, Ljava/util/Calendar;->set(II)V

    #@10d
    .line 270
    const/16 v14, 0x9

    #@10f
    const/16 v15, 0xb

    #@111
    .line 269
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@114
    move-result-object v14

    #@115
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@118
    move-result v14

    #@119
    const/16 v15, 0xb

    #@11b
    invoke-virtual {v11, v15, v14}, Ljava/util/Calendar;->set(II)V

    #@11e
    .line 272
    const/16 v14, 0xb

    #@120
    const/16 v15, 0xd

    #@122
    .line 271
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@125
    move-result-object v14

    #@126
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@129
    move-result v14

    #@12a
    const/16 v15, 0xc

    #@12c
    invoke-virtual {v11, v15, v14}, Ljava/util/Calendar;->set(II)V

    #@12f
    .line 274
    const/16 v14, 0xd

    #@131
    const/16 v15, 0xf

    #@133
    .line 273
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@136
    move-result-object v14

    #@137
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@13a
    move-result v14

    #@13b
    const/16 v15, 0xd

    #@13d
    invoke-virtual {v11, v15, v14}, Ljava/util/Calendar;->set(II)V

    #@140
    .line 275
    const/16 v14, 0x44

    #@142
    move-object/from16 v0, p0

    #@144
    invoke-virtual {v0, v14, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@147
    goto/16 :goto_1

    #@149
    .line 276
    .end local v3    # "dateString":Ljava/lang/String;
    .end local v11    # "temp":Ljava/util/Calendar;
    :catch_2
    move-exception v5

    #@14a
    .line 277
    .restart local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :try_start_6
    throw v5

    #@14b
    .line 286
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    move-object/from16 v0, p0

    #@14d
    invoke-virtual {v0, v7, v13}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    #@150
    goto/16 :goto_1

    #@152
    .line 298
    .end local v12    # "trimTail":Z
    .end local v13    # "value":[B
    :sswitch_1
    add-int/lit8 v9, v9, 0x1

    #@154
    .line 300
    :try_start_7
    aget-byte v14, p1, v9

    #@156
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@159
    move-result-object v14

    #@15a
    move-object/from16 v0, p0

    #@15c
    invoke-virtual {v0, v7, v14}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    #@15f
    .line 304
    :goto_2
    add-int/lit8 v9, v9, 0x1

    #@161
    goto/16 :goto_0

    #@163
    .line 313
    :sswitch_2
    add-int/lit8 v9, v9, 0x1

    #@165
    .line 314
    const/4 v14, 0x4

    #@166
    :try_start_8
    new-array v13, v14, [B

    #@168
    .line 315
    .restart local v13    # "value":[B
    const/4 v14, 0x0

    #@169
    const/4 v15, 0x4

    #@16a
    move-object/from16 v0, p1

    #@16c
    invoke-static {v0, v9, v13, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    #@16f
    .line 317
    const/16 v14, 0xc4

    #@171
    if-eq v7, v14, :cond_6

    #@173
    .line 320
    const/16 v14, 0xcb

    #@175
    if-ne v7, v14, :cond_5

    #@177
    .line 321
    const/4 v14, 0x4

    #@178
    :try_start_9
    new-array v14, v14, [B

    #@17a
    move-object/from16 v0, p0

    #@17c
    iput-object v14, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@17e
    .line 322
    move-object/from16 v0, p0

    #@180
    iget-object v14, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@182
    const/4 v15, 0x0

    #@183
    const/16 v16, 0x0

    #@185
    const/16 v17, 0x4

    #@187
    move/from16 v0, v16

    #@189
    move/from16 v1, v17

    #@18b
    invoke-static {v13, v15, v14, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@18e
    .line 336
    :goto_3
    add-int/lit8 v9, v9, 0x4

    #@190
    goto/16 :goto_0

    #@192
    .line 325
    :cond_5
    invoke-static {v13}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    #@195
    move-result-wide v14

    #@196
    .line 324
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@199
    move-result-object v14

    #@19a
    move-object/from16 v0, p0

    #@19c
    invoke-virtual {v0, v7, v14}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    #@19f
    goto :goto_3

    #@1a0
    .line 332
    :catch_3
    move-exception v6

    #@1a1
    .line 334
    .local v6, "e":Ljava/lang/Exception;
    :try_start_a
    new-instance v14, Ljava/io/IOException;

    #@1a3
    const-string/jumbo v15, "Header was not formatted properly"

    #@1a6
    invoke-direct {v14, v15, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a9
    throw v14
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    #@1aa
    .line 328
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@1ad
    move-result-object v11

    #@1ae
    .line 329
    .restart local v11    # "temp":Ljava/util/Calendar;
    new-instance v14, Ljava/util/Date;

    #@1b0
    invoke-static {v13}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    #@1b3
    move-result-wide v16

    #@1b4
    const-wide/16 v18, 0x3e8

    #@1b6
    mul-long v16, v16, v18

    #@1b8
    move-wide/from16 v0, v16

    #@1ba
    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@1bd
    invoke-virtual {v11, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@1c0
    .line 330
    const/16 v14, 0xc4

    #@1c2
    move-object/from16 v0, p0

    #@1c4
    invoke-virtual {v0, v14, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    #@1c7
    goto :goto_3

    #@1c8
    .line 345
    .end local v7    # "headerID":I
    .end local v11    # "temp":Ljava/util/Calendar;
    .end local v13    # "value":[B
    :cond_7
    return-object v2

    #@1c9
    .line 301
    .restart local v7    # "headerID":I
    :catch_4
    move-exception v6

    #@1ca
    .restart local v6    # "e":Ljava/lang/Exception;
    goto :goto_2

    #@1cb
    .line 193
    nop

    #@1cc
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_2
    .end sparse-switch

    #@1de
    .line 219
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static validateMaxPacketSize(I)I
    .locals 4
    .param p0, "size"    # I

    #@0
    .prologue
    const/16 v3, 0xff

    #@2
    .line 1083
    const/4 v0, -0x1

    #@3
    if-eq p0, v0, :cond_1

    #@5
    .line 1084
    if-ge p0, v3, :cond_0

    #@7
    .line 1085
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " is less that the lower limit: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 1088
    :cond_0
    return p0

    #@26
    .line 1090
    :cond_1
    const v0, 0xfffe

    #@29
    return v0
.end method
