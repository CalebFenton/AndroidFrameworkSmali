.class public Lorg/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private final in:Ljava/lang/String;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    if-eqz p1, :cond_0

    #@5
    const-string/jumbo v0, "\ufeff"

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 81
    const/4 v0, 0x1

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    .line 83
    :cond_0
    iput-object p1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@15
    .line 78
    return-void
.end method

.method public static dehexchar(C)I
    .locals 1
    .param p0, "hex"    # C

    #@0
    .prologue
    .line 600
    const/16 v0, 0x30

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 601
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 602
    :cond_0
    const/16 v0, 0x41

    #@d
    if-lt p0, v0, :cond_1

    #@f
    const/16 v0, 0x46

    #@11
    if-gt p0, v0, :cond_1

    #@13
    .line 603
    add-int/lit8 v0, p0, -0x41

    #@15
    add-int/lit8 v0, v0, 0xa

    #@17
    return v0

    #@18
    .line 604
    :cond_1
    const/16 v0, 0x61

    #@1a
    if-lt p0, v0, :cond_2

    #@1c
    const/16 v0, 0x66

    #@1e
    if-gt p0, v0, :cond_2

    #@20
    .line 605
    add-int/lit8 v0, p0, -0x61

    #@22
    add-int/lit8 v0, v0, 0xa

    #@24
    return v0

    #@25
    .line 607
    :cond_2
    const/4 v0, -0x1

    #@26
    return v0
.end method

.method private nextCleanInternal()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 116
    :goto_0
    :sswitch_0
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    #@3
    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@8
    move-result v4

    #@9
    if-ge v3, v4, :cond_2

    #@b
    .line 117
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@d
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    #@f
    add-int/lit8 v5, v4, 0x1

    #@11
    iput v5, p0, Lorg/json/JSONTokener;->pos:I

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    .line 118
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    #@1a
    .line 162
    return v0

    #@1b
    .line 126
    :sswitch_1
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    #@1d
    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@1f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@22
    move-result v4

    #@23
    if-ne v3, v4, :cond_0

    #@25
    .line 127
    return v0

    #@26
    .line 130
    :cond_0
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@28
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v2

    #@2e
    .line 131
    .local v2, "peek":C
    sparse-switch v2, :sswitch_data_1

    #@31
    .line 149
    return v0

    #@32
    .line 134
    :sswitch_2
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    #@34
    add-int/lit8 v3, v3, 0x1

    #@36
    iput v3, p0, Lorg/json/JSONTokener;->pos:I

    #@38
    .line 135
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@3a
    const-string/jumbo v4, "*/"

    #@3d
    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    #@3f
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@42
    move-result v1

    #@43
    .line 136
    .local v1, "commentEnd":I
    if-ne v1, v6, :cond_1

    #@45
    .line 137
    const-string/jumbo v3, "Unterminated comment"

    #@48
    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@4b
    move-result-object v3

    #@4c
    throw v3

    #@4d
    .line 139
    :cond_1
    add-int/lit8 v3, v1, 0x2

    #@4f
    iput v3, p0, Lorg/json/JSONTokener;->pos:I

    #@51
    goto :goto_0

    #@52
    .line 144
    .end local v1    # "commentEnd":I
    :sswitch_3
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    #@54
    add-int/lit8 v3, v3, 0x1

    #@56
    iput v3, p0, Lorg/json/JSONTokener;->pos:I

    #@58
    .line 145
    invoke-direct {p0}, Lorg/json/JSONTokener;->skipToEndOfLine()V

    #@5b
    goto :goto_0

    #@5c
    .line 158
    .end local v2    # "peek":C
    :sswitch_4
    invoke-direct {p0}, Lorg/json/JSONTokener;->skipToEndOfLine()V

    #@5f
    goto :goto_0

    #@60
    .line 166
    .end local v0    # "c":I
    :cond_2
    return v6

    #@61
    .line 118
    nop

    #@62
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    #@7c
    .line 131
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private nextToInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "excluded"    # Ljava/lang/String;

    #@0
    .prologue
    .line 335
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    #@2
    .line 336
    .local v1, "start":I
    :goto_0
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    #@4
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    if-ge v2, v3, :cond_2

    #@c
    .line 337
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@e
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 338
    .local v0, "c":C
    const/16 v2, 0xd

    #@16
    if-eq v0, v2, :cond_0

    #@18
    const/16 v2, 0xa

    #@1a
    if-ne v0, v2, :cond_1

    #@1c
    .line 339
    :cond_0
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@1e
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    #@20
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    return-object v2

    #@25
    .line 338
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@28
    move-result v2

    #@29
    const/4 v3, -0x1

    #@2a
    if-ne v2, v3, :cond_0

    #@2c
    .line 336
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    #@2e
    add-int/lit8 v2, v2, 0x1

    #@30
    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    #@32
    goto :goto_0

    #@33
    .line 342
    .end local v0    # "c":C
    :cond_2
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@35
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    return-object v2
.end method

