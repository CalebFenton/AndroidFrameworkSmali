.class public abstract Ljava/nio/charset/CharsetDecoder;
.super Ljava/lang/Object;
.source "CharsetDecoder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_CODING:I = 0x1

.field private static final ST_END:I = 0x2

.field private static final ST_FLUSHED:I = 0x3

.field private static final ST_RESET:I

.field private static stateNames:[Ljava/lang/String;


# instance fields
.field private final averageCharsPerByte:F

.field private final charset:Ljava/nio/charset/Charset;

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final maxCharsPerByte:F

.field private replacement:Ljava/lang/String;

.field private state:I

.field private unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-class v0, Ljava/nio/charset/CharsetDecoder;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v1

    #@b
    :goto_0
    sput-boolean v0, Ljava/nio/charset/CharsetDecoder;->-assertionsDisabled:Z

    #@d
    .line 159
    const/4 v0, 0x4

    #@e
    new-array v0, v0, [Ljava/lang/String;

    #@10
    const-string/jumbo v3, "RESET"

    #@13
    aput-object v3, v0, v1

    #@15
    const-string/jumbo v1, "CODING"

    #@18
    aput-object v1, v0, v2

    #@1a
    const-string/jumbo v1, "CODING_END"

    #@1d
    const/4 v2, 0x2

    #@1e
    aput-object v1, v0, v2

    #@20
    const-string/jumbo v1, "FLUSHED"

    #@23
    const/4 v2, 0x3

    #@24
    aput-object v1, v0, v2

    #@26
    .line 158
    sput-object v0, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    #@28
    .line 137
    return-void

    #@29
    :cond_0
    move v0, v2

    #@2a
    goto :goto_0
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "maxCharsPerByte"    # F

    #@0
    .prologue
    .line 231
    const-string/jumbo v0, "\ufffd"

    #@3
    .line 229
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FFLjava/lang/String;)V

    #@6
    .line 227
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;FFLjava/lang/String;)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "maxCharsPerByte"    # F
    .param p4, "replacement"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 145
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@6
    .line 144
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@8
    .line 147
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@a
    .line 146
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@c
    .line 156
    const/4 v0, 0x0

    #@d
    iput v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    #@f
    .line 188
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->charset:Ljava/nio/charset/Charset;

    #@11
    .line 189
    cmpg-float v0, p2, v1

    #@13
    if-gtz v0, :cond_0

    #@15
    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "Non-positive averageCharsPerByte"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 192
    :cond_0
    cmpg-float v0, p3, v1

    #@20
    if-gtz v0, :cond_1

    #@22
    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v1, "Non-positive maxCharsPerByte"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 195
    :cond_1
    const-string/jumbo v0, "1.4"

    #@2e
    invoke-static {v0}, Ljava/nio/charset/Charset;->atBugLevel(Ljava/lang/String;)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_2

    #@34
    .line 196
    cmpl-float v0, p2, p3

    #@36
    if-lez v0, :cond_2

    #@38
    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3a
    const-string/jumbo v1, "averageCharsPerByte exceeds maxCharsPerByte"

    #@3d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0

    #@41
    .line 201
    :cond_2
    iput-object p4, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    #@43
    .line 202
    iput p2, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    #@45
    .line 203
    iput p3, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    #@47
    .line 186
    return-void
.end method

