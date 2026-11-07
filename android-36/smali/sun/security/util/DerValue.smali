.class public Lsun/security/util/DerValue;
.super Ljava/lang/Object;
.source "DerValue.java"


# static fields
.field public static final blacklist TAG_APPLICATION:B = 0x40t

.field public static final blacklist TAG_CONTEXT:B = -0x80t

.field public static final blacklist TAG_PRIVATE:B = -0x40t

.field public static final blacklist TAG_UNIVERSAL:B = 0x0t

.field public static final blacklist tag_BMPString:B = 0x1et

.field public static final blacklist tag_BitString:B = 0x3t

.field public static final blacklist tag_Boolean:B = 0x1t

.field public static final blacklist tag_Enumerated:B = 0xat

.field public static final blacklist tag_GeneralString:B = 0x1bt

.field public static final blacklist tag_GeneralizedTime:B = 0x18t

.field public static final blacklist tag_IA5String:B = 0x16t

.field public static final blacklist tag_Integer:B = 0x2t

.field public static final blacklist tag_Null:B = 0x5t

.field public static final blacklist tag_ObjectId:B = 0x6t

.field public static final blacklist tag_OctetString:B = 0x4t

.field public static final blacklist tag_PrintableString:B = 0x13t

.field public static final blacklist tag_Sequence:B = 0x30t

.field public static final blacklist tag_SequenceOf:B = 0x30t

.field public static final blacklist tag_Set:B = 0x31t

.field public static final blacklist tag_SetOf:B = 0x31t

.field public static final blacklist tag_T61String:B = 0x14t

.field public static final blacklist tag_UTF8String:B = 0xct

.field public static final blacklist tag_UniversalString:B = 0x1ct

.field public static final blacklist tag_UtcTime:B = 0x17t


# instance fields
.field protected greylist buffer:Lsun/security/util/DerInputBuffer;

.field public final greylist data:Lsun/security/util/DerInputStream;

.field private greylist-max-o length:I

