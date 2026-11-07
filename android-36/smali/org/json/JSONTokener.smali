.class public Lorg/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private final greylist in:Ljava/lang/String;

.field private greylist pos:I


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "in"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-eqz p1, :cond_12

    const-string v0, "\ufeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 87
    :cond_12
    iput-object p1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static whitelist test-api dehexchar(C)I
    .registers 2
    .param p0, "hex"    # C

    .line 610
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 611
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 612
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    .line 613
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 614
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    .line 615
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 617
    :cond_25
    const/4 v0, -0x1

    return v0
.end method

.method private greylist nextCleanInternal()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 123
    .local v0, "inLength":I
    :goto_6
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    const/4 v2, -0x1

    if-ge v1, v0, :cond_59

    .line 124
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 125
    .local v1, "c":I
    sparse-switch v1, :sswitch_data_5a

    .line 169
    return v1

    .line 133
    :sswitch_1b
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    if-ne v3, v0, :cond_20

    .line 134
    return v1

    .line 137
    :cond_20
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 138
    .local v3, "peek":C
    sparse-switch v3, :sswitch_data_74

    .line 156
    return v1

    .line 151
    :sswitch_2c
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    .line 152
    invoke-direct {p0}, Lorg/json/JSONTokener;->skipToEndOfLine()V

    .line 153
    goto :goto_6

    .line 141
    :sswitch_36
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    .line 142
    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    const-string v5, "*/"

    iget v6, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 143
    .local v4, "commentEnd":I
    if-eq v4, v2, :cond_4d

    .line 146
    add-int/lit8 v2, v4, 0x2

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    .line 147
    goto :goto_6

    .line 144
    :cond_4d
    const-string v2, "Unterminated comment"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 165
    .end local v3    # "peek":C
    .end local v4    # "commentEnd":I
    :sswitch_54
    invoke-direct {p0}, Lorg/json/JSONTokener;->skipToEndOfLine()V

    .line 166
    goto :goto_6

    .line 130
    :sswitch_58
    goto :goto_6

    .line 173
    .end local v1    # "c":I
    :cond_59
    return v2

    :sswitch_data_5a
    .sparse-switch
        0x9 -> :sswitch_58
        0xa -> :sswitch_58
        0xd -> :sswitch_58
        0x20 -> :sswitch_58
        0x23 -> :sswitch_54
        0x2f -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_74
    .sparse-switch
        0x2a -> :sswitch_36
        0x2f -> :sswitch_2c
    .end sparse-switch
.end method

.method private greylist nextToInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "excluded"    # Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 351
    .local v0, "inLength":I
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 352
    .local v1, "start":I
    :goto_8
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    if-ge v2, v0, :cond_34

    .line 353
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 354
    .local v2, "c":C
    const/16 v3, 0xd

    if-eq v2, v3, :cond_2b

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    goto :goto_2b

    .line 352
    .end local v2    # "c":C
    :cond_24
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_8

    .line 355
    .restart local v2    # "c":C
    :cond_2b
    :goto_2b
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 358
    .end local v2    # "c":C
    :cond_34
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist readArray()Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 425
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 428
    .local v0, "result":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 431
    .local v1, "hasTrailingSeparator":Z
    :goto_6
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "Unterminated array"

    sparse-switch v2, :sswitch_data_3c

    .line 446
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    .line 449
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 451
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v2

    sparse-switch v2, :sswitch_data_4e

    .line 459
    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 435
    :sswitch_29
    if-eqz v1, :cond_2e

    .line 436
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 438
    :cond_2e
    return-object v0

    .line 442
    :sswitch_2f
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 443
    const/4 v1, 0x1

    .line 444
    goto :goto_6

    .line 433
    :sswitch_34
    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 453
    :sswitch_39
    return-object v0

    .line 456
    :sswitch_3a
    const/4 v1, 0x1

    .line 457
    goto :goto_6

    :sswitch_data_3c
    .sparse-switch
        -0x1 -> :sswitch_34
        0x2c -> :sswitch_2f
        0x3b -> :sswitch_2f
        0x5d -> :sswitch_29
    .end sparse-switch

    :sswitch_data_4e
    .sparse-switch
        0x2c -> :sswitch_3a
        0x3b -> :sswitch_3a
        0x5d -> :sswitch_39
    .end sparse-switch
.end method