.method private throwIllegalStateException(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    .line 971
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Current state = "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    sget-object v2, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    #@10
    aget-object v2, v2, p1

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 972
    const-string/jumbo v2, ", new state = "

    #@19
    .line 971
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 972
    sget-object v2, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    #@1f
    aget-object v2, v2, p2

    #@21
    .line 971
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0
.end method


# virtual methods
.method public final averageCharsPerByte()F
    .locals 1

    #@0
    .prologue
    .line 438
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    #@2
    return v0
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->charset:Ljava/nio/charset/Charset;

    #@2
    return-object v0
.end method

.method public final decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .locals 6
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 779
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v4

    #@4
    int-to-float v4, v4

    #@5
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    #@8
    move-result v5

    #@9
    mul-float/2addr v4, v5

    #@a
    float-to-int v1, v4

    #@b
    .line 780
    .local v1, "n":I
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@e
    move-result-object v3

    #@f
    .line 782
    .local v3, "out":Ljava/nio/CharBuffer;
    if-nez v1, :cond_0

    #@11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_0

    #@17
    .line 783
    return-object v3

    #@18
    .line 784
    :cond_0
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    #@1b
    .line 786
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 787
    const/4 v4, 0x1

    #@22
    invoke-virtual {p0, p1, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    #@25
    move-result-object v0

    #@26
    .line 788
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    :goto_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_1

    #@2c
    .line 789
    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    #@2f
    move-result-object v0

    #@30
    .line 791
    :cond_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_3

    #@36
    .line 803
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@39
    .line 804
    return-object v3

    #@3a
    .line 787
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@3c
    goto :goto_1

    #@3d
    .line 793
    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_3
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@40
    move-result v4

    #@41
    if-eqz v4, :cond_4

    #@43
    .line 794
    mul-int/lit8 v4, v1, 0x2

    #@45
    add-int/lit8 v1, v4, 0x1

    #@47
    .line 795
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@4a
    move-result-object v2

    #@4b
    .line 796
    .local v2, "o":Ljava/nio/CharBuffer;
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@4e
    .line 797
    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    #@51
    .line 798
    move-object v3, v2

    #@52
    .line 799
    goto :goto_0

    #@53
    .line 801
    .end local v2    # "o":Ljava/nio/CharBuffer;
    :cond_4
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    #@56
    goto :goto_0
.end method

.method public final decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;
    .locals 7
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Ljava/nio/CharBuffer;
    .param p3, "endOfInput"    # Z

    #@0
    .prologue
    .line 554
    if-eqz p3, :cond_2

    #@2
    const/4 v2, 0x2

    #@3
    .line 555
    .local v2, "newState":I
    :goto_0
    iget v5, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    #@5
    if-eqz v5, :cond_0

    #@7
    iget v5, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    #@9
    const/4 v6, 0x1

    #@a
    if-eq v5, v6, :cond_0

    #@c
    .line 556
    if-eqz p3, :cond_3

    #@e
    iget v5, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    #@10
    const/4 v6, 0x2

    #@11
    if-ne v5, v6, :cond_3

    #@13
    .line 558
    :cond_0
    :goto_1
    iput v2, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    #@15
    .line 564
    :cond_1
    :goto_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetDecoder;->decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v1

    #@19
    .line 571
    .local v1, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_4

    #@1f
    .line 572
    return-object v1

    #@20
    .line 554
    .end local v1    # "cr":Ljava/nio/charset/CoderResult;
    .end local v2    # "newState":I
    :cond_2
    const/4 v2, 0x1

    #@21
    .restart local v2    # "newState":I
    goto :goto_0

    #@22
    .line 557
    :cond_3
    iget v5, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    #@24
    invoke-direct {p0, v5, v2}, Ljava/nio/charset/CharsetDecoder;->throwIllegalStateException(II)V

    #@27
    goto :goto_1

    #@28
    .line 567
    :catch_0
    move-exception v3

    #@29
    .line 568
    .local v3, "x":Ljava/nio/BufferOverflowException;
    new-instance v5, Ljava/nio/charset/CoderMalfunctionError;

    #@2b
    invoke-direct {v5, v3}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    #@2e
    throw v5

    #@2f
    .line 565
    .end local v3    # "x":Ljava/nio/BufferOverflowException;
    :catch_1
    move-exception v4

    #@30
    .line 566
    .local v4, "x":Ljava/nio/BufferUnderflowException;
    new-instance v5, Ljava/nio/charset/CoderMalfunctionError;

    #@32
    invoke-direct {v5, v4}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    #@35
    throw v5

    #@36
    .line 574
    .end local v4    # "x":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "cr":Ljava/nio/charset/CoderResult;
    :cond_4
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_5

    #@3c
    .line 575
    if-eqz p3, :cond_7

    #@3e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@41
    move-result v5

    #@42
    if-eqz v5, :cond_7

    #@44
    .line 576
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@47
    move-result v5

    #@48
    invoke-static {v5}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    #@4b
    move-result-object v1

    #@4c
    .line 583
    :cond_5
    const/4 v0, 0x0

    #@4d
    .line 584
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    #@50
    move-result v5

    #@51
    if-eqz v5, :cond_8

    #@53
    .line 585
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@55
    .line 591
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_6
    :goto_3
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@57
    if-ne v0, v5, :cond_a

    #@59
    .line 592
    return-object v1

    #@5a
    .line 579
    :cond_7
    return-object v1

    #@5b
    .line 586
    .restart local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_8
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    #@5e
    move-result v5

    #@5f
    if-eqz v5, :cond_9

    #@61
    .line 587
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@63
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    goto :goto_3

    #@64
    .line 589
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    :cond_9
    sget-boolean v5, Ljava/nio/charset/CharsetDecoder;->-assertionsDisabled:Z

    #@66
    if-nez v5, :cond_6

    #@68
    new-instance v5, Ljava/lang/AssertionError;

    #@6a
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@71
    throw v5

    #@72
    .line 594
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_a
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@74
    if-ne v0, v5, :cond_c

    #@76
    .line 595
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    #@79
    move-result v5

    #@7a
    iget-object v6, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    #@7c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@7f
    move-result v6

    #@80
    if-ge v5, v6, :cond_b

    #@82
    .line 596
    sget-object v5, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    #@84
    return-object v5

    #@85
    .line 597
    :cond_b
    iget-object v5, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    #@87
    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    #@8a
    .line 600
    :cond_c
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    #@8c
    if-eq v0, v5, :cond_d

    #@8e
    .line 601
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@90
    if-ne v0, v5, :cond_e

    #@92
    .line 603
    :cond_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@95
    move-result v5

    #@96
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->length()I

    #@99
    move-result v6

    #@9a
    add-int/2addr v5, v6

    #@9b
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@9e
    goto/16 :goto_2

    #@a0
    .line 607
    :cond_e
    sget-boolean v5, Ljava/nio/charset/CharsetDecoder;->-assertionsDisabled:Z

    #@a2
    if-nez v5, :cond_1

    #@a4
    new-instance v5, Ljava/lang/AssertionError;

    #@a6
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@a9
    throw v5
.end method

.method protected abstract decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public detectedCharset()Ljava/nio/charset/Charset;
    .locals 1

    #@0
    .prologue
    .line 878
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public final flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 4
    .param p1, "out"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 652
    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    #@3
    const/4 v2, 0x2

    #@4
    if-ne v1, v2, :cond_1

    #@6
    .line 653
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    #@9
    move-result-object v0

    #@a
    .line 654
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 655
    iput v3, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    #@12
    .line 656
    :cond_0
    return-object v0

    #@13
    .line 659
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_1
    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    #@15
    if-eq v1, v3, :cond_2

    #@17
    .line 660
    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    #@19
    invoke-direct {p0, v1, v3}, Ljava/nio/charset/CharsetDecoder;->throwIllegalStateException(II)V

    #@1c
    .line 662
    :cond_2
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@1e
    return-object v1
.end method

.method protected implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "out"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 680
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@2
    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 384
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 427
    return-void
.end method

.method protected implReplaceWith(Ljava/lang/String;)V
    .locals 0
    .param p1, "newReplacement"    # Ljava/lang/String;

    #@0
    .prologue
    .line 304
    return-void
.end method

.method protected implReset()V
    .locals 0

    #@0
    .prologue
    .line 705
    return-void
.end method

.method public isAutoDetecting()Z
    .locals 1

    #@0
    .prologue
    .line 820
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isCharsetDetected()Z
    .locals 1

    #@0
    .prologue
    .line 850
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@2
    return-object v0
.end method

.method public final maxCharsPerByte()F
    .locals 1

    #@0
    .prologue
    .line 450
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    #@2
    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 370
    if-nez p1, :cond_0

    #@2
    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Null action"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 372
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@d
    .line 373
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    #@10
    .line 374
    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 413
    if-nez p1, :cond_0

    #@2
    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Null action"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 415
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@d
    .line 416
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    #@10
    .line 417
    return-object p0
.end method

.method public final replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .locals 3
    .param p1, "newReplacement"    # Ljava/lang/String;

    #@0
    .prologue
    .line 279
    if-nez p1, :cond_0

    #@2
    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Null replacement"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 281
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v0

    #@f
    .line 282
    .local v0, "len":I
    if-nez v0, :cond_1

    #@11
    .line 283
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "Empty replacement"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 284
    :cond_1
    int-to-float v1, v0

    #@1b
    iget v2, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    #@1d
    cmpl-float v1, v1, v2

    #@1f
    if-lez v1, :cond_2

    #@21
    .line 285
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@23
    const-string/jumbo v2, "Replacement too long"

    #@26
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 290
    :cond_2
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    #@2c
    .line 291
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implReplaceWith(Ljava/lang/String;)V

    #@2f
    .line 292
    return-object p0
.end method

.method public final replacement()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    #@0
    .prologue
    .line 694
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->implReset()V

    #@3
    .line 695
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    #@6
    .line 696
    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@2
    return-object v0
.end method
