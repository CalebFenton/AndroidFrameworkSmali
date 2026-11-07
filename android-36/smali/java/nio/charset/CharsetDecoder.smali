.class public abstract Ljava/nio/charset/CharsetDecoder;
.super Ljava/lang/Object;
.source "CharsetDecoder.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o ST_CODING:I = 0x1

.field private static final greylist-max-o ST_END:I = 0x2

.field private static final greylist-max-o ST_FLUSHED:I = 0x3

.field private static final greylist-max-o ST_RESET:I

.field private static greylist-max-o stateNames:[Ljava/lang/String;


# instance fields
.field private final greylist-max-o averageCharsPerByte:F

.field private final greylist-max-o charset:Ljava/nio/charset/Charset;

.field private greylist-max-o malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final greylist-max-o maxCharsPerByte:F

.field private greylist-max-o replacement:Ljava/lang/String;

.field private greylist-max-o state:I

.field private greylist-max-o unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 139
    nop

    .line 160
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "RESET"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CODING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CODING_END"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "FLUSHED"

    aput-object v2, v0, v1

    sput-object v0, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/nio/charset/Charset;FF)V
    .registers 5
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "maxCharsPerByte"    # F

    .line 263
    const-string v0, "\ufffd"

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FFLjava/lang/String;)V

    .line 266
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/nio/charset/Charset;FFLjava/lang/String;)V
    .registers 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "maxCharsPerByte"    # F
    .param p4, "replacement"    # Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 148
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 209
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->charset:Ljava/nio/charset/Charset;

    .line 211
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_34

    .line 215
    cmpl-float v0, p3, v0

    if-lez v0, :cond_2c

    .line 218
    cmpl-float v0, p2, p3

    if-gtz v0, :cond_24

    .line 222
    iput-object p4, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    .line 223
    iput p2, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    .line 224
    iput p3, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    .line 238
    return-void

    .line 219
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageCharsPerByte exceeds maxCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive maxCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive averageCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIllegalStateException(II)V
    .registers 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 1051
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api averageCharsPerByte()F
    .registers 2

    .line 482
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    return v0
.end method

