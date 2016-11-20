.class public abstract Ljava/nio/charset/CharsetEncoder;
.super Ljava/lang/Object;
.source "CharsetEncoder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_CODING:I = 0x1

.field private static final ST_END:I = 0x2

.field private static final ST_FLUSHED:I = 0x3

.field private static final ST_RESET:I

.field private static stateNames:[Ljava/lang/String;


# instance fields
.field private final averageBytesPerChar:F

.field private cachedDecoder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final charset:Ljava/nio/charset/Charset;

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final maxBytesPerChar:F

.field private replacement:[B

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
    const-class v0, Ljava/nio/charset/CharsetEncoder;

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
    sput-boolean v0, Ljava/nio/charset/CharsetEncoder;->-assertionsDisabled:Z

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
    sput-object v0, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

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
    .locals 3
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F

    #@0
    .prologue
    .line 246
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [B

    #@3
    const/16 v1, 0x3f

    #@5
    const/4 v2, 0x0

    #@6
    aput-byte v1, v0, v2

    #@8
    .line 244
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    #@b
    .line 242
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF[B)V
    .locals 6
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B

    #@0
    .prologue
    .line 189
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[BZ)V

    #@9
    .line 186
    return-void
.end method

.method constructor <init>(Ljava/nio/charset/Charset;FF[BZ)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B
    .param p5, "trusted"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 145
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@6
    .line 144
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@8
    .line 147
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@a
    .line 146
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@c
    .line 156
    const/4 v0, 0x0

    #@d
    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    #@f
    .line 324
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    #@12
    .line 199
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    #@14
    .line 200
    cmpg-float v0, p2, v1

    #@16
    if-gtz v0, :cond_0

    #@18
    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "Non-positive averageBytesPerChar"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 203
    :cond_0
    cmpg-float v0, p3, v1

    #@23
    if-gtz v0, :cond_1

    #@25
    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v1, "Non-positive maxBytesPerChar"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 206
    :cond_1
    const-string/jumbo v0, "1.4"

    #@31
    invoke-static {v0}, Ljava/nio/charset/Charset;->atBugLevel(Ljava/lang/String;)Z

    #@34
    move-result v0

    #@35
    if-nez v0, :cond_2

    #@37
    .line 207
    cmpl-float v0, p2, p3

    #@39
    if-lez v0, :cond_2

    #@3b
    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3d
    const-string/jumbo v1, "averageBytesPerChar exceeds maxBytesPerChar"

    #@40
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    .line 212
    :cond_2
    iput-object p4, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    #@46
    .line 213
    iput p2, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    #@48
    .line 214
    iput p3, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    #@4a
    .line 216
    if-nez p5, :cond_3

    #@4c
    .line 218
    invoke-virtual {p0, p4}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    #@4f
    .line 196
    :cond_3
    return-void
.end method

.method private canEncode(Ljava/nio/CharBuffer;)Z
    .locals 8
    .param p1, "cb"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 902
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 903
    return v7

    #@9
    .line 906
    :cond_0
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    #@b
    const/4 v5, 0x3

    #@c
    if-ne v4, v5, :cond_2

    #@e
    .line 907
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@11
    .line 910
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    #@14
    move-result-object v1

    #@15
    .line 911
    .local v1, "ma":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    #@18
    move-result-object v2

    #@19
    .line 913
    .local v2, "ua":Ljava/nio/charset/CodingErrorAction;
    :try_start_0
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@1b
    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@1e
    .line 914
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@20
    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@23
    .line 917
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    #@26
    move-result-object v0

    #@27
    .line 918
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result v4

    #@2b
    .line 922
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@2e
    .line 923
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@31
    .line 924
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@34
    .line 918
    return v4

    #@35
    .line 908
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "ma":Ljava/nio/charset/CodingErrorAction;
    .end local v2    # "ua":Ljava/nio/charset/CodingErrorAction;
    :cond_2
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    #@37
    if-eqz v4, :cond_1

    #@39
    .line 909
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    #@3b
    invoke-direct {p0, v4, v7}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    #@3e
    goto :goto_0

    #@3f
    .line 919
    .restart local v1    # "ma":Ljava/nio/charset/CodingErrorAction;
    .restart local v2    # "ua":Ljava/nio/charset/CodingErrorAction;
    :catch_0
    move-exception v3

    #@40
    .line 922
    .local v3, "x":Ljava/nio/charset/CharacterCodingException;
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@43
    .line 923
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@46
    .line 924
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@49
    .line 926
    return v6

    #@4a
    .line 921
    .end local v3    # "x":Ljava/nio/charset/CharacterCodingException;
    :catchall_0
    move-exception v4

    #@4b
    .line 922
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@4e
    .line 923
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@51
    .line 924
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@54
    .line 921
    throw v4
.end method

.method private throwIllegalStateException(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    .line 994
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
    sget-object v2, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

    #@10
    aget-object v2, v2, p1

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 995
    const-string/jumbo v2, ", new state = "

    #@19
    .line 994
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 995
    sget-object v2, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

    #@1f
    aget-object v2, v2, p2

    #@21
    .line 994
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
.method public final averageBytesPerChar()F
    .locals 1

    #@0
    .prologue
    .line 453
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    #@2
    return v0
.end method

.method public canEncode(C)Z
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 953
    const/4 v1, 0x1

    #@1
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@4
    move-result-object v0

    #@5
    .line 954
    .local v0, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    #@8
    .line 955
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@b
    .line 956
    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/nio/CharBuffer;)Z

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public canEncode(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 983
    instance-of v1, p1, Ljava/nio/CharBuffer;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 984
    check-cast p1, Ljava/nio/CharBuffer;

    #@6
    .end local p1    # "cs":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    #@9
    move-result-object v0

    #@a
    .line 987
    .local v0, "cb":Ljava/nio/CharBuffer;
    :goto_0
    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/nio/CharBuffer;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 986
    .end local v0    # "cb":Ljava/nio/CharBuffer;
    .restart local p1    # "cs":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@12
    move-result-object v0

    #@13
    .restart local v0    # "cb":Ljava/nio/CharBuffer;
    goto :goto_0
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .locals 1

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    #@2
    return-object v0
.end method

.method public final encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 794
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@3
    move-result v4

    #@4
    int-to-float v4, v4

    #@5
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    #@8
    move-result v5

    #@9
    mul-float/2addr v4, v5

    #@a
    float-to-int v1, v4

    #@b
    .line 795
    .local v1, "n":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@e
    move-result-object v3

    #@f
    .line 797
    .local v3, "out":Ljava/nio/ByteBuffer;
    if-nez v1, :cond_0

    #@11
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_0

    #@17
    .line 798
    return-object v3

    #@18
    .line 799
    :cond_0
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@1b
    .line 801
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 802
    const/4 v4, 0x1

    #@22
    invoke-virtual {p0, p1, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@25
    move-result-object v0

    #@26
    .line 803
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    :goto_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_1

    #@2c
    .line 804
    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    #@2f
    move-result-object v0

    #@30
    .line 806
    :cond_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_3

    #@36
    .line 818
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@39
    .line 819
    return-object v3

    #@3a
    .line 802
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@3c
    goto :goto_1

    #@3d
    .line 808
    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_3
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@40
    move-result v4

    #@41
    if-eqz v4, :cond_4

    #@43
    .line 809
    mul-int/lit8 v4, v1, 0x2

    #@45
    add-int/lit8 v1, v4, 0x1

    #@47
    .line 810
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@4a
    move-result-object v2

    #@4b
    .line 811
    .local v2, "o":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@4e
    .line 812
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@51
    .line 813
    move-object v3, v2

    #@52
    .line 814
    goto :goto_0

    #@53
    .line 816
    .end local v2    # "o":Ljava/nio/ByteBuffer;
    :cond_4
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    #@56
    goto :goto_0
.end method

.method public final encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
    .locals 7
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .param p2, "out"    # Ljava/nio/ByteBuffer;
    .param p3, "endOfInput"    # Z

    #@0
    .prologue
    .line 569
    if-eqz p3, :cond_2

    #@2
    const/4 v2, 0x2

    #@3
    .line 570
    .local v2, "newState":I
    :goto_0
    iget v5, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    #@5
    if-eqz v5, :cond_0

    #@7
    iget v5, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    #@9
    const/4 v6, 0x1

    #@a
    if-eq v5, v6, :cond_0

    #@c
    .line 571
    if-eqz p3, :cond_3

    #@e
    iget v5, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    #@10
    const/4 v6, 0x2

    #@11
    if-ne v5, v6, :cond_3

    #@13
    .line 573
    :cond_0
    :goto_1
    iput v2, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    #@15
    .line 579
    :cond_1
    :goto_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetEncoder;->encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v1

    #@19
    .line 586
    .local v1, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_4

    #@1f
    .line 587
    return-object v1

    #@20
    .line 569
    .end local v1    # "cr":Ljava/nio/charset/CoderResult;
    .end local v2    # "newState":I
    :cond_2
    const/4 v2, 0x1

    #@21
    .restart local v2    # "newState":I
    goto :goto_0

    #@22
    .line 572
    :cond_3
    iget v5, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    #@24
    invoke-direct {p0, v5, v2}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    #@27
    goto :goto_1

    #@28
    .line 582
    :catch_0
    move-exception v3

    #@29
    .line 583
    .local v3, "x":Ljava/nio/BufferOverflowException;
    new-instance v5, Ljava/nio/charset/CoderMalfunctionError;

    #@2b
    invoke-direct {v5, v3}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    #@2e
    throw v5

    #@2f
    .line 580
    .end local v3    # "x":Ljava/nio/BufferOverflowException;
    :catch_1
    move-exception v4

    #@30
    .line 581
    .local v4, "x":Ljava/nio/BufferUnderflowException;
    new-instance v5, Ljava/nio/charset/CoderMalfunctionError;

    #@32
    invoke-direct {v5, v4}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    #@35
    throw v5

    #@36
    .line 589
    .end local v4    # "x":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "cr":Ljava/nio/charset/CoderResult;
    :cond_4
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_5

    #@3c
    .line 590
    if-eqz p3, :cond_7

    #@3e
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    #@41
    move-result v5

    #@42
    if-eqz v5, :cond_7

    #@44
    .line 591
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@47
    move-result v5

    #@48
    invoke-static {v5}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    #@4b
    move-result-object v1

    #@4c
    .line 598
    :cond_5
    const/4 v0, 0x0

    #@4d
    .line 599
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    #@50
    move-result v5

    #@51
    if-eqz v5, :cond_8

    #@53
    .line 600
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@55
    .line 606
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_6
    :goto_3
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@57
    if-ne v0, v5, :cond_a

    #@59
    .line 607
    return-object v1

    #@5a
    .line 594
    :cond_7
    return-object v1

    #@5b
    .line 601
    .restart local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_8
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    #@5e
    move-result v5

    #@5f
    if-eqz v5, :cond_9

    #@61
    .line 602
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@63
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    goto :goto_3

    #@64
    .line 604
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    :cond_9
    sget-boolean v5, Ljava/nio/charset/CharsetEncoder;->-assertionsDisabled:Z

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
    .line 609
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_a
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@74
    if-ne v0, v5, :cond_c

    #@76
    .line 610
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@79
    move-result v5

    #@7a
    iget-object v6, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    #@7c
    array-length v6, v6

    #@7d
    if-ge v5, v6, :cond_b

    #@7f
    .line 611
    sget-object v5, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    #@81
    return-object v5

    #@82
    .line 612
    :cond_b
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    #@84
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@87
    .line 615
    :cond_c
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    #@89
    if-eq v0, v5, :cond_d

    #@8b
    .line 616
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@8d
    if-ne v0, v5, :cond_e

    #@8f
    .line 618
    :cond_d
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    #@92
    move-result v5

    #@93
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->length()I

    #@96
    move-result v6

    #@97
    add-int/2addr v5, v6

    #@98
    invoke-virtual {p1, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@9b
    goto/16 :goto_2

    #@9d
    .line 622
    :cond_e
    sget-boolean v5, Ljava/nio/charset/CharsetEncoder;->-assertionsDisabled:Z

    #@9f
    if-nez v5, :cond_1

    #@a1
    new-instance v5, Ljava/lang/AssertionError;

    #@a3
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@a6
    throw v5
.end method

.method protected abstract encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public final flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 4
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 667
    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    #@3
    const/4 v2, 0x2

    #@4
    if-ne v1, v2, :cond_1

    #@6
    .line 668
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    #@9
    move-result-object v0

    #@a
    .line 669
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 670
    iput v3, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    #@12
    .line 671
    :cond_0
    return-object v0

    #@13
    .line 674
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_1
    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    #@15
    if-eq v1, v3, :cond_2

    #@17
    .line 675
    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    #@19
    invoke-direct {p0, v1, v3}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    #@1c
    .line 677
    :cond_2
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@1e
    return-object v1
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 695
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@2
    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 399
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 442
    return-void
.end method

.method protected implReplaceWith([B)V
    .locals 0
    .param p1, "newReplacement"    # [B

    #@0
    .prologue
    .line 319
    return-void
.end method

.method protected implReset()V
    .locals 0

    #@0
    .prologue
    .line 720
    return-void
.end method

.method public isLegalReplacement([B)Z
    .locals 8
    .param p1, "repl"    # [B

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 343
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    #@3
    .line 344
    .local v4, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/nio/charset/CharsetDecoder;>;"
    const/4 v3, 0x0

    #@4
    .line 345
    .local v3, "dec":Ljava/nio/charset/CharsetDecoder;
    if-eqz v4, :cond_0

    #@6
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    .end local v3    # "dec":Ljava/nio/charset/CharsetDecoder;
    check-cast v3, Ljava/nio/charset/CharsetDecoder;

    #@c
    .local v3, "dec":Ljava/nio/charset/CharsetDecoder;
    if-nez v3, :cond_2

    #@e
    .line 346
    .end local v3    # "dec":Ljava/nio/charset/CharsetDecoder;
    :cond_0
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@15
    move-result-object v3

    #@16
    .line 347
    .restart local v3    # "dec":Ljava/nio/charset/CharsetDecoder;
    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@18
    invoke-virtual {v3, v6}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@1b
    .line 348
    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@1d
    invoke-virtual {v3, v6}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@20
    .line 349
    new-instance v6, Ljava/lang/ref/WeakReference;

    #@22
    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@25
    iput-object v6, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    #@27
    .line 353
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@2a
    move-result-object v0

    #@2b
    .line 354
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@2e
    move-result v6

    #@2f
    int-to-float v6, v6

    #@30
    .line 355
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    #@33
    move-result v7

    #@34
    .line 354
    mul-float/2addr v6, v7

    #@35
    float-to-int v6, v6

    #@36
    invoke-static {v6}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@39
    move-result-object v1

    #@3a
    .line 356
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v3, v0, v1, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    #@3d
    move-result-object v2

    #@3e
    .line 357
    .local v2, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    #@41
    move-result v6

    #@42
    if-eqz v6, :cond_1

    #@44
    const/4 v5, 0x0

    #@45
    :cond_1
    return v5

    #@46
    .line 351
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "cb":Ljava/nio/CharBuffer;
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_2
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    #@49
    goto :goto_0
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    #@0
    .prologue
    .line 368
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@2
    return-object v0
.end method

.method public final maxBytesPerChar()F
    .locals 1

    #@0
    .prologue
    .line 465
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    #@2
    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 385
    if-nez p1, :cond_0

    #@2
    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Null action"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 387
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@d
    .line 388
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    #@10
    .line 389
    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 428
    if-nez p1, :cond_0

    #@2
    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Null action"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 430
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@d
    .line 431
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    #@10
    .line 432
    return-object p0
.end method

.method public final replaceWith([B)Ljava/nio/charset/CharsetEncoder;
    .locals 3
    .param p1, "newReplacement"    # [B

    #@0
    .prologue
    .line 294
    if-nez p1, :cond_0

    #@2
    .line 295
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Null replacement"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 296
    :cond_0
    array-length v0, p1

    #@c
    .line 297
    .local v0, "len":I
    if-nez v0, :cond_1

    #@e
    .line 298
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "Empty replacement"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 299
    :cond_1
    int-to-float v1, v0

    #@18
    iget v2, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    #@1a
    cmpl-float v1, v1, v2

    #@1c
    if-lez v1, :cond_2

    #@1e
    .line 300
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v2, "Replacement too long"

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 302
    :cond_2
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_3

    #@2d
    .line 303
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2f
    const-string/jumbo v2, "Illegal replacement"

    #@32
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 305
    :cond_3
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    #@38
    .line 306
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implReplaceWith([B)V

    #@3b
    .line 307
    return-object p0
.end method

.method public final replacement()[B
    .locals 1

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    #@2
    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    #@0
    .prologue
    .line 709
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->implReset()V

    #@3
    .line 710
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    #@6
    .line 711
    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@2
    return-object v0
.end method