.method private greylist readEscapeCharacter()C
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 251
    .local v0, "escaped":C
    sparse-switch v0, :sswitch_data_66

    .line 283
    return v0

    .line 253
    :sswitch_10
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_4f

    .line 256
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "hex":Ljava/lang/String;
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    .line 259
    const/16 v2, 0x10

    :try_start_30
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_34} :catch_36

    int-to-char v2, v2

    return v2

    .line 260
    :catch_36
    move-exception v2

    .line 261
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid escape sequence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 254
    .end local v1    # "hex":Ljava/lang/String;
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4f
    const-string v1, "Unterminated escape sequence"

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 265
    :sswitch_56
    const/16 v1, 0x9

    return v1

    .line 274
    :sswitch_59
    const/16 v1, 0xd

    return v1

    .line 271
    :sswitch_5c
    const/16 v1, 0xa

    return v1

    .line 277
    :sswitch_5f
    const/16 v1, 0xc

    return v1

    .line 268
    :sswitch_62
    const/16 v1, 0x8

    return v1

    nop

    :sswitch_data_66
    .sparse-switch
        0x62 -> :sswitch_62
        0x66 -> :sswitch_5f
        0x6e -> :sswitch_5c
        0x72 -> :sswitch_59
        0x74 -> :sswitch_56
        0x75 -> :sswitch_10
    .end sparse-switch
.end method

.method private greylist readLiteral()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 294
    const-string v0, "{}[]/\\:,=;# \t\u000c"

    invoke-direct {p0, v0}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "literal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8c

    .line 298
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 299
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object v1

    .line 300
    :cond_17
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 301
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 302
    :cond_22
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 303
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 307
    :cond_2d
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_85

    .line 308
    const/16 v1, 0xa

    .line 309
    .local v1, "base":I
    move-object v2, v0

    .line 310
    .local v2, "number":Ljava/lang/String;
    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    const-string v3, "0X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_60

    .line 313
    :cond_4a
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_67

    .line 314
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    const/16 v1, 0x8

    goto :goto_67

    .line 311
    :cond_60
    :goto_60
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    const/16 v1, 0x10

    .line 318
    :cond_67
    :goto_67
    :try_start_67
    invoke-static {v2, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    .line 319
    .local v3, "longValue":J
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-gtz v5, :cond_7f

    const-wide/32 v5, -0x80000000

    cmp-long v5, v3, v5

    if-ltz v5, :cond_7f

    .line 320
    long-to-int v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 322
    :cond_7f
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_83} :catch_84

    return-object v5

    .line 324
    .end local v3    # "longValue":J
    :catch_84
    move-exception v3

    .line 335
    .end local v1    # "base":I
    .end local v2    # "number":Ljava/lang/String;
    :cond_85
    :try_start_85
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1
    :try_end_89
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_89} :catch_8a

    return-object v1

    .line 336
    :catch_8a
    move-exception v1

    .line 340
    return-object v0

    .line 297
    :cond_8c
    const-string v1, "Expected literal value"

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1
.end method

