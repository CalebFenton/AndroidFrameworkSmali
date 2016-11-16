.class public final Ljava/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# static fields
.field public static final DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = -0x2

.field public static final DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = -0x1

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1


# instance fields
.field private bidiBase:Landroid/icu/text/Bidi;


# direct methods
.method private constructor <init>(Landroid/icu/text/Bidi;)V
    .locals 0
    .param p1, "bidiBase"    # Landroid/icu/text/Bidi;

    #@0
    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 188
    iput-object p1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@5
    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "paragraph"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 111
    if-nez p1, :cond_0

    #@4
    move-object v1, v3

    #@5
    .line 112
    :goto_0
    if-nez p1, :cond_1

    #@7
    move v5, v2

    #@8
    :goto_1
    move-object v0, p0

    #@9
    move v4, v2

    #@a
    move v6, p2

    #@b
    .line 111
    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    #@e
    .line 110
    return-void

    #@f
    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@12
    move-result-object v1

    #@13
    goto :goto_0

    #@14
    .line 112
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@17
    move-result v5

    #@18
    goto :goto_1
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 2
    .param p1, "paragraph"    # Ljava/text/AttributedCharacterIterator;

    #@0
    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 141
    if-nez p1, :cond_0

    #@5
    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "paragraph is null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 145
    :cond_0
    new-instance v0, Landroid/icu/text/Bidi;

    #@10
    invoke-direct {v0, p1}, Landroid/icu/text/Bidi;-><init>(Ljava/text/AttributedCharacterIterator;)V

    #@13
    iput-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@15
    .line 140
    return-void
.end method

