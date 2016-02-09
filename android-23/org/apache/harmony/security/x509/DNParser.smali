.class public final Lorg/apache/harmony/security/x509/DNParser;
.super Ljava/lang/Object;
.source "DNParser.java"


# instance fields
.field private beg:I

.field private final chars:[C

.field private encoded:[B

.field private end:I

.field private hasQE:Z

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "dn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@9
    .line 62
    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x20

    #@2
    .line 218
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@4
    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@6
    .line 219
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@8
    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@a
    .line 221
    :cond_0
    :goto_0
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@c
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@e
    array-length v2, v2

    #@f
    if-lt v1, v2, :cond_1

    #@11
    .line 223
    new-instance v1, Ljava/lang/String;

    #@13
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@15
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@17
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@19
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@1b
    sub-int/2addr v4, v5

    #@1c
    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    #@1f
    return-object v1

    #@20
    .line 226
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@22
    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@24
    aget-char v1, v1, v2

    #@26
    sparse-switch v1, :sswitch_data_0

    #@29
    .line 255
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@2b
    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@2d
    add-int/lit8 v3, v2, 0x1

    #@2f
    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@31
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@33
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@35
    aget-char v3, v3, v4

    #@37
    aput-char v3, v1, v2

    #@39
    .line 256
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@3b
    add-int/lit8 v1, v1, 0x1

    #@3d
    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@3f
    goto :goto_0

    #@40
    .line 231
    :sswitch_0
    new-instance v1, Ljava/lang/String;

    #@42
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@44
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@46
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@48
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@4a
    sub-int/2addr v4, v5

    #@4b
    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    #@4e
    return-object v1

    #@4f
    .line 234
    :sswitch_1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@51
    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@53
    add-int/lit8 v3, v2, 0x1

    #@55
    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@57
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->getEscaped()C

    #@5a
    move-result v3

    #@5b
    aput-char v3, v1, v2

    #@5d
    .line 235
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@5f
    add-int/lit8 v1, v1, 0x1

    #@61
    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@63
    goto :goto_0

    #@64
    .line 240
    :sswitch_2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@66
    .line 242
    .local v0, "cur":I
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@68
    add-int/lit8 v1, v1, 0x1

    #@6a
    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@6c
    .line 243
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@6e
    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@70
    add-int/lit8 v3, v2, 0x1

    #@72
    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@74
    aput-char v5, v1, v2

    #@76
    .line 245
    :goto_1
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@78
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@7a
    array-length v2, v2

    #@7b
    if-ge v1, v2, :cond_2

    #@7d
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@7f
    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@81
    aget-char v1, v1, v2

    #@83
    if-ne v1, v5, :cond_2

    #@85
    .line 246
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@87
    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@89
    add-int/lit8 v3, v2, 0x1

    #@8b
    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@8d
    aput-char v5, v1, v2

    #@8f
    .line 245
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@91
    add-int/lit8 v1, v1, 0x1

    #@93
    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@95
    goto :goto_1

    #@96
    .line 248
    :cond_2
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@98
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@9a
    array-length v2, v2

    #@9b
    if-eq v1, v2, :cond_3

    #@9d
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@9f
    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@a1
    aget-char v1, v1, v2

    #@a3
    const/16 v2, 0x2c

    #@a5
    if-ne v1, v2, :cond_4

    #@a7
    .line 251
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/String;

    #@a9
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@ab
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@ad
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@af
    sub-int v4, v0, v4

    #@b1
    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    #@b4
    return-object v1

    #@b5
    .line 248
    :cond_4
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@b7
    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@b9
    aget-char v1, v1, v2

    #@bb
    const/16 v2, 0x2b

    #@bd
    if-eq v1, v2, :cond_3

    #@bf
    .line 249
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@c1
    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@c3
    aget-char v1, v1, v2

    #@c5
    const/16 v2, 0x3b

    #@c7
    if-ne v1, v2, :cond_0

    #@c9
    goto :goto_2

    #@ca
    .line 226
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private getByte(I)I
    .locals 9
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x61

    #@2
    const/16 v7, 0x46

    #@4
    const/16 v6, 0x41

    #@6
    const/16 v5, 0x39

    #@8
    const/16 v4, 0x30

    #@a
    .line 350
    add-int/lit8 v2, p1, 0x1

    #@c
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@e
    array-length v3, v3

    #@f
    if-lt v2, v3, :cond_0

    #@11
    .line 352
    new-instance v2, Ljava/io/IOException;

    #@13
    const-string/jumbo v3, "Invalid distinguished name string"

    #@16
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 355
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@1c
    aget-char v0, v2, p1

    #@1e
    .line 356
    .local v0, "b1":I
    if-lt v0, v4, :cond_1

    #@20
    if-gt v0, v5, :cond_1

    #@22
    .line 357
    add-int/lit8 v0, v0, -0x30

    #@24
    .line 366
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@26
    add-int/lit8 v3, p1, 0x1

    #@28
    aget-char v1, v2, v3

    #@2a
    .line 367
    .local v1, "b2":I
    if-lt v1, v4, :cond_4

    #@2c
    if-gt v1, v5, :cond_4

    #@2e
    .line 368
    add-int/lit8 v1, v1, -0x30

    #@30
    .line 377
    :goto_1
    shl-int/lit8 v2, v0, 0x4

    #@32
    add-int/2addr v2, v1

    #@33
    return v2

    #@34
    .line 358
    .end local v1    # "b2":I
    :cond_1
    if-lt v0, v8, :cond_2

    #@36
    const/16 v2, 0x66

    #@38
    if-gt v0, v2, :cond_2

    #@3a
    .line 359
    add-int/lit8 v0, v0, -0x57

    #@3c
    .line 358
    goto :goto_0

    #@3d
    .line 360
    :cond_2
    if-lt v0, v6, :cond_3

    #@3f
    if-gt v0, v7, :cond_3

    #@41
    .line 361
    add-int/lit8 v0, v0, -0x37

    #@43
    .line 360
    goto :goto_0

    #@44
    .line 363
    :cond_3
    new-instance v2, Ljava/io/IOException;

    #@46
    const-string/jumbo v3, "Invalid distinguished name string"

    #@49
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v2

    #@4d
    .line 369
    .restart local v1    # "b2":I
    :cond_4
    if-lt v1, v8, :cond_5

    #@4f
    const/16 v2, 0x66

    #@51
    if-gt v1, v2, :cond_5

    #@53
    .line 370
    add-int/lit8 v1, v1, -0x57

    #@55
    .line 369
    goto :goto_1

    #@56
    .line 371
    :cond_5
    if-lt v1, v6, :cond_6

    #@58
    if-gt v1, v7, :cond_6

    #@5a
    .line 372
    add-int/lit8 v1, v1, -0x37

    #@5c
    .line 371
    goto :goto_1

    #@5d
    .line 374
    :cond_6
    new-instance v2, Ljava/io/IOException;

    #@5f
    const-string/jumbo v3, "Invalid distinguished name string"

    #@62
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@65
    throw v2
.end method

.method private getEscaped()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@2
    add-int/lit8 v1, v1, 0x1

    #@4
    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@6
    .line 266
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@8
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@a
    array-length v2, v2

    #@b
    if-ne v1, v2, :cond_0

    #@d
    .line 267
    new-instance v1, Ljava/io/IOException;

    #@f
    const-string/jumbo v2, "Invalid distinguished name string"

    #@12
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 270
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@18
    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@1a
    aget-char v0, v1, v2

    #@1c
    .line 271
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    #@1f
    .line 292
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->getUTF8()C

    #@22
    move-result v1

    #@23
    return v1

    #@24
    .line 274
    :sswitch_0
    const/4 v1, 0x1

    #@25
    iput-boolean v1, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    #@27
    .line 275
    return v0

    #@28
    .line 288
    :sswitch_1
    return v0

    #@29
    .line 271
    nop

    #@2a
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x22 -> :sswitch_0
        0x23 -> :sswitch_1
        0x25 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2b -> :sswitch_1
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x3d -> :sswitch_1
        0x3e -> :sswitch_1
        0x5c -> :sswitch_0
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method private hexAV()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    .line 167
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@4
    add-int/lit8 v3, v3, 0x4

    #@6
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@8
    array-length v4, v4

    #@9
    if-lt v3, v4, :cond_0

    #@b
    .line 169
    new-instance v3, Ljava/io/IOException;

    #@d
    const-string/jumbo v4, "Invalid distinguished name string"

    #@10
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13
    throw v3

    #@14
    .line 172
    :cond_0
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@16
    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@18
    .line 173
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@1a
    add-int/lit8 v3, v3, 0x1

    #@1c
    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@1e
    .line 177
    :goto_0
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@20
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@22
    array-length v4, v4

    #@23
    if-eq v3, v4, :cond_1

    #@25
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@27
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@29
    aget-char v3, v3, v4

    #@2b
    const/16 v4, 0x2b

    #@2d
    if-ne v3, v4, :cond_4

    #@2f
    .line 179
    :cond_1
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@31
    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@33
    .line 200
    :cond_2
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@35
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@37
    sub-int v0, v3, v4

    #@39
    .line 201
    .local v0, "hexLen":I
    const/4 v3, 0x5

    #@3a
    if-lt v0, v3, :cond_3

    #@3c
    and-int/lit8 v3, v0, 0x1

    #@3e
    if-nez v3, :cond_7

    #@40
    .line 202
    :cond_3
    new-instance v3, Ljava/io/IOException;

    #@42
    const-string/jumbo v4, "Invalid distinguished name string"

    #@45
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@48
    throw v3

    #@49
    .line 177
    .end local v0    # "hexLen":I
    :cond_4
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@4b
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@4d
    aget-char v3, v3, v4

    #@4f
    const/16 v4, 0x2c

    #@51
    if-eq v3, v4, :cond_1

    #@53
    .line 178
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@55
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@57
    aget-char v3, v3, v4

    #@59
    const/16 v4, 0x3b

    #@5b
    if-eq v3, v4, :cond_1

    #@5d
    .line 183
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@5f
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@61
    aget-char v3, v3, v4

    #@63
    if-ne v3, v6, :cond_5

    #@65
    .line 184
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@67
    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@69
    .line 185
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@6b
    add-int/lit8 v3, v3, 0x1

    #@6d
    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@6f
    .line 188
    :goto_1
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@71
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@73
    array-length v4, v4

    #@74
    if-ge v3, v4, :cond_2

    #@76
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@78
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@7a
    aget-char v3, v3, v4

    #@7c
    if-ne v3, v6, :cond_2

    #@7e
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@80
    add-int/lit8 v3, v3, 0x1

    #@82
    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@84
    goto :goto_1

    #@85
    .line 191
    :cond_5
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@87
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@89
    aget-char v3, v3, v4

    #@8b
    const/16 v4, 0x41

    #@8d
    if-lt v3, v4, :cond_6

    #@8f
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@91
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@93
    aget-char v3, v3, v4

    #@95
    const/16 v4, 0x46

    #@97
    if-gt v3, v4, :cond_6

    #@99
    .line 192
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@9b
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@9d
    aget-char v5, v3, v4

    #@9f
    add-int/lit8 v5, v5, 0x20

    #@a1
    int-to-char v5, v5

    #@a2
    aput-char v5, v3, v4

    #@a4
    .line 195
    :cond_6
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@a6
    add-int/lit8 v3, v3, 0x1

    #@a8
    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@aa
    goto/16 :goto_0

    #@ac
    .line 206
    .restart local v0    # "hexLen":I
    :cond_7
    div-int/lit8 v3, v0, 0x2

    #@ae
    new-array v3, v3, [B

    #@b0
    iput-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    #@b2
    .line 207
    const/4 v1, 0x0

    #@b3
    .local v1, "i":I
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@b5
    add-int/lit8 v2, v3, 0x1

    #@b7
    .local v2, "p":I
    :goto_2
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    #@b9
    array-length v3, v3

    #@ba
    if-ge v1, v3, :cond_8

    #@bc
    .line 208
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    #@be
    invoke-direct {p0, v2}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    #@c1
    move-result v4

    #@c2
    int-to-byte v4, v4

    #@c3
    aput-byte v4, v3, v1

    #@c5
    .line 207
    add-int/lit8 v2, v2, 0x2

    #@c7
    add-int/lit8 v1, v1, 0x1

    #@c9
    goto :goto_2

    #@ca
    .line 211
    :cond_8
    new-instance v3, Ljava/lang/String;

    #@cc
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@ce
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@d0
    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    #@d3
    return-object v3
.end method

.method private nextAT()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x3d

    #@2
    const/16 v2, 0x20

    #@4
    .line 70
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    #@7
    .line 74
    :goto_0
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@9
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@b
    array-length v1, v1

    #@c
    if-ge v0, v1, :cond_0

    #@e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@10
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@12
    aget-char v0, v0, v1

    #@14
    if-ne v0, v2, :cond_0

    #@16
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@1c
    goto :goto_0

    #@1d
    .line 76
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@1f
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@21
    array-length v1, v1

    #@22
    if-ne v0, v1, :cond_1

    #@24
    .line 77
    const/4 v0, 0x0

    #@25
    return-object v0

    #@26
    .line 81
    :cond_1
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@28
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@2a
    .line 84
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@2c
    add-int/lit8 v0, v0, 0x1

    #@2e
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@30
    .line 85
    :goto_1
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@32
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@34
    array-length v1, v1

    #@35
    if-ge v0, v1, :cond_2

    #@37
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@39
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@3b
    aget-char v0, v0, v1

    #@3d
    if-eq v0, v3, :cond_2

    #@3f
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@41
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@43
    aget-char v0, v0, v1

    #@45
    if-eq v0, v2, :cond_2

    #@47
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@49
    add-int/lit8 v0, v0, 0x1

    #@4b
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@4d
    goto :goto_1

    #@4e
    .line 89
    :cond_2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@50
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@52
    array-length v1, v1

    #@53
    if-lt v0, v1, :cond_3

    #@55
    .line 91
    new-instance v0, Ljava/io/IOException;

    #@57
    const-string/jumbo v1, "Invalid distinguished name string"

    #@5a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v0

    #@5e
    .line 95
    :cond_3
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@60
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@62
    .line 99
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@64
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@66
    aget-char v0, v0, v1

    #@68
    if-ne v0, v2, :cond_6

    #@6a
    .line 100
    :goto_2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@6c
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@6e
    array-length v1, v1

    #@6f
    if-ge v0, v1, :cond_4

    #@71
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@73
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@75
    aget-char v0, v0, v1

    #@77
    if-eq v0, v3, :cond_4

    #@79
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@7b
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@7d
    aget-char v0, v0, v1

    #@7f
    if-ne v0, v2, :cond_4

    #@81
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@83
    add-int/lit8 v0, v0, 0x1

    #@85
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@87
    goto :goto_2

    #@88
    .line 103
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@8a
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@8c
    aget-char v0, v0, v1

    #@8e
    if-ne v0, v3, :cond_5

    #@90
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@92
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@94
    array-length v1, v1

    #@95
    if-ne v0, v1, :cond_6

    #@97
    .line 105
    :cond_5
    new-instance v0, Ljava/io/IOException;

    #@99
    const-string/jumbo v1, "Invalid distinguished name string"

    #@9c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v0

    #@a0
    .line 109
    :cond_6
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@a2
    add-int/lit8 v0, v0, 0x1

    #@a4
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@a6
    .line 113
    :goto_3
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@a8
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@aa
    array-length v1, v1

    #@ab
    if-ge v0, v1, :cond_7

    #@ad
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@af
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@b1
    aget-char v0, v0, v1

    #@b3
    if-ne v0, v2, :cond_7

    #@b5
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@b7
    add-int/lit8 v0, v0, 0x1

    #@b9
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@bb
    goto :goto_3

    #@bc
    .line 118
    :cond_7
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@be
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@c0
    sub-int/2addr v0, v1

    #@c1
    const/4 v1, 0x4

    #@c2
    if-le v0, v1, :cond_b

    #@c4
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@c6
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@c8
    add-int/lit8 v1, v1, 0x3

    #@ca
    aget-char v0, v0, v1

    #@cc
    const/16 v1, 0x2e

    #@ce
    if-ne v0, v1, :cond_b

    #@d0
    .line 119
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@d2
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@d4
    aget-char v0, v0, v1

    #@d6
    const/16 v1, 0x4f

    #@d8
    if-eq v0, v1, :cond_8

    #@da
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@dc
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@de
    aget-char v0, v0, v1

    #@e0
    const/16 v1, 0x6f

    #@e2
    if-ne v0, v1, :cond_b

    #@e4
    .line 120
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@e6
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@e8
    add-int/lit8 v1, v1, 0x1

    #@ea
    aget-char v0, v0, v1

    #@ec
    const/16 v1, 0x49

    #@ee
    if-eq v0, v1, :cond_9

    #@f0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@f2
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@f4
    add-int/lit8 v1, v1, 0x1

    #@f6
    aget-char v0, v0, v1

    #@f8
    const/16 v1, 0x69

    #@fa
    if-ne v0, v1, :cond_b

    #@fc
    .line 121
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@fe
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@100
    add-int/lit8 v1, v1, 0x2

    #@102
    aget-char v0, v0, v1

    #@104
    const/16 v1, 0x44

    #@106
    if-eq v0, v1, :cond_a

    #@108
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@10a
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@10c
    add-int/lit8 v1, v1, 0x2

    #@10e
    aget-char v0, v0, v1

    #@110
    const/16 v1, 0x64

    #@112
    if-ne v0, v1, :cond_b

    #@114
    .line 122
    :cond_a
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@116
    add-int/lit8 v0, v0, 0x4

    #@118
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@11a
    .line 125
    :cond_b
    new-instance v0, Ljava/lang/String;

    #@11c
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@11e
    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@120
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@122
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@124
    sub-int/2addr v3, v4

    #@125
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    #@128
    return-object v0
.end method

.method private quotedAV()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@6
    .line 133
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@8
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@a
    .line 134
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@c
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@e
    .line 136
    :goto_0
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@10
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@12
    array-length v1, v1

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 138
    new-instance v0, Ljava/io/IOException;

    #@17
    const-string/jumbo v1, "Invalid distinguished name string"

    #@1a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 141
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@20
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@22
    aget-char v0, v0, v1

    #@24
    const/16 v1, 0x22

    #@26
    if-ne v0, v1, :cond_1

    #@28
    .line 143
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@2a
    add-int/lit8 v0, v0, 0x1

    #@2c
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@2e
    .line 157
    :goto_1
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@30
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@32
    array-length v1, v1

    #@33
    if-ge v0, v1, :cond_3

    #@35
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@37
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@39
    aget-char v0, v0, v1

    #@3b
    const/16 v1, 0x20

    #@3d
    if-ne v0, v1, :cond_3

    #@3f
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@41
    add-int/lit8 v0, v0, 0x1

    #@43
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@45
    goto :goto_1

    #@46
    .line 145
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@48
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@4a
    aget-char v0, v0, v1

    #@4c
    const/16 v1, 0x5c

    #@4e
    if-ne v0, v1, :cond_2

    #@50
    .line 146
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@52
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@54
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->getEscaped()C

    #@57
    move-result v2

    #@58
    aput-char v2, v0, v1

    #@5a
    .line 151
    :goto_2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@5c
    add-int/lit8 v0, v0, 0x1

    #@5e
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@60
    .line 152
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@62
    add-int/lit8 v0, v0, 0x1

    #@64
    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@66
    goto :goto_0

    #@67
    .line 149
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@69
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@6b
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@6d
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@6f
    aget-char v2, v2, v3

    #@71
    aput-char v2, v0, v1

    #@73
    goto :goto_2

    #@74
    .line 160
    :cond_3
    new-instance v0, Ljava/lang/String;

    #@76
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@78
    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@7a
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    #@7c
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    #@7e
    sub-int/2addr v3, v4

    #@7f
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    #@82
    return-object v0
.end method


# virtual methods
.method protected getUTF8()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x80

    #@2
    const/16 v6, 0x3f

    #@4
    .line 300
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@6
    invoke-direct {p0, v4}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    #@9
    move-result v3

    #@a
    .line 301
    .local v3, "res":I
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@c
    add-int/lit8 v4, v4, 0x1

    #@e
    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@10
    .line 303
    if-ge v3, v7, :cond_0

    #@12
    .line 304
    int-to-char v4, v3

    #@13
    return v4

    #@14
    .line 305
    :cond_0
    const/16 v4, 0xc0

    #@16
    if-lt v3, v4, :cond_7

    #@18
    const/16 v4, 0xf7

    #@1a
    if-gt v3, v4, :cond_7

    #@1c
    .line 308
    const/16 v4, 0xdf

    #@1e
    if-gt v3, v4, :cond_2

    #@20
    .line 309
    const/4 v1, 0x1

    #@21
    .line 310
    .local v1, "count":I
    and-int/lit8 v3, v3, 0x1f

    #@23
    .line 320
    :goto_0
    const/4 v2, 0x0

    #@24
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_6

    #@26
    .line 321
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@28
    add-int/lit8 v4, v4, 0x1

    #@2a
    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@2c
    .line 322
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@2e
    iget-object v5, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@30
    array-length v5, v5

    #@31
    if-eq v4, v5, :cond_1

    #@33
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@35
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@37
    aget-char v4, v4, v5

    #@39
    const/16 v5, 0x5c

    #@3b
    if-eq v4, v5, :cond_4

    #@3d
    .line 323
    :cond_1
    return v6

    #@3e
    .line 311
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    const/16 v4, 0xef

    #@40
    if-gt v3, v4, :cond_3

    #@42
    .line 312
    const/4 v1, 0x2

    #@43
    .line 313
    .restart local v1    # "count":I
    and-int/lit8 v3, v3, 0xf

    #@45
    goto :goto_0

    #@46
    .line 315
    .end local v1    # "count":I
    :cond_3
    const/4 v1, 0x3

    #@47
    .line 316
    .restart local v1    # "count":I
    and-int/lit8 v3, v3, 0x7

    #@49
    goto :goto_0

    #@4a
    .line 325
    .restart local v2    # "i":I
    :cond_4
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@4c
    add-int/lit8 v4, v4, 0x1

    #@4e
    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@50
    .line 327
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@52
    invoke-direct {p0, v4}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    #@55
    move-result v0

    #@56
    .line 328
    .local v0, "b":I
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@58
    add-int/lit8 v4, v4, 0x1

    #@5a
    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@5c
    .line 329
    and-int/lit16 v4, v0, 0xc0

    #@5e
    if-eq v4, v7, :cond_5

    #@60
    .line 330
    return v6

    #@61
    .line 333
    :cond_5
    shl-int/lit8 v4, v3, 0x6

    #@63
    and-int/lit8 v5, v0, 0x3f

    #@65
    add-int v3, v4, v5

    #@67
    .line 320
    add-int/lit8 v2, v2, 0x1

    #@69
    goto :goto_1

    #@6a
    .line 335
    .end local v0    # "b":I
    :cond_6
    int-to-char v4, v3

    #@6b
    return v4

    #@6c
    .line 337
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_7
    return v6
.end method

.method public parse()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 387
    new-instance v2, Ljava/util/ArrayList;

    #@3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 389
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;>;"
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->nextAT()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 390
    .local v1, "attType":Ljava/lang/String;
    if-nez v1, :cond_0

    #@c
    .line 391
    return-object v2

    #@d
    .line 393
    :cond_0
    invoke-static {v1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getObjectIdentifier(Ljava/lang/String;)Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@10
    move-result-object v3

    #@11
    .line 395
    .local v3, "oid":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 397
    .local v0, "atav":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    :goto_0
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@18
    iget-object v5, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@1a
    array-length v5, v5

    #@1b
    if-ne v4, v5, :cond_1

    #@1d
    .line 399
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    #@1f
    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    #@21
    const-string/jumbo v6, ""

    #@24
    invoke-direct {v5, v6, v8, v3}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;ZLorg/apache/harmony/security/utils/ObjectIdentifier;)V

    #@27
    invoke-direct {v4, v3, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/x501/AttributeValue;)V

    #@2a
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    .line 400
    invoke-interface {v2, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@30
    .line 401
    return-object v2

    #@31
    .line 404
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@33
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@35
    aget-char v4, v4, v5

    #@37
    sparse-switch v4, :sswitch_data_0

    #@3a
    .line 418
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    #@3c
    .line 419
    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    #@3e
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->escapedAV()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    iget-boolean v7, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    #@44
    invoke-direct {v5, v6, v7, v3}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;ZLorg/apache/harmony/security/utils/ObjectIdentifier;)V

    #@47
    .line 418
    invoke-direct {v4, v3, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/x501/AttributeValue;)V

    #@4a
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4d
    .line 422
    :goto_1
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@4f
    iget-object v5, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@51
    array-length v5, v5

    #@52
    if-lt v4, v5, :cond_2

    #@54
    .line 423
    invoke-interface {v2, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@57
    .line 424
    return-object v2

    #@58
    .line 406
    :sswitch_0
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    #@5a
    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    #@5c
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->quotedAV()Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    iget-boolean v7, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    #@62
    invoke-direct {v5, v6, v7, v3}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;ZLorg/apache/harmony/security/utils/ObjectIdentifier;)V

    #@65
    invoke-direct {v4, v3, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/x501/AttributeValue;)V

    #@68
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6b
    goto :goto_1

    #@6c
    .line 409
    :sswitch_1
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    #@6e
    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    #@70
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->hexAV()Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    iget-object v7, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    #@76
    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;[B)V

    #@79
    invoke-direct {v4, v3, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/x501/AttributeValue;)V

    #@7c
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7f
    goto :goto_1

    #@80
    .line 415
    :sswitch_2
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    #@82
    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    #@84
    const-string/jumbo v6, ""

    #@87
    invoke-direct {v5, v6, v8, v3}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;ZLorg/apache/harmony/security/utils/ObjectIdentifier;)V

    #@8a
    invoke-direct {v4, v3, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/x501/AttributeValue;)V

    #@8d
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@90
    goto :goto_1

    #@91
    .line 427
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@93
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@95
    aget-char v4, v4, v5

    #@97
    const/16 v5, 0x2c

    #@99
    if-eq v4, v5, :cond_3

    #@9b
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@9d
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@9f
    aget-char v4, v4, v5

    #@a1
    const/16 v5, 0x3b

    #@a3
    if-ne v4, v5, :cond_5

    #@a5
    .line 428
    :cond_3
    invoke-interface {v2, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@a8
    .line 429
    new-instance v0, Ljava/util/ArrayList;

    #@aa
    .end local v0    # "atav":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@ad
    .line 434
    .restart local v0    # "atav":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    :cond_4
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@af
    add-int/lit8 v4, v4, 0x1

    #@b1
    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@b3
    .line 435
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->nextAT()Ljava/lang/String;

    #@b6
    move-result-object v1

    #@b7
    .line 436
    if-nez v1, :cond_6

    #@b9
    .line 437
    new-instance v4, Ljava/io/IOException;

    #@bb
    const-string/jumbo v5, "Invalid distinguished name string"

    #@be
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c1
    throw v4

    #@c2
    .line 430
    :cond_5
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    #@c4
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    #@c6
    aget-char v4, v4, v5

    #@c8
    const/16 v5, 0x2b

    #@ca
    if-eq v4, v5, :cond_4

    #@cc
    .line 431
    new-instance v4, Ljava/io/IOException;

    #@ce
    const-string/jumbo v5, "Invalid distinguished name string"

    #@d1
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d4
    throw v4

    #@d5
    .line 439
    :cond_6
    invoke-static {v1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getObjectIdentifier(Ljava/lang/String;)Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@d8
    move-result-object v3

    #@d9
    goto/16 :goto_0

    #@db
    .line 404
    nop

    #@dc
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2b -> :sswitch_2
        0x2c -> :sswitch_2
        0x3b -> :sswitch_2
    .end sparse-switch
.end method
