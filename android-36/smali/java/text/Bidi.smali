.class public final Ljava/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# static fields
.field public static final whitelist test-api DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = -0x2

.field public static final whitelist test-api DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = -0x1

.field public static final whitelist test-api DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final whitelist test-api DIRECTION_RIGHT_TO_LEFT:I = 0x1


# instance fields
.field private final greylist-max-o bidiBase:Landroid/icu/text/Bidi;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/icu/text/Bidi;)V
    .registers 2
    .param p1, "bidiBase"    # Landroid/icu/text/Bidi;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 206
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 10
    .param p1, "paragraph"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-eqz p1, :cond_1c

    .line 125
    new-instance v0, Landroid/icu/text/Bidi;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p2}, Ljava/text/Bidi;->translateConstToIcu(I)I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 127
    return-void

    .line 121
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "paragraph is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/text/AttributedCharacterIterator;)V
    .registers 4
    .param p1, "paragraph"    # Ljava/text/AttributedCharacterIterator;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    if-eqz p1, :cond_d

    .line 160
    new-instance v0, Landroid/icu/text/Bidi;

    invoke-direct {v0, p1}, Landroid/icu/text/Bidi;-><init>(Ljava/text/AttributedCharacterIterator;)V

    iput-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 161
    return-void

    .line 156
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "paragraph is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([CI[BIII)V
    .registers 15
    .param p1, "text"    # [C
    .param p2, "textStart"    # I
    .param p3, "embeddings"    # [B
    .param p4, "embStart"    # I
    .param p5, "paragraphLength"    # I
    .param p6, "flags"    # I

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    if-eqz p1, :cond_98

    .line 184
    if-ltz p5, :cond_7f

    .line 187
    const-string v0, " length: "

    const-string v2, "bad range: "

    if-ltz p2, :cond_55

    array-length v6, p1

    sub-int/2addr v6, p2

    if-gt p5, v6, :cond_55

    .line 192
    if-eqz p3, :cond_44

    if-ltz p4, :cond_1a

    array-length v6, p3

    sub-int/2addr v6, p4

    if-gt p5, v6, :cond_1a

    goto :goto_44

    .line 193
    :cond_1a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for embeddings of length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 199
    :cond_44
    :goto_44
    new-instance v0, Landroid/icu/text/Bidi;

    .line 200
    invoke-static {p6}, Ljava/text/Bidi;->translateConstToIcu(I)I

    move-result v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 201
    return-void

    .line 188
    :cond_55
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for text of length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 185
    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad length: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "text is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api reorderVisually([BI[Ljava/lang/Object;II)V
    .registers 9
    .param p0, "levels"    # [B
    .param p1, "levelStart"    # I
    .param p2, "objects"    # [Ljava/lang/Object;
    .param p3, "objectStart"    # I
    .param p4, "count"    # I

    .line 406
    const-string v0, " is out of range 0 to "

    if-ltz p1, :cond_5e

    array-length v1, p0

    if-le v1, p1, :cond_5e

    .line 411
    if-ltz p3, :cond_3a

    array-length v1, p2

    if-le v1, p3, :cond_3a

    .line 416
    if-ltz p4, :cond_17

    array-length v1, p2

    add-int v2, p3, p4

    if-lt v1, v2, :cond_17

    .line 424
    invoke-static {p0, p1, p2, p3, p4}, Landroid/icu/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 425
    return-void

    .line 417
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p2

    sub-int/2addr v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_3a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value objectStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_5e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value levelStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api requiresBidi([CII)Z
    .registers 6
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 381
    if-ltz p1, :cond_c

    if-gt p1, p2, :cond_c

    array-length v0, p0

    if-gt p2, v0, :cond_c

    .line 385
    invoke-static {p0, p1, p2}, Landroid/icu/text/Bidi;->requiresBidi([CII)Z

    move-result v0

    return v0

    .line 382
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range 0 to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o translateConstToIcu(I)I
    .registers 2
    .param p0, "javaInt"    # I

    .line 92
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_e

    .line 103
    return v0

    .line 100
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 98
    :pswitch_7
    return v0

    .line 96
    :pswitch_8
    const/16 v0, 0x7f

    return v0

    .line 94
    :pswitch_b
    const/16 v0, 0x7e

    return v0

    :pswitch_data_e
    .packed-switch -0x2
        :pswitch_b
        :pswitch_8
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api baseIsLeftToRight()Z
    .registers 2

    .line 284
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->baseIsLeftToRight()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api createLineBidi(II)Ljava/text/Bidi;
    .registers 11
    .param p1, "lineStart"    # I
    .param p2, "lineLimit"    # I

    .line 225
    if-ltz p1, :cond_32

    if-ltz p2, :cond_32

    if-gt p1, p2, :cond_32

    invoke-virtual {p0}, Ljava/text/Bidi;->getLength()I

    move-result v0

    if-gt p2, v0, :cond_32

    .line 235
    if-ne p1, p2, :cond_26

    .line 236
    new-instance v0, Ljava/text/Bidi;

    new-instance v1, Landroid/icu/text/Bidi;

    const/4 v2, 0x0

    move v3, v2

    new-array v2, v3, [C

    new-array v4, v3, [B

    .line 237
    invoke-static {v3}, Ljava/text/Bidi;->translateConstToIcu(I)I

    move-result v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    invoke-direct {v0, v1}, Ljava/text/Bidi;-><init>(Landroid/icu/text/Bidi;)V

    .line 236
    return-object v0

    .line 240
    :cond_26
    new-instance v0, Ljava/text/Bidi;

    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1, p1, p2}, Landroid/icu/text/Bidi;->createLineBidi(II)Landroid/icu/text/Bidi;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/Bidi;-><init>(Landroid/icu/text/Bidi;)V

    return-object v0

    .line 226
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ranges (start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    invoke-virtual {p0}, Ljava/text/Bidi;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getBaseLevel()I
    .registers 2

    .line 292
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v0

    return v0
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 276
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLevelAt(I)I
    .registers 4
    .param p1, "offset"    # I

    .line 306
    :try_start_0
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 307
    :catch_7
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v1

    return v1
.end method

.method public whitelist test-api getRunCount()I
    .registers 3

    .line 319
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    .line 320
    .local v0, "runCount":I
    if-nez v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    return v1
.end method

.method public whitelist test-api getRunLevel(I)I
    .registers 3
    .param p1, "run"    # I

    .line 330
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 331
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    return v0

    .line 334
    :cond_b
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getBaseLevel()I

    move-result v0

    goto :goto_20

    :cond_1a
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v0

    :goto_20
    return v0
.end method

.method public whitelist test-api getRunLimit(I)I
    .registers 3
    .param p1, "run"    # I

    .line 361
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 362
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    return v0

    .line 365
    :cond_b
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getLength()I

    move-result v0

    goto :goto_20

    :cond_1a
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunLimit(I)I

    move-result v0

    :goto_20
    return v0
.end method

.method public whitelist test-api getRunStart(I)I
    .registers 3
    .param p1, "run"    # I

    .line 345
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 346
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    return v0

    .line 349
    :cond_b
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_1b

    :cond_15
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunStart(I)I

    move-result v0

    :goto_1b
    return v0
.end method

.method public whitelist test-api isLeftToRight()Z
    .registers 2

    .line 260
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isLeftToRight()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isMixed()Z
    .registers 2

    .line 251
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isMixed()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isRightToLeft()Z
    .registers 2

    .line 268
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isRightToLeft()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 433
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getDirection()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " baseLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getBaseLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 434
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " runs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    return-object v0
.end method