.method public constructor <init>([CI[BIII)V
    .locals 7
    .param p1, "text"    # [C
    .param p2, "textStart"    # I
    .param p3, "embeddings"    # [B
    .param p4, "embStart"    # I
    .param p5, "paragraphLength"    # I
    .param p6, "flags"    # I

    #@0
    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 166
    if-nez p1, :cond_0

    #@5
    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "text is null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 169
    :cond_0
    if-gez p5, :cond_1

    #@10
    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "bad length: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 172
    :cond_1
    if-ltz p2, :cond_2

    #@2c
    array-length v0, p1

    #@2d
    sub-int/2addr v0, p2

    #@2e
    if-le p5, v0, :cond_3

    #@30
    .line 173
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "bad range: "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 174
    const-string/jumbo v2, " length: "

    #@45
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 175
    const-string/jumbo v2, " for text of length: "

    #@50
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 175
    array-length v2, p1

    #@55
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@60
    throw v0

    #@61
    .line 177
    :cond_3
    if-eqz p3, :cond_5

    #@63
    if-ltz p4, :cond_4

    #@65
    array-length v0, p3

    #@66
    sub-int/2addr v0, p4

    #@67
    if-le p5, v0, :cond_5

    #@69
    .line 178
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6b
    new-instance v1, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v2, "bad range: "

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    .line 179
    const-string/jumbo v2, " length: "

    #@7e
    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    .line 180
    const-string/jumbo v2, " for embeddings of length: "

    #@89
    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    .line 180
    array-length v2, p1

    #@8e
    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@99
    throw v0

    #@9a
    .line 183
    :cond_5
    new-instance v0, Landroid/icu/text/Bidi;

    #@9c
    .line 184
    invoke-static {p6}, Ljava/text/Bidi;->translateConstToIcu(I)I

    #@9f
    move-result v6

    #@a0
    move-object v1, p1

    #@a1
    move v2, p2

    #@a2
    move-object v3, p3

    #@a3
    move v4, p4

    #@a4
    move v5, p5

    #@a5
    .line 183
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    #@a8
    iput-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@aa
    .line 165
    return-void
.end method

.method public static reorderVisually([BI[Ljava/lang/Object;II)V
    .locals 3
    .param p0, "levels"    # [B
    .param p1, "levelStart"    # I
    .param p2, "objects"    # [Ljava/lang/Object;
    .param p3, "objectStart"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 370
    if-ltz p1, :cond_0

    #@2
    array-length v0, p0

    #@3
    if-gt v0, p1, :cond_1

    #@5
    .line 371
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Value levelStart "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 372
    const-string/jumbo v2, " is out of range 0 to "

    #@1a
    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 373
    array-length v2, p0

    #@1f
    add-int/lit8 v2, v2, -0x1

    #@21
    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 375
    :cond_1
    if-ltz p3, :cond_2

    #@2f
    array-length v0, p2

    #@30
    if-gt v0, p3, :cond_3

    #@32
    .line 376
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@34
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v2, "Value objectStart "

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 377
    const-string/jumbo v2, " is out of range 0 to "

    #@47
    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    .line 378
    array-length v2, p2

    #@4c
    add-int/lit8 v2, v2, -0x1

    #@4e
    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v0

    #@5a
    .line 380
    :cond_3
    if-ltz p4, :cond_4

    #@5c
    array-length v0, p2

    #@5d
    add-int v1, p3, p4

    #@5f
    if-ge v0, v1, :cond_5

    #@61
    .line 381
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@63
    new-instance v1, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v2, "Value count "

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    .line 382
    const-string/jumbo v2, " is out of range 0 to "

    #@76
    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    .line 383
    array-length v2, p2

    #@7b
    sub-int/2addr v2, p3

    #@7c
    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@87
    throw v0

    #@88
    .line 385
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Landroid/icu/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    #@8b
    .line 369
    return-void
.end method

.method public static requiresBidi([CII)Z
    .locals 3
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 346
    if-ltz p1, :cond_0

    #@2
    if-le p1, p2, :cond_1

    #@4
    .line 347
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Value start "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 348
    const-string/jumbo v2, " is out of range 0 to "

    #@19
    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 346
    :cond_1
    array-length v0, p0

    #@2a
    if-gt p2, v0, :cond_0

    #@2c
    .line 350
    invoke-static {p0, p1, p2}, Landroid/icu/text/Bidi;->requiresBidi([CII)Z

    #@2f
    move-result v0

    #@30
    return v0
.end method

.method private static translateConstToIcu(I)I
    .locals 1
    .param p0, "javaInt"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 85
    packed-switch p0, :pswitch_data_0

    #@4
    .line 96
    return v0

    #@5
    .line 87
    :pswitch_0
    const/16 v0, 0x7e

    #@7
    return v0

    #@8
    .line 89
    :pswitch_1
    const/16 v0, 0x7f

    #@a
    return v0

    #@b
    .line 91
    :pswitch_2
    return v0

    #@c
    .line 93
    :pswitch_3
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 85
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public baseIsLeftToRight()Z
    .locals 1

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->baseIsLeftToRight()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public createLineBidi(II)Ljava/text/Bidi;
    .locals 8
    .param p1, "lineStart"    # I
    .param p2, "lineLimit"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 199
    if-ltz p1, :cond_0

    #@3
    if-gez p2, :cond_1

    #@5
    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Invalid ranges (start="

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, ", "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 201
    const-string/jumbo v2, "limit="

    #@21
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 201
    const-string/jumbo v2, ", length="

    #@2c
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 201
    invoke-virtual {p0}, Ljava/text/Bidi;->getLength()I

    #@33
    move-result v2

    #@34
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 201
    const-string/jumbo v2, ")"

    #@3b
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0

    #@47
    .line 199
    :cond_1
    if-gt p1, p2, :cond_0

    #@49
    invoke-virtual {p0}, Ljava/text/Bidi;->getLength()I

    #@4c
    move-result v0

    #@4d
    if-gt p2, v0, :cond_0

    #@4f
    .line 209
    if-ne p1, p2, :cond_2

    #@51
    .line 210
    new-instance v7, Ljava/text/Bidi;

    #@53
    new-instance v0, Landroid/icu/text/Bidi;

    #@55
    new-array v1, v2, [C

    #@57
    new-array v3, v2, [B

    #@59
    .line 211
    invoke-static {v2}, Ljava/text/Bidi;->translateConstToIcu(I)I

    #@5c
    move-result v6

    #@5d
    move v4, v2

    #@5e
    move v5, v2

    #@5f
    .line 210
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    #@62
    invoke-direct {v7, v0}, Ljava/text/Bidi;-><init>(Landroid/icu/text/Bidi;)V

    #@65
    return-object v7

    #@66
    .line 214
    :cond_2
    new-instance v0, Ljava/text/Bidi;

    #@68
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@6a
    invoke-virtual {v1, p1, p2}, Landroid/icu/text/Bidi;->createLineBidi(II)Landroid/icu/text/Bidi;

    #@6d
    move-result-object v1

    #@6e
    invoke-direct {v0, v1}, Ljava/text/Bidi;-><init>(Landroid/icu/text/Bidi;)V

    #@71
    return-object v0
.end method

.method public getBaseLevel()I
    .locals 1

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getParaLevel()B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLevelAt(I)I
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 274
    :try_start_0
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/text/Bidi;->getLevelAt(I)B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 275
    :catch_0
    move-exception v0

    #@8
    .line 276
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public getRunCount()I
    .locals 2

    #@0
    .prologue
    .line 285
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->countRuns()I

    #@5
    move-result v0

    #@6
    .line 286
    .local v0, "runCount":I
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    .end local v0    # "runCount":I
    :cond_0
    return v0
.end method

.method public getRunLevel(I)I
    .locals 1
    .param p1, "run"    # I

    #@0
    .prologue
    .line 297
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 298
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 300
    :cond_0
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@d
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->countRuns()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@15
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getBaseLevel()I

    #@18
    move-result v0

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@1c
    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    #@1f
    move-result v0

    #@20
    goto :goto_0
.end method

.method public getRunLimit(I)I
    .locals 1
    .param p1, "run"    # I

    #@0
    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 329
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 331
    :cond_0
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@d
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->countRuns()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@15
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getLength()I

    #@18
    move-result v0

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@1c
    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunLimit(I)I

    #@1f
    move-result v0

    #@20
    goto :goto_0
.end method

.method public getRunStart(I)I
    .locals 2
    .param p1, "run"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 312
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    #@4
    move-result v1

    #@5
    if-ne p1, v1, :cond_0

    #@7
    .line 313
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 315
    :cond_0
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@e
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->countRuns()I

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_1

    #@14
    :goto_0
    return v0

    #@15
    :cond_1
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@17
    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunStart(I)I

    #@1a
    move-result v0

    #@1b
    goto :goto_0
.end method

.method public isLeftToRight()Z
    .locals 1

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isLeftToRight()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isMixed()Z
    .locals 1

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isMixed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRightToLeft()Z
    .locals 1

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isRightToLeft()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/text/Bidi;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    .line 393
    const-string/jumbo v1, "[direction: "

    #@14
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 393
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@1a
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getDirection()B

    #@1d
    move-result v1

    #@1e
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 393
    const-string/jumbo v1, " baseLevel: "

    #@25
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 393
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@2b
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getBaseLevel()I

    #@2e
    move-result v1

    #@2f
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 394
    const-string/jumbo v1, " length: "

    #@36
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 394
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@3c
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getLength()I

    #@3f
    move-result v1

    #@40
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 394
    const-string/jumbo v1, " runs: "

    #@47
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    .line 394
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    #@4d
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    #@50
    move-result v1

    #@51
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    .line 394
    const-string/jumbo v1, "]"

    #@58
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    return-object v0
.end method