.method private readArray()Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 405
    new-instance v1, Lorg/json/JSONArray;

    #@3
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    #@6
    .line 408
    .local v1, "result":Lorg/json/JSONArray;
    const/4 v0, 0x0

    #@7
    .line 411
    .local v0, "hasTrailingSeparator":Z
    :goto_0
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    #@a
    move-result v2

    #@b
    sparse-switch v2, :sswitch_data_0

    #@e
    .line 426
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    #@10
    add-int/lit8 v2, v2, -0x1

    #@12
    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    #@14
    .line 429
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@1b
    .line 431
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    #@1e
    move-result v2

    #@1f
    sparse-switch v2, :sswitch_data_1

    #@22
    .line 439
    const-string/jumbo v2, "Unterminated array"

    #@25
    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@28
    move-result-object v2

    #@29
    throw v2

    #@2a
    .line 413
    :sswitch_0
    const-string/jumbo v2, "Unterminated array"

    #@2d
    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@30
    move-result-object v2

    #@31
    throw v2

    #@32
    .line 415
    :sswitch_1
    if-eqz v0, :cond_0

    #@34
    .line 416
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@37
    .line 418
    :cond_0
    return-object v1

    #@38
    .line 422
    :sswitch_2
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@3b
    .line 423
    const/4 v0, 0x1

    #@3c
    .line 424
    goto :goto_0

    #@3d
    .line 433
    :sswitch_3
    return-object v1

    #@3e
    .line 436
    :sswitch_4
    const/4 v0, 0x1

    #@3f
    .line 437
    goto :goto_0

    #@40
    .line 411
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x2c -> :sswitch_2
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    #@52
    .line 431
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_3
    .end sparse-switch
.end method