.field private greylist-max-o originalEncodedForm:[B

.field public greylist tag:B


# direct methods
.method public constructor blacklist <init>(BLjava/lang/String;)V
    .registers 4
    .param p1, "stringTag"    # B
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-direct {p0, p1, p2}, Lsun/security/util/DerValue;->init(BLjava/lang/String;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 235
    return-void
.end method

.method public constructor greylist <init>(B[B)V
    .registers 5
    .param p1, "tag"    # B
    .param p2, "data"    # [B

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    .line 245
    new-instance v0, Lsun/security/util/DerInputBuffer;

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 246
    array-length v0, p2

    iput v0, p0, Lsun/security/util/DerValue;->length:I

    .line 247
    new-instance v0, Lsun/security/util/DerInputStream;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 248
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->mark(I)V

    .line 249
    return-void
.end method

.method public constructor greylist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 338
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, 0x1

    .line 218
    .local v0, "isPrintableString":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v2

    if-nez v2, :cond_17

    .line 220
    const/4 v0, 0x0

    .line 221
    goto :goto_1a

    .line 218
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 225
    .end local v1    # "i":I
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_1f

    const/16 v1, 0x13

    goto :goto_21

    :cond_1f
    const/16 v1, 0xc

    :goto_21
    invoke-direct {p0, v1, p1}, Lsun/security/util/DerValue;->init(BLjava/lang/String;)Lsun/security/util/DerInputStream;

    move-result-object v1

    iput-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 226
    return-void
.end method

.method constructor greylist-max-o <init>(Lsun/security/util/DerInputBuffer;Z)V
    .registers 14
    .param p1, "in"    # Lsun/security/util/DerInputBuffer;
    .param p2, "originalEncodedFormRetained"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->getPos()I

    move-result v0

    .line 261
    .local v0, "startPosInInput":I
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    .line 262
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 263
    .local v1, "lenByte":B
    invoke-static {v1, p1}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v2

    iput v2, p0, Lsun/security/util/DerValue;->length:I

    .line 264
    iget v2, p0, Lsun/security/util/DerValue;->length:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_80

    .line 265
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v2

    .line 266
    .local v2, "inbuf":Lsun/security/util/DerInputBuffer;
    invoke-virtual {v2}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v3

    .line 267
    .local v3, "readLen":I
    const/4 v4, 0x2

    .line 268
    .local v4, "offset":I
    add-int v5, v3, v4

    new-array v5, v5, [B

    .line 269
    .local v5, "indefData":[B
    const/4 v6, 0x0

    iget-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    aput-byte v7, v5, v6

    .line 270
    const/4 v6, 0x1

    aput-byte v1, v5, v6

    .line 271
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 272
    .local v6, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v6, v5, v4, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 273
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 274
    new-instance v7, Lsun/security/util/DerIndefLenConverter;

    invoke-direct {v7}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    .line 275
    .local v7, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance v8, Lsun/security/util/DerInputBuffer;

    invoke-virtual {v7, v5}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    .line 276
    .end local v2    # "inbuf":Lsun/security/util/DerInputBuffer;
    .local v8, "inbuf":Lsun/security/util/DerInputBuffer;
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v8}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v9

    if-ne v2, v9, :cond_78

    .line 279
    invoke-static {v8}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v2

    iput v2, p0, Lsun/security/util/DerValue;->length:I

    .line 280
    invoke-virtual {v8}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v2

    iput-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 281
    iget-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget v9, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {v2, v9}, Lsun/security/util/DerInputBuffer;->truncate(I)V

    .line 282
    new-instance v2, Lsun/security/util/DerInputStream;

    iget-object v9, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v2, v9}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    iput-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 286
    iget v2, p0, Lsun/security/util/DerValue;->length:I

    add-int/2addr v2, v4

    int-to-long v9, v2

    invoke-virtual {p1, v9, v10}, Lsun/security/util/DerInputBuffer;->skip(J)J

    .line 287
    .end local v3    # "readLen":I
    .end local v4    # "offset":I
    .end local v5    # "indefData":[B
    .end local v6    # "dis":Ljava/io/DataInputStream;
    .end local v7    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v8    # "inbuf":Lsun/security/util/DerInputBuffer;
    goto :goto_9c

    .line 277
    .restart local v3    # "readLen":I
    .restart local v4    # "offset":I
    .restart local v5    # "indefData":[B
    .restart local v6    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .restart local v8    # "inbuf":Lsun/security/util/DerInputBuffer;
    :cond_78
    new-instance v2, Ljava/io/IOException;

    const-string v9, "Indefinite length encoding not supported"

    invoke-direct {v2, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    .end local v3    # "readLen":I
    .end local v4    # "offset":I
    .end local v5    # "indefData":[B
    .end local v6    # "dis":Ljava/io/DataInputStream;
    .end local v7    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v8    # "inbuf":Lsun/security/util/DerInputBuffer;
    :cond_80
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v2

    iput-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 290
    iget-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget v3, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {v2, v3}, Lsun/security/util/DerInputBuffer;->truncate(I)V

    .line 291
    new-instance v2, Lsun/security/util/DerInputStream;

    iget-object v3, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v2, v3}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    iput-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 293
    iget v2, p0, Lsun/security/util/DerValue;->length:I

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lsun/security/util/DerInputBuffer;->skip(J)J

    .line 296
    :goto_9c
    if-eqz p2, :cond_a9

    .line 297
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->getPos()I

    move-result v2

    sub-int/2addr v2, v0

    .line 298
    .local v2, "consumed":I
    invoke-virtual {p1, v0, v2}, Lsun/security/util/DerInputBuffer;->getSlice(II)[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/util/DerValue;->originalEncodedForm:[B

    .line 301
    .end local v2    # "consumed":I
    :cond_a9
    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 4
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 312
    return-void
.end method

.method public constructor greylist <init>([BII)V
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 325
    return-void
.end method

.method private greylist-max-o append([B[B)[B
    .registers 7
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .line 469
    if-nez p1, :cond_3

    .line 470
    return-object p2

    .line 472
    :cond_3
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 473
    .local v0, "ret":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    array-length v1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    return-object v0
.end method

.method public static greylist createTag(BZB)B
    .registers 5
    .param p0, "tagClass"    # B
    .param p1, "form"    # Z
    .param p2, "val"    # B

    .line 937
    or-int v0, p0, p2

    int-to-byte v0, v0

    .line 938
    .local v0, "tag":B
    if-eqz p1, :cond_8

    .line 939
    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 941
    :cond_8
    return v0
.end method

.method private static greylist-max-o doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z
    .registers 6
    .param p0, "d1"    # Lsun/security/util/DerValue;
    .param p1, "d2"    # Lsun/security/util/DerValue;

    .line 807
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v0

    .line 808
    :try_start_3
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    .line 809
    :try_start_6
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->reset()V

    .line 810
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->reset()V

    .line 811
    iget-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v3, p1, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2, v3}, Lsun/security/util/DerInputBuffer;->equals(Lsun/security/util/DerInputBuffer;)Z

    move-result v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1b

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1e

    return v2

    .line 812
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    .end local p0    # "d1":Lsun/security/util/DerValue;
    .end local p1    # "d2":Lsun/security/util/DerValue;
    :try_start_1d
    throw v2

    .line 813
    .restart local p0    # "d1":Lsun/security/util/DerValue;
    .restart local p1    # "d2":Lsun/security/util/DerValue;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private greylist-max-o init(BLjava/lang/String;)Lsun/security/util/DerInputStream;
    .registers 7
    .param p1, "stringTag"    # B
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, "enc":Ljava/lang/String;
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    .line 345
    sparse-switch p1, :sswitch_data_36

    .line 363
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported DER string type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :sswitch_e
    const-string v0, "UnicodeBigUnmarked"

    .line 356
    goto :goto_1a

    .line 352
    :sswitch_11
    const-string v0, "ISO-8859-1"

    .line 353
    goto :goto_1a

    .line 349
    :sswitch_14
    const-string v0, "ASCII"

    .line 350
    goto :goto_1a

    .line 358
    :sswitch_17
    const-string v0, "UTF8"

    .line 359
    nop

    .line 366
    :goto_1a
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 367
    .local v1, "buf":[B
    array-length v2, v1

    iput v2, p0, Lsun/security/util/DerValue;->length:I

    .line 368
    new-instance v2, Lsun/security/util/DerInputBuffer;

    invoke-direct {v2, v1}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 369
    new-instance v2, Lsun/security/util/DerInputStream;

    iget-object v3, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v2, v3}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    .line 370
    .local v2, "result":Lsun/security/util/DerInputStream;
    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lsun/security/util/DerInputStream;->mark(I)V

    .line 371
    return-object v2

    :sswitch_data_36
    .sparse-switch
        0xc -> :sswitch_17
        0x13 -> :sswitch_14
        0x14 -> :sswitch_11
        0x16 -> :sswitch_14
        0x1b -> :sswitch_14
        0x1e -> :sswitch_e
    .end sparse-switch
.end method

.method private greylist-max-o init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;
    .registers 12
    .param p1, "fullyBuffered"    # Z
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    .line 381
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    .line 382
    .local v0, "lenByte":B
    invoke-static {v0, p2}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lsun/security/util/DerValue;->length:I

    .line 383
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_59

    .line 384
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 385
    .local v1, "readLen":I
    const/4 v2, 0x2

    .line 386
    .local v2, "offset":I
    add-int v4, v1, v2

    new-array v4, v4, [B

    .line 387
    .local v4, "indefData":[B
    const/4 v5, 0x0

    iget-byte v6, p0, Lsun/security/util/DerValue;->tag:B

    aput-byte v6, v4, v5

    .line 388
    aput-byte v0, v4, v3

    .line 389
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 390
    .local v5, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v5, v4, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 391
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 392
    new-instance v6, Lsun/security/util/DerIndefLenConverter;

    invoke-direct {v6}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    .line 393
    .local v6, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6, v4}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p2, v7

    .line 394
    iget-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ne v7, v8, :cond_51

    .line 397
    invoke-static {p2}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v7

    iput v7, p0, Lsun/security/util/DerValue;->length:I

    goto :goto_59

    .line 395
    :cond_51
    new-instance v3, Ljava/io/IOException;

    const-string v7, "Indefinite length encoding not supported"

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 400
    .end local v1    # "readLen":I
    .end local v2    # "offset":I
    .end local v4    # "indefData":[B
    .end local v5    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "derIn":Lsun/security/util/DerIndefLenConverter;
    :cond_59
    :goto_59
    if-eqz p1, :cond_6c

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v1

    iget v2, p0, Lsun/security/util/DerValue;->length:I

    if-ne v1, v2, :cond_64

    goto :goto_6c

    .line 401
    :cond_64
    new-instance v1, Ljava/io/IOException;

    const-string v2, "extra data given to DerValue constructor"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    :cond_6c
    :goto_6c
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    invoke-static {p2, v1, v3}, Lsun/misc/IOUtils;->readFully(Ljava/io/InputStream;IZ)[B

    move-result-object v1

    .line 405
    .local v1, "bytes":[B
    new-instance v2, Lsun/security/util/DerInputBuffer;

    invoke-direct {v2, v1}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 406
    new-instance v2, Lsun/security/util/DerInputStream;

    iget-object v3, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v2, v3}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v2
.end method

.method public static greylist isPrintableStringChar(C)Z
    .registers 3
    .param p0, "ch"    # C

    .line 903
    const/16 v0, 0x61

    const/4 v1, 0x1

    if-lt p0, v0, :cond_9

    const/16 v0, 0x7a

    if-le p0, v0, :cond_19

    :cond_9
    const/16 v0, 0x41

    if-lt p0, v0, :cond_11

    const/16 v0, 0x5a

    if-le p0, v0, :cond_19

    :cond_11
    const/16 v0, 0x30

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1a

    .line 905
    :cond_19
    return v1

    .line 907
    :cond_1a
    sparse-switch p0, :sswitch_data_20

    .line 922
    const/4 v0, 0x0

    return v0

    .line 920
    :sswitch_1f
    return v1

    :sswitch_data_20
    .sparse-switch
        0x20 -> :sswitch_1f
        0x27 -> :sswitch_1f
        0x28 -> :sswitch_1f
        0x29 -> :sswitch_1f
        0x2b -> :sswitch_1f
        0x2c -> :sswitch_1f
        0x2d -> :sswitch_1f
        0x2e -> :sswitch_1f
        0x2f -> :sswitch_1f
        0x3a -> :sswitch_1f
        0x3d -> :sswitch_1f
        0x3f -> :sswitch_1f
    .end sparse-switch
.end method


# virtual methods
.method public greylist encode(Lsun/security/util/DerOutputStream;)V
    .registers 6
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 415
    iget v0, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 417
    iget v0, p0, Lsun/security/util/DerValue;->length:I

    if-lez v0, :cond_34

    .line 418
    iget v0, p0, Lsun/security/util/DerValue;->length:I

    new-array v0, v0, [B

    .line 420
    .local v0, "value":[B
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v1

    .line 421
    :try_start_15
    iget-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Lsun/security/util/DerInputBuffer;->reset()V

    .line 422
    iget-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2, v0}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v2

    iget v3, p0, Lsun/security/util/DerValue;->length:I

    if-ne v2, v3, :cond_29

    .line 425
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 426
    monitor-exit v1

    goto :goto_34

    .line 423
    :cond_29
    new-instance v2, Ljava/io/IOException;

    const-string v3, "short DER value read (encode)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "value":[B
    .end local p0    # "this":Lsun/security/util/DerValue;
    .end local p1    # "out":Lsun/security/util/DerOutputStream;
    throw v2

    .line 426
    .restart local v0    # "value":[B
    .restart local p0    # "this":Lsun/security/util/DerValue;
    .restart local p1    # "out":Lsun/security/util/DerOutputStream;
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_31

    throw v2

    .line 428
    .end local v0    # "value":[B
    :cond_34
    :goto_34
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 772
    instance-of v0, p1, Lsun/security/util/DerValue;

    if-eqz v0, :cond_c

    .line 773
    move-object v0, p1

    check-cast v0, Lsun/security/util/DerValue;

    invoke-virtual {p0, v0}, Lsun/security/util/DerValue;->equals(Lsun/security/util/DerValue;)Z

    move-result v0

    return v0

    .line 775
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist equals(Lsun/security/util/DerValue;)Z
    .registers 5
    .param p1, "other"    # Lsun/security/util/DerValue;

    .line 786
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 787
    return v0

    .line 789
    :cond_4
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    if-eq v1, v2, :cond_c

    .line 790
    const/4 v0, 0x0

    return v0

    .line 792
    :cond_c
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-ne v1, v2, :cond_13

    .line 793
    return v0

    .line 797
    :cond_13
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 798
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-le v0, v1, :cond_26

    .line 799
    invoke-static {p0, p1}, Lsun/security/util/DerValue;->doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z

    move-result v0

    goto :goto_2a

    .line 800
    :cond_26
    invoke-static {p1, p0}, Lsun/security/util/DerValue;->doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z

    move-result v0

    .line 797
    :goto_2a
    return v0
.end method

.method public greylist getAsString()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    .line 591
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getUTF8String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 592
    :cond_b
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x13

    if-ne v0, v1, :cond_16

    .line 593
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getPrintableString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 594
    :cond_16
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x14

    if-ne v0, v1, :cond_21

    .line 595
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getT61String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 596
    :cond_21
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2c

    .line 597
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 602
    :cond_2c
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_37

    .line 603
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getBMPString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 604
    :cond_37
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_42

    .line 605
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getGeneralString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 607
    :cond_42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBMPString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_12

    .line 709
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "UnicodeBigUnmarked"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 704
    :cond_12
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBMPString, not BMP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getBigInteger()Ljava/math/BigInteger;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 529
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 528
    :cond_13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBigInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getBitString()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 568
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getBitString()[B

    move-result-object v0

    return-object v0

    .line 565
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBitString(Z)[B
    .registers 5
    .param p1, "tagImplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    if-nez p1, :cond_23

    .line 619
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    goto :goto_23

    .line 620
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_23
    :goto_23
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getBitString()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBoolean()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 447
    iget v0, p0, Lsun/security/util/DerValue;->length:I

    if-ne v0, v1, :cond_14

    .line 451
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    if-eqz v0, :cond_12

    .line 452
    return v1

    .line 454
    :cond_12
    const/4 v0, 0x0

    return v0

    .line 448
    :cond_14
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBoolean, invalid length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_2f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBoolean, not a BOOLEAN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist getData()Lsun/security/util/DerInputStream;
    .registers 2

    .line 431
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    return-object v0
.end method

.method public greylist getDataBytes()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    iget v0, p0, Lsun/security/util/DerValue;->length:I

    new-array v0, v0, [B

    .line 649
    .local v0, "retVal":[B
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v1

    .line 650
    :try_start_7
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->reset()V

    .line 651
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2, v0}, Lsun/security/util/DerInputStream;->getBytes([B)V

    .line 652
    monitor-exit v1

    .line 653
    return-object v0

    .line 652
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v2
.end method

.method public blacklist getEnumerated()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xa

    if-ne v0, v1, :cond_13

    .line 555
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0

    .line 552
    :cond_13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getEnumerated, incorrect tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getGeneralString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 733
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_12

    .line 737
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 734
    :cond_12
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getGeneralString, not GeneralString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getGeneralizedTime()Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x18

    if-ne v0, v1, :cond_13

    .line 762
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getGeneralizedTime(I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 759
    :cond_13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getGeneralizedTime, not a GeneralizedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getIA5String()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x16

    if-ne v0, v1, :cond_12

    .line 693
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 690
    :cond_12
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getIA5String, not IA5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getInteger()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 518
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0

    .line 516
    :cond_12
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getOID()Lsun/security/util/ObjectIdentifier;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    .line 465
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v0

    .line 464
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getOID, not an OID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getOctetString()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_27

    invoke-virtual {p0, v1}, Lsun/security/util/DerValue;->isConstructed(B)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_27

    .line 488
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getOctetString, not an Octet String: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_27
    :goto_27
    iget v0, p0, Lsun/security/util/DerValue;->length:I

    new-array v0, v0, [B

    .line 494
    .local v0, "bytes":[B
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    if-nez v1, :cond_30

    .line 495
    return-object v0

    .line 497
    :cond_30
    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v1, v0}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v1

    iget v2, p0, Lsun/security/util/DerValue;->length:I

    if-ne v1, v2, :cond_56

    .line 499
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 500
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-direct {v1, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 501
    .local v1, "in":Lsun/security/util/DerInputStream;
    const/4 v0, 0x0

    .line 502
    :goto_46
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_55

    .line 503
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lsun/security/util/DerValue;->append([B[B)[B

    move-result-object v0

    goto :goto_46

    .line 506
    .end local v1    # "in":Lsun/security/util/DerInputStream;
    :cond_55
    return-object v0

    .line 498
    :cond_56
    new-instance v1, Ljava/io/IOException;

    const-string v2, "short read on DerValue buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getOriginalEncodedForm()[B
    .registers 2

    .line 847
    iget-object v0, p0, Lsun/security/util/DerValue;->originalEncodedForm:[B

    if-eqz v0, :cond_d

    .line 848
    iget-object v0, p0, Lsun/security/util/DerValue;->originalEncodedForm:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 847
    :goto_e
    return-object v0
.end method

.method public greylist-max-r getPositiveBigInteger()Ljava/math/BigInteger;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 542
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 541
    :cond_13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBigInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPrintableString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x13

    if-ne v0, v1, :cond_12

    .line 667
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 664
    :cond_12
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getPrintableString, not a string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getT61String()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x14

    if-ne v0, v1, :cond_12

    .line 680
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 677
    :cond_12
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getT61String, not T61 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist getTag()B
    .registers 2

    .line 435
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    return v0
.end method

.method public blacklist getUTCTime()Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 746
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x17

    if-ne v0, v1, :cond_13

    .line 749
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getUTCTime(I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 747
    :cond_13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getUTCTime, not a UtcTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUTF8String()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_12

    .line 723
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 720
    :cond_12
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getUTF8String, not UTF-8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getUnalignedBitString()Lsun/security/util/BitArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 581
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v0

    return-object v0

    .line 578
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUnalignedBitString(Z)Lsun/security/util/BitArray;
    .registers 5
    .param p1, "tagImplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    if-nez p1, :cond_23

    .line 636
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    goto :goto_23

    .line 637
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_23
    :goto_23
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 960
    invoke-virtual {p0}, Lsun/security/util/DerValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isApplication()Z
    .registers 3

    .line 180
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist isConstructed()Z
    .registers 3

    .line 201
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isConstructed(B)Z
    .registers 4
    .param p1, "constructedTag"    # B

    .line 207
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 208
    return v1

    .line 210
    :cond_8
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v0, v0, 0x1f

    if-ne v0, p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public greylist isContextSpecific()Z
    .registers 3

    .line 186
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist isContextSpecific(B)Z
    .registers 4
    .param p1, "cntxtTag"    # B

    .line 192
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 193
    return v1

    .line 195
    :cond_8
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v0, v0, 0x1f

    if-ne v0, p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method greylist-max-o isPrivate()Z
    .registers 3

    .line 198
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xc0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isUniversal()Z
    .registers 2

    .line 175
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist length()I
    .registers 2

    .line 882
    iget v0, p0, Lsun/security/util/DerValue;->length:I

    return v0
.end method

.method public greylist resetTag(B)V
    .registers 2
    .param p1, "tag"    # B

    .line 951
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    .line 952
    return-void
.end method

.method public greylist toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 859
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 861
    .local v0, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    .line 862
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->reset()V

    .line 863
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public greylist toDerInputStream()Lsun/security/util/DerInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 873
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_28

    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_d

    goto :goto_28

    .line 875
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toDerInputStream rejects tag type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_28
    :goto_28
    new-instance v0, Lsun/security/util/DerInputStream;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 824
    const-string v0, "\""

    :try_start_2
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_1e

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 827
    :cond_1e
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v2, 0x5

    if-ne v0, v2, :cond_26

    .line 828
    const-string v0, "[DerValue, null]"

    return-object v0

    .line 829
    :cond_26
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v2, 0x6

    if-ne v0, v2, :cond_43

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OID."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 834
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DerValue, tag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", length = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6a} :catch_6b

    return-object v0

    .line 836
    .end local v1    # "str":Ljava/lang/String;
    :catch_6b
    move-exception v0

    .line 837
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "misformatted DER value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
