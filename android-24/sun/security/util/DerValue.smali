.class public Lsun/security/util/DerValue;
.super Ljava/lang/Object;
.source "DerValue.java"


# static fields
.field public static final TAG_APPLICATION:B = 0x40t

.field public static final TAG_CONTEXT:B = -0x80t

.field public static final TAG_PRIVATE:B = -0x40t

.field public static final TAG_UNIVERSAL:B = 0x0t

.field public static final tag_BMPString:B = 0x1et

.field public static final tag_BitString:B = 0x3t

.field public static final tag_Boolean:B = 0x1t

.field public static final tag_Enumerated:B = 0xat

.field public static final tag_GeneralString:B = 0x1bt

.field public static final tag_GeneralizedTime:B = 0x18t

.field public static final tag_IA5String:B = 0x16t

.field public static final tag_Integer:B = 0x2t

.field public static final tag_Null:B = 0x5t

.field public static final tag_ObjectId:B = 0x6t

.field public static final tag_OctetString:B = 0x4t

.field public static final tag_PrintableString:B = 0x13t

.field public static final tag_Sequence:B = 0x30t

.field public static final tag_SequenceOf:B = 0x30t

.field public static final tag_Set:B = 0x31t

.field public static final tag_SetOf:B = 0x31t

.field public static final tag_T61String:B = 0x14t

.field public static final tag_UTF8String:B = 0xct

.field public static final tag_UniversalString:B = 0x1ct

.field public static final tag_UtcTime:B = 0x17t


# instance fields
.field protected buffer:Lsun/security/util/DerInputBuffer;

.field public final data:Lsun/security/util/DerInputStream;

.field private length:I

