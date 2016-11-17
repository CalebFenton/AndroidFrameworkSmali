.class public final Lsun/security/util/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x78b20eec64177f2eL


# instance fields
.field private componentLen:I

.field private components:Ljava/lang/Object;

.field private transient componentsCalculated:Z

.field private encoding:[B

.field private volatile transient stringForm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/security/util/ObjectIdentifier;->-assertionsDisabled:Z

    #@b
    .line 54
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 18
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    const/4 v15, 0x0

    #@4
    move-object/from16 v0, p0

    #@6
    iput-object v15, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@8
    .line 100
    const/4 v15, 0x0

    #@9
    move-object/from16 v0, p0

    #@b
    iput-object v15, v0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    #@d
    .line 104
    const/4 v15, -0x1

    #@e
    move-object/from16 v0, p0

    #@10
    iput v15, v0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    #@12
    .line 107
    const/4 v15, 0x0

    #@13
    move-object/from16 v0, p0

    #@15
    iput-boolean v15, v0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    #@17
    .line 144
    const/16 v3, 0x2e

    #@19
    .line 145
    .local v3, "ch":I
    const/4 v13, 0x0

    #@1a
    .line 146
    .local v13, "start":I
    const/4 v7, 0x0

    #@1b
    .line 148
    .local v7, "end":I
    const/4 v12, 0x0

    #@1c
    .line 149
    .local v12, "pos":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@1f
    move-result v15

    #@20
    new-array v14, v15, [B

    #@22
    .line 150
    .local v14, "tmp":[B
    const/4 v8, 0x0

    #@23
    .line 151
    .local v8, "first":I
    const/4 v5, 0x0

    #@24
    .line 154
    .local v5, "count":I
    const/4 v4, 0x0

    #@25
    .line 156
    :cond_0
    const/4 v10, 0x0

    #@26
    .line 157
    .local v10, "length":I
    :try_start_0
    move-object/from16 v0, p1

    #@28
    invoke-virtual {v0, v3, v13}, Ljava/lang/String;->indexOf(II)I

    #@2b
    move-result v7

    #@2c
    .line 158
    const/4 v15, -0x1

    #@2d
    if-ne v7, v15, :cond_1

    #@2f
    .line 159
    move-object/from16 v0, p1

    #@31
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    .line 160
    .local v4, "comp":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@38
    move-result v15

    #@39
    sub-int v10, v15, v13

    #@3b
    .line 166
    :goto_0
    const/16 v15, 0x9

    #@3d
    if-le v10, v15, :cond_4

    #@3f
    .line 167
    new-instance v2, Ljava/math/BigInteger;

    #@41
    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    #@44
    .line 168
    .local v2, "bignum":Ljava/math/BigInteger;
    if-nez v5, :cond_2

    #@46
    .line 169
    invoke-static {v2}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(Ljava/math/BigInteger;)V

    #@49
    .line 170
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    #@4c
    move-result v8

    #@4d
    .line 195
    .end local v2    # "bignum":Ljava/math/BigInteger;
    :goto_1
    add-int/lit8 v13, v7, 0x1

    #@4f
    .line 196
    add-int/lit8 v5, v5, 0x1

    #@51
    .line 197
    const/4 v15, -0x1

    #@52
    if-ne v7, v15, :cond_0

    #@54
    .line 199
    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->checkCount(I)V

    #@57
    .line 200
    new-array v15, v12, [B

    #@59
    move-object/from16 v0, p0

    #@5b
    iput-object v15, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@5d
    .line 201
    move-object/from16 v0, p0

    #@5f
    iget-object v15, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@61
    const/16 v16, 0x0

    #@63
    const/16 v17, 0x0

    #@65
    move/from16 v0, v16

    #@67
    move/from16 v1, v17

    #@69
    invoke-static {v14, v0, v15, v1, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6c
    .line 202
    move-object/from16 v0, p1

    #@6e
    move-object/from16 v1, p0

    #@70
    iput-object v0, v1, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    #@72
    .line 142
    return-void

    #@73
    .line 162
    .end local v4    # "comp":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    #@75
    invoke-virtual {v0, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    .line 163
    .restart local v4    # "comp":Ljava/lang/String;
    sub-int v10, v7, v13

    #@7b
    goto :goto_0

    #@7c
    .line 172
    .restart local v2    # "bignum":Ljava/math/BigInteger;
    :cond_2
    const/4 v15, 0x1

    #@7d
    if-ne v5, v15, :cond_3

    #@7f
    .line 173
    invoke-static {v8, v2}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(ILjava/math/BigInteger;)V

    #@82
    .line 174
    mul-int/lit8 v15, v8, 0x28

    #@84
    int-to-long v0, v15

    #@85
    move-wide/from16 v16, v0

    #@87
    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@8a
    move-result-object v15

    #@8b
    invoke-virtual {v2, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@8e
    move-result-object v2

    #@8f
    .line 178
    :goto_2
    invoke-static {v2, v14, v12}, Lsun/security/util/ObjectIdentifier;->pack7Oid(Ljava/math/BigInteger;[BI)I

    #@92
    move-result v15

    #@93
    add-int/2addr v12, v15

    #@94
    goto :goto_1

    #@95
    .line 176
    :cond_3
    invoke-static {v5, v2}, Lsun/security/util/ObjectIdentifier;->checkOtherComponent(ILjava/math/BigInteger;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@98
    goto :goto_2

    #@99
    .line 203
    .end local v2    # "bignum":Ljava/math/BigInteger;
    .end local v4    # "comp":Ljava/lang/String;
    :catch_0
    move-exception v9

    #@9a
    .line 204
    .local v9, "ioe":Ljava/io/IOException;
    throw v9

    #@9b
    .line 181
    .end local v9    # "ioe":Ljava/io/IOException;
    .restart local v4    # "comp":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9e
    move-result v11

    #@9f
    .line 182
    .local v11, "num":I
    if-nez v5, :cond_5

    #@a1
    .line 183
    invoke-static {v11}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(I)V

    #@a4
    .line 184
    move v8, v11

    #@a5
    goto :goto_1

    #@a6
    .line 186
    :cond_5
    const/4 v15, 0x1

    #@a7
    if-ne v5, v15, :cond_6

    #@a9
    .line 187
    invoke-static {v8, v11}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(II)V

    #@ac
    .line 188
    mul-int/lit8 v15, v8, 0x28

    #@ae
    add-int/2addr v11, v15

    #@af
    .line 192
    :goto_3
    invoke-static {v11, v14, v12}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    #@b2
    move-result v15

    #@b3
    add-int/2addr v12, v15

    #@b4
    goto :goto_1

    #@b5
    .line 190
    :cond_6
    invoke-static {v5, v11}, Lsun/security/util/ObjectIdentifier;->checkOtherComponent(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@b8
    goto :goto_3

    #@b9
    .line 205
    .end local v4    # "comp":Ljava/lang/String;
    .end local v11    # "num":I
    :catch_1
    move-exception v6

    #@ba
    .line 206
    .local v6, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/io/IOException;

    #@bc
    new-instance v16, Ljava/lang/StringBuilder;

    #@be
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v17, "ObjectIdentifier() -- Invalid format: "

    #@c4
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v16

    #@c8
    .line 207
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@cb
    move-result-object v17

    #@cc
    .line 206
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v16

    #@d0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v16

    #@d4
    move-object/from16 v0, v16

    #@d6
    invoke-direct {v15, v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d9
    throw v15
.end method

.method constructor <init>(Lsun/security/util/DerInputBuffer;)V
    .locals 2
    .param p1, "buf"    # Lsun/security/util/DerInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 60
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@6
    .line 100
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    #@8
    .line 104
    const/4 v1, -0x1

    #@9
    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    #@b
    .line 107
    const/4 v1, 0x0

    #@c
    iput-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    #@e
    .line 270
    new-instance v0, Lsun/security/util/DerInputStream;

    #@10
    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    #@13
    .line 271
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    #@16
    move-result v1

    #@17
    new-array v1, v1, [B

    #@19
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@1b
    .line 272
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@1d
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getBytes([B)V

    #@20
    .line 273
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@22
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->check([B)V

    #@25
    .line 268
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 4
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 60
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@6
    .line 100
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    #@8
    .line 104
    const/4 v1, -0x1

    #@9
    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    #@b
    .line 107
    const/4 v1, 0x0

    #@c
    iput-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    #@e
    .line 251
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getByte()I

    #@11
    move-result v1

    #@12
    int-to-byte v0, v1

    #@13
    .line 252
    .local v0, "type_id":B
    const/4 v1, 0x6

    #@14
    if-eq v0, v1, :cond_0

    #@16
    .line 253
    new-instance v1, Ljava/io/IOException;

    #@18
    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "ObjectIdentifier() -- data isn\'t an object ID (tag = "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 255
    const-string/jumbo v3, ")"

    #@2b
    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 253
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 258
    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getLength()I

    #@3a
    move-result v1

    #@3b
    new-array v1, v1, [B

    #@3d
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@3f
    .line 259
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@41
    invoke-virtual {p1, v1}, Lsun/security/util/DerInputStream;->getBytes([B)V

    #@44
    .line 260
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@46
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->check([B)V

    #@49
    .line 237
    return-void
.end method

.method public constructor <init>([I)V
    .locals 3
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 60
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@7
    .line 100
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    #@9
    .line 104
    const/4 v1, -0x1

    #@a
    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    #@c
    .line 107
    iput-boolean v2, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    #@e
    .line 217
    array-length v1, p1

    #@f
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->checkCount(I)V

    #@12
    .line 218
    aget v1, p1, v2

    #@14
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(I)V

    #@17
    .line 219
    aget v1, p1, v2

    #@19
    const/4 v2, 0x1

    #@1a
    aget v2, p1, v2

    #@1c
    invoke-static {v1, v2}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(II)V

    #@1f
    .line 220
    const/4 v0, 0x2

    #@20
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@21
    if-ge v0, v1, :cond_0

    #@23
    .line 221
    aget v1, p1, v0

    #@25
    invoke-static {v0, v1}, Lsun/security/util/ObjectIdentifier;->checkOtherComponent(II)V

    #@28
    .line 220
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 222
    :cond_0
    array-length v1, p1

    #@2c
    invoke-direct {p0, p1, v1}, Lsun/security/util/ObjectIdentifier;->init([II)V

    #@2f
    .line 215
    return-void
.end method

.method private static check([B)V
    .locals 4
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 602
    array-length v1, p0

    #@1
    .line 603
    .local v1, "length":I
    const/4 v2, 0x1

    #@2
    if-lt v1, v2, :cond_0

    #@4
    .line 604
    add-int/lit8 v2, v1, -0x1

    #@6
    aget-byte v2, p0, v2

    #@8
    and-int/lit16 v2, v2, 0x80

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 605
    :cond_0
    new-instance v2, Ljava/io/IOException;

    #@e
    const-string/jumbo v3, "ObjectIdentifier() -- Invalid DER encoding, not ended"

    #@11
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 608
    :cond_1
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    #@18
    .line 610
    aget-byte v2, p0, v0

    #@1a
    const/16 v3, -0x80

    #@1c
    if-ne v2, v3, :cond_3

    #@1e
    .line 611
    if-eqz v0, :cond_2

    #@20
    add-int/lit8 v2, v0, -0x1

    #@22
    aget-byte v2, p0, v2

    #@24
    and-int/lit16 v2, v2, 0x80

    #@26
    if-nez v2, :cond_3

    #@28
    .line 612
    :cond_2
    new-instance v2, Ljava/io/IOException;

    #@2a
    const-string/jumbo v3, "ObjectIdentifier() -- Invalid DER encoding, useless extra octet detected"

    #@2d
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2

    #@31
    .line 608
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 601
    :cond_4
    return-void
.end method

.method private static checkCount(I)V
    .locals 2
    .param p0, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 618
    const/4 v0, 0x2

    #@1
    if-ge p0, v0, :cond_0

    #@3
    .line 619
    new-instance v0, Ljava/io/IOException;

    #@5
    const-string/jumbo v1, "ObjectIdentifier() -- Must be at least two oid components "

    #@8
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 617
    :cond_0
    return-void
.end method

.method private static checkFirstComponent(I)V
    .locals 2
    .param p0, "first"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 624
    if-ltz p0, :cond_0

    #@2
    const/4 v0, 0x2

    #@3
    if-le p0, v0, :cond_1

    #@5
    .line 625
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "ObjectIdentifier() -- First oid component is invalid "

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 623
    :cond_1
    return-void
.end method

.method private static checkFirstComponent(Ljava/math/BigInteger;)V
    .locals 2
    .param p0, "first"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 630
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 631
    const-wide/16 v0, 0x2

    #@9
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x1

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 632
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@16
    const-string/jumbo v1, "ObjectIdentifier() -- First oid component is invalid "

    #@19
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 629
    :cond_1
    return-void
.end method

.method private static checkOtherComponent(II)V
    .locals 3
    .param p0, "i"    # I
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 651
    if-gez p1, :cond_0

    #@2
    .line 652
    new-instance v0, Ljava/io/IOException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "ObjectIdentifier() -- oid component #"

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    .line 653
    add-int/lit8 v2, p0, 0x1

    #@12
    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 653
    const-string/jumbo v2, " must be non-negative "

    #@19
    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 650
    :cond_0
    return-void
.end method

.method private static checkOtherComponent(ILjava/math/BigInteger;)V
    .locals 3
    .param p0, "i"    # I
    .param p1, "num"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 657
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 658
    new-instance v0, Ljava/io/IOException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "ObjectIdentifier() -- oid component #"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 659
    add-int/lit8 v2, p0, 0x1

    #@17
    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 659
    const-string/jumbo v2, " must be non-negative "

    #@1e
    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 656
    :cond_0
    return-void
.end method

.method private static checkSecondComponent(II)V
    .locals 2
    .param p0, "first"    # I
    .param p1, "second"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 637
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x2

    #@3
    if-eq p0, v0, :cond_1

    #@5
    const/16 v0, 0x27

    #@7
    if-le p1, v0, :cond_1

    #@9
    .line 638
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@b
    const-string/jumbo v1, "ObjectIdentifier() -- Second oid component is invalid "

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 636
    :cond_1
    return-void
.end method

.method private static checkSecondComponent(ILjava/math/BigInteger;)V
    .locals 2
    .param p0, "first"    # I
    .param p1, "second"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 643
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 644
    const/4 v0, 0x2

    #@8
    if-eq p0, v0, :cond_1

    #@a
    .line 645
    const-wide/16 v0, 0x27

    #@c
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@13
    move-result v0

    #@14
    const/4 v1, 0x1

    #@15
    if-ne v0, v1, :cond_1

    #@17
    .line 646
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@19
    const-string/jumbo v1, "ObjectIdentifier() -- Second oid component is invalid "

    #@1c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 642
    :cond_1
    return-void
.end method

.method private init([II)V
    .locals 9
    .param p1, "components"    # [I
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 277
    const/4 v2, 0x0

    #@3
    .line 278
    .local v2, "pos":I
    mul-int/lit8 v4, p2, 0x5

    #@5
    add-int/lit8 v4, v4, 0x1

    #@7
    new-array v3, v4, [B

    #@9
    .line 280
    .local v3, "tmp":[B
    aget v4, p1, v8

    #@b
    aget v5, p1, v7

    #@d
    mul-int/lit8 v5, v5, 0x28

    #@f
    const v6, 0x7fffffff

    #@12
    sub-int v5, v6, v5

    #@14
    if-ge v4, v5, :cond_0

    #@16
    .line 281
    aget v4, p1, v7

    #@18
    mul-int/lit8 v4, v4, 0x28

    #@1a
    aget v5, p1, v8

    #@1c
    add-int/2addr v4, v5

    #@1d
    invoke-static {v4, v3, v2}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    #@20
    move-result v4

    #@21
    add-int/lit8 v2, v4, 0x0

    #@23
    .line 288
    :goto_0
    const/4 v1, 0x2

    #@24
    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_1

    #@26
    .line 289
    aget v4, p1, v1

    #@28
    invoke-static {v4, v3, v2}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    #@2b
    move-result v4

    #@2c
    add-int/2addr v2, v4

    #@2d
    .line 288
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 283
    .end local v1    # "i":I
    :cond_0
    aget v4, p1, v8

    #@32
    int-to-long v4, v4

    #@33
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@36
    move-result-object v0

    #@37
    .line 284
    .local v0, "big":Ljava/math/BigInteger;
    aget v4, p1, v7

    #@39
    mul-int/lit8 v4, v4, 0x28

    #@3b
    int-to-long v4, v4

    #@3c
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@43
    move-result-object v0

    #@44
    .line 285
    invoke-static {v0, v3, v2}, Lsun/security/util/ObjectIdentifier;->pack7Oid(Ljava/math/BigInteger;[BI)I

    #@47
    move-result v4

    #@48
    add-int/lit8 v2, v4, 0x0

    #@4a
    goto :goto_0

    #@4b
    .line 291
    .end local v0    # "big":Ljava/math/BigInteger;
    .restart local v1    # "i":I
    :cond_1
    new-array v4, v2, [B

    #@4d
    iput-object v4, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@4f
    .line 292
    iget-object v4, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@51
    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@54
    .line 276
    return-void
.end method

.method public static newInternal([I)Lsun/security/util/ObjectIdentifier;
    .locals 2
    .param p0, "values"    # [I

    #@0
    .prologue
    .line 306
    :try_start_0
    new-instance v1, Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {v1, p0}, Lsun/security/util/ObjectIdentifier;-><init>([I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 307
    :catch_0
    move-exception v0

    #@7
    .line 308
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method private static pack([BIIII)[B
    .locals 10
    .param p0, "in"    # [B
    .param p1, "ioffset"    # I
    .param p2, "ilength"    # I
    .param p3, "iw"    # I
    .param p4, "ow"    # I

    #@0
    .prologue
    const/16 v8, 0x8

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 495
    sget-boolean v7, Lsun/security/util/ObjectIdentifier;->-assertionsDisabled:Z

    #@6
    if-nez v7, :cond_1

    #@8
    if-lez p3, :cond_0

    #@a
    if-gt p3, v8, :cond_0

    #@c
    move v7, v6

    #@d
    :goto_0
    if-nez v7, :cond_1

    #@f
    new-instance v5, Ljava/lang/AssertionError;

    #@11
    const-string/jumbo v6, "input NUB must be between 1 and 8"

    #@14
    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@17
    throw v5

    #@18
    :cond_0
    move v7, v5

    #@19
    goto :goto_0

    #@1a
    .line 496
    :cond_1
    sget-boolean v7, Lsun/security/util/ObjectIdentifier;->-assertionsDisabled:Z

    #@1c
    if-nez v7, :cond_3

    #@1e
    if-lez p4, :cond_2

    #@20
    if-gt p4, v8, :cond_2

    #@22
    move v5, v6

    #@23
    :cond_2
    if-nez v5, :cond_3

    #@25
    new-instance v5, Ljava/lang/AssertionError;

    #@27
    const-string/jumbo v6, "output NUB must be between 1 and 8"

    #@2a
    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2d
    throw v5

    #@2e
    .line 498
    :cond_3
    if-ne p3, p4, :cond_4

    #@30
    .line 499
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@33
    move-result-object v5

    #@34
    check-cast v5, [B

    #@36
    return-object v5

    #@37
    .line 502
    :cond_4
    mul-int v0, p2, p3

    #@39
    .line 503
    .local v0, "bits":I
    add-int v5, v0, p4

    #@3b
    add-int/lit8 v5, v5, -0x1

    #@3d
    div-int/2addr v5, p4

    #@3e
    new-array v4, v5, [B

    #@40
    .line 506
    .local v4, "out":[B
    const/4 v2, 0x0

    #@41
    .line 509
    .local v2, "ipos":I
    add-int v5, v0, p4

    #@43
    add-int/lit8 v5, v5, -0x1

    #@45
    div-int/2addr v5, p4

    #@46
    mul-int/2addr v5, p4

    #@47
    sub-int v3, v5, v0

    #@49
    .line 511
    .local v3, "opos":I
    :goto_1
    if-ge v2, v0, :cond_6

    #@4b
    .line 512
    rem-int v5, v2, p3

    #@4d
    sub-int v1, p3, v5

    #@4f
    .line 513
    .local v1, "count":I
    rem-int v5, v3, p4

    #@51
    sub-int v5, p4, v5

    #@53
    if-le v1, v5, :cond_5

    #@55
    .line 514
    rem-int v5, v3, p4

    #@57
    sub-int v1, p4, v5

    #@59
    .line 517
    :cond_5
    div-int v5, v3, p4

    #@5b
    aget-byte v7, v4, v5

    #@5d
    .line 518
    div-int v8, v2, p3

    #@5f
    add-int/2addr v8, p1

    #@60
    aget-byte v8, p0, v8

    #@62
    add-int/lit16 v8, v8, 0x100

    #@64
    .line 519
    rem-int v9, v2, p3

    #@66
    sub-int v9, p3, v9

    #@68
    sub-int/2addr v9, v1

    #@69
    .line 518
    shr-int/2addr v8, v9

    #@6a
    .line 520
    shl-int v9, v6, v1

    #@6c
    add-int/lit8 v9, v9, -0x1

    #@6e
    .line 518
    and-int/2addr v8, v9

    #@6f
    .line 521
    rem-int v9, v3, p4

    #@71
    sub-int v9, p4, v9

    #@73
    sub-int/2addr v9, v1

    #@74
    .line 518
    shl-int/2addr v8, v9

    #@75
    .line 517
    or-int/2addr v7, v8

    #@76
    int-to-byte v7, v7

    #@77
    aput-byte v7, v4, v5

    #@79
    .line 522
    add-int/2addr v2, v1

    #@7a
    .line 523
    add-int/2addr v3, v1

    #@7b
    goto :goto_1

    #@7c
    .line 525
    .end local v1    # "count":I
    :cond_6
    return-object v4
.end method

.method private static pack7Oid(I[BI)I
    .locals 5
    .param p0, "input"    # I
    .param p1, "out"    # [B
    .param p2, "ooffset"    # I

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v3, 0x0

    #@2
    .line 573
    new-array v0, v4, [B

    #@4
    .line 574
    .local v0, "b":[B
    shr-int/lit8 v1, p0, 0x18

    #@6
    int-to-byte v1, v1

    #@7
    aput-byte v1, v0, v3

    #@9
    .line 575
    shr-int/lit8 v1, p0, 0x10

    #@b
    int-to-byte v1, v1

    #@c
    const/4 v2, 0x1

    #@d
    aput-byte v1, v0, v2

    #@f
    .line 576
    shr-int/lit8 v1, p0, 0x8

    #@11
    int-to-byte v1, v1

    #@12
    const/4 v2, 0x2

    #@13
    aput-byte v1, v0, v2

    #@15
    .line 577
    int-to-byte v1, p0

    #@16
    const/4 v2, 0x3

    #@17
    aput-byte v1, v0, v2

    #@19
    .line 578
    invoke-static {v0, v3, v4, p1, p2}, Lsun/security/util/ObjectIdentifier;->pack7Oid([BII[BI)I

    #@1c
    move-result v1

    #@1d
    return v1
.end method

.method private static pack7Oid(Ljava/math/BigInteger;[BI)I
    .locals 3
    .param p0, "input"    # Ljava/math/BigInteger;
    .param p1, "out"    # [B
    .param p2, "ooffset"    # I

    #@0
    .prologue
    .line 585
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    #@3
    move-result-object v0

    #@4
    .line 586
    .local v0, "b":[B
    array-length v1, v0

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v0, v2, v1, p1, p2}, Lsun/security/util/ObjectIdentifier;->pack7Oid([BII[BI)I

    #@9
    move-result v1

    #@a
    return v1
.end method

.method private static pack7Oid([BII[BI)I
    .locals 5
    .param p0, "in"    # [B
    .param p1, "ioffset"    # I
    .param p2, "ilength"    # I
    .param p3, "out"    # [B
    .param p4, "ooffset"    # I

    #@0
    .prologue
    .line 538
    const/16 v3, 0x8

    #@2
    const/4 v4, 0x7

    #@3
    invoke-static {p0, p1, p2, v3, v4}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    #@6
    move-result-object v2

    #@7
    .line 539
    .local v2, "pack":[B
    array-length v3, v2

    #@8
    add-int/lit8 v0, v3, -0x1

    #@a
    .line 540
    .local v0, "firstNonZero":I
    array-length v3, v2

    #@b
    add-int/lit8 v1, v3, -0x2

    #@d
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@f
    .line 541
    aget-byte v3, v2, v1

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 542
    move v0, v1

    #@14
    .line 544
    :cond_0
    aget-byte v3, v2, v1

    #@16
    or-int/lit16 v3, v3, 0x80

    #@18
    int-to-byte v3, v3

    #@19
    aput-byte v3, v2, v1

    #@1b
    .line 540
    add-int/lit8 v1, v1, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 546
    :cond_1
    array-length v3, v2

    #@1f
    sub-int/2addr v3, v0

    #@20
    invoke-static {v2, v0, p3, p4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@23
    .line 547
    array-length v3, v2

    #@24
    sub-int/2addr v3, v0

    #@25
    return v3
.end method

.method private static pack8([BII[BI)I
    .locals 5
    .param p0, "in"    # [B
    .param p1, "ioffset"    # I
    .param p2, "ilength"    # I
    .param p3, "out"    # [B
    .param p4, "ooffset"    # I

    #@0
    .prologue
    .line 558
    const/4 v3, 0x7

    #@1
    const/16 v4, 0x8

    #@3
    invoke-static {p0, p1, p2, v3, v4}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    #@6
    move-result-object v2

    #@7
    .line 559
    .local v2, "pack":[B
    array-length v3, v2

    #@8
    add-int/lit8 v0, v3, -0x1

    #@a
    .line 560
    .local v0, "firstNonZero":I
    array-length v3, v2

    #@b
    add-int/lit8 v1, v3, -0x2

    #@d
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@f
    .line 561
    aget-byte v3, v2, v1

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 562
    move v0, v1

    #@14
    .line 560
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@16
    goto :goto_0

    #@17
    .line 565
    :cond_1
    array-length v3, v2

    #@18
    sub-int/2addr v3, v0

    #@19
    invoke-static {v2, v0, p3, p4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 566
    array-length v3, v2

    #@1d
    sub-int/2addr v3, v0

    #@1e
    return v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 113
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@5
    if-nez v0, :cond_0

    #@7
    .line 114
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    #@9
    check-cast v0, [I

    #@b
    iget v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    #@d
    invoke-direct {p0, v0, v1}, Lsun/security/util/ObjectIdentifier;->init([II)V

    #@10
    .line 110
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    iget-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 121
    invoke-virtual {p0}, Lsun/security/util/ObjectIdentifier;->toIntArray()[I

    #@7
    move-result-object v0

    #@8
    .line 122
    .local v0, "comps":[I
    if-eqz v0, :cond_1

    #@a
    .line 123
    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    #@c
    .line 124
    array-length v1, v0

    #@d
    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    #@f
    .line 128
    :goto_0
    const/4 v1, 0x1

    #@10
    iput-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    #@12
    .line 130
    .end local v0    # "comps":[I
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@15
    .line 119
    return-void

    #@16
    .line 126
    .restart local v0    # "comps":[I
    :cond_1
    sget-object v1, Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;->theOne:Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;

    #@18
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    #@1a
    goto :goto_0
.end method


# virtual methods
.method encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@2
    const/4 v1, 0x6

    #@3
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(B[B)V

    #@6
    .line 316
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 336
    if-ne p0, p1, :cond_0

    #@2
    .line 337
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 339
    :cond_0
    instance-of v1, p1, Lsun/security/util/ObjectIdentifier;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 340
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 342
    check-cast v0, Lsun/security/util/ObjectIdentifier;

    #@d
    .line 343
    .local v0, "other":Lsun/security/util/ObjectIdentifier;
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@f
    iget-object v2, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@11
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public equals(Lsun/security/util/ObjectIdentifier;)Z
    .locals 1
    .param p1, "other"    # Lsun/security/util/ObjectIdentifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toIntArray()[I
    .locals 15

    #@0
    .prologue
    .line 358
    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@2
    array-length v4, v11

    #@3
    .line 359
    .local v4, "length":I
    const/16 v11, 0x14

    #@5
    new-array v5, v11, [I

    #@7
    .line 360
    .local v5, "result":[I
    const/4 v9, 0x0

    #@8
    .line 361
    .local v9, "which":I
    const/4 v1, 0x0

    #@9
    .line 362
    .local v1, "fromPos":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    move v10, v9

    #@b
    .end local v9    # "which":I
    .local v10, "which":I
    :goto_0
    if-ge v2, v4, :cond_8

    #@d
    .line 363
    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@f
    aget-byte v11, v11, v2

    #@11
    and-int/lit16 v11, v11, 0x80

    #@13
    if-nez v11, :cond_9

    #@15
    .line 365
    sub-int v11, v2, v1

    #@17
    add-int/lit8 v11, v11, 0x1

    #@19
    const/4 v12, 0x4

    #@1a
    if-le v11, v12, :cond_4

    #@1c
    .line 366
    new-instance v0, Ljava/math/BigInteger;

    #@1e
    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@20
    sub-int v12, v2, v1

    #@22
    add-int/lit8 v12, v12, 0x1

    #@24
    const/4 v13, 0x7

    #@25
    const/16 v14, 0x8

    #@27
    invoke-static {v11, v1, v12, v13, v14}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    #@2a
    move-result-object v11

    #@2b
    invoke-direct {v0, v11}, Ljava/math/BigInteger;-><init>([B)V

    #@2e
    .line 367
    .local v0, "big":Ljava/math/BigInteger;
    if-nez v1, :cond_2

    #@30
    .line 368
    add-int/lit8 v9, v10, 0x1

    #@32
    .end local v10    # "which":I
    .restart local v9    # "which":I
    const/4 v11, 0x2

    #@33
    aput v11, v5, v10

    #@35
    .line 369
    const-wide/16 v12, 0x50

    #@37
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@3a
    move-result-object v11

    #@3b
    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3e
    move-result-object v7

    #@3f
    .line 370
    .local v7, "second":Ljava/math/BigInteger;
    const-wide/32 v12, 0x7fffffff

    #@42
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@45
    move-result-object v11

    #@46
    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@49
    move-result v11

    #@4a
    const/4 v12, 0x1

    #@4b
    if-ne v11, v12, :cond_0

    #@4d
    .line 371
    const/4 v11, 0x0

    #@4e
    return-object v11

    #@4f
    .line 373
    :cond_0
    add-int/lit8 v10, v9, 0x1

    #@51
    .end local v9    # "which":I
    .restart local v10    # "which":I
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@54
    move-result v11

    #@55
    aput v11, v5, v9

    #@57
    move v9, v10

    #@58
    .line 401
    .end local v0    # "big":Ljava/math/BigInteger;
    .end local v7    # "second":Ljava/math/BigInteger;
    .end local v10    # "which":I
    .restart local v9    # "which":I
    :goto_1
    add-int/lit8 v1, v2, 0x1

    #@5a
    .line 403
    :goto_2
    array-length v11, v5

    #@5b
    if-lt v9, v11, :cond_1

    #@5d
    .line 404
    add-int/lit8 v11, v9, 0xa

    #@5f
    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([II)[I

    #@62
    move-result-object v5

    #@63
    .line 362
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@65
    move v10, v9

    #@66
    .end local v9    # "which":I
    .restart local v10    # "which":I
    goto :goto_0

    #@67
    .line 376
    .restart local v0    # "big":Ljava/math/BigInteger;
    :cond_2
    const-wide/32 v12, 0x7fffffff

    #@6a
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@6d
    move-result-object v11

    #@6e
    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@71
    move-result v11

    #@72
    const/4 v12, 0x1

    #@73
    if-ne v11, v12, :cond_3

    #@75
    .line 377
    const/4 v11, 0x0

    #@76
    return-object v11

    #@77
    .line 379
    :cond_3
    add-int/lit8 v9, v10, 0x1

    #@79
    .end local v10    # "which":I
    .restart local v9    # "which":I
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@7c
    move-result v11

    #@7d
    aput v11, v5, v10

    #@7f
    goto :goto_1

    #@80
    .line 383
    .end local v0    # "big":Ljava/math/BigInteger;
    .end local v9    # "which":I
    .restart local v10    # "which":I
    :cond_4
    const/4 v6, 0x0

    #@81
    .line 384
    .local v6, "retval":I
    move v3, v1

    #@82
    .local v3, "j":I
    :goto_3
    if-gt v3, v2, :cond_5

    #@84
    .line 385
    shl-int/lit8 v6, v6, 0x7

    #@86
    .line 386
    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@88
    aget-byte v8, v11, v3

    #@8a
    .line 387
    .local v8, "tmp":B
    and-int/lit8 v11, v8, 0x7f

    #@8c
    or-int/2addr v6, v11

    #@8d
    .line 384
    add-int/lit8 v3, v3, 0x1

    #@8f
    goto :goto_3

    #@90
    .line 389
    .end local v8    # "tmp":B
    :cond_5
    if-nez v1, :cond_7

    #@92
    .line 390
    const/16 v11, 0x50

    #@94
    if-ge v6, v11, :cond_6

    #@96
    .line 391
    add-int/lit8 v9, v10, 0x1

    #@98
    .end local v10    # "which":I
    .restart local v9    # "which":I
    div-int/lit8 v11, v6, 0x28

    #@9a
    aput v11, v5, v10

    #@9c
    .line 392
    add-int/lit8 v10, v9, 0x1

    #@9e
    .end local v9    # "which":I
    .restart local v10    # "which":I
    rem-int/lit8 v11, v6, 0x28

    #@a0
    aput v11, v5, v9

    #@a2
    move v9, v10

    #@a3
    .end local v10    # "which":I
    .restart local v9    # "which":I
    goto :goto_1

    #@a4
    .line 394
    .end local v9    # "which":I
    .restart local v10    # "which":I
    :cond_6
    add-int/lit8 v9, v10, 0x1

    #@a6
    .end local v10    # "which":I
    .restart local v9    # "which":I
    const/4 v11, 0x2

    #@a7
    aput v11, v5, v10

    #@a9
    .line 395
    add-int/lit8 v10, v9, 0x1

    #@ab
    .end local v9    # "which":I
    .restart local v10    # "which":I
    add-int/lit8 v11, v6, -0x50

    #@ad
    aput v11, v5, v9

    #@af
    move v9, v10

    #@b0
    .end local v10    # "which":I
    .restart local v9    # "which":I
    goto :goto_1

    #@b1
    .line 398
    .end local v9    # "which":I
    .restart local v10    # "which":I
    :cond_7
    add-int/lit8 v9, v10, 0x1

    #@b3
    .end local v10    # "which":I
    .restart local v9    # "which":I
    aput v6, v5, v10

    #@b5
    goto :goto_1

    #@b6
    .line 407
    .end local v3    # "j":I
    .end local v6    # "retval":I
    .end local v9    # "which":I
    .restart local v10    # "which":I
    :cond_8
    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([II)[I

    #@b9
    move-result-object v11

    #@ba
    return-object v11

    #@bb
    :cond_9
    move v9, v10

    #@bc
    .end local v10    # "which":I
    .restart local v9    # "which":I
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    #@0
    .prologue
    const/16 v13, 0x2e

    #@2
    .line 418
    iget-object v6, p0, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    #@4
    .line 419
    .local v6, "s":Ljava/lang/String;
    if-nez v6, :cond_8

    #@6
    .line 420
    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@8
    array-length v4, v9

    #@9
    .line 421
    .local v4, "length":I
    new-instance v7, Ljava/lang/StringBuffer;

    #@b
    mul-int/lit8 v9, v4, 0x4

    #@d
    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    #@10
    .line 423
    .local v7, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@11
    .line 424
    .local v1, "fromPos":I
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_7

    #@14
    .line 425
    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@16
    aget-byte v9, v9, v2

    #@18
    and-int/lit16 v9, v9, 0x80

    #@1a
    if-nez v9, :cond_1

    #@1c
    .line 427
    if-eqz v1, :cond_0

    #@1e
    .line 428
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@21
    .line 430
    :cond_0
    sub-int v9, v2, v1

    #@23
    add-int/lit8 v9, v9, 0x1

    #@25
    const/4 v10, 0x4

    #@26
    if-le v9, v10, :cond_3

    #@28
    .line 431
    new-instance v0, Ljava/math/BigInteger;

    #@2a
    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@2c
    sub-int v10, v2, v1

    #@2e
    add-int/lit8 v10, v10, 0x1

    #@30
    const/4 v11, 0x7

    #@31
    const/16 v12, 0x8

    #@33
    invoke-static {v9, v1, v10, v11, v12}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    #@36
    move-result-object v9

    #@37
    invoke-direct {v0, v9}, Ljava/math/BigInteger;-><init>([B)V

    #@3a
    .line 432
    .local v0, "big":Ljava/math/BigInteger;
    if-nez v1, :cond_2

    #@3c
    .line 435
    const-string/jumbo v9, "2."

    #@3f
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    .line 436
    const-wide/16 v10, 0x50

    #@44
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@47
    move-result-object v9

    #@48
    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4b
    move-result-object v9

    #@4c
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@4f
    .line 460
    .end local v0    # "big":Ljava/math/BigInteger;
    :goto_1
    add-int/lit8 v1, v2, 0x1

    #@51
    .line 424
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@53
    goto :goto_0

    #@54
    .line 438
    .restart local v0    # "big":Ljava/math/BigInteger;
    :cond_2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@57
    goto :goto_1

    #@58
    .line 441
    .end local v0    # "big":Ljava/math/BigInteger;
    :cond_3
    const/4 v5, 0x0

    #@59
    .line 442
    .local v5, "retval":I
    move v3, v1

    #@5a
    .local v3, "j":I
    :goto_2
    if-gt v3, v2, :cond_4

    #@5c
    .line 443
    shl-int/lit8 v5, v5, 0x7

    #@5e
    .line 444
    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    #@60
    aget-byte v8, v9, v3

    #@62
    .line 445
    .local v8, "tmp":B
    and-int/lit8 v9, v8, 0x7f

    #@64
    or-int/2addr v5, v9

    #@65
    .line 442
    add-int/lit8 v3, v3, 0x1

    #@67
    goto :goto_2

    #@68
    .line 447
    .end local v8    # "tmp":B
    :cond_4
    if-nez v1, :cond_6

    #@6a
    .line 448
    const/16 v9, 0x50

    #@6c
    if-ge v5, v9, :cond_5

    #@6e
    .line 449
    div-int/lit8 v9, v5, 0x28

    #@70
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@73
    .line 450
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@76
    .line 451
    rem-int/lit8 v9, v5, 0x28

    #@78
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@7b
    goto :goto_1

    #@7c
    .line 453
    :cond_5
    const-string/jumbo v9, "2."

    #@7f
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@82
    .line 454
    add-int/lit8 v9, v5, -0x50

    #@84
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@87
    goto :goto_1

    #@88
    .line 457
    :cond_6
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@8b
    goto :goto_1

    #@8c
    .line 463
    .end local v3    # "j":I
    .end local v5    # "retval":I
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@8f
    move-result-object v6

    #@90
    .line 464
    iput-object v6, p0, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    #@92
    .line 466
    .end local v1    # "fromPos":I
    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_8
    return-object v6
.end method