.method private greylist readObject()Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 367
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 370
    .local v0, "result":Lorg/json/JSONObject;
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v1

    .line 371
    .local v1, "first":I
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_e

    .line 372
    return-object v0

    .line 373
    :cond_e
    const/4 v2, -0x1

    if-eq v1, v2, :cond_17

    .line 374
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    .line 377
    :cond_17
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 380
    .local v2, "inLength":I
    :goto_1d
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    .line 381
    .local v3, "name":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_58

    .line 382
    if-nez v3, :cond_2e

    .line 383
    const-string v4, "Names cannot be null"

    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 385
    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Names must be strings, but "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 386
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 385
    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 395
    :cond_58
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v4

    .line 396
    .local v4, "separator":I
    const/16 v5, 0x3a

    if-eq v4, v5, :cond_7d

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_65

    goto :goto_7d

    .line 397
    :cond_65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected \':\' after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v5

    throw v5

    .line 399
    :cond_7d
    :goto_7d
    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    if-ge v5, v2, :cond_93

    iget-object v5, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v6, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_93

    .line 400
    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/json/JSONTokener;->pos:I

    .line 403
    :cond_93
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v5

    sparse-switch v5, :sswitch_data_ae

    .line 412
    const-string v5, "Unterminated object"

    invoke-virtual {p0, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v5

    throw v5

    .line 407
    :sswitch_ab
    return-object v0

    .line 410
    :sswitch_ac
    goto/16 :goto_1d

    :sswitch_data_ae
    .sparse-switch
        0x2c -> :sswitch_ac
        0x3b -> :sswitch_ac
        0x7d -> :sswitch_ab
    .end sparse-switch
.end method

.method private greylist skipToEndOfLine()V
    .registers 4

    .line 183
    iget-object v0, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 185
    .local v0, "inLength":I
    :goto_6
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    if-ge v1, v0, :cond_29

    .line 186
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 187
    .local v1, "c":C
    const/16 v2, 0xd

    if-eq v1, v2, :cond_22

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1b

    goto :goto_22

    .line 185
    .end local v1    # "c":C
    :cond_1b
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_6

    .line 188
    .restart local v1    # "c":C
    :cond_22
    :goto_22
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    .line 189
    nop

    .line 192
    .end local v1    # "c":C
    :cond_29
    return-void
.end method


# virtual methods
.method public whitelist test-api back()V
    .registers 3

    .line 597
    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 598
    const/4 v0, 0x0

    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    .line 600
    :cond_c
    return-void
.end method

.method public whitelist test-api more()Z
    .registers 3

    .line 492
    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api next()C
    .registers 4

    .line 501
    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v0, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public whitelist test-api next(C)C
    .registers 5
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 509
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 510
    .local v0, "result":C
    if-ne v0, p1, :cond_7

    .line 513
    return v0

    .line 511
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api next(I)Ljava/lang/String;
    .registers 5
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 534
    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1c

    .line 537
    iget-object v0, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 539
    return-object v0

    .line 535
    .end local v0    # "result":Ljava/lang/String;
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is out of bounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api nextClean()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 523
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v0

    .line 524
    .local v0, "nextCleanInt":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    goto :goto_a

    :cond_9
    int-to-char v1, v0

    :goto_a
    return v1
.end method

.method public whitelist test-api nextString(C)Ljava/lang/String;
    .registers 8
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    .line 211
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 213
    .local v1, "start":I
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 215
    .local v2, "inLength":I
    :goto_9
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    if-ge v3, v2, :cond_61

    .line 216
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 217
    .local v3, "c":I
    if-ne v3, p1, :cond_36

    .line 218
    if-nez v0, :cond_28

    .line 219
    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 221
    :cond_28
    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 226
    :cond_36
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_60

    .line 227
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    if-eq v4, v2, :cond_59

    .line 230
    if-nez v0, :cond_46

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    .line 233
    :cond_46
    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {p0}, Lorg/json/JSONTokener;->readEscapeCharacter()C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_60

    .line 228
    :cond_59
    const-string v4, "Unterminated escape sequence"

    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 237
    .end local v3    # "c":I
    :cond_60
    :goto_60
    goto :goto_9

    .line 239
    :cond_61
    const-string v3, "Unterminated string"

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3
.end method

.method public whitelist test-api nextTo(C)Ljava/lang/String;
    .registers 3
    .param p1, "excluded"    # C

    .line 564
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api nextTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "excluded"    # Ljava/lang/String;

    .line 554
    if-eqz p1, :cond_b

    .line 557
    invoke-direct {p0, p1}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 555
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "excluded == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api nextValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v0

    .line 99
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_2a

    .line 114
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 115
    invoke-direct {p0}, Lorg/json/JSONTokener;->readLiteral()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 104
    :sswitch_12
    invoke-direct {p0}, Lorg/json/JSONTokener;->readObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1

    .line 107
    :sswitch_17
    invoke-direct {p0}, Lorg/json/JSONTokener;->readArray()Lorg/json/JSONArray;

    move-result-object v1

    return-object v1

    .line 111
    :sswitch_1c
    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 101
    :sswitch_22
    const-string v1, "End of input"

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    nop

    :sswitch_data_2a
    .sparse-switch
        -0x1 -> :sswitch_22
        0x22 -> :sswitch_1c
        0x27 -> :sswitch_1c
        0x5b -> :sswitch_17
        0x7b -> :sswitch_12
    .end sparse-switch
.end method

.method public whitelist test-api skipPast(Ljava/lang/String;)V
    .registers 4
    .param p1, "thru"    # Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 574
    .local v0, "thruStart":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_17

    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    :goto_17
    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 575
    return-void
.end method

.method public whitelist test-api skipTo(C)C
    .registers 4
    .param p1, "to"    # C

    .line 583
    iget-object v0, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 584
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 585
    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    .line 586
    return p1

    .line 588
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api syntaxError(Ljava/lang/String;)Lorg/json/JSONException;
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 469
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