.field private originalEncodedForm:[B

.field public tag:B


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .locals 1
    .param p1, "stringTag"    # B
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 232
    invoke-direct {p0, p1, p2}, Lsun/security/util/DerValue;->init(BLjava/lang/String;)Lsun/security/util/DerInputStream;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@9
    .line 231
    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "data"    # [B

    #@0
    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 242
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    #@5
    .line 243
    new-instance v1, Lsun/security/util/DerInputBuffer;

    #@7
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [B

    #@d
    invoke-direct {v1, v0}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    #@10
    iput-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@12
    .line 244
    array-length v0, p2

    #@13
    iput v0, p0, Lsun/security/util/DerValue;->length:I

    #@15
    .line 245
    new-instance v0, Lsun/security/util/DerInputStream;

    #@17
    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@19
    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    #@1c
    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@1e
    .line 246
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@20
    const v1, 0x7fffffff

    #@23
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->mark(I)V

    #@26
    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 333
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0, p1}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@a
    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 215
    const/4 v1, 0x1

    #@4
    .line 216
    .local v1, "isPrintableString":Z
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v2

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v2

    #@f
    invoke-static {v2}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 218
    const/4 v1, 0x0

    #@16
    .line 223
    :cond_0
    if-eqz v1, :cond_2

    #@18
    const/16 v2, 0x13

    #@1a
    :goto_1
    invoke-direct {p0, v2, p1}, Lsun/security/util/DerValue;->init(BLjava/lang/String;)Lsun/security/util/DerInputStream;

    #@1d
    move-result-object v2

    #@1e
    iput-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@20
    .line 214
    return-void

    #@21
    .line 216
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 223
    :cond_2
    const/16 v2, 0xc

    #@26
    goto :goto_1
.end method

.method constructor <init>(Lsun/security/util/DerInputBuffer;Z)V
    .locals 12
    .param p1, "in"    # Lsun/security/util/DerInputBuffer;
    .param p2, "originalEncodedFormRetained"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 257
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->getPos()I

    #@6
    move-result v8

    #@7
    .line 258
    .local v8, "startPosInInput":I
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->read()I

    #@a
    move-result v9

    #@b
    int-to-byte v9, v9

    #@c
    iput-byte v9, p0, Lsun/security/util/DerValue;->tag:B

    #@e
    .line 259
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->read()I

    #@11
    move-result v9

    #@12
    int-to-byte v5, v9

    #@13
    .line 260
    .local v5, "lenByte":B
    and-int/lit16 v9, v5, 0xff

    #@15
    invoke-static {v9, p1}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    #@18
    move-result v9

    #@19
    iput v9, p0, Lsun/security/util/DerValue;->length:I

    #@1b
    .line 261
    iget v9, p0, Lsun/security/util/DerValue;->length:I

    #@1d
    const/4 v10, -0x1

    #@1e
    if-ne v9, v10, :cond_2

    #@20
    .line 262
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    #@23
    move-result-object v3

    #@24
    .line 263
    .local v3, "inbuf":Lsun/security/util/DerInputBuffer;
    invoke-virtual {v3}, Lsun/security/util/DerInputBuffer;->available()I

    #@27
    move-result v7

    #@28
    .line 264
    .local v7, "readLen":I
    const/4 v6, 0x2

    #@29
    .line 265
    .local v6, "offset":I
    add-int/lit8 v9, v7, 0x2

    #@2b
    new-array v4, v9, [B

    #@2d
    .line 266
    .local v4, "indefData":[B
    iget-byte v9, p0, Lsun/security/util/DerValue;->tag:B

    #@2f
    const/4 v10, 0x0

    #@30
    aput-byte v9, v4, v10

    #@32
    .line 267
    const/4 v9, 0x1

    #@33
    aput-byte v5, v4, v9

    #@35
    .line 268
    new-instance v2, Ljava/io/DataInputStream;

    #@37
    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@3a
    .line 269
    .local v2, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v2, v4, v6, v7}, Ljava/io/DataInputStream;->readFully([BII)V

    #@3d
    .line 270
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    #@40
    .line 271
    new-instance v1, Lsun/security/util/DerIndefLenConverter;

    #@42
    invoke-direct {v1}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    #@45
    .line 272
    .local v1, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance v3, Lsun/security/util/DerInputBuffer;

    #@47
    .end local v3    # "inbuf":Lsun/security/util/DerInputBuffer;
    invoke-virtual {v1, v4}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    #@4a
    move-result-object v9

    #@4b
    invoke-direct {v3, v9}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    #@4e
    .line 273
    .restart local v3    # "inbuf":Lsun/security/util/DerInputBuffer;
    iget-byte v9, p0, Lsun/security/util/DerValue;->tag:B

    #@50
    invoke-virtual {v3}, Lsun/security/util/DerInputBuffer;->read()I

    #@53
    move-result v10

    #@54
    if-eq v9, v10, :cond_0

    #@56
    .line 274
    new-instance v9, Ljava/io/IOException;

    #@58
    .line 275
    const-string/jumbo v10, "Indefinite length encoding not supported"

    #@5b
    .line 274
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v9

    #@5f
    .line 276
    :cond_0
    invoke-static {v3}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    #@62
    move-result v9

    #@63
    iput v9, p0, Lsun/security/util/DerValue;->length:I

    #@65
    .line 277
    invoke-virtual {v3}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    #@68
    move-result-object v9

    #@69
    iput-object v9, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@6b
    .line 278
    iget-object v9, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@6d
    iget v10, p0, Lsun/security/util/DerValue;->length:I

    #@6f
    invoke-virtual {v9, v10}, Lsun/security/util/DerInputBuffer;->truncate(I)V

    #@72
    .line 279
    new-instance v9, Lsun/security/util/DerInputStream;

    #@74
    iget-object v10, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@76
    invoke-direct {v9, v10}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    #@79
    iput-object v9, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@7b
    .line 283
    iget v9, p0, Lsun/security/util/DerValue;->length:I

    #@7d
    add-int/lit8 v9, v9, 0x2

    #@7f
    int-to-long v10, v9

    #@80
    invoke-virtual {p1, v10, v11}, Lsun/security/util/DerInputBuffer;->skip(J)J

    #@83
    .line 293
    .end local v1    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "inbuf":Lsun/security/util/DerInputBuffer;
    .end local v4    # "indefData":[B
    .end local v6    # "offset":I
    .end local v7    # "readLen":I
    :goto_0
    if-eqz p2, :cond_1

    #@85
    .line 294
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->getPos()I

    #@88
    move-result v9

    #@89
    sub-int v0, v9, v8

    #@8b
    .line 295
    .local v0, "consumed":I
    invoke-virtual {p1, v8, v0}, Lsun/security/util/DerInputBuffer;->getSlice(II)[B

    #@8e
    move-result-object v9

    #@8f
    iput-object v9, p0, Lsun/security/util/DerValue;->originalEncodedForm:[B

    #@91
    .line 253
    .end local v0    # "consumed":I
    :cond_1
    return-void

    #@92
    .line 286
    :cond_2
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    #@95
    move-result-object v9

    #@96
    iput-object v9, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@98
    .line 287
    iget-object v9, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@9a
    iget v10, p0, Lsun/security/util/DerValue;->length:I

    #@9c
    invoke-virtual {v9, v10}, Lsun/security/util/DerInputBuffer;->truncate(I)V

    #@9f
    .line 288
    new-instance v9, Lsun/security/util/DerInputStream;

    #@a1
    iget-object v10, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@a3
    invoke-direct {v9, v10}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    #@a6
    iput-object v9, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@a8
    .line 290
    iget v9, p0, Lsun/security/util/DerValue;->length:I

    #@aa
    int-to-long v10, v9

    #@ab
    invoke-virtual {p1, v10, v11}, Lsun/security/util/DerInputBuffer;->skip(J)J

    #@ae
    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 307
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@5
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@8
    const/4 v1, 0x1

    #@9
    invoke-direct {p0, v1, v0}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@f
    .line 306
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 320
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@5
    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@8
    const/4 v1, 0x1

    #@9
    invoke-direct {p0, v1, v0}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@f
    .line 319
    return-void
.end method

.method private append([B[B)[B
    .locals 4
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 465
    if-nez p1, :cond_0

    #@3
    .line 466
    return-object p2

    #@4
    .line 468
    :cond_0
    array-length v1, p1

    #@5
    array-length v2, p2

    #@6
    add-int/2addr v1, v2

    #@7
    new-array v0, v1, [B

    #@9
    .line 469
    .local v0, "ret":[B
    array-length v1, p1

    #@a
    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d
    .line 470
    array-length v1, p1

    #@e
    array-length v2, p2

    #@f
    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12
    .line 472
    return-object v0
.end method

.method public static createTag(BZB)B
    .locals 2
    .param p0, "tagClass"    # B
    .param p1, "form"    # Z
    .param p2, "val"    # B

    #@0
    .prologue
    .line 931
    or-int v1, p0, p2

    #@2
    int-to-byte v0, v1

    #@3
    .line 932
    .local v0, "tag":B
    if-eqz p1, :cond_0

    #@5
    .line 933
    or-int/lit8 v1, v0, 0x20

    #@7
    int-to-byte v0, v1

    #@8
    .line 935
    :cond_0
    return v0
.end method

.method private static doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z
    .locals 4
    .param p0, "d1"    # Lsun/security/util/DerValue;
    .param p1, "d2"    # Lsun/security/util/DerValue;

    #@0
    .prologue
    .line 803
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@2
    monitor-enter v1

    #@3
    .line 804
    :try_start_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 805
    :try_start_1
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@8
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->reset()V

    #@b
    .line 806
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@d
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->reset()V

    #@10
    .line 807
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@12
    iget-object v3, p1, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@14
    invoke-virtual {v0, v3}, Lsun/security/util/DerInputBuffer;->equals(Lsun/security/util/DerInputBuffer;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result v0

    #@18
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@19
    monitor-exit v1

    #@1a
    return v0

    #@1b
    .line 804
    :catchall_0
    move-exception v0

    #@1c
    :try_start_3
    monitor-exit v2

    #@1d
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1e
    .line 803
    :catchall_1
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method

.method private init(BLjava/lang/String;)Lsun/security/util/DerInputStream;
    .locals 5
    .param p1, "stringTag"    # B
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 337
    const/4 v1, 0x0

    #@1
    .line 339
    .local v1, "enc":Ljava/lang/String;
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    #@3
    .line 341
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 359
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "Unsupported DER string type"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 345
    :sswitch_0
    const-string/jumbo v1, "ASCII"

    #@12
    .line 362
    .local v1, "enc":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@15
    move-result-object v0

    #@16
    .line 363
    .local v0, "buf":[B
    array-length v3, v0

    #@17
    iput v3, p0, Lsun/security/util/DerValue;->length:I

    #@19
    .line 364
    new-instance v3, Lsun/security/util/DerInputBuffer;

    #@1b
    invoke-direct {v3, v0}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    #@1e
    iput-object v3, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@20
    .line 365
    new-instance v2, Lsun/security/util/DerInputStream;

    #@22
    iget-object v3, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@24
    invoke-direct {v2, v3}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    #@27
    .line 366
    .local v2, "result":Lsun/security/util/DerInputStream;
    const v3, 0x7fffffff

    #@2a
    invoke-virtual {v2, v3}, Lsun/security/util/DerInputStream;->mark(I)V

    #@2d
    .line 367
    return-object v2

    #@2e
    .line 348
    .end local v0    # "buf":[B
    .end local v2    # "result":Lsun/security/util/DerInputStream;
    .local v1, "enc":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v1, "ISO-8859-1"

    #@31
    .local v1, "enc":Ljava/lang/String;
    goto :goto_0

    #@32
    .line 351
    .local v1, "enc":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v1, "UnicodeBigUnmarked"

    #@35
    .local v1, "enc":Ljava/lang/String;
    goto :goto_0

    #@36
    .line 354
    .local v1, "enc":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v1, "UTF8"

    #@39
    .local v1, "enc":Ljava/lang/String;
    goto :goto_0

    #@3a
    .line 341
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_3
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x16 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method private init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;
    .locals 10
    .param p1, "fullyBuffered"    # Z
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 376
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    #@4
    move-result v7

    #@5
    int-to-byte v7, v7

    #@6
    iput-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    #@8
    .line 377
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    #@b
    move-result v7

    #@c
    int-to-byte v4, v7

    #@d
    .line 378
    .local v4, "lenByte":B
    and-int/lit16 v7, v4, 0xff

    #@f
    invoke-static {v7, p2}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    #@12
    move-result v7

    #@13
    iput v7, p0, Lsun/security/util/DerValue;->length:I

    #@15
    .line 379
    iget v7, p0, Lsun/security/util/DerValue;->length:I

    #@17
    const/4 v8, -0x1

    #@18
    if-ne v7, v8, :cond_1

    #@1a
    .line 380
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    #@1d
    move-result v6

    #@1e
    .line 381
    .local v6, "readLen":I
    const/4 v5, 0x2

    #@1f
    .line 382
    .local v5, "offset":I
    add-int/lit8 v7, v6, 0x2

    #@21
    new-array v3, v7, [B

    #@23
    .line 383
    .local v3, "indefData":[B
    iget-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    #@25
    const/4 v8, 0x0

    #@26
    aput-byte v7, v3, v8

    #@28
    .line 384
    aput-byte v4, v3, v9

    #@2a
    .line 385
    new-instance v2, Ljava/io/DataInputStream;

    #@2c
    invoke-direct {v2, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@2f
    .line 386
    .local v2, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v2, v3, v5, v6}, Ljava/io/DataInputStream;->readFully([BII)V

    #@32
    .line 387
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    #@35
    .line 388
    new-instance v1, Lsun/security/util/DerIndefLenConverter;

    #@37
    invoke-direct {v1}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    #@3a
    .line 389
    .local v1, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance p2, Ljava/io/ByteArrayInputStream;

    #@3c
    .end local p2    # "in":Ljava/io/InputStream;
    invoke-virtual {v1, v3}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    #@3f
    move-result-object v7

    #@40
    invoke-direct {p2, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@43
    .line 390
    .restart local p2    # "in":Ljava/io/InputStream;
    iget-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    #@45
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    #@48
    move-result v8

    #@49
    if-eq v7, v8, :cond_0

    #@4b
    .line 391
    new-instance v7, Ljava/io/IOException;

    #@4d
    .line 392
    const-string/jumbo v8, "Indefinite length encoding not supported"

    #@50
    .line 391
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@53
    throw v7

    #@54
    .line 393
    :cond_0
    invoke-static {p2}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    #@57
    move-result v7

    #@58
    iput v7, p0, Lsun/security/util/DerValue;->length:I

    #@5a
    .line 396
    .end local v1    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "indefData":[B
    .end local v5    # "offset":I
    .end local v6    # "readLen":I
    :cond_1
    if-eqz p1, :cond_2

    #@5c
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    #@5f
    move-result v7

    #@60
    iget v8, p0, Lsun/security/util/DerValue;->length:I

    #@62
    if-eq v7, v8, :cond_2

    #@64
    .line 397
    new-instance v7, Ljava/io/IOException;

    #@66
    const-string/jumbo v8, "extra data given to DerValue constructor"

    #@69
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v7

    #@6d
    .line 399
    :cond_2
    iget v7, p0, Lsun/security/util/DerValue;->length:I

    #@6f
    invoke-static {p2, v7, v9}, Lsun/misc/IOUtils;->readFully(Ljava/io/InputStream;IZ)[B

    #@72
    move-result-object v0

    #@73
    .line 401
    .local v0, "bytes":[B
    new-instance v7, Lsun/security/util/DerInputBuffer;

    #@75
    invoke-direct {v7, v0}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    #@78
    iput-object v7, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@7a
    .line 402
    new-instance v7, Lsun/security/util/DerInputStream;

    #@7c
    iget-object v8, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@7e
    invoke-direct {v7, v8}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    #@81
    return-object v7
.end method

.method public static isPrintableStringChar(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 897
    const/16 v0, 0x61

    #@3
    if-lt p0, v0, :cond_1

    #@5
    const/16 v0, 0x7a

    #@7
    if-gt p0, v0, :cond_1

    #@9
    .line 899
    :cond_0
    return v1

    #@a
    .line 897
    :cond_1
    const/16 v0, 0x41

    #@c
    if-lt p0, v0, :cond_2

    #@e
    const/16 v0, 0x5a

    #@10
    if-le p0, v0, :cond_0

    #@12
    .line 898
    :cond_2
    const/16 v0, 0x30

    #@14
    if-lt p0, v0, :cond_3

    #@16
    const/16 v0, 0x39

    #@18
    if-le p0, v0, :cond_0

    #@1a
    .line 901
    :cond_3
    sparse-switch p0, :sswitch_data_0

    #@1d
    .line 916
    const/4 v0, 0x0

    #@1e
    return v0

    #@1f
    .line 914
    :sswitch_0
    return v1

    #@20
    .line 901
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 410
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    invoke-virtual {p1, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    #@5
    .line 411
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    #@7
    invoke-virtual {p1, v1}, Lsun/security/util/DerOutputStream;->putLength(I)V

    #@a
    .line 413
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    #@c
    if-lez v1, :cond_1

    #@e
    .line 414
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    #@10
    new-array v0, v1, [B

    #@12
    .line 416
    .local v0, "value":[B
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@14
    monitor-enter v2

    #@15
    .line 417
    :try_start_0
    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@17
    invoke-virtual {v1}, Lsun/security/util/DerInputBuffer;->reset()V

    #@1a
    .line 418
    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@1c
    invoke-virtual {v1, v0}, Lsun/security/util/DerInputBuffer;->read([B)I

    #@1f
    move-result v1

    #@20
    iget v3, p0, Lsun/security/util/DerValue;->length:I

    #@22
    if-eq v1, v3, :cond_0

    #@24
    .line 419
    new-instance v1, Ljava/io/IOException;

    #@26
    const-string/jumbo v3, "short DER value read (encode)"

    #@29
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 416
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1

    #@30
    .line 421
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    monitor-exit v2

    #@34
    .line 409
    .end local v0    # "value":[B
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 768
    instance-of v0, p1, Lsun/security/util/DerValue;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 769
    check-cast p1, Lsun/security/util/DerValue;

    #@6
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/util/DerValue;->equals(Lsun/security/util/DerValue;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 771
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public equals(Lsun/security/util/DerValue;)Z
    .locals 3
    .param p1, "other"    # Lsun/security/util/DerValue;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 782
    if-ne p0, p1, :cond_0

    #@3
    .line 783
    return v2

    #@4
    .line 785
    :cond_0
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@6
    iget-byte v1, p1, Lsun/security/util/DerValue;->tag:B

    #@8
    if-eq v0, v1, :cond_1

    #@a
    .line 786
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 788
    :cond_1
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@e
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@10
    if-ne v0, v1, :cond_2

    #@12
    .line 789
    return v2

    #@13
    .line 793
    :cond_2
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@15
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    .line 794
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@1b
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1e
    move-result v1

    #@1f
    .line 793
    if-le v0, v1, :cond_3

    #@21
    .line 795
    invoke-static {p0, p1}, Lsun/security/util/DerValue;->doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z

    #@24
    move-result v0

    #@25
    .line 793
    :goto_0
    return v0

    #@26
    .line 796
    :cond_3
    invoke-static {p1, p0}, Lsun/security/util/DerValue;->doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z

    #@29
    move-result v0

    #@2a
    goto :goto_0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 586
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v1, 0xc

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 587
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getUTF8String()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 588
    :cond_0
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@d
    const/16 v1, 0x13

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 589
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getPrintableString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 590
    :cond_1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@18
    const/16 v1, 0x14

    #@1a
    if-ne v0, v1, :cond_2

    #@1c
    .line 591
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getT61String()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0

    #@21
    .line 592
    :cond_2
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@23
    const/16 v1, 0x16

    #@25
    if-ne v0, v1, :cond_3

    #@27
    .line 593
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0

    #@2c
    .line 598
    :cond_3
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2e
    const/16 v1, 0x1e

    #@30
    if-ne v0, v1, :cond_4

    #@32
    .line 599
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getBMPString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 600
    :cond_4
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@39
    const/16 v1, 0x1b

    #@3b
    if-ne v0, v1, :cond_5

    #@3d
    .line 601
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getGeneralString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0

    #@42
    .line 603
    :cond_5
    const/4 v0, 0x0

    #@43
    return-object v0
.end method

.method public getBMPString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 699
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v1, 0x1e

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 700
    new-instance v0, Ljava/io/IOException;

    #@8
    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "DerValue.getBMPString, not BMP "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 700
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 705
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@24
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, "UnicodeBigUnmarked"

    #@2b
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@2e
    return-object v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 523
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 524
    new-instance v0, Ljava/io/IOException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "DerValue.getBigInteger, not an int "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 525
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@23
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@25
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@28
    move-result v1

    #@29
    const/4 v2, 0x0

    #@2a
    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public getBitString()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 560
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 561
    new-instance v0, Ljava/io/IOException;

    #@7
    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 561
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 564
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@23
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getBitString()[B

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public getBitString(Z)[B
    .locals 3
    .param p1, "tagImplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 614
    if-nez p1, :cond_0

    #@2
    .line 615
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@4
    const/4 v1, 0x3

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 616
    new-instance v0, Ljava/io/IOException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 617
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@17
    .line 616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 619
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@25
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getBitString()[B

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method public getBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 440
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 441
    new-instance v0, Ljava/io/IOException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "DerValue.getBoolean, not a BOOLEAN "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 443
    :cond_0
    iget v0, p0, Lsun/security/util/DerValue;->length:I

    #@24
    if-eq v0, v1, :cond_1

    #@26
    .line 444
    new-instance v0, Ljava/io/IOException;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "DerValue.getBoolean, invalid length "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 445
    iget v2, p0, Lsun/security/util/DerValue;->length:I

    #@36
    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 447
    :cond_1
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@44
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_2

    #@4a
    .line 448
    return v1

    #@4b
    .line 450
    :cond_2
    return v2
.end method

.method public final getData()Lsun/security/util/DerInputStream;
    .locals 1

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@2
    return-object v0
.end method

.method public getDataBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 644
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    #@2
    new-array v0, v1, [B

    #@4
    .line 645
    .local v0, "retVal":[B
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@6
    monitor-enter v2

    #@7
    .line 646
    :try_start_0
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@9
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->reset()V

    #@c
    .line 647
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@e
    invoke-virtual {v1, v0}, Lsun/security/util/DerInputStream;->getBytes([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    .line 649
    return-object v0

    #@13
    .line 645
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1
.end method

.method public getEnumerated()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 547
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v1, 0xa

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 548
    new-instance v0, Ljava/io/IOException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "DerValue.getEnumerated, incorrect tag: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 549
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@16
    .line 548
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 551
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@24
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@26
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@29
    move-result v1

    #@2a
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    #@2d
    move-result v0

    #@2e
    return v0
.end method

.method public getGeneralString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 729
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v1, 0x1b

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 730
    new-instance v0, Ljava/io/IOException;

    #@8
    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "DerValue.getGeneralString, not GeneralString "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 730
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 733
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@24
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, "ASCII"

    #@2b
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@2e
    return-object v0
.end method

.method public getGeneralizedTime()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 754
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v1, 0x18

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 755
    new-instance v0, Ljava/io/IOException;

    #@8
    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "DerValue.getGeneralizedTime, not a GeneralizedTime: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 755
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 758
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@24
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@26
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@29
    move-result v1

    #@2a
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getGeneralizedTime(I)Ljava/util/Date;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public getIA5String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 685
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v1, 0x16

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 686
    new-instance v0, Ljava/io/IOException;

    #@8
    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "DerValue.getIA5String, not IA5 "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 686
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 689
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@24
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, "ASCII"

    #@2b
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@2e
    return-object v0
.end method

.method public getInteger()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 511
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 512
    new-instance v0, Ljava/io/IOException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "DerValue.getInteger, not an int "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 514
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@23
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@25
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@28
    move-result v1

    #@29
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    #@2c
    move-result v0

    #@2d
    return v0
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 459
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/4 v1, 0x6

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 460
    new-instance v0, Ljava/io/IOException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "DerValue.getOID, not an OID "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 461
    :cond_0
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    #@23
    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@25
    invoke-direct {v0, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Lsun/security/util/DerInputBuffer;)V

    #@28
    return-object v0
.end method

.method public getOctetString()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 483
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@3
    if-eq v2, v3, :cond_0

    #@5
    invoke-virtual {p0, v3}, Lsun/security/util/DerValue;->isConstructed(B)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 487
    :cond_0
    iget v2, p0, Lsun/security/util/DerValue;->length:I

    #@d
    new-array v0, v2, [B

    #@f
    .line 490
    .local v0, "bytes":[B
    iget v2, p0, Lsun/security/util/DerValue;->length:I

    #@11
    if-nez v2, :cond_2

    #@13
    .line 491
    return-object v0

    #@14
    .line 484
    .end local v0    # "bytes":[B
    :cond_1
    new-instance v2, Ljava/io/IOException;

    #@16
    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "DerValue.getOctetString, not an Octet String: "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    iget-byte v4, p0, Lsun/security/util/DerValue;->tag:B

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 484
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 493
    .restart local v0    # "bytes":[B
    :cond_2
    iget-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@32
    invoke-virtual {v2, v0}, Lsun/security/util/DerInputBuffer;->read([B)I

    #@35
    move-result v2

    #@36
    iget v3, p0, Lsun/security/util/DerValue;->length:I

    #@38
    if-eq v2, v3, :cond_3

    #@3a
    .line 494
    new-instance v2, Ljava/io/IOException;

    #@3c
    const-string/jumbo v3, "short read on DerValue buffer"

    #@3f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2

    #@43
    .line 495
    :cond_3
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isConstructed()Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_4

    #@49
    .line 496
    new-instance v1, Lsun/security/util/DerInputStream;

    #@4b
    invoke-direct {v1, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@4e
    .line 497
    .local v1, "in":Lsun/security/util/DerInputStream;
    const/4 v0, 0x0

    #@4f
    .line 498
    .end local v0    # "bytes":[B
    :goto_0
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_4

    #@55
    .line 499
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@58
    move-result-object v2

    #@59
    invoke-direct {p0, v0, v2}, Lsun/security/util/DerValue;->append([B[B)[B

    #@5c
    move-result-object v0

    #@5d
    .restart local v0    # "bytes":[B
    goto :goto_0

    #@5e
    .line 502
    .end local v0    # "bytes":[B
    .end local v1    # "in":Lsun/security/util/DerInputStream;
    :cond_4
    return-object v0
.end method

.method public getOriginalEncodedForm()[B
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 842
    iget-object v1, p0, Lsun/security/util/DerValue;->originalEncodedForm:[B

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 843
    iget-object v0, p0, Lsun/security/util/DerValue;->originalEncodedForm:[B

    #@7
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [B

    #@d
    .line 842
    :cond_0
    return-object v0
.end method

.method public getPositiveBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 536
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 537
    new-instance v0, Ljava/io/IOException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "DerValue.getBigInteger, not an int "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 538
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@23
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@25
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@28
    move-result v1

    #@29
    const/4 v2, 0x1

    #@2a
    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public getPrintableString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 659
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v1, 0x13

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 660
    new-instance v0, Ljava/io/IOException;

    #@8
    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "DerValue.getPrintableString, not a string "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 660
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 663
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@24
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, "ASCII"

    #@2b
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@2e
    return-object v0
.end method

.method public getT61String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 672
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v1, 0x14

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 673
    new-instance v0, Ljava/io/IOException;

    #@8
    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "DerValue.getT61String, not T61 "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 673
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 676
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@24
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, "ISO-8859-1"

    #@2b
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@2e
    return-object v0
.end method

.method public final getTag()B
    .locals 1

    #@0
    .prologue
    .line 431
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    return v0
.end method

.method public getUTCTime()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 742
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v1, 0x17

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 743
    new-instance v0, Ljava/io/IOException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "DerValue.getUTCTime, not a UtcTime: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 745
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@24
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@26
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@29
    move-result v1

    #@2a
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getUTCTime(I)Ljava/util/Date;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public getUTF8String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 715
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v1, 0xc

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 716
    new-instance v0, Ljava/io/IOException;

    #@8
    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "DerValue.getUTF8String, not UTF-8 "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 716
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 719
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@24
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, "UTF8"

    #@2b
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@2e
    return-object v0
.end method

.method public getUnalignedBitString()Lsun/security/util/BitArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 573
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 574
    new-instance v0, Ljava/io/IOException;

    #@7
    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 574
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 577
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@23
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getUnalignedBitString()Lsun/security/util/BitArray;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public getUnalignedBitString(Z)Lsun/security/util/BitArray;
    .locals 3
    .param p1, "tagImplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 631
    if-nez p1, :cond_0

    #@2
    .line 632
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@4
    const/4 v1, 0x3

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 633
    new-instance v0, Ljava/io/IOException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 634
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@17
    .line 633
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 636
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@25
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getUnalignedBitString()Lsun/security/util/BitArray;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 954
    invoke-virtual {p0}, Lsun/security/util/DerValue;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isApplication()Z
    .locals 2

    #@0
    .prologue
    .line 178
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    and-int/lit16 v0, v0, 0xc0

    #@4
    const/16 v1, 0x40

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isConstructed()Z
    .locals 2

    #@0
    .prologue
    .line 199
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    and-int/lit8 v0, v0, 0x20

    #@4
    const/16 v1, 0x20

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isConstructed(B)Z
    .locals 2
    .param p1, "constructedTag"    # B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 205
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isConstructed()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 206
    return v0

    #@8
    .line 208
    :cond_0
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    #@a
    and-int/lit8 v1, v1, 0x1f

    #@c
    if-ne v1, p1, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    :cond_1
    return v0
.end method

.method public isContextSpecific()Z
    .locals 2

    #@0
    .prologue
    .line 184
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    and-int/lit16 v0, v0, 0xc0

    #@4
    const/16 v1, 0x80

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isContextSpecific(B)Z
    .locals 2
    .param p1, "cntxtTag"    # B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 190
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 191
    return v0

    #@8
    .line 193
    :cond_0
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    #@a
    and-int/lit8 v1, v1, 0x1f

    #@c
    if-ne v1, p1, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    :cond_1
    return v0
.end method

.method isPrivate()Z
    .locals 2

    #@0
    .prologue
    .line 196
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    and-int/lit16 v0, v0, 0xc0

    #@4
    const/16 v1, 0xc0

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isUniversal()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 173
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    #@3
    and-int/lit16 v1, v1, 0xc0

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 876
    iget v0, p0, Lsun/security/util/DerValue;->length:I

    #@2
    return v0
.end method

.method public resetTag(B)V
    .locals 0
    .param p1, "tag"    # B

    #@0
    .prologue
    .line 945
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    .line 944
    return-void
.end method

.method public toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 853
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 855
    .local v0, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    #@8
    .line 856
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@a
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->reset()V

    #@d
    .line 857
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public toDerInputStream()Lsun/security/util/DerInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 867
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v1, 0x30

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@8
    const/16 v1, 0x31

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 868
    :cond_0
    new-instance v0, Lsun/security/util/DerInputStream;

    #@e
    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    #@10
    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    #@13
    return-object v0

    #@14
    .line 869
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "toDerInputStream rejects tag type "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 820
    :try_start_0
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 821
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "\""

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, "\""

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    return-object v2

    #@22
    .line 823
    :cond_0
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@24
    const/4 v3, 0x5

    #@25
    if-ne v2, v3, :cond_1

    #@27
    .line 824
    const-string/jumbo v2, "[DerValue, null]"

    #@2a
    return-object v2

    #@2b
    .line 825
    :cond_1
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    #@2d
    const/4 v3, 0x6

    #@2e
    if-ne v2, v3, :cond_2

    #@30
    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v3, "OID."

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    return-object v2

    #@49
    .line 830
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v3, "[DerValue, tag = "

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    iget-byte v3, p0, Lsun/security/util/DerValue;->tag:B

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    .line 831
    const-string/jumbo v3, ", length = "

    #@5e
    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    .line 831
    iget v3, p0, Lsun/security/util/DerValue;->length:I

    #@64
    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    .line 831
    const-string/jumbo v3, "]"

    #@6b
    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@72
    move-result-object v2

    #@73
    return-object v2

    #@74
    .line 832
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@75
    .line 833
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@77
    const-string/jumbo v3, "misformatted DER value"

    #@7a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v2
.end method
