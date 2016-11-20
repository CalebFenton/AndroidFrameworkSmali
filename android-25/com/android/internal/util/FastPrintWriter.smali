.class public Lcom/android/internal/util/FastPrintWriter;
.super Ljava/io/PrintWriter;
.source "FastPrintWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FastPrintWriter$DummyWriter;
    }
.end annotation


# instance fields
.field private final mAutoFlush:Z

.field private final mBufferLen:I

.field private final mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mIoError:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mPrinter:Landroid/util/Printer;

.field private final mSeparator:Ljava/lang/String;

.field private final mText:[C

.field private final mWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Landroid/util/Printer;)V
    .locals 1
    .param p1, "pr"    # Landroid/util/Printer;

    #@0
    .prologue
    .line 199
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;I)V

    #@5
    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/util/Printer;I)V
    .locals 3
    .param p1, "pr"    # Landroid/util/Printer;
    .param p2, "bufferLen"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 216
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    #@4
    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$DummyWriter;)V

    #@7
    invoke-direct {p0, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@a
    .line 217
    if-nez p1, :cond_0

    #@c
    .line 218
    new-instance v0, Ljava/lang/NullPointerException;

    #@e
    const-string/jumbo v1, "pr is null"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 220
    :cond_0
    iput p2, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    #@17
    .line 221
    new-array v0, p2, [C

    #@19
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@1b
    .line 222
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@1d
    .line 223
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@1f
    .line 224
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@21
    .line 225
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    #@23
    .line 226
    iput-boolean v2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    #@25
    .line 227
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    #@2b
    .line 228
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    #@2e
    .line 215
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    const/16 v1, 0x2000

    #@3
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    #@6
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    #@0
    .prologue
    .line 83
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    #@5
    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z
    .param p3, "bufferLen"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 104
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    #@3
    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$DummyWriter;)V

    #@6
    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@9
    .line 105
    if-nez p1, :cond_0

    #@b
    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v1, "out is null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 108
    :cond_0
    iput p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    #@16
    .line 109
    new-array v0, p3, [C

    #@18
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@1a
    .line 110
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    #@1c
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@22
    .line 111
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@24
    .line 112
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@26
    .line 113
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    #@28
    .line 114
    iput-boolean p2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    #@2a
    .line 115
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    #@30
    .line 116
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    #@33
    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "wr"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 134
    const/4 v0, 0x0

    #@1
    const/16 v1, 0x2000

    #@3
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@6
    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 1
    .param p1, "wr"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z

    #@0
    .prologue
    .line 152
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@5
    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZI)V
    .locals 2
    .param p1, "wr"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z
    .param p3, "bufferLen"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 173
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    #@3
    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$DummyWriter;)V

    #@6
    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@9
    .line 174
    if-nez p1, :cond_0

    #@b
    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v1, "wr is null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 177
    :cond_0
    iput p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    #@16
    .line 178
    new-array v0, p3, [C

    #@18
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@1a
    .line 179
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@1c
    .line 180
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@1e
    .line 181
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@20
    .line 182
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    #@22
    .line 183
    iput-boolean p2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    #@24
    .line 184
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    #@2a
    .line 185
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    #@2d
    .line 172
    return-void
.end method

.method private appendLocked(C)V
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@2
    .line 283
    .local v0, "pos":I
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 284
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    #@b
    .line 285
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@d
    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@f
    aput-char p1, v1, v0

    #@11
    .line 288
    add-int/lit8 v1, v0, 0x1

    #@13
    iput v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@15
    .line 281
    return-void
.end method

.method private appendLocked(Ljava/lang/String;II)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 292
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    #@2
    .line 293
    .local v0, "BUFFER_LEN":I
    if-le p3, v0, :cond_2

    #@4
    .line 294
    add-int v1, p2, p3

    #@6
    .line 295
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    #@8
    .line 296
    add-int v2, p2, v0

    #@a
    .line 297
    .local v2, "next":I
    if-ge v2, v1, :cond_0

    #@c
    move v4, v0

    #@d
    :goto_1
    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    #@10
    .line 298
    move p2, v2

    #@11
    goto :goto_0

    #@12
    .line 297
    :cond_0
    sub-int v4, v1, p2

    #@14
    goto :goto_1

    #@15
    .line 300
    .end local v2    # "next":I
    :cond_1
    return-void

    #@16
    .line 302
    .end local v1    # "end":I
    :cond_2
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@18
    .line 303
    .local v3, "pos":I
    add-int v4, v3, p3

    #@1a
    if-le v4, v0, :cond_3

    #@1c
    .line 304
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    #@1f
    .line 305
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@21
    .line 307
    :cond_3
    add-int v4, p2, p3

    #@23
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@25
    invoke-virtual {p1, p2, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    #@28
    .line 308
    add-int v4, v3, p3

    #@2a
    iput v4, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@2c
    .line 291
    return-void
.end method

.method private appendLocked([CII)V
    .locals 5
    .param p1, "buf"    # [C
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    #@2
    .line 313
    .local v0, "BUFFER_LEN":I
    if-le p3, v0, :cond_2

    #@4
    .line 314
    add-int v1, p2, p3

    #@6
    .line 315
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    #@8
    .line 316
    add-int v2, p2, v0

    #@a
    .line 317
    .local v2, "next":I
    if-ge v2, v1, :cond_0

    #@c
    move v4, v0

    #@d
    :goto_1
    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V

    #@10
    .line 318
    move p2, v2

    #@11
    goto :goto_0

    #@12
    .line 317
    :cond_0
    sub-int v4, v1, p2

    #@14
    goto :goto_1

    #@15
    .line 320
    .end local v2    # "next":I
    :cond_1
    return-void

    #@16
    .line 322
    .end local v1    # "end":I
    :cond_2
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@18
    .line 323
    .local v3, "pos":I
    add-int v4, v3, p3

    #@1a
    if-le v4, v0, :cond_3

    #@1c
    .line 324
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    #@1f
    .line 325
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@21
    .line 327
    :cond_3
    iget-object v4, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@23
    invoke-static {p1, p2, v4, v3, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@26
    .line 328
    add-int v4, v3, p3

    #@28
    iput v4, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@2a
    .line 311
    return-void
.end method

.method private flushBytesLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 332
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 334
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@a
    move-result v0

    #@b
    .local v0, "position":I
    if-lez v0, :cond_0

    #@d
    .line 335
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@f
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@12
    .line 336
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@14
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@16
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    #@1d
    .line 337
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@1f
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@22
    .line 331
    .end local v0    # "position":I
    :cond_0
    return-void
.end method

.method private flushLocked()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 344
    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@4
    if-lez v5, :cond_3

    #@6
    .line 345
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@8
    if-eqz v5, :cond_4

    #@a
    .line 346
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@c
    iget v6, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@e
    invoke-static {v5, v9, v6}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@11
    move-result-object v0

    #@12
    .line 347
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@14
    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@16
    invoke-virtual {v5, v0, v6, v7}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@19
    move-result-object v3

    #@1a
    .line 348
    .local v3, "result":Ljava/nio/charset/CoderResult;
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    #@1c
    if-nez v5, :cond_1

    #@1e
    .line 349
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 350
    new-instance v5, Ljava/io/IOException;

    #@26
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v5

    #@2e
    .line 351
    :cond_0
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_1

    #@34
    .line 352
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushBytesLocked()V

    #@37
    .line 353
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@39
    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@3b
    invoke-virtual {v5, v0, v6, v7}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@3e
    move-result-object v3

    #@3f
    goto :goto_0

    #@40
    .line 358
    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    #@42
    if-nez v5, :cond_2

    #@44
    .line 359
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushBytesLocked()V

    #@47
    .line 360
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@49
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    #@4c
    .line 381
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v3    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    :goto_1
    iput v9, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@4e
    .line 342
    :cond_3
    return-void

    #@4f
    .line 362
    :cond_4
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@51
    if-eqz v5, :cond_5

    #@53
    .line 363
    iget-boolean v5, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    #@55
    if-nez v5, :cond_2

    #@57
    .line 364
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@59
    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@5b
    iget v7, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@5d
    invoke-virtual {v5, v6, v9, v7}, Ljava/io/Writer;->write([CII)V

    #@60
    .line 365
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@62
    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    #@65
    goto :goto_1

    #@66
    .line 368
    :cond_5
    const/4 v2, 0x0

    #@67
    .line 369
    .local v2, "nonEolOff":I
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    #@69
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@6c
    move-result v4

    #@6d
    .line 370
    .local v4, "sepLen":I
    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@6f
    if-ge v4, v5, :cond_6

    #@71
    move v1, v4

    #@72
    .line 371
    .local v1, "len":I
    :goto_2
    if-ge v2, v1, :cond_7

    #@74
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@76
    iget v6, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@78
    add-int/lit8 v6, v6, -0x1

    #@7a
    sub-int/2addr v6, v2

    #@7b
    aget-char v5, v5, v6

    #@7d
    .line 372
    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    #@7f
    iget-object v7, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    #@81
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@84
    move-result v7

    #@85
    add-int/lit8 v7, v7, -0x1

    #@87
    sub-int/2addr v7, v2

    #@88
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    #@8b
    move-result v6

    #@8c
    .line 371
    if-ne v5, v6, :cond_7

    #@8e
    .line 373
    add-int/lit8 v2, v2, 0x1

    #@90
    goto :goto_2

    #@91
    .line 370
    .end local v1    # "len":I
    :cond_6
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@93
    .restart local v1    # "len":I
    goto :goto_2

    #@94
    .line 375
    :cond_7
    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@96
    if-lt v2, v5, :cond_8

    #@98
    .line 376
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    #@9a
    const-string/jumbo v6, ""

    #@9d
    invoke-interface {v5, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@a0
    goto :goto_1

    #@a1
    .line 378
    :cond_8
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    #@a3
    new-instance v6, Ljava/lang/String;

    #@a5
    iget-object v7, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@a7
    iget v8, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@a9
    sub-int/2addr v8, v2

    #@aa
    invoke-direct {v6, v7, v9, v8}, Ljava/lang/String;-><init>([CII)V

    #@ad
    invoke-interface {v5, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@b0
    goto :goto_1
.end method

.method private final initDefaultEncoder()V
    .locals 2

    #@0
    .prologue
    .line 276
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@a
    .line 277
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@c
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@e
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@11
    .line 278
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@13
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@15
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@18
    .line 275
    return-void
.end method

.method private final initEncoder(Ljava/lang/String;)V
    .locals 3
    .param p1, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 233
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 237
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@c
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@e
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@11
    .line 238
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@13
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@15
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@18
    .line 231
    return-void

    #@19
    .line 234
    :catch_0
    move-exception v0

    #@1a
    .line 235
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    #@1c
    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 679
    if-nez p1, :cond_0

    #@2
    .line 680
    const-string/jumbo p1, "null"

    #@5
    .line 682
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 683
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/util/FastPrintWriter;->write(Ljava/lang/String;II)V

    #@15
    .line 684
    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 678
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public checkError()Z
    .locals 2

    #@0
    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    #@3
    .line 251
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@5
    monitor-enter v0

    #@6
    .line 252
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v0

    #@9
    return v1

    #@a
    .line 251
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method protected clearError()V
    .locals 2

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 262
    const/4 v1, 0x0

    #@4
    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 260
    return-void

    #@8
    .line 261
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public close()V
    .locals 4

    #@0
    .prologue
    .line 411
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 413
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    #@6
    .line 414
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 415
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    :goto_0
    monitor-exit v2

    #@10
    .line 410
    return-void

    #@11
    .line 416
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 417
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@17
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 419
    :catch_0
    move-exception v0

    #@1c
    .line 420
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "FastPrintWriter"

    #@1f
    const-string/jumbo v3, "Write failure"

    #@22
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    .line 421
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 411
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method

.method public flush()V
    .locals 4

    #@0
    .prologue
    .line 392
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 394
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    #@6
    .line 395
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    #@8
    if-nez v1, :cond_0

    #@a
    .line 396
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 397
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@10
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    :goto_0
    monitor-exit v2

    #@14
    .line 391
    return-void

    #@15
    .line 398
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 399
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@1b
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    goto :goto_0

    #@1f
    .line 402
    :catch_0
    move-exception v0

    #@20
    .line 403
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "FastPrintWriter"

    #@23
    const-string/jumbo v3, "Write failure"

    #@26
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    .line 404
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 392
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method public print(C)V
    .locals 4
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 454
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 456
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    :goto_0
    monitor-exit v2

    #@7
    .line 453
    return-void

    #@8
    .line 457
    :catch_0
    move-exception v0

    #@9
    .line 458
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    #@c
    const-string/jumbo v3, "Write failure"

    #@f
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 459
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    goto :goto_0

    #@16
    .line 454
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method public print(I)V
    .locals 1
    .param p1, "inum"    # I

    #@0
    .prologue
    .line 492
    if-nez p1, :cond_0

    #@2
    .line 493
    const-string/jumbo v0, "0"

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 491
    :goto_0
    return-void

    #@9
    .line 495
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    #@c
    goto :goto_0
.end method

.method public print(J)V
    .locals 3
    .param p1, "lnum"    # J

    #@0
    .prologue
    .line 501
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 502
    const-string/jumbo v0, "0"

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 500
    :goto_0
    return-void

    #@d
    .line 504
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    #@10
    goto :goto_0
.end method

.method public print(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 476
    if-nez p1, :cond_0

    #@3
    .line 477
    check-cast v1, Ljava/lang/Object;

    #@5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    .line 479
    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@b
    monitor-enter v2

    #@c
    .line 481
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v1

    #@10
    const/4 v3, 0x0

    #@11
    invoke-direct {p0, p1, v3, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :goto_0
    monitor-exit v2

    #@15
    .line 475
    return-void

    #@16
    .line 482
    :catch_0
    move-exception v0

    #@17
    .line 483
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    #@1a
    const-string/jumbo v3, "Write failure"

    #@1d
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 484
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 479
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method

.method public print([C)V
    .locals 4
    .param p1, "charArray"    # [C

    #@0
    .prologue
    .line 435
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 437
    :try_start_0
    array-length v1, p1

    #@4
    const/4 v3, 0x0

    #@5
    invoke-direct {p0, p1, v3, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :goto_0
    monitor-exit v2

    #@9
    .line 434
    return-void

    #@a
    .line 438
    :catch_0
    move-exception v0

    #@b
    .line 439
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    #@e
    const-string/jumbo v3, "Write failure"

    #@11
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 440
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    goto :goto_0

    #@18
    .line 435
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method public println()V
    .locals 5

    #@0
    .prologue
    .line 512
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 514
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    #@5
    iget-object v3, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    #@7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@a
    move-result v3

    #@b
    const/4 v4, 0x0

    #@c
    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    #@f
    .line 515
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 516
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    :goto_0
    monitor-exit v2

    #@17
    .line 511
    return-void

    #@18
    .line 518
    :catch_0
    move-exception v0

    #@19
    .line 519
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    #@1c
    const-string/jumbo v3, "Write failure"

    #@1f
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    .line 520
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 512
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1
.end method

.method public println(C)V
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 557
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print(C)V

    #@3
    .line 558
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->println()V

    #@6
    .line 556
    return-void
.end method

.method public println(I)V
    .locals 1
    .param p1, "inum"    # I

    #@0
    .prologue
    .line 527
    if-nez p1, :cond_0

    #@2
    .line 528
    const-string/jumbo v0, "0"

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    #@8
    .line 526
    :goto_0
    return-void

    #@9
    .line 530
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    #@c
    goto :goto_0
.end method

.method public println(J)V
    .locals 3
    .param p1, "lnum"    # J

    #@0
    .prologue
    .line 536
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 537
    const-string/jumbo v0, "0"

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 535
    :goto_0
    return-void

    #@d
    .line 539
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->println(J)V

    #@10
    goto :goto_0
.end method

.method public println([C)V
    .locals 0
    .param p1, "chars"    # [C

    #@0
    .prologue
    .line 548
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print([C)V

    #@3
    .line 549
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->println()V

    #@6
    .line 547
    return-void
.end method

.method protected setError()V
    .locals 2

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 271
    const/4 v1, 0x1

    #@4
    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 269
    return-void

    #@8
    .line 270
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneChar"    # I

    #@0
    .prologue
    .line 602
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 604
    int-to-char v1, p1

    #@4
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    :goto_0
    monitor-exit v2

    #@8
    .line 601
    return-void

    #@9
    .line 605
    :catch_0
    move-exception v0

    #@a
    .line 606
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    #@d
    const-string/jumbo v3, "Write failure"

    #@10
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 607
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    goto :goto_0

    #@17
    .line 602
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@18
    monitor-exit v2

    #@19
    throw v1
.end method

.method public write(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 620
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 622
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    const/4 v3, 0x0

    #@8
    invoke-direct {p0, p1, v3, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :goto_0
    monitor-exit v2

    #@c
    .line 619
    return-void

    #@d
    .line 623
    :catch_0
    move-exception v0

    #@e
    .line 624
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    #@11
    const-string/jumbo v3, "Write failure"

    #@14
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 625
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 620
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 646
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 648
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    :goto_0
    monitor-exit v2

    #@7
    .line 645
    return-void

    #@8
    .line 649
    :catch_0
    move-exception v0

    #@9
    .line 650
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    #@c
    const-string/jumbo v3, "Write failure"

    #@f
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 651
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    goto :goto_0

    #@16
    .line 646
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method public write([CII)V
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 580
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 582
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    :goto_0
    monitor-exit v2

    #@7
    .line 579
    return-void

    #@8
    .line 583
    :catch_0
    move-exception v0

    #@9
    .line 584
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    #@c
    const-string/jumbo v3, "Write failure"

    #@f
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 585
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    goto :goto_0

    #@16
    .line 580
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method
