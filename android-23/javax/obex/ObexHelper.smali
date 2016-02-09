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
    .locals 24
    .param p0, "head"    # Ljavax/obex/HeaderSet;
    .param p1, "nullOut"    # Z

    #@0
    .prologue
    .line 360
    const/4 v11, 0x0

    #@1
    .line 361
    .local v11, "intHeader":Ljava/lang/Long;
    const/16 v16, 0x0

    #@3
    .line 362
    .local v16, "stringHeader":Ljava/lang/String;
    const/4 v5, 0x0

    #@4
    .line 363
    .local v5, "dateHeader":Ljava/util/Calendar;
    const/4 v4, 0x0

    #@5
    .line 364
    .local v4, "byteHeader":Ljava/lang/Byte;
    const/4 v2, 0x0

    #@6
    .line 365
    .local v2, "buffer":Ljava/lang/StringBuffer;
    const/16 v18, 0x0

    #@8
    .line 366
    .local v18, "value":[B
    const/4 v15, 0x0

    #@9
    .line 367
    .local v15, "result":[B
    const/16 v19, 0x2

    #@b
    move/from16 v0, v19

    #@d
    new-array v13, v0, [B

    #@f
    .line 369
    .local v13, "lengthArray":[B
    const/4 v9, 0x0

    #@10
    .line 370
    .local v9, "headImpl":Ljavax/obex/HeaderSet;
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    #@12
    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@15
    .line 371
    .local v14, "out":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v9, p0

    #@17
    .line 378
    .local v9, "headImpl":Ljavax/obex/HeaderSet;
    :try_start_0
    iget-object v0, v9, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@19
    move-object/from16 v19, v0

    #@1b
    if-eqz v19, :cond_0

    #@1d
    const/16 v19, 0x46

    #@1f
    move/from16 v0, v19

    #@21
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@24
    move-result-object v19

    #@25
    if-nez v19, :cond_0

    #@27
    .line 380
    const/16 v19, -0x35

    #@29
    move/from16 v0, v19

    #@2b
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2e
    .line 381
    iget-object v0, v9, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@30
    move-object/from16 v19, v0

    #@32
    move-object/from16 v0, v19

    #@34
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@37
    .line 385
    :cond_0
    const/16 v19, 0xc0

    #@39
    move/from16 v0, v19

    #@3b
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@3e
    move-result-object v19

    #@3f
    move-object/from16 v0, v19

    #@41
    check-cast v0, Ljava/lang/Long;

    #@43
    move-object v11, v0

    #@44
    .line 386
    .local v11, "intHeader":Ljava/lang/Long;
    if-eqz v11, :cond_1

    #@46
    .line 387
    const/16 v19, -0x40

    #@48
    move/from16 v0, v19

    #@4a
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@4d
    .line 388
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    #@50
    move-result-wide v20

    #@51
    invoke-static/range {v20 .. v21}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@54
    move-result-object v18

    #@55
    .line 389
    .local v18, "value":[B
    move-object/from16 v0, v18

    #@57
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@5a
    .line 390
    if-eqz p1, :cond_1

    #@5c
    .line 391
    const/16 v19, 0xc0

    #@5e
    const/16 v20, 0x0

    #@60
    move/from16 v0, v19

    #@62
    move-object/from16 v1, v20

    #@64
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@67
    .line 396
    .end local v18    # "value":[B
    :cond_1
    const/16 v19, 0x1

    #@69
    move/from16 v0, v19

    #@6b
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@6e
    move-result-object v19

    #@6f
    move-object/from16 v0, v19

    #@71
    check-cast v0, Ljava/lang/String;

    #@73
    move-object/from16 v16, v0

    #@75
    .line 397
    .local v16, "stringHeader":Ljava/lang/String;
    if-eqz v16, :cond_5

    #@77
    .line 398
    const/16 v19, 0x1

    #@79
    move/from16 v0, v19

    #@7b
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@7e
    .line 399
    invoke-static/range {v16 .. v16}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    #@81
    move-result-object v18

    #@82
    .line 400
    .restart local v18    # "value":[B
    move-object/from16 v0, v18

    #@84
    array-length v0, v0

    #@85
    move/from16 v19, v0

    #@87
    add-int/lit8 v12, v19, 0x3

    #@89
    .line 401
    .local v12, "length":I
    shr-int/lit8 v19, v12, 0x8

    #@8b
    move/from16 v0, v19

    #@8d
    and-int/lit16 v0, v0, 0xff

    #@8f
    move/from16 v19, v0

    #@91
    move/from16 v0, v19

    #@93
    int-to-byte v0, v0

    #@94
    move/from16 v19, v0

    #@96
    const/16 v20, 0x0

    #@98
    aput-byte v19, v13, v20

    #@9a
    .line 402
    and-int/lit16 v0, v12, 0xff

    #@9c
    move/from16 v19, v0

    #@9e
    move/from16 v0, v19

    #@a0
    int-to-byte v0, v0

    #@a1
    move/from16 v19, v0

    #@a3
    const/16 v20, 0x1

    #@a5
    aput-byte v19, v13, v20

    #@a7
    .line 403
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@aa
    .line 404
    move-object/from16 v0, v18

    #@ac
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@af
    .line 405
    if-eqz p1, :cond_2

    #@b1
    .line 406
    const/16 v19, 0x1

    #@b3
    const/16 v20, 0x0

    #@b5
    move/from16 v0, v19

    #@b7
    move-object/from16 v1, v20

    #@b9
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@bc
    .line 416
    .end local v12    # "length":I
    .end local v18    # "value":[B
    :cond_2
    :goto_0
    const/16 v19, 0x42

    #@be
    move/from16 v0, v19

    #@c0
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@c3
    move-result-object v19

    #@c4
    move-object/from16 v0, v19

    #@c6
    check-cast v0, Ljava/lang/String;

    #@c8
    move-object/from16 v16, v0

    #@ca
    .line 417
    if-eqz v16, :cond_3

    #@cc
    .line 418
    const/16 v19, 0x42

    #@ce
    move/from16 v0, v19

    #@d0
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d3
    .line 420
    :try_start_1
    const-string/jumbo v19, "ISO8859_1"

    #@d6
    move-object/from16 v0, v16

    #@d8
    move-object/from16 v1, v19

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@dd
    move-result-object v18

    #@de
    .line 425
    .restart local v18    # "value":[B
    :try_start_2
    move-object/from16 v0, v18

    #@e0
    array-length v0, v0

    #@e1
    move/from16 v19, v0

    #@e3
    add-int/lit8 v12, v19, 0x4

    #@e5
    .line 426
    .restart local v12    # "length":I
    shr-int/lit8 v19, v12, 0x8

    #@e7
    move/from16 v0, v19

    #@e9
    and-int/lit16 v0, v0, 0xff

    #@eb
    move/from16 v19, v0

    #@ed
    move/from16 v0, v19

    #@ef
    int-to-byte v0, v0

    #@f0
    move/from16 v19, v0

    #@f2
    const/16 v20, 0x0

    #@f4
    aput-byte v19, v13, v20

    #@f6
    .line 427
    and-int/lit16 v0, v12, 0xff

    #@f8
    move/from16 v19, v0

    #@fa
    move/from16 v0, v19

    #@fc
    int-to-byte v0, v0

    #@fd
    move/from16 v19, v0

    #@ff
    const/16 v20, 0x1

    #@101
    aput-byte v19, v13, v20

    #@103
    .line 428
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@106
    .line 429
    move-object/from16 v0, v18

    #@108
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@10b
    .line 430
    const/16 v19, 0x0

    #@10d
    move/from16 v0, v19

    #@10f
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@112
    .line 431
    if-eqz p1, :cond_3

    #@114
    .line 432
    const/16 v19, 0x42

    #@116
    const/16 v20, 0x0

    #@118
    move/from16 v0, v19

    #@11a
    move-object/from16 v1, v20

    #@11c
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@11f
    .line 437
    .end local v12    # "length":I
    .end local v18    # "value":[B
    :cond_3
    const/16 v19, 0xc3

    #@121
    move/from16 v0, v19

    #@123
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@126
    move-result-object v19

    #@127
    move-object/from16 v0, v19

    #@129
    check-cast v0, Ljava/lang/Long;

    #@12b
    move-object v11, v0

    #@12c
    .line 438
    if-eqz v11, :cond_4

    #@12e
    .line 439
    const/16 v19, -0x3d

    #@130
    move/from16 v0, v19

    #@132
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@135
    .line 440
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    #@138
    move-result-wide v20

    #@139
    invoke-static/range {v20 .. v21}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@13c
    move-result-object v18

    #@13d
    .line 441
    .restart local v18    # "value":[B
    move-object/from16 v0, v18

    #@13f
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@142
    .line 442
    if-eqz p1, :cond_4

    #@144
    .line 443
    const/16 v19, 0xc3

    #@146
    const/16 v20, 0x0

    #@148
    move/from16 v0, v19

    #@14a
    move-object/from16 v1, v20

    #@14c
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@14f
    .line 448
    .end local v18    # "value":[B
    :cond_4
    const/16 v19, 0x44

    #@151
    move/from16 v0, v19

    #@153
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@156
    move-result-object v19

    #@157
    move-object/from16 v0, v19

    #@159
    check-cast v0, Ljava/util/Calendar;

    #@15b
    move-object v5, v0

    #@15c
    .line 449
    .local v5, "dateHeader":Ljava/util/Calendar;
    if-eqz v5, :cond_d

    #@15e
    .line 455
    new-instance v3, Ljava/lang/StringBuffer;

    #@160
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@163
    .line 456
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const/16 v19, 0x1

    #@165
    :try_start_3
    move/from16 v0, v19

    #@167
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    #@16a
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    move-result v17

    #@16b
    .line 457
    .local v17, "temp":I
    move/from16 v10, v17

    #@16d
    .local v10, "i":I
    :goto_1
    const/16 v19, 0x3e8

    #@16f
    move/from16 v0, v19

    #@171
    if-ge v10, v0, :cond_6

    #@173
    .line 458
    const-string/jumbo v19, "0"

    #@176
    move-object/from16 v0, v19

    #@178
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@17b
    .line 457
    mul-int/lit8 v10, v10, 0xa

    #@17d
    goto :goto_1

    #@17e
    .line 408
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v10    # "i":I
    .end local v17    # "temp":I
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
    .local v5, "dateHeader":Ljava/util/Calendar;
    :cond_5
    :try_start_4
    invoke-virtual {v9}, Ljavax/obex/HeaderSet;->getEmptyNameHeader()Z

    #@181
    move-result v19

    #@182
    if-eqz v19, :cond_2

    #@184
    .line 409
    const/16 v19, 0x1

    #@186
    move/from16 v0, v19

    #@188
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@18b
    .line 410
    const/16 v19, 0x0

    #@18d
    const/16 v20, 0x0

    #@18f
    aput-byte v19, v13, v20

    #@191
    .line 411
    const/16 v19, 0x3

    #@193
    const/16 v20, 0x1

    #@195
    aput-byte v19, v13, v20

    #@197
    .line 412
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@19a
    goto/16 :goto_0

    #@19c
    .line 719
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "byteHeader":Ljava/lang/Byte;
    .end local v5    # "dateHeader":Ljava/util/Calendar;
    .end local v11    # "intHeader":Ljava/lang/Long;
    .end local v16    # "stringHeader":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@19d
    .line 721
    .local v6, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1a0
    move-result-object v15

    #@1a1
    .line 723
    .local v15, "result":[B
    :try_start_5
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    #@1a4
    .line 728
    .end local v6    # "e":Ljava/io/IOException;
    :goto_3
    return-object v15

    #@1a5
    .line 421
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "byteHeader":Ljava/lang/Byte;
    .restart local v5    # "dateHeader":Ljava/util/Calendar;
    .restart local v11    # "intHeader":Ljava/lang/Long;
    .local v15, "result":[B
    .restart local v16    # "stringHeader":Ljava/lang/String;
    :catch_1
    move-exception v7

    #@1a6
    .line 422
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1a7
    .line 720
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "byteHeader":Ljava/lang/Byte;
    .end local v5    # "dateHeader":Ljava/util/Calendar;
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v11    # "intHeader":Ljava/lang/Long;
    .end local v16    # "stringHeader":Ljava/lang/String;
    :catchall_0
    move-exception v19

    #@1a8
    .line 721
    :goto_4
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1ab
    move-result-object v15

    #@1ac
    .line 723
    .local v15, "result":[B
    :try_start_7
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    #@1af
    .line 720
    :goto_5
    throw v19

    #@1b0
    .line 460
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "byteHeader":Ljava/lang/Byte;
    .local v5, "dateHeader":Ljava/util/Calendar;
    .restart local v10    # "i":I
    .restart local v11    # "intHeader":Ljava/lang/Long;
    .local v15, "result":[B
    .restart local v16    # "stringHeader":Ljava/lang/String;
    .restart local v17    # "temp":I
    :cond_6
    :try_start_8
    move/from16 v0, v17

    #@1b2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1b5
    .line 461
    const/16 v19, 0x2

    #@1b7
    move/from16 v0, v19

    #@1b9
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    #@1bc
    move-result v17

    #@1bd
    .line 462
    const/16 v19, 0xa

    #@1bf
    move/from16 v0, v17

    #@1c1
    move/from16 v1, v19

    #@1c3
    if-ge v0, v1, :cond_7

    #@1c5
    .line 463
    const-string/jumbo v19, "0"

    #@1c8
    move-object/from16 v0, v19

    #@1ca
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1cd
    .line 465
    :cond_7
    move/from16 v0, v17

    #@1cf
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1d2
    .line 466
    const/16 v19, 0x5

    #@1d4
    move/from16 v0, v19

    #@1d6
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    #@1d9
    move-result v17

    #@1da
    .line 467
    const/16 v19, 0xa

    #@1dc
    move/from16 v0, v17

    #@1de
    move/from16 v1, v19

    #@1e0
    if-ge v0, v1, :cond_8

    #@1e2
    .line 468
    const-string/jumbo v19, "0"

    #@1e5
    move-object/from16 v0, v19

    #@1e7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1ea
    .line 470
    :cond_8
    move/from16 v0, v17

    #@1ec
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1ef
    .line 471
    const-string/jumbo v19, "T"

    #@1f2
    move-object/from16 v0, v19

    #@1f4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f7
    .line 472
    const/16 v19, 0xb

    #@1f9
    move/from16 v0, v19

    #@1fb
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    #@1fe
    move-result v17

    #@1ff
    .line 473
    const/16 v19, 0xa

    #@201
    move/from16 v0, v17

    #@203
    move/from16 v1, v19

    #@205
    if-ge v0, v1, :cond_9

    #@207
    .line 474
    const-string/jumbo v19, "0"

    #@20a
    move-object/from16 v0, v19

    #@20c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20f
    .line 476
    :cond_9
    move/from16 v0, v17

    #@211
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@214
    .line 477
    const/16 v19, 0xc

    #@216
    move/from16 v0, v19

    #@218
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    #@21b
    move-result v17

    #@21c
    .line 478
    const/16 v19, 0xa

    #@21e
    move/from16 v0, v17

    #@220
    move/from16 v1, v19

    #@222
    if-ge v0, v1, :cond_a

    #@224
    .line 479
    const-string/jumbo v19, "0"

    #@227
    move-object/from16 v0, v19

    #@229
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22c
    .line 481
    :cond_a
    move/from16 v0, v17

    #@22e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@231
    .line 482
    const/16 v19, 0xd

    #@233
    move/from16 v0, v19

    #@235
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    #@238
    move-result v17

    #@239
    .line 483
    const/16 v19, 0xa

    #@23b
    move/from16 v0, v17

    #@23d
    move/from16 v1, v19

    #@23f
    if-ge v0, v1, :cond_b

    #@241
    .line 484
    const-string/jumbo v19, "0"

    #@244
    move-object/from16 v0, v19

    #@246
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@249
    .line 486
    :cond_b
    move/from16 v0, v17

    #@24b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@24e
    .line 488
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@251
    move-result-object v19

    #@252
    invoke-virtual/range {v19 .. v19}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@255
    move-result-object v19

    #@256
    const-string/jumbo v20, "UTC"

    #@259
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25c
    move-result v19

    #@25d
    if-eqz v19, :cond_c

    #@25f
    .line 489
    const-string/jumbo v19, "Z"

    #@262
    move-object/from16 v0, v19

    #@264
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@267
    .line 493
    :cond_c
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@26a
    move-result-object v19

    #@26b
    const-string/jumbo v20, "ISO8859_1"

    #@26e
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@271
    move-result-object v18

    #@272
    .line 498
    .restart local v18    # "value":[B
    :try_start_a
    move-object/from16 v0, v18

    #@274
    array-length v0, v0

    #@275
    move/from16 v19, v0

    #@277
    add-int/lit8 v12, v19, 0x3

    #@279
    .line 499
    .restart local v12    # "length":I
    shr-int/lit8 v19, v12, 0x8

    #@27b
    move/from16 v0, v19

    #@27d
    and-int/lit16 v0, v0, 0xff

    #@27f
    move/from16 v19, v0

    #@281
    move/from16 v0, v19

    #@283
    int-to-byte v0, v0

    #@284
    move/from16 v19, v0

    #@286
    const/16 v20, 0x0

    #@288
    aput-byte v19, v13, v20

    #@28a
    .line 500
    and-int/lit16 v0, v12, 0xff

    #@28c
    move/from16 v19, v0

    #@28e
    move/from16 v0, v19

    #@290
    int-to-byte v0, v0

    #@291
    move/from16 v19, v0

    #@293
    const/16 v20, 0x1

    #@295
    aput-byte v19, v13, v20

    #@297
    .line 501
    const/16 v19, 0x44

    #@299
    move/from16 v0, v19

    #@29b
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@29e
    .line 502
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@2a1
    .line 503
    move-object/from16 v0, v18

    #@2a3
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@2a6
    .line 504
    if-eqz p1, :cond_1e

    #@2a8
    .line 505
    const/16 v19, 0x44

    #@2aa
    const/16 v20, 0x0

    #@2ac
    move/from16 v0, v19

    #@2ae
    move-object/from16 v1, v20

    #@2b0
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@2b3
    move-object v2, v3

    #@2b4
    .line 510
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v10    # "i":I
    .end local v12    # "length":I
    .end local v17    # "temp":I
    .end local v18    # "value":[B
    :cond_d
    :goto_6
    const/16 v19, 0xc4

    #@2b6
    :try_start_b
    move/from16 v0, v19

    #@2b8
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@2bb
    move-result-object v19

    #@2bc
    move-object/from16 v0, v19

    #@2be
    check-cast v0, Ljava/util/Calendar;

    #@2c0
    move-object v5, v0

    #@2c1
    .line 511
    if-eqz v5, :cond_e

    #@2c3
    .line 512
    const/16 v19, 0xc4

    #@2c5
    move/from16 v0, v19

    #@2c7
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2ca
    .line 521
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@2cd
    move-result-object v19

    #@2ce
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    #@2d1
    move-result-wide v20

    #@2d2
    const-wide/16 v22, 0x3e8

    #@2d4
    div-long v20, v20, v22

    #@2d6
    invoke-static/range {v20 .. v21}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@2d9
    move-result-object v18

    #@2da
    .line 522
    .restart local v18    # "value":[B
    move-object/from16 v0, v18

    #@2dc
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@2df
    .line 523
    if-eqz p1, :cond_e

    #@2e1
    .line 524
    const/16 v19, 0xc4

    #@2e3
    const/16 v20, 0x0

    #@2e5
    move/from16 v0, v19

    #@2e7
    move-object/from16 v1, v20

    #@2e9
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@2ec
    .line 529
    .end local v18    # "value":[B
    :cond_e
    const/16 v19, 0x5

    #@2ee
    move/from16 v0, v19

    #@2f0
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@2f3
    move-result-object v19

    #@2f4
    move-object/from16 v0, v19

    #@2f6
    check-cast v0, Ljava/lang/String;

    #@2f8
    move-object/from16 v16, v0

    #@2fa
    .line 530
    if-eqz v16, :cond_f

    #@2fc
    .line 531
    const/16 v19, 0x5

    #@2fe
    move/from16 v0, v19

    #@300
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@303
    .line 532
    invoke-static/range {v16 .. v16}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    #@306
    move-result-object v18

    #@307
    .line 533
    .restart local v18    # "value":[B
    move-object/from16 v0, v18

    #@309
    array-length v0, v0

    #@30a
    move/from16 v19, v0

    #@30c
    add-int/lit8 v12, v19, 0x3

    #@30e
    .line 534
    .restart local v12    # "length":I
    shr-int/lit8 v19, v12, 0x8

    #@310
    move/from16 v0, v19

    #@312
    and-int/lit16 v0, v0, 0xff

    #@314
    move/from16 v19, v0

    #@316
    move/from16 v0, v19

    #@318
    int-to-byte v0, v0

    #@319
    move/from16 v19, v0

    #@31b
    const/16 v20, 0x0

    #@31d
    aput-byte v19, v13, v20

    #@31f
    .line 535
    and-int/lit16 v0, v12, 0xff

    #@321
    move/from16 v19, v0

    #@323
    move/from16 v0, v19

    #@325
    int-to-byte v0, v0

    #@326
    move/from16 v19, v0

    #@328
    const/16 v20, 0x1

    #@32a
    aput-byte v19, v13, v20

    #@32c
    .line 536
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@32f
    .line 537
    move-object/from16 v0, v18

    #@331
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@334
    .line 538
    if-eqz p1, :cond_f

    #@336
    .line 539
    const/16 v19, 0x5

    #@338
    const/16 v20, 0x0

    #@33a
    move/from16 v0, v19

    #@33c
    move-object/from16 v1, v20

    #@33e
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@341
    .line 544
    .end local v12    # "length":I
    .end local v18    # "value":[B
    :cond_f
    const/16 v19, 0x46

    #@343
    move/from16 v0, v19

    #@345
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@348
    move-result-object v19

    #@349
    move-object/from16 v0, v19

    #@34b
    check-cast v0, [B

    #@34d
    move-object/from16 v18, v0

    #@34f
    .line 545
    .restart local v18    # "value":[B
    if-eqz v18, :cond_10

    #@351
    .line 546
    const/16 v19, 0x46

    #@353
    move/from16 v0, v19

    #@355
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@358
    .line 547
    move-object/from16 v0, v18

    #@35a
    array-length v0, v0

    #@35b
    move/from16 v19, v0

    #@35d
    add-int/lit8 v12, v19, 0x3

    #@35f
    .line 548
    .restart local v12    # "length":I
    shr-int/lit8 v19, v12, 0x8

    #@361
    move/from16 v0, v19

    #@363
    and-int/lit16 v0, v0, 0xff

    #@365
    move/from16 v19, v0

    #@367
    move/from16 v0, v19

    #@369
    int-to-byte v0, v0

    #@36a
    move/from16 v19, v0

    #@36c
    const/16 v20, 0x0

    #@36e
    aput-byte v19, v13, v20

    #@370
    .line 549
    and-int/lit16 v0, v12, 0xff

    #@372
    move/from16 v19, v0

    #@374
    move/from16 v0, v19

    #@376
    int-to-byte v0, v0

    #@377
    move/from16 v19, v0

    #@379
    const/16 v20, 0x1

    #@37b
    aput-byte v19, v13, v20

    #@37d
    .line 550
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@380
    .line 551
    move-object/from16 v0, v18

    #@382
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@385
    .line 552
    if-eqz p1, :cond_10

    #@387
    .line 553
    const/16 v19, 0x46

    #@389
    const/16 v20, 0x0

    #@38b
    move/from16 v0, v19

    #@38d
    move-object/from16 v1, v20

    #@38f
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@392
    .line 558
    .end local v12    # "length":I
    :cond_10
    const/16 v19, 0x47

    #@394
    move/from16 v0, v19

    #@396
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@399
    move-result-object v19

    #@39a
    move-object/from16 v0, v19

    #@39c
    check-cast v0, [B

    #@39e
    move-object/from16 v18, v0

    #@3a0
    .line 559
    if-eqz v18, :cond_11

    #@3a2
    .line 560
    const/16 v19, 0x47

    #@3a4
    move/from16 v0, v19

    #@3a6
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@3a9
    .line 561
    move-object/from16 v0, v18

    #@3ab
    array-length v0, v0

    #@3ac
    move/from16 v19, v0

    #@3ae
    add-int/lit8 v12, v19, 0x3

    #@3b0
    .line 562
    .restart local v12    # "length":I
    shr-int/lit8 v19, v12, 0x8

    #@3b2
    move/from16 v0, v19

    #@3b4
    and-int/lit16 v0, v0, 0xff

    #@3b6
    move/from16 v19, v0

    #@3b8
    move/from16 v0, v19

    #@3ba
    int-to-byte v0, v0

    #@3bb
    move/from16 v19, v0

    #@3bd
    const/16 v20, 0x0

    #@3bf
    aput-byte v19, v13, v20

    #@3c1
    .line 563
    and-int/lit16 v0, v12, 0xff

    #@3c3
    move/from16 v19, v0

    #@3c5
    move/from16 v0, v19

    #@3c7
    int-to-byte v0, v0

    #@3c8
    move/from16 v19, v0

    #@3ca
    const/16 v20, 0x1

    #@3cc
    aput-byte v19, v13, v20

    #@3ce
    .line 564
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@3d1
    .line 565
    move-object/from16 v0, v18

    #@3d3
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@3d6
    .line 566
    if-eqz p1, :cond_11

    #@3d8
    .line 567
    const/16 v19, 0x47

    #@3da
    const/16 v20, 0x0

    #@3dc
    move/from16 v0, v19

    #@3de
    move-object/from16 v1, v20

    #@3e0
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@3e3
    .line 572
    .end local v12    # "length":I
    :cond_11
    const/16 v19, 0x4a

    #@3e5
    move/from16 v0, v19

    #@3e7
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@3ea
    move-result-object v19

    #@3eb
    move-object/from16 v0, v19

    #@3ed
    check-cast v0, [B

    #@3ef
    move-object/from16 v18, v0

    #@3f1
    .line 573
    if-eqz v18, :cond_12

    #@3f3
    .line 574
    const/16 v19, 0x4a

    #@3f5
    move/from16 v0, v19

    #@3f7
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@3fa
    .line 575
    move-object/from16 v0, v18

    #@3fc
    array-length v0, v0

    #@3fd
    move/from16 v19, v0

    #@3ff
    add-int/lit8 v12, v19, 0x3

    #@401
    .line 576
    .restart local v12    # "length":I
    shr-int/lit8 v19, v12, 0x8

    #@403
    move/from16 v0, v19

    #@405
    and-int/lit16 v0, v0, 0xff

    #@407
    move/from16 v19, v0

    #@409
    move/from16 v0, v19

    #@40b
    int-to-byte v0, v0

    #@40c
    move/from16 v19, v0

    #@40e
    const/16 v20, 0x0

    #@410
    aput-byte v19, v13, v20

    #@412
    .line 577
    and-int/lit16 v0, v12, 0xff

    #@414
    move/from16 v19, v0

    #@416
    move/from16 v0, v19

    #@418
    int-to-byte v0, v0

    #@419
    move/from16 v19, v0

    #@41b
    const/16 v20, 0x1

    #@41d
    aput-byte v19, v13, v20

    #@41f
    .line 578
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@422
    .line 579
    move-object/from16 v0, v18

    #@424
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@427
    .line 580
    if-eqz p1, :cond_12

    #@429
    .line 581
    const/16 v19, 0x4a

    #@42b
    const/16 v20, 0x0

    #@42d
    move/from16 v0, v19

    #@42f
    move-object/from16 v1, v20

    #@431
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@434
    .line 586
    .end local v12    # "length":I
    :cond_12
    const/16 v19, 0x4c

    #@436
    move/from16 v0, v19

    #@438
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@43b
    move-result-object v19

    #@43c
    move-object/from16 v0, v19

    #@43e
    check-cast v0, [B

    #@440
    move-object/from16 v18, v0

    #@442
    .line 587
    if-eqz v18, :cond_13

    #@444
    .line 588
    const/16 v19, 0x4c

    #@446
    move/from16 v0, v19

    #@448
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@44b
    .line 589
    move-object/from16 v0, v18

    #@44d
    array-length v0, v0

    #@44e
    move/from16 v19, v0

    #@450
    add-int/lit8 v12, v19, 0x3

    #@452
    .line 590
    .restart local v12    # "length":I
    shr-int/lit8 v19, v12, 0x8

    #@454
    move/from16 v0, v19

    #@456
    and-int/lit16 v0, v0, 0xff

    #@458
    move/from16 v19, v0

    #@45a
    move/from16 v0, v19

    #@45c
    int-to-byte v0, v0

    #@45d
    move/from16 v19, v0

    #@45f
    const/16 v20, 0x0

    #@461
    aput-byte v19, v13, v20

    #@463
    .line 591
    and-int/lit16 v0, v12, 0xff

    #@465
    move/from16 v19, v0

    #@467
    move/from16 v0, v19

    #@469
    int-to-byte v0, v0

    #@46a
    move/from16 v19, v0

    #@46c
    const/16 v20, 0x1

    #@46e
    aput-byte v19, v13, v20

    #@470
    .line 592
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@473
    .line 593
    move-object/from16 v0, v18

    #@475
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@478
    .line 594
    if-eqz p1, :cond_13

    #@47a
    .line 595
    const/16 v19, 0x4c

    #@47c
    const/16 v20, 0x0

    #@47e
    move/from16 v0, v19

    #@480
    move-object/from16 v1, v20

    #@482
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@485
    .line 600
    .end local v12    # "length":I
    :cond_13
    const/16 v19, 0x4f

    #@487
    move/from16 v0, v19

    #@489
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@48c
    move-result-object v19

    #@48d
    move-object/from16 v0, v19

    #@48f
    check-cast v0, [B

    #@491
    move-object/from16 v18, v0

    #@493
    .line 601
    if-eqz v18, :cond_14

    #@495
    .line 602
    const/16 v19, 0x4f

    #@497
    move/from16 v0, v19

    #@499
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@49c
    .line 603
    move-object/from16 v0, v18

    #@49e
    array-length v0, v0

    #@49f
    move/from16 v19, v0

    #@4a1
    add-int/lit8 v12, v19, 0x3

    #@4a3
    .line 604
    .restart local v12    # "length":I
    shr-int/lit8 v19, v12, 0x8

    #@4a5
    move/from16 v0, v19

    #@4a7
    and-int/lit16 v0, v0, 0xff

    #@4a9
    move/from16 v19, v0

    #@4ab
    move/from16 v0, v19

    #@4ad
    int-to-byte v0, v0

    #@4ae
    move/from16 v19, v0

    #@4b0
    const/16 v20, 0x0

    #@4b2
    aput-byte v19, v13, v20

    #@4b4
    .line 605
    and-int/lit16 v0, v12, 0xff

    #@4b6
    move/from16 v19, v0

    #@4b8
    move/from16 v0, v19

    #@4ba
    int-to-byte v0, v0

    #@4bb
    move/from16 v19, v0

    #@4bd
    const/16 v20, 0x1

    #@4bf
    aput-byte v19, v13, v20

    #@4c1
    .line 606
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@4c4
    .line 607
    move-object/from16 v0, v18

    #@4c6
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@4c9
    .line 608
    if-eqz p1, :cond_14

    #@4cb
    .line 609
    const/16 v19, 0x4f

    #@4cd
    const/16 v20, 0x0

    #@4cf
    move/from16 v0, v19

    #@4d1
    move-object/from16 v1, v20

    #@4d3
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@4d6
    .line 614
    .end local v12    # "length":I
    :cond_14
    const/4 v10, 0x0

    #@4d7
    .end local v4    # "byteHeader":Ljava/lang/Byte;
    .restart local v10    # "i":I
    :goto_7
    const/16 v19, 0x10

    #@4d9
    move/from16 v0, v19

    #@4db
    if-ge v10, v0, :cond_19

    #@4dd
    .line 617
    add-int/lit8 v19, v10, 0x30

    #@4df
    move/from16 v0, v19

    #@4e1
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@4e4
    move-result-object v19

    #@4e5
    move-object/from16 v0, v19

    #@4e7
    check-cast v0, Ljava/lang/String;

    #@4e9
    move-object/from16 v16, v0

    #@4eb
    .line 618
    if-eqz v16, :cond_15

    #@4ed
    .line 619
    int-to-byte v0, v10

    #@4ee
    move/from16 v19, v0

    #@4f0
    add-int/lit8 v19, v19, 0x30

    #@4f2
    move/from16 v0, v19

    #@4f4
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@4f7
    .line 620
    invoke-static/range {v16 .. v16}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    #@4fa
    move-result-object v18

    #@4fb
    .line 621
    move-object/from16 v0, v18

    #@4fd
    array-length v0, v0

    #@4fe
    move/from16 v19, v0

    #@500
    add-int/lit8 v12, v19, 0x3

    #@502
    .line 622
    .restart local v12    # "length":I
    shr-int/lit8 v19, v12, 0x8

    #@504
    move/from16 v0, v19

    #@506
    and-int/lit16 v0, v0, 0xff

    #@508
    move/from16 v19, v0

    #@50a
    move/from16 v0, v19

    #@50c
    int-to-byte v0, v0

    #@50d
    move/from16 v19, v0

    #@50f
    const/16 v20, 0x0

    #@511
    aput-byte v19, v13, v20

    #@513
    .line 623
    and-int/lit16 v0, v12, 0xff

    #@515
    move/from16 v19, v0

    #@517
    move/from16 v0, v19

    #@519
    int-to-byte v0, v0

    #@51a
    move/from16 v19, v0

    #@51c
    const/16 v20, 0x1

    #@51e
    aput-byte v19, v13, v20

    #@520
    .line 624
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@523
    .line 625
    move-object/from16 v0, v18

    #@525
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@528
    .line 626
    if-eqz p1, :cond_15

    #@52a
    .line 627
    add-int/lit8 v19, v10, 0x30

    #@52c
    const/16 v20, 0x0

    #@52e
    move/from16 v0, v19

    #@530
    move-object/from16 v1, v20

    #@532
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@535
    .line 632
    .end local v12    # "length":I
    :cond_15
    add-int/lit8 v19, v10, 0x70

    #@537
    move/from16 v0, v19

    #@539
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@53c
    move-result-object v19

    #@53d
    move-object/from16 v0, v19

    #@53f
    check-cast v0, [B

    #@541
    move-object/from16 v18, v0

    #@543
    .line 633
    if-eqz v18, :cond_16

    #@545
    .line 634
    int-to-byte v0, v10

    #@546
    move/from16 v19, v0

    #@548
    add-int/lit8 v19, v19, 0x70

    #@54a
    move/from16 v0, v19

    #@54c
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@54f
    .line 635
    move-object/from16 v0, v18

    #@551
    array-length v0, v0

    #@552
    move/from16 v19, v0

    #@554
    add-int/lit8 v12, v19, 0x3

    #@556
    .line 636
    .restart local v12    # "length":I
    shr-int/lit8 v19, v12, 0x8

    #@558
    move/from16 v0, v19

    #@55a
    and-int/lit16 v0, v0, 0xff

    #@55c
    move/from16 v19, v0

    #@55e
    move/from16 v0, v19

    #@560
    int-to-byte v0, v0

    #@561
    move/from16 v19, v0

    #@563
    const/16 v20, 0x0

    #@565
    aput-byte v19, v13, v20

    #@567
    .line 637
    and-int/lit16 v0, v12, 0xff

    #@569
    move/from16 v19, v0

    #@56b
    move/from16 v0, v19

    #@56d
    int-to-byte v0, v0

    #@56e
    move/from16 v19, v0

    #@570
    const/16 v20, 0x1

    #@572
    aput-byte v19, v13, v20

    #@574
    .line 638
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@577
    .line 639
    move-object/from16 v0, v18

    #@579
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@57c
    .line 640
    if-eqz p1, :cond_16

    #@57e
    .line 641
    add-int/lit8 v19, v10, 0x70

    #@580
    const/16 v20, 0x0

    #@582
    move/from16 v0, v19

    #@584
    move-object/from16 v1, v20

    #@586
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@589
    .line 646
    .end local v12    # "length":I
    :cond_16
    add-int/lit16 v0, v10, 0xb0

    #@58b
    move/from16 v19, v0

    #@58d
    move/from16 v0, v19

    #@58f
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@592
    move-result-object v19

    #@593
    move-object/from16 v0, v19

    #@595
    check-cast v0, Ljava/lang/Byte;

    #@597
    move-object v4, v0

    #@598
    .line 647
    .local v4, "byteHeader":Ljava/lang/Byte;
    if-eqz v4, :cond_17

    #@59a
    .line 648
    int-to-byte v0, v10

    #@59b
    move/from16 v19, v0

    #@59d
    move/from16 v0, v19

    #@59f
    add-int/lit16 v0, v0, 0xb0

    #@5a1
    move/from16 v19, v0

    #@5a3
    move/from16 v0, v19

    #@5a5
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5a8
    .line 649
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    #@5ab
    move-result v19

    #@5ac
    move/from16 v0, v19

    #@5ae
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5b1
    .line 650
    if-eqz p1, :cond_17

    #@5b3
    .line 651
    add-int/lit16 v0, v10, 0xb0

    #@5b5
    move/from16 v19, v0

    #@5b7
    const/16 v20, 0x0

    #@5b9
    move/from16 v0, v19

    #@5bb
    move-object/from16 v1, v20

    #@5bd
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@5c0
    .line 656
    :cond_17
    add-int/lit16 v0, v10, 0xf0

    #@5c2
    move/from16 v19, v0

    #@5c4
    move/from16 v0, v19

    #@5c6
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@5c9
    move-result-object v19

    #@5ca
    move-object/from16 v0, v19

    #@5cc
    check-cast v0, Ljava/lang/Long;

    #@5ce
    move-object v11, v0

    #@5cf
    .line 657
    if-eqz v11, :cond_18

    #@5d1
    .line 658
    int-to-byte v0, v10

    #@5d2
    move/from16 v19, v0

    #@5d4
    move/from16 v0, v19

    #@5d6
    add-int/lit16 v0, v0, 0xf0

    #@5d8
    move/from16 v19, v0

    #@5da
    move/from16 v0, v19

    #@5dc
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5df
    .line 659
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    #@5e2
    move-result-wide v20

    #@5e3
    invoke-static/range {v20 .. v21}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@5e6
    move-result-object v19

    #@5e7
    move-object/from16 v0, v19

    #@5e9
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@5ec
    .line 660
    if-eqz p1, :cond_18

    #@5ee
    .line 661
    add-int/lit16 v0, v10, 0xf0

    #@5f0
    move/from16 v19, v0

    #@5f2
    const/16 v20, 0x0

    #@5f4
    move/from16 v0, v19

    #@5f6
    move-object/from16 v1, v20

    #@5f8
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@5fb
    .line 614
    :cond_18
    add-int/lit8 v10, v10, 0x1

    #@5fd
    goto/16 :goto_7

    #@5ff
    .line 494
    .end local v18    # "value":[B
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    .local v4, "byteHeader":Ljava/lang/Byte;
    .restart local v17    # "temp":I
    :catch_2
    move-exception v7

    #@600
    .line 495
    .restart local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :try_start_c
    throw v7
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@601
    .line 719
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "i":I
    .end local v17    # "temp":I
    :catch_3
    move-exception v6

    #@602
    .restart local v6    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@603
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .local v2, "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_2

    #@605
    .line 667
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "byteHeader":Ljava/lang/Byte;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v10    # "i":I
    .restart local v18    # "value":[B
    :cond_19
    :try_start_d
    iget-object v0, v9, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@607
    move-object/from16 v19, v0

    #@609
    if-eqz v19, :cond_1a

    #@60b
    .line 668
    const/16 v19, 0x4d

    #@60d
    move/from16 v0, v19

    #@60f
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@612
    .line 669
    iget-object v0, v9, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@614
    move-object/from16 v19, v0

    #@616
    move-object/from16 v0, v19

    #@618
    array-length v0, v0

    #@619
    move/from16 v19, v0

    #@61b
    add-int/lit8 v12, v19, 0x3

    #@61d
    .line 670
    .restart local v12    # "length":I
    shr-int/lit8 v19, v12, 0x8

    #@61f
    move/from16 v0, v19

    #@621
    and-int/lit16 v0, v0, 0xff

    #@623
    move/from16 v19, v0

    #@625
    move/from16 v0, v19

    #@627
    int-to-byte v0, v0

    #@628
    move/from16 v19, v0

    #@62a
    const/16 v20, 0x0

    #@62c
    aput-byte v19, v13, v20

    #@62e
    .line 671
    and-int/lit16 v0, v12, 0xff

    #@630
    move/from16 v19, v0

    #@632
    move/from16 v0, v19

    #@634
    int-to-byte v0, v0

    #@635
    move/from16 v19, v0

    #@637
    const/16 v20, 0x1

    #@639
    aput-byte v19, v13, v20

    #@63b
    .line 672
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@63e
    .line 673
    iget-object v0, v9, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@640
    move-object/from16 v19, v0

    #@642
    move-object/from16 v0, v19

    #@644
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@647
    .line 674
    if-eqz p1, :cond_1a

    #@649
    .line 675
    const/16 v19, 0x0

    #@64b
    move-object/from16 v0, v19

    #@64d
    iput-object v0, v9, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@64f
    .line 680
    .end local v12    # "length":I
    :cond_1a
    iget-object v0, v9, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@651
    move-object/from16 v19, v0

    #@653
    if-eqz v19, :cond_1b

    #@655
    .line 681
    const/16 v19, 0x4e

    #@657
    move/from16 v0, v19

    #@659
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@65c
    .line 682
    iget-object v0, v9, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@65e
    move-object/from16 v19, v0

    #@660
    move-object/from16 v0, v19

    #@662
    array-length v0, v0

    #@663
    move/from16 v19, v0

    #@665
    add-int/lit8 v12, v19, 0x3

    #@667
    .line 683
    .restart local v12    # "length":I
    shr-int/lit8 v19, v12, 0x8

    #@669
    move/from16 v0, v19

    #@66b
    and-int/lit16 v0, v0, 0xff

    #@66d
    move/from16 v19, v0

    #@66f
    move/from16 v0, v19

    #@671
    int-to-byte v0, v0

    #@672
    move/from16 v19, v0

    #@674
    const/16 v20, 0x0

    #@676
    aput-byte v19, v13, v20

    #@678
    .line 684
    and-int/lit16 v0, v12, 0xff

    #@67a
    move/from16 v19, v0

    #@67c
    move/from16 v0, v19

    #@67e
    int-to-byte v0, v0

    #@67f
    move/from16 v19, v0

    #@681
    const/16 v20, 0x1

    #@683
    aput-byte v19, v13, v20

    #@685
    .line 685
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@688
    .line 686
    iget-object v0, v9, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@68a
    move-object/from16 v19, v0

    #@68c
    move-object/from16 v0, v19

    #@68e
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@691
    .line 687
    if-eqz p1, :cond_1b

    #@693
    .line 688
    const/16 v19, 0x0

    #@695
    move-object/from16 v0, v19

    #@697
    iput-object v0, v9, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@699
    .line 700
    .end local v12    # "length":I
    :cond_1b
    const/16 v19, 0x97

    #@69b
    move/from16 v0, v19

    #@69d
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@6a0
    move-result-object v19

    #@6a1
    move-object/from16 v0, v19

    #@6a3
    check-cast v0, Ljava/lang/Byte;

    #@6a5
    move-object v4, v0

    #@6a6
    .line 701
    .local v4, "byteHeader":Ljava/lang/Byte;
    if-eqz v4, :cond_1c

    #@6a8
    .line 702
    const/16 v19, -0x69

    #@6aa
    move/from16 v0, v19

    #@6ac
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@6af
    .line 703
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    #@6b2
    move-result v19

    #@6b3
    move/from16 v0, v19

    #@6b5
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@6b8
    .line 704
    if-eqz p1, :cond_1c

    #@6ba
    .line 705
    const/16 v19, 0x97

    #@6bc
    const/16 v20, 0x0

    #@6be
    move/from16 v0, v19

    #@6c0
    move-object/from16 v1, v20

    #@6c2
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@6c5
    .line 710
    :cond_1c
    const/16 v19, 0x98

    #@6c7
    move/from16 v0, v19

    #@6c9
    invoke-virtual {v9, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@6cc
    move-result-object v19

    #@6cd
    move-object/from16 v0, v19

    #@6cf
    check-cast v0, Ljava/lang/Byte;

    #@6d1
    move-object v4, v0

    #@6d2
    .line 711
    if-eqz v4, :cond_1d

    #@6d4
    .line 712
    const/16 v19, -0x68

    #@6d6
    move/from16 v0, v19

    #@6d8
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@6db
    .line 713
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    #@6de
    move-result v19

    #@6df
    move/from16 v0, v19

    #@6e1
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@6e4
    .line 714
    if-eqz p1, :cond_1d

    #@6e6
    .line 715
    const/16 v19, 0x98

    #@6e8
    const/16 v20, 0x0

    #@6ea
    move/from16 v0, v19

    #@6ec
    move-object/from16 v1, v20

    #@6ee
    invoke-virtual {v9, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@6f1
    .line 721
    :cond_1d
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@6f4
    move-result-object v15

    #@6f5
    .line 723
    .local v15, "result":[B
    :try_start_e
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    #@6f8
    goto/16 :goto_3

    #@6fa
    .line 724
    :catch_4
    move-exception v8

    #@6fb
    .local v8, "ex":Ljava/lang/Exception;
    goto/16 :goto_3

    #@6fd
    .end local v4    # "byteHeader":Ljava/lang/Byte;
    .end local v5    # "dateHeader":Ljava/util/Calendar;
    .end local v8    # "ex":Ljava/lang/Exception;
    .end local v10    # "i":I
    .end local v11    # "intHeader":Ljava/lang/Long;
    .end local v16    # "stringHeader":Ljava/lang/String;
    .end local v18    # "value":[B
    .restart local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    #@6fe
    .restart local v8    # "ex":Ljava/lang/Exception;
    goto/16 :goto_3

    #@700
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v8

    #@701
    .restart local v8    # "ex":Ljava/lang/Exception;
    goto/16 :goto_5

    #@703
    .line 720
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    .local v4, "byteHeader":Ljava/lang/Byte;
    .restart local v5    # "dateHeader":Ljava/util/Calendar;
    .restart local v11    # "intHeader":Ljava/lang/Long;
    .local v15, "result":[B
    .restart local v16    # "stringHeader":Ljava/lang/String;
    :catchall_1
    move-exception v19

    #@704
    move-object v2, v3

    #@705
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_4

    #@707
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v10    # "i":I
    .restart local v12    # "length":I
    .restart local v17    # "temp":I
    .restart local v18    # "value":[B
    :cond_1e
    move-object v2, v3

    #@708
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
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
    .restart local v1    # "headerID":I
    goto :goto_1

    #@3b
    .line 763
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
    invoke-virtual {v8, v7, v14}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@4b
    .line 290
    :goto_1
    add-int/2addr v9, v10

    #@4c
    .line 291
    goto :goto_0

    #@4d
    .line 223
    :pswitch_1
    if-nez v12, :cond_2

    #@4f
    .line 224
    :try_start_1
    new-instance v14, Ljava/lang/String;

    #@51
    .line 225
    array-length v15, v13

    #@52
    const-string/jumbo v16, "ISO8859_1"

    #@55
    .line 224
    const/16 v17, 0x0

    #@57
    move/from16 v0, v17

    #@59
    move-object/from16 v1, v16

    #@5b
    invoke-direct {v14, v13, v0, v15, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@5e
    invoke-virtual {v8, v7, v14}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@61
    goto :goto_1

    #@62
    .line 230
    :catch_0
    move-exception v5

    #@63
    .line 231
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@64
    .line 341
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "headerID":I
    .end local v12    # "trimTail":Z
    .end local v13    # "value":[B
    :catch_1
    move-exception v4

    #@65
    .line 342
    .local v4, "e":Ljava/io/IOException;
    new-instance v14, Ljava/io/IOException;

    #@67
    const-string/jumbo v15, "Header was not formatted properly"

    #@6a
    invoke-direct {v14, v15, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6d
    throw v14

    #@6e
    .line 227
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "headerID":I
    .restart local v12    # "trimTail":Z
    .restart local v13    # "value":[B
    :cond_2
    :try_start_3
    new-instance v14, Ljava/lang/String;

    #@70
    .line 228
    array-length v15, v13

    #@71
    add-int/lit8 v15, v15, -0x1

    #@73
    const-string/jumbo v16, "ISO8859_1"

    #@76
    .line 227
    const/16 v17, 0x0

    #@78
    move/from16 v0, v17

    #@7a
    move-object/from16 v1, v16

    #@7c
    invoke-direct {v14, v13, v0, v15, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@7f
    invoke-virtual {v8, v7, v14}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@82
    goto :goto_1

    #@83
    .line 236
    :pswitch_2
    :try_start_4
    new-array v14, v10, [B

    #@85
    iput-object v14, v8, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@87
    .line 237
    iget-object v14, v8, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@89
    const/4 v15, 0x0

    #@8a
    move-object/from16 v0, p1

    #@8c
    invoke-static {v0, v9, v14, v15, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@8f
    goto :goto_1

    #@90
    .line 242
    :pswitch_3
    new-array v14, v10, [B

    #@92
    iput-object v14, v8, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@94
    .line 243
    iget-object v14, v8, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@96
    const/4 v15, 0x0

    #@97
    move-object/from16 v0, p1

    #@99
    invoke-static {v0, v9, v14, v15, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@9c
    goto :goto_1

    #@9d
    .line 250
    :pswitch_4
    add-int/lit8 v14, v10, 0x1

    #@9f
    new-array v2, v14, [B

    #@a1
    .line 251
    .local v2, "body":[B
    int-to-byte v14, v7

    #@a2
    const/4 v15, 0x0

    #@a3
    aput-byte v14, v2, v15

    #@a5
    .line 252
    const/4 v14, 0x1

    #@a6
    move-object/from16 v0, p1

    #@a8
    invoke-static {v0, v9, v2, v14, v10}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@ab
    goto :goto_1

    #@ac
    .line 257
    .end local v2    # "body":[B
    :pswitch_5
    :try_start_5
    new-instance v3, Ljava/lang/String;

    #@ae
    const-string/jumbo v14, "ISO8859_1"

    #@b1
    invoke-direct {v3, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@b4
    .line 258
    .local v3, "dateString":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@b7
    move-result-object v11

    #@b8
    .line 259
    .local v11, "temp":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@bb
    move-result v14

    #@bc
    const/16 v15, 0x10

    #@be
    if-ne v14, v15, :cond_3

    #@c0
    .line 260
    const/16 v14, 0xf

    #@c2
    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    #@c5
    move-result v14

    #@c6
    const/16 v15, 0x5a

    #@c8
    if-ne v14, v15, :cond_3

    #@ca
    .line 261
    const-string/jumbo v14, "UTC"

    #@cd
    invoke-static {v14}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@d0
    move-result-object v14

    #@d1
    invoke-virtual {v11, v14}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@d4
    .line 264
    :cond_3
    const/4 v14, 0x0

    #@d5
    const/4 v15, 0x4

    #@d6
    .line 263
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@d9
    move-result-object v14

    #@da
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@dd
    move-result v14

    #@de
    const/4 v15, 0x1

    #@df
    invoke-virtual {v11, v15, v14}, Ljava/util/Calendar;->set(II)V

    #@e2
    .line 266
    const/4 v14, 0x4

    #@e3
    const/4 v15, 0x6

    #@e4
    .line 265
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e7
    move-result-object v14

    #@e8
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@eb
    move-result v14

    #@ec
    const/4 v15, 0x2

    #@ed
    invoke-virtual {v11, v15, v14}, Ljava/util/Calendar;->set(II)V

    #@f0
    .line 268
    const/4 v14, 0x6

    #@f1
    const/16 v15, 0x8

    #@f3
    .line 267
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f6
    move-result-object v14

    #@f7
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@fa
    move-result v14

    #@fb
    const/4 v15, 0x5

    #@fc
    invoke-virtual {v11, v15, v14}, Ljava/util/Calendar;->set(II)V

    #@ff
    .line 270
    const/16 v14, 0x9

    #@101
    const/16 v15, 0xb

    #@103
    .line 269
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@106
    move-result-object v14

    #@107
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10a
    move-result v14

    #@10b
    const/16 v15, 0xb

    #@10d
    invoke-virtual {v11, v15, v14}, Ljava/util/Calendar;->set(II)V

    #@110
    .line 272
    const/16 v14, 0xb

    #@112
    const/16 v15, 0xd

    #@114
    .line 271
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@117
    move-result-object v14

    #@118
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@11b
    move-result v14

    #@11c
    const/16 v15, 0xc

    #@11e
    invoke-virtual {v11, v15, v14}, Ljava/util/Calendar;->set(II)V

    #@121
    .line 274
    const/16 v14, 0xd

    #@123
    const/16 v15, 0xf

    #@125
    .line 273
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@128
    move-result-object v14

    #@129
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12c
    move-result v14

    #@12d
    const/16 v15, 0xd

    #@12f
    invoke-virtual {v11, v15, v14}, Ljava/util/Calendar;->set(II)V

    #@132
    .line 275
    const/16 v14, 0x44

    #@134
    invoke-virtual {v8, v14, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@137
    goto/16 :goto_1

    #@139
    .line 276
    .end local v3    # "dateString":Ljava/lang/String;
    .end local v11    # "temp":Ljava/util/Calendar;
    :catch_2
    move-exception v5

    #@13a
    .line 277
    .restart local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :try_start_6
    throw v5

    #@13b
    .line 286
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    invoke-virtual {v8, v7, v13}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    #@13e
    goto/16 :goto_1

    #@140
    .line 298
    .end local v12    # "trimTail":Z
    .end local v13    # "value":[B
    :sswitch_1
    add-int/lit8 v9, v9, 0x1

    #@142
    .line 300
    :try_start_7
    aget-byte v14, p1, v9

    #@144
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@147
    move-result-object v14

    #@148
    invoke-virtual {v8, v7, v14}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    #@14b
    .line 304
    :goto_2
    add-int/lit8 v9, v9, 0x1

    #@14d
    goto/16 :goto_0

    #@14f
    .line 313
    :sswitch_2
    add-int/lit8 v9, v9, 0x1

    #@151
    .line 314
    const/4 v14, 0x4

    #@152
    :try_start_8
    new-array v13, v14, [B

    #@154
    .line 315
    .restart local v13    # "value":[B
    const/4 v14, 0x0

    #@155
    const/4 v15, 0x4

    #@156
    move-object/from16 v0, p1

    #@158
    invoke-static {v0, v9, v13, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    #@15b
    .line 317
    const/16 v14, 0xc4

    #@15d
    if-eq v7, v14, :cond_6

    #@15f
    .line 320
    const/16 v14, 0xcb

    #@161
    if-ne v7, v14, :cond_5

    #@163
    .line 321
    const/4 v14, 0x4

    #@164
    :try_start_9
    new-array v14, v14, [B

    #@166
    iput-object v14, v8, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@168
    .line 322
    iget-object v14, v8, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@16a
    const/4 v15, 0x0

    #@16b
    const/16 v16, 0x0

    #@16d
    const/16 v17, 0x4

    #@16f
    move/from16 v0, v16

    #@171
    move/from16 v1, v17

    #@173
    invoke-static {v13, v15, v14, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@176
    .line 336
    :goto_3
    add-int/lit8 v9, v9, 0x4

    #@178
    goto/16 :goto_0

    #@17a
    .line 325
    :cond_5
    invoke-static {v13}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    #@17d
    move-result-wide v14

    #@17e
    .line 324
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@181
    move-result-object v14

    #@182
    invoke-virtual {v8, v7, v14}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    #@185
    goto :goto_3

    #@186
    .line 332
    :catch_3
    move-exception v6

    #@187
    .line 334
    .local v6, "e":Ljava/lang/Exception;
    :try_start_a
    new-instance v14, Ljava/io/IOException;

    #@189
    const-string/jumbo v15, "Header was not formatted properly"

    #@18c
    invoke-direct {v14, v15, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18f
    throw v14
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    #@190
    .line 328
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@193
    move-result-object v11

    #@194
    .line 329
    .restart local v11    # "temp":Ljava/util/Calendar;
    new-instance v14, Ljava/util/Date;

    #@196
    invoke-static {v13}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    #@199
    move-result-wide v16

    #@19a
    const-wide/16 v18, 0x3e8

    #@19c
    mul-long v16, v16, v18

    #@19e
    move-wide/from16 v0, v16

    #@1a0
    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@1a3
    invoke-virtual {v11, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@1a6
    .line 330
    const/16 v14, 0xc4

    #@1a8
    invoke-virtual {v8, v14, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    #@1ab
    goto :goto_3

    #@1ac
    .line 345
    .end local v7    # "headerID":I
    .end local v11    # "temp":Ljava/util/Calendar;
    .end local v13    # "value":[B
    :cond_7
    return-object v2

    #@1ad
    .line 301
    .restart local v7    # "headerID":I
    :catch_4
    move-exception v6

    #@1ae
    .restart local v6    # "e":Ljava/lang/Exception;
    goto :goto_2

    #@1af
    .line 193
    nop

    #@1b0
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_2
    .end sparse-switch

    #@1c2
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
