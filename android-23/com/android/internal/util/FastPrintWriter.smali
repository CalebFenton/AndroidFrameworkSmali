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
    .line 198
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;I)V

    #@5
    .line 197
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
    .line 215
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    #@4
    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$DummyWriter;)V

    #@7
    invoke-direct {p0, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@a
    .line 216
    if-nez p1, :cond_0

    #@c
    .line 217
    new-instance v0, Ljava/lang/NullPointerException;

    #@e
    const-string/jumbo v1, "pr is null"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 219
    :cond_0
    iput p2, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    #@17
    .line 220
    new-array v0, p2, [C

    #@19
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@1b
    .line 221
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@1d
    .line 222
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@1f
    .line 223
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@21
    .line 224
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    #@23
    .line 225
    iput-boolean v2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    #@25
    .line 226
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    #@2b
    .line 227
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    #@2e
    .line 214
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 64
    const/4 v0, 0x0

    #@1
    const/16 v1, 0x2000

    #@3
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    #@6
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    #@0
    .prologue
    .line 82
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    #@5
    .line 81
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
    .line 103
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    #@3
    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$DummyWriter;)V

    #@6
    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@9
    .line 104
    if-nez p1, :cond_0

    #@b
    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v1, "out is null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 107
    :cond_0
    iput p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    #@16
    .line 108
    new-array v0, p3, [C

    #@18
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@1a
    .line 109
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    #@1c
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@22
    .line 110
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@24
    .line 111
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@26
    .line 112
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    #@28
    .line 113
    iput-boolean p2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    #@2a
    .line 114
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    #@30
    .line 115
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    #@33
    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "wr"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 133
    const/4 v0, 0x0

    #@1
    const/16 v1, 0x2000

    #@3
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@6
    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 1
    .param p1, "wr"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z

    #@0
    .prologue
    .line 151
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@5
    .line 150
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
    .line 172
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    #@3
    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$DummyWriter;)V

    #@6
    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@9
    .line 173
    if-nez p1, :cond_0

    #@b
    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v1, "wr is null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 176
    :cond_0
    iput p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    #@16
    .line 177
    new-array v0, p3, [C

    #@18
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@1a
    .line 178
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@1c
    .line 179
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@1e
    .line 180
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@20
    .line 181
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    #@22
    .line 182
    iput-boolean p2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    #@24
    .line 183
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    #@2a
    .line 184
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    #@2d
    .line 171
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
    .line 281
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@2
    .line 282
    .local v0, "pos":I
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 283
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    #@b
    .line 284
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@d
    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@f
    aput-char p1, v1, v0

    #@11
    .line 287
    add-int/lit8 v1, v0, 0x1

    #@13
    iput v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@15
    .line 280
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
    .line 291
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    #@2
    .line 292
    .local v0, "BUFFER_LEN":I
    if-le p3, v0, :cond_2

    #@4
    .line 293
    add-int v1, p2, p3

    #@6
    .line 294
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    #@8
    .line 295
    add-int v2, p2, v0

    #@a
    .line 296
    .local v2, "next":I
    if-ge v2, v1, :cond_0

    #@c
    move v4, v0

    #@d
    :goto_1
    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    #@10
    .line 297
    move p2, v2

    #@11
    goto :goto_0

    #@12
    .line 296
    :cond_0
    sub-int v4, v1, p2

    #@14
    goto :goto_1

    #@15
    .line 299
    .end local v2    # "next":I
    :cond_1
    return-void

    #@16
    .line 301
    .end local v1    # "end":I
    :cond_2
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@18
    .line 302
    .local v3, "pos":I
    add-int v4, v3, p3

    #@1a
    if-le v4, v0, :cond_3

    #@1c
    .line 303
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    #@1f
    .line 304
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@21
    .line 306
    :cond_3
    add-int v4, p2, p3

    #@23
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@25
    invoke-virtual {p1, p2, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    #@28
    .line 307
    add-int v4, v3, p3

    #@2a
    iput v4, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@2c
    .line 290
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
    .line 311
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    #@2
    .line 312
    .local v0, "BUFFER_LEN":I
    if-le p3, v0, :cond_2

    #@4
    .line 313
    add-int v1, p2, p3

    #@6
    .line 314
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    #@8
    .line 315
    add-int v2, p2, v0

    #@a
    .line 316
    .local v2, "next":I
    if-ge v2, v1, :cond_0

    #@c
    move v4, v0

    #@d
    :goto_1
    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V

    #@10
    .line 317
    move p2, v2

    #@11
    goto :goto_0

    #@12
    .line 316
    :cond_0
    sub-int v4, v1, p2

    #@14
    goto :goto_1

    #@15
    .line 319
    .end local v2    # "next":I
    :cond_1
    return-void

    #@16
    .line 321
    .end local v1    # "end":I
    :cond_2
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@18
    .line 322
    .local v3, "pos":I
    add-int v4, v3, p3

    #@1a
    if-le v4, v0, :cond_3

    #@1c
    .line 323
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    #@1f
    .line 324
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@21
    .line 326
    :cond_3
    iget-object v4, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@23
    invoke-static {p1, p2, v4, v3, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@26
    .line 327
    add-int v4, v3, p3

    #@28
    iput v4, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@2a
    .line 310
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
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@6
    move-result v0

    #@7
    .local v0, "position":I
    if-lez v0, :cond_0

    #@9
    .line 333
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@e
    .line 334
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@10
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@12
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    #@19
    .line 335
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@1b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@1e
    .line 330
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
    .line 341
    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@4
    if-lez v5, :cond_2

    #@6
    .line 342
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@8
    if-eqz v5, :cond_3

    #@a
    .line 343
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@c
    iget v6, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@e
    invoke-static {v5, v9, v6}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@11
    move-result-object v0

    #@12
    .line 344
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@14
    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@16
    invoke-virtual {v5, v0, v6, v7}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@19
    move-result-object v3

    #@1a
    .line 346
    .local v3, "result":Ljava/nio/charset/CoderResult;
    :goto_0
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 347
    new-instance v5, Ljava/io/IOException;

    #@22
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@29
    throw v5

    #@2a
    .line 348
    :cond_0
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_1

    #@30
    .line 349
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushBytesLocked()V

    #@33
    .line 350
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@35
    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    #@37
    invoke-virtual {v5, v0, v6, v7}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@3a
    move-result-object v3

    #@3b
    goto :goto_0

    #@3c
    .line 355
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushBytesLocked()V

    #@3f
    .line 356
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@41
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    #@44
    .line 374
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v3    # "result":Ljava/nio/charset/CoderResult;
    :goto_1
    iput v9, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@46
    .line 339
    :cond_2
    return-void

    #@47
    .line 357
    :cond_3
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@49
    if-eqz v5, :cond_4

    #@4b
    .line 358
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@4d
    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@4f
    iget v7, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@51
    invoke-virtual {v5, v6, v9, v7}, Ljava/io/Writer;->write([CII)V

    #@54
    .line 359
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@56
    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    #@59
    goto :goto_1

    #@5a
    .line 361
    :cond_4
    const/4 v2, 0x0

    #@5b
    .line 362
    .local v2, "nonEolOff":I
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    #@5d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@60
    move-result v4

    #@61
    .line 363
    .local v4, "sepLen":I
    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@63
    if-ge v4, v5, :cond_5

    #@65
    move v1, v4

    #@66
    .line 364
    .local v1, "len":I
    :goto_2
    if-ge v2, v1, :cond_6

    #@68
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@6a
    iget v6, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@6c
    add-int/lit8 v6, v6, -0x1

    #@6e
    sub-int/2addr v6, v2

    #@6f
    aget-char v5, v5, v6

    #@71
    .line 365
    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    #@73
    iget-object v7, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    #@75
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@78
    move-result v7

    #@79
    add-int/lit8 v7, v7, -0x1

    #@7b
    sub-int/2addr v7, v2

    #@7c
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    #@7f
    move-result v6

    #@80
    .line 364
    if-ne v5, v6, :cond_6

    #@82
    .line 366
    add-int/lit8 v2, v2, 0x1

    #@84
    goto :goto_2

    #@85
    .line 363
    .end local v1    # "len":I
    :cond_5
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@87
    .restart local v1    # "len":I
    goto :goto_2

    #@88
    .line 368
    :cond_6
    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@8a
    if-lt v2, v5, :cond_7

    #@8c
    .line 369
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    #@8e
    const-string/jumbo v6, ""

    #@91
    invoke-interface {v5, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@94
    goto :goto_1

    #@95
    .line 371
    :cond_7
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    #@97
    new-instance v6, Ljava/lang/String;

    #@99
    iget-object v7, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    #@9b
    iget v8, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    #@9d
    sub-int/2addr v8, v2

    #@9e
    invoke-direct {v6, v7, v9, v8}, Ljava/lang/String;-><init>([CII)V

    #@a1
    invoke-interface {v5, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@a4
    goto :goto_1
.end method

.method private final initDefaultEncoder()V
    .locals 2

    #@0
    .prologue
    .line 275
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
    .line 276
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@c
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@e
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@11
    .line 277
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@13
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@15
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@18
    .line 274
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
    .line 232
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
    .line 236
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@c
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@e
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@11
    .line 237
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@13
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@15
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@18
    .line 230
    return-void

    #@19
    .line 233
    :catch_0
    move-exception v0

    #@1a
    .line 234
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
    .line 654
    if-nez p1, :cond_0

    #@2
    .line 655
    const-string/jumbo p1, "null"

    #@5
    .line 657
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 658
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/util/FastPrintWriter;->write(Ljava/lang/String;II)V

    #@15
    .line 659
    return-object p0
.end method

.method public checkError()Z
    .locals 2

    #@0
    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    #@3
    .line 250
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@5
    monitor-enter v0

    #@6
    .line 251
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v0

    #@9
    return v1

    #@a
    .line 250
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
    .line 260
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 261
    const/4 v1, 0x0

    #@4
    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 259
    return-void

    #@8
    .line 260
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public close()V
    .locals 3

    #@0
    .prologue
    .line 401
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 403
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    #@6
    .line 404
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 405
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
    .line 400
    return-void

    #@11
    .line 406
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 407
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@17
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 409
    :catch_0
    move-exception v0

    #@1c
    .line 410
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 401
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method public flush()V
    .locals 3

    #@0
    .prologue
    .line 385
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 387
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    #@6
    .line 388
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 389
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    #@c
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    :goto_0
    monitor-exit v2

    #@10
    .line 384
    return-void

    #@11
    .line 390
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 391
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    #@17
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 393
    :catch_0
    move-exception v0

    #@1c
    .line 394
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 385
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method public print(C)V
    .locals 3
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 443
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    :goto_0
    monitor-exit v1

    #@7
    .line 440
    return-void

    #@8
    .line 444
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@a
    .line 441
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@b
    monitor-exit v1

    #@c
    throw v2
.end method

.method public print(I)V
    .locals 1
    .param p1, "inum"    # I

    #@0
    .prologue
    .line 476
    if-nez p1, :cond_0

    #@2
    .line 477
    const-string/jumbo v0, "0"

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 475
    :goto_0
    return-void

    #@9
    .line 479
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
    .line 485
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 486
    const-string/jumbo v0, "0"

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 484
    :goto_0
    return-void

    #@d
    .line 488
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
    .line 461
    if-nez p1, :cond_0

    #@3
    .line 462
    check-cast v1, Ljava/lang/Object;

    #@5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    .line 464
    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@b
    monitor-enter v2

    #@c
    .line 466
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
    .line 460
    return-void

    #@16
    .line 467
    :catch_0
    move-exception v0

    #@17
    .line 468
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 464
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method

.method public print([C)V
    .locals 4
    .param p1, "charArray"    # [C

    #@0
    .prologue
    .line 424
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 426
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
    .line 423
    return-void

    #@a
    .line 424
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v2

    #@c
    throw v1

    #@d
    .line 427
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public println()V
    .locals 5

    #@0
    .prologue
    .line 496
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 498
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
    .line 499
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 500
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    :goto_0
    monitor-exit v2

    #@17
    .line 495
    return-void

    #@18
    .line 502
    :catch_0
    move-exception v0

    #@19
    .line 503
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 496
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method public println(C)V
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 540
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print(C)V

    #@3
    .line 541
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->println()V

    #@6
    .line 539
    return-void
.end method

.method public println(I)V
    .locals 1
    .param p1, "inum"    # I

    #@0
    .prologue
    .line 510
    if-nez p1, :cond_0

    #@2
    .line 511
    const-string/jumbo v0, "0"

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    #@8
    .line 509
    :goto_0
    return-void

    #@9
    .line 513
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
    .line 519
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 520
    const-string/jumbo v0, "0"

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 518
    :goto_0
    return-void

    #@d
    .line 522
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
    .line 531
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print([C)V

    #@3
    .line 532
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->println()V

    #@6
    .line 530
    return-void
.end method

.method protected setError()V
    .locals 2

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 270
    const/4 v1, 0x1

    #@4
    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 268
    return-void

    #@8
    .line 269
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneChar"    # I

    #@0
    .prologue
    .line 583
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 585
    int-to-char v2, p1

    #@4
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    :goto_0
    monitor-exit v1

    #@8
    .line 582
    return-void

    #@9
    .line 586
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@b
    .line 583
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@c
    monitor-exit v1

    #@d
    throw v2
.end method

.method public write(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 599
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 601
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
    .line 598
    return-void

    #@d
    .line 599
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v2

    #@f
    throw v1

    #@10
    .line 602
    :catch_0
    move-exception v0

    #@11
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 623
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 625
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    :goto_0
    monitor-exit v1

    #@7
    .line 622
    return-void

    #@8
    .line 626
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@a
    .line 623
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@b
    monitor-exit v1

    #@c
    throw v2
.end method

.method public write([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 563
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 565
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    :goto_0
    monitor-exit v1

    #@7
    .line 562
    return-void

    #@8
    .line 566
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@a
    .line 563
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@b
    monitor-exit v1

    #@c
    throw v2
.end method