.method private readEscapeCharacter()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@2
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    #@4
    add-int/lit8 v5, v4, 0x1

    #@6
    iput v5, p0, Lorg/json/JSONTokener;->pos:I

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    .line 239
    .local v0, "escaped":C
    sparse-switch v0, :sswitch_data_0

    #@f
    .line 271
    return v0

    #@10
    .line 241
    :sswitch_0
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    #@12
    add-int/lit8 v3, v3, 0x4

    #@14
    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@16
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@19
    move-result v4

    #@1a
    if-le v3, v4, :cond_0

    #@1c
    .line 242
    const-string/jumbo v3, "Unterminated escape sequence"

    #@1f
    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@22
    move-result-object v3

    #@23
    throw v3

    #@24
    .line 244
    :cond_0
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@26
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    #@28
    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    #@2a
    add-int/lit8 v5, v5, 0x4

    #@2c
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 245
    .local v1, "hex":Ljava/lang/String;
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    #@32
    add-int/lit8 v3, v3, 0x4

    #@34
    iput v3, p0, Lorg/json/JSONTokener;->pos:I

    #@36
    .line 247
    const/16 v3, 0x10

    #@38
    :try_start_0
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result v3

    #@3c
    int-to-char v3, v3

    #@3d
    return v3

    #@3e
    .line 248
    :catch_0
    move-exception v2

    #@3f
    .line 249
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v4, "Invalid escape sequence: "

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@56
    move-result-object v3

    #@57
    throw v3

    #@58
    .line 253
    .end local v1    # "hex":Ljava/lang/String;
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :sswitch_1
    const/16 v3, 0x9

    #@5a
    return v3

    #@5b
    .line 256
    :sswitch_2
    const/16 v3, 0x8

    #@5d
    return v3

    #@5e
    .line 259
    :sswitch_3
    const/16 v3, 0xa

    #@60
    return v3

    #@61
    .line 262
    :sswitch_4
    const/16 v3, 0xd

    #@63
    return v3

    #@64
    .line 265
    :sswitch_5
    const/16 v3, 0xc

    #@66
    return v3

    #@67
    .line 239
    nop

    #@68
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private readLiteral()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 281
    const-string/jumbo v7, "{}[]/\\:,=;# \t\u000c"

    #@4
    invoke-direct {p0, v7}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 283
    .local v3, "literal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@b
    move-result v7

    #@c
    if-nez v7, :cond_0

    #@e
    .line 284
    const-string/jumbo v7, "Expected literal value"

    #@11
    invoke-virtual {p0, v7}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@14
    move-result-object v7

    #@15
    throw v7

    #@16
    .line 285
    :cond_0
    const-string/jumbo v7, "null"

    #@19
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v7

    #@1d
    if-eqz v7, :cond_1

    #@1f
    .line 286
    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    #@21
    return-object v7

    #@22
    .line 287
    :cond_1
    const-string/jumbo v7, "true"

    #@25
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_2

    #@2b
    .line 288
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@2d
    return-object v7

    #@2e
    .line 289
    :cond_2
    const-string/jumbo v7, "false"

    #@31
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@34
    move-result v7

    #@35
    if-eqz v7, :cond_3

    #@37
    .line 290
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@39
    return-object v7

    #@3a
    .line 294
    :cond_3
    const/16 v7, 0x2e

    #@3c
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    #@3f
    move-result v7

    #@40
    const/4 v8, -0x1

    #@41
    if-ne v7, v8, :cond_8

    #@43
    .line 295
    const/16 v0, 0xa

    #@45
    .line 296
    .local v0, "base":I
    move-object v6, v3

    #@46
    .line 297
    .local v6, "number":Ljava/lang/String;
    const-string/jumbo v7, "0x"

    #@49
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4c
    move-result v7

    #@4d
    if-nez v7, :cond_4

    #@4f
    const-string/jumbo v7, "0X"

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@55
    move-result v7

    #@56
    if-eqz v7, :cond_6

    #@58
    .line 298
    :cond_4
    const/4 v7, 0x2

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    .line 299
    const/16 v0, 0x10

    #@5f
    .line 305
    :cond_5
    :goto_0
    :try_start_0
    invoke-static {v6, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@62
    move-result-wide v4

    #@63
    .line 306
    .local v4, "longValue":J
    const-wide/32 v8, 0x7fffffff

    #@66
    cmp-long v7, v4, v8

    #@68
    if-gtz v7, :cond_7

    #@6a
    const-wide/32 v8, -0x80000000

    #@6d
    cmp-long v7, v4, v8

    #@6f
    if-ltz v7, :cond_7

    #@71
    .line 307
    long-to-int v7, v4

    #@72
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@75
    move-result-object v7

    #@76
    return-object v7

    #@77
    .line 300
    .end local v4    # "longValue":J
    :cond_6
    const-string/jumbo v7, "0"

    #@7a
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7d
    move-result v7

    #@7e
    if-eqz v7, :cond_5

    #@80
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@83
    move-result v7

    #@84
    if-le v7, v9, :cond_5

    #@86
    .line 301
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@89
    move-result-object v6

    #@8a
    .line 302
    const/16 v0, 0x8

    #@8c
    goto :goto_0

    #@8d
    .line 309
    .restart local v4    # "longValue":J
    :cond_7
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@90
    move-result-object v7

    #@91
    return-object v7

    #@92
    .line 311
    .end local v4    # "longValue":J
    :catch_0
    move-exception v1

    #@93
    .line 322
    .end local v0    # "base":I
    .end local v6    # "number":Ljava/lang/String;
    :cond_8
    :try_start_2
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    #@96
    move-result-object v7

    #@97
    return-object v7

    #@98
    .line 323
    :catch_1
    move-exception v2

    #@99
    .line 327
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/String;

    #@9b
    invoke-direct {v7, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@9e
    return-object v7
.end method

.method private readObject()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    new-instance v2, Lorg/json/JSONObject;

    #@2
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    #@5
    .line 353
    .local v2, "result":Lorg/json/JSONObject;
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    #@8
    move-result v0

    #@9
    .line 354
    .local v0, "first":I
    const/16 v4, 0x7d

    #@b
    if-ne v0, v4, :cond_0

    #@d
    .line 355
    return-object v2

    #@e
    .line 356
    :cond_0
    const/4 v4, -0x1

    #@f
    if-eq v0, v4, :cond_1

    #@11
    .line 357
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    #@13
    add-int/lit8 v4, v4, -0x1

    #@15
    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    #@17
    .line 361
    :cond_1
    :sswitch_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    .line 362
    .local v1, "name":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/String;

    #@1d
    if-nez v4, :cond_3

    #@1f
    .line 363
    if-nez v1, :cond_2

    #@21
    .line 364
    const-string/jumbo v4, "Names cannot be null"

    #@24
    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@27
    move-result-object v4

    #@28
    throw v4

    #@29
    .line 366
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "Names must be strings, but "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    .line 367
    const-string/jumbo v5, " is of type "

    #@3c
    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    .line 367
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@53
    move-result-object v4

    #@54
    throw v4

    #@55
    .line 376
    :cond_3
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    #@58
    move-result v3

    #@59
    .line 377
    .local v3, "separator":I
    const/16 v4, 0x3a

    #@5b
    if-eq v3, v4, :cond_4

    #@5d
    const/16 v4, 0x3d

    #@5f
    if-eq v3, v4, :cond_4

    #@61
    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v5, "Expected \':\' after "

    #@69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@78
    move-result-object v4

    #@79
    throw v4

    #@7a
    .line 380
    :cond_4
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    #@7c
    iget-object v5, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@7e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@81
    move-result v5

    #@82
    if-ge v4, v5, :cond_5

    #@84
    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@86
    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    #@88
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@8b
    move-result v4

    #@8c
    const/16 v5, 0x3e

    #@8e
    if-ne v4, v5, :cond_5

    #@90
    .line 381
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    #@92
    add-int/lit8 v4, v4, 0x1

    #@94
    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    #@96
    .line 384
    :cond_5
    check-cast v1, Ljava/lang/String;

    #@98
    .end local v1    # "name":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    #@9b
    move-result-object v4

    #@9c
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@9f
    .line 386
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    #@a2
    move-result v4

    #@a3
    sparse-switch v4, :sswitch_data_0

    #@a6
    .line 393
    const-string/jumbo v4, "Unterminated object"

    #@a9
    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@ac
    move-result-object v4

    #@ad
    throw v4

    #@ae
    .line 388
    :sswitch_1
    return-object v2

    #@af
    .line 386
    nop

    #@b0
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private skipToEndOfLine()V
    .locals 3

    #@0
    .prologue
    .line 175
    :goto_0
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    #@2
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    if-ge v1, v2, :cond_1

    #@a
    .line 176
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@c
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 177
    .local v0, "c":C
    const/16 v1, 0xd

    #@14
    if-eq v0, v1, :cond_0

    #@16
    const/16 v1, 0xa

    #@18
    if-ne v0, v1, :cond_2

    #@1a
    .line 178
    :cond_0
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    #@1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    #@20
    .line 174
    .end local v0    # "c":C
    :cond_1
    return-void

    #@21
    .line 175
    .restart local v0    # "c":C
    :cond_2
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    #@23
    add-int/lit8 v1, v1, 0x1

    #@25
    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    #@27
    goto :goto_0
.end method


# virtual methods
.method public back()V
    .locals 2

    #@0
    .prologue
    .line 587
    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    #@6
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 588
    const/4 v0, 0x0

    #@a
    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    #@c
    .line 586
    :cond_0
    return-void
.end method

.method public more()Z
    .locals 2

    #@0
    .prologue
    .line 472
    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    #@2
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public next()C
    .locals 3

    #@0
    .prologue
    .line 481
    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    #@2
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    iget-object v0, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@c
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    #@e
    add-int/lit8 v2, v1, 0x1

    #@10
    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    :goto_0
    return v0

    #@17
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method public next(C)C
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 489
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    #@3
    move-result v0

    #@4
    .line 490
    .local v0, "result":C
    if-eq v0, p1, :cond_0

    #@6
    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Expected "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " but was "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@28
    move-result-object v1

    #@29
    throw v1

    #@2a
    .line 493
    :cond_0
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 519
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    #@2
    add-int/2addr v1, p1

    #@3
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@8
    move-result v2

    #@9
    if-le v1, v2, :cond_0

    #@b
    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " is out of bounds"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@22
    move-result-object v1

    #@23
    throw v1

    #@24
    .line 522
    :cond_0
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@26
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    #@28
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    #@2a
    add-int/2addr v3, p1

    #@2b
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 523
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    #@31
    add-int/2addr v1, p1

    #@32
    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    #@34
    .line 524
    return-object v0
.end method

.method public nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 503
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    #@3
    move-result v0

    #@4
    .line 504
    .local v0, "nextCleanInt":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v1, 0x0

    #@8
    :goto_0
    return v1

    #@9
    :cond_0
    int-to-char v1, v0

    #@a
    goto :goto_0
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    const/4 v0, 0x0

    #@1
    .line 201
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    #@3
    .line 203
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .local v2, "start":I
    :cond_0
    :goto_0
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    #@5
    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@a
    move-result v4

    #@b
    if-ge v3, v4, :cond_5

    #@d
    .line 204
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@f
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    #@11
    add-int/lit8 v5, v4, 0x1

    #@13
    iput v5, p0, Lorg/json/JSONTokener;->pos:I

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v1

    #@19
    .line 205
    .local v1, "c":I
    if-ne v1, p1, :cond_2

    #@1b
    .line 206
    if-nez v0, :cond_1

    #@1d
    .line 208
    new-instance v3, Ljava/lang/String;

    #@1f
    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@21
    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    #@23
    add-int/lit8 v5, v5, -0x1

    #@25
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@2c
    return-object v3

    #@2d
    .line 210
    :cond_1
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@2f
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    #@31
    add-int/lit8 v4, v4, -0x1

    #@33
    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@36
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    return-object v3

    #@3b
    .line 215
    :cond_2
    const/16 v3, 0x5c

    #@3d
    if-ne v1, v3, :cond_0

    #@3f
    .line 216
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    #@41
    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@43
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@46
    move-result v4

    #@47
    if-ne v3, v4, :cond_3

    #@49
    .line 217
    const-string/jumbo v3, "Unterminated escape sequence"

    #@4c
    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@4f
    move-result-object v3

    #@50
    throw v3

    #@51
    .line 219
    :cond_3
    if-nez v0, :cond_4

    #@53
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    .line 222
    :cond_4
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@5a
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    #@5c
    add-int/lit8 v4, v4, -0x1

    #@5e
    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@61
    .line 223
    invoke-direct {p0}, Lorg/json/JSONTokener;->readEscapeCharacter()C

    #@64
    move-result v3

    #@65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@68
    .line 224
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    #@6a
    goto :goto_0

    #@6b
    .line 228
    .end local v1    # "c":I
    :cond_5
    const-string/jumbo v3, "Unterminated string"

    #@6e
    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@71
    move-result-object v3

    #@72
    throw v3
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 1
    .param p1, "excluded"    # C

    #@0
    .prologue
    .line 554
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "excluded"    # Ljava/lang/String;

    #@0
    .prologue
    .line 544
    if-nez p1, :cond_0

    #@2
    .line 545
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "excluded == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 547
    :cond_0
    invoke-direct {p0, p1}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    #@3
    move-result v0

    #@4
    .line 95
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 110
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    #@9
    add-int/lit8 v1, v1, -0x1

    #@b
    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    #@d
    .line 111
    invoke-direct {p0}, Lorg/json/JSONTokener;->readLiteral()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 97
    :sswitch_0
    const-string/jumbo v1, "End of input"

    #@15
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    #@18
    move-result-object v1

    #@19
    throw v1

    #@1a
    .line 100
    :sswitch_1
    invoke-direct {p0}, Lorg/json/JSONTokener;->readObject()Lorg/json/JSONObject;

    #@1d
    move-result-object v1

    #@1e
    return-object v1

    #@1f
    .line 103
    :sswitch_2
    invoke-direct {p0}, Lorg/json/JSONTokener;->readArray()Lorg/json/JSONArray;

    #@22
    move-result-object v1

    #@23
    return-object v1

    #@24
    .line 107
    :sswitch_3
    int-to-char v1, v0

    #@25
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1

    #@2a
    .line 95
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x22 -> :sswitch_3
        0x27 -> :sswitch_3
        0x5b -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)V
    .locals 3
    .param p1, "thru"    # Ljava/lang/String;

    #@0
    .prologue
    .line 563
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@2
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    #@4
    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    .line 564
    .local v0, "thruStart":I
    const/4 v1, -0x1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    :goto_0
    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    #@13
    .line 562
    return-void

    #@14
    .line 564
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@17
    move-result v1

    #@18
    add-int/2addr v1, v0

    #@19
    goto :goto_0
.end method

.method public skipTo(C)C
    .locals 3
    .param p1, "to"    # C

    #@0
    .prologue
    .line 573
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@2
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    #@4
    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->indexOf(II)I

    #@7
    move-result v0

    #@8
    .line 574
    .local v0, "index":I
    const/4 v1, -0x1

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 575
    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    #@d
    .line 576
    return p1

    #@e
    .line 578
    :cond_0
    const/4 v1, 0x0

    #@f
    return v1
.end method

.method public syntaxError(Ljava/lang/String;)Lorg/json/JSONException;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 449
    new-instance v0, Lorg/json/JSONException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@16
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, " at character "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " of "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