.method public final whitelist test-api charset()Ljava/nio/charset/Charset;
    .registers 2

    .line 274
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final whitelist test-api decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .registers 7
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 842
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 843
    .local v0, "n":I
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 845
    .local v1, "out":Ljava/nio/CharBuffer;
    if-nez v0, :cond_18

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_18

    .line 846
    return-object v1

    .line 847
    :cond_18
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 849
    :goto_1b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    .line 850
    invoke-virtual {p0, p1, v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_29

    :cond_27
    sget-object v2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 851
    .local v2, "cr":Ljava/nio/charset/CoderResult;
    :goto_29
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 852
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 854
    :cond_33
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 855
    nop

    .line 866
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 867
    return-object v1

    .line 856
    .restart local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_3e
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 857
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v0, v4, 0x1

    .line 858
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 859
    .local v3, "o":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 860
    invoke-virtual {v3, v1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 861
    move-object v1, v3

    .line 862
    goto :goto_1b

    .line 864
    .end local v3    # "o":Ljava/nio/CharBuffer;
    :cond_54
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 865
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_1b
.end method

.method public final whitelist test-api decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;
    .registers 9
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Ljava/nio/CharBuffer;
    .param p3, "endOfInput"    # Z

    .line 609
    const-string v0, "in"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 610
    const-string v0, "out"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 612
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_10

    move v2, v0

    goto :goto_11

    :cond_10
    move v2, v1

    .line 613
    .local v2, "newState":I
    :goto_11
    iget v3, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    if-eqz v3, :cond_24

    iget v3, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    if-eq v3, v1, :cond_24

    if-eqz p3, :cond_1f

    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    if-eq v1, v0, :cond_24

    .line 615
    :cond_1f
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    invoke-direct {p0, v0, v2}, Ljava/nio/charset/CharsetDecoder;->throwIllegalStateException(II)V

    .line 616
    :cond_24
    iput v2, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 622
    :goto_26
    :try_start_26
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetDecoder;->decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_2a} :catch_93

    .line 625
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    nop

    .line 627
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 628
    return-object v0

    .line 630
    :cond_32
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 631
    if-eqz p3, :cond_49

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 632
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_4a

    .line 635
    :cond_49
    return-object v0

    .line 639
    :cond_4a
    :goto_4a
    const/4 v1, 0x0

    .line 640
    .local v1, "action":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 641
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    goto :goto_5e

    .line 642
    :cond_54
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 643
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    goto :goto_5e

    .line 645
    :cond_5d
    nop

    .line 647
    :goto_5e
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v1, v3, :cond_63

    .line 648
    return-object v0

    .line 650
    :cond_63
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v1, v3, :cond_7b

    .line 651
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    iget-object v4, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_76

    .line 652
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v3

    .line 653
    :cond_76
    iget-object v3, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    .line 656
    :cond_7b
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-eq v1, v3, :cond_86

    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v1, v3, :cond_84

    goto :goto_86

    .line 663
    :cond_84
    nop

    .line 664
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    .end local v1    # "action":Ljava/nio/charset/CodingErrorAction;
    goto :goto_26

    .line 659
    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    .restart local v1    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_86
    :goto_86
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 660
    goto :goto_26

    .line 623
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    .end local v1    # "action":Ljava/nio/charset/CodingErrorAction;
    :catch_93
    move-exception v0

    .line 624
    .local v0, "x":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v1, v0}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected abstract whitelist test-api decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public whitelist test-api detectedCharset()Ljava/nio/charset/Charset;
    .registers 2

    .line 941
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 5
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .line 708
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-ne v0, v1, :cond_13

    .line 709
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 710
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 711
    iput v2, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 712
    :cond_12
    return-object v0

    .line 715
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_13
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    if-eq v0, v2, :cond_1c

    .line 716
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    invoke-direct {p0, v0, v2}, Ljava/nio/charset/CharsetDecoder;->throwIllegalStateException(II)V

    .line 718
    :cond_1c
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected whitelist test-api implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 3
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .line 736
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected whitelist test-api implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 427
    return-void
.end method

.method protected whitelist test-api implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 471
    return-void
.end method

.method protected whitelist test-api implReplaceWith(Ljava/lang/String;)V
    .registers 2
    .param p1, "newReplacement"    # Ljava/lang/String;

    .line 346
    return-void
.end method

.method protected whitelist test-api implReset()V
    .registers 1

    .line 761
    return-void
.end method

.method public whitelist test-api isAutoDetecting()Z
    .registers 2

    .line 883
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isCharsetDetected()Z
    .registers 2

    .line 913
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .line 394
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final whitelist test-api maxCharsPerByte()F
    .registers 2

    .line 501
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    return v0
.end method

.method public final whitelist test-api onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .registers 4
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 411
    if-eqz p1, :cond_8

    .line 413
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 414
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    .line 415
    return-object p0

    .line 412
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .registers 4
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 455
    if-eqz p1, :cond_8

    .line 457
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 458
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    .line 459
    return-object p0

    .line 456
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .registers 5
    .param p1, "newReplacement"    # Ljava/lang/String;

    .line 317
    if-eqz p1, :cond_27

    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 320
    .local v0, "len":I
    if-eqz v0, :cond_1f

    .line 322
    int-to-float v1, v0

    iget v2, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_17

    .line 325
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    .line 332
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetDecoder;->implReplaceWith(Ljava/lang/String;)V

    .line 333
    return-object p0

    .line 323
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Replacement too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    .end local v0    # "len":I
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null replacement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api replacement()Ljava/lang/String;
    .registers 2

    .line 285
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api reset()Ljava/nio/charset/CharsetDecoder;
    .registers 2

    .line 750
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->implReset()V

    .line 751
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 752
    return-object p0
.end method

.method public whitelist test-api unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .line 436
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
