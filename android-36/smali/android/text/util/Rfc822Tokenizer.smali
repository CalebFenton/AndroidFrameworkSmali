.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "Rfc822Tokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o crunch(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 182
    .local v1, "len":I
    :goto_5
    const/16 v2, 0x20

    if-ge v0, v1, :cond_42

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 185
    .local v3, "c":C
    if-nez v3, :cond_3f

    .line 186
    if-eqz v0, :cond_39

    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_39

    add-int/lit8 v4, v0, -0x1

    .line 187
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_39

    add-int/lit8 v4, v0, -0x1

    .line 188
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_39

    add-int/lit8 v4, v0, 0x1

    .line 189
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_39

    add-int/lit8 v2, v0, 0x1

    .line 190
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-nez v2, :cond_36

    goto :goto_39

    .line 194
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 191
    :cond_39
    :goto_39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v1, v1, -0x1

    goto :goto_41

    .line 197
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    .line 199
    .end local v3    # "c":C
    :goto_41
    goto :goto_5

    .line 201
    :cond_42
    const/4 v0, 0x0

    :goto_43
    if-ge v0, v1, :cond_51

    .line 202
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4e

    .line 203
    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 201
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 206
    :cond_51
    return-void
.end method

.method public static whitelist tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .registers 13
    .param p0, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "out":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/util/Rfc822Token;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "name":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v1, "address":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v2, "comment":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 52
    .local v3, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 54
    .local v4, "cursor":I
    :goto_14
    const/4 v5, 0x0

    if-ge v3, v4, :cond_109

    .line 55
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 57
    .local v6, "c":C
    const/16 v7, 0x2c

    const/16 v8, 0x20

    const/4 v9, 0x0

    if-eq v6, v7, :cond_bd

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_28

    goto/16 :goto_bd

    .line 79
    :cond_28
    const/16 v5, 0x5c

    const/16 v7, 0x22

    if-ne v6, v7, :cond_54

    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 82
    :goto_30
    if-ge v3, v4, :cond_107

    .line 83
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 85
    if-ne v6, v7, :cond_3c

    .line 86
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto/16 :goto_107

    .line 88
    :cond_3c
    if-ne v6, v5, :cond_4e

    .line 89
    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_4b

    .line 90
    add-int/lit8 v8, v3, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    :cond_4b
    add-int/lit8 v3, v3, 0x2

    goto :goto_30

    .line 94
    :cond_4e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 98
    :cond_54
    const/16 v7, 0x28

    if-ne v6, v7, :cond_96

    .line 99
    const/4 v8, 0x1

    .line 100
    .local v8, "level":I
    add-int/lit8 v3, v3, 0x1

    .line 102
    :goto_5b
    if-ge v3, v4, :cond_94

    if-lez v8, :cond_94

    .line 103
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 105
    const/16 v9, 0x29

    if-ne v6, v9, :cond_72

    .line 106
    const/4 v9, 0x1

    if-le v8, v9, :cond_6d

    .line 107
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    :cond_6d
    add-int/lit8 v8, v8, -0x1

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 112
    :cond_72
    if-ne v6, v7, :cond_7c

    .line 113
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v8, v8, 0x1

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 116
    :cond_7c
    if-ne v6, v5, :cond_8e

    .line 117
    add-int/lit8 v9, v3, 0x1

    if-ge v9, v4, :cond_8b

    .line 118
    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    :cond_8b
    add-int/lit8 v3, v3, 0x2

    goto :goto_5b

    .line 122
    :cond_8e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 126
    .end local v8    # "level":I
    :cond_94
    goto/16 :goto_107

    :cond_96
    const/16 v5, 0x3c

    if-ne v6, v5, :cond_af

    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 129
    :goto_9c
    if-ge v3, v4, :cond_107

    .line 130
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 132
    const/16 v5, 0x3e

    if-ne v6, v5, :cond_a9

    .line 133
    add-int/lit8 v3, v3, 0x1

    .line 134
    goto :goto_107

    .line 136
    :cond_a9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    .line 140
    :cond_af
    if-ne v6, v8, :cond_b7

    .line 141
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_107

    .line 144
    :cond_b7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_107

    .line 58
    :cond_bd
    :goto_bd
    add-int/lit8 v3, v3, 0x1

    .line 60
    :goto_bf
    if-ge v3, v4, :cond_ca

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_ca

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_bf

    .line 64
    :cond_ca
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_e8

    .line 67
    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v7, v8, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 70
    :cond_e8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_fe

    .line 71
    new-instance v7, Landroid/text/util/Rfc822Token;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v5, v8, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_fe
    :goto_fe
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 147
    .end local v6    # "c":C
    :cond_107
    :goto_107
    goto/16 :goto_14

    .line 149
    :cond_109
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_127

    .line 152
    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13d

    .line 155
    :cond_127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_13d

    .line 156
    new-instance v6, Landroid/text/util/Rfc822Token;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v5, v7, v8}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_13d
    :goto_13d
    return-void
.end method

.method public static whitelist tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p0, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/util/Rfc822Token;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/util/Rfc822Token;

    return-object v1
.end method


# virtual methods
.method public whitelist findTokenEnd(Ljava/lang/CharSequence;I)I
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .line 243
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 244
    .local v0, "len":I
    move v1, p2

    .line 246
    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_7a

    .line 247
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 249
    .local v2, "c":C
    const/16 v3, 0x2c

    if-eq v2, v3, :cond_79

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_15

    goto/16 :goto_79

    .line 251
    :cond_15
    const/16 v3, 0x5c

    const/16 v4, 0x22

    if-ne v2, v4, :cond_34

    .line 252
    add-int/lit8 v1, v1, 0x1

    .line 254
    :goto_1d
    if-ge v1, v0, :cond_78

    .line 255
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 257
    if-ne v2, v4, :cond_28

    .line 258
    add-int/lit8 v1, v1, 0x1

    .line 259
    goto :goto_78

    .line 260
    :cond_28
    if-ne v2, v3, :cond_31

    add-int/lit8 v5, v1, 0x1

    if-ge v5, v0, :cond_31

    .line 261
    add-int/lit8 v1, v1, 0x2

    goto :goto_1d

    .line 263
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 266
    :cond_34
    const/16 v4, 0x28

    if-ne v2, v4, :cond_60

    .line 267
    const/4 v5, 0x1

    .line 268
    .local v5, "level":I
    add-int/lit8 v1, v1, 0x1

    .line 270
    :goto_3b
    if-ge v1, v0, :cond_5f

    if-lez v5, :cond_5f

    .line 271
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 273
    const/16 v6, 0x29

    if-ne v2, v6, :cond_4c

    .line 274
    add-int/lit8 v5, v5, -0x1

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 276
    :cond_4c
    if-ne v2, v4, :cond_53

    .line 277
    add-int/lit8 v5, v5, 0x1

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 279
    :cond_53
    if-ne v2, v3, :cond_5c

    add-int/lit8 v6, v1, 0x1

    if-ge v6, v0, :cond_5c

    .line 280
    add-int/lit8 v1, v1, 0x2

    goto :goto_3b

    .line 282
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 285
    .end local v5    # "level":I
    :cond_5f
    goto :goto_78

    :cond_60
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_76

    .line 286
    add-int/lit8 v1, v1, 0x1

    .line 288
    :goto_66
    if-ge v1, v0, :cond_78

    .line 289
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 291
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_73

    .line 292
    add-int/lit8 v1, v1, 0x1

    .line 293
    goto :goto_78

    .line 295
    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 299
    :cond_76
    add-int/lit8 v1, v1, 0x1

    .line 301
    .end local v2    # "c":C
    :cond_78
    :goto_78
    goto :goto_5

    .line 250
    .restart local v2    # "c":C
    :cond_79
    :goto_79
    return v1

    .line 303
    .end local v2    # "c":C
    :cond_7a
    return v1
.end method

.method public whitelist findTokenStart(Ljava/lang/CharSequence;I)I
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "best":I
    const/4 v1, 0x0

    .line 220
    .local v1, "i":I
    :cond_2
    :goto_2
    if-ge v1, p2, :cond_1d

    .line 221
    invoke-virtual {p0, p1, v1}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 223
    if-ge v1, p2, :cond_2

    .line 224
    add-int/lit8 v1, v1, 0x1

    .line 226
    :goto_c
    if-ge v1, p2, :cond_19

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_19

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 230
    :cond_19
    if-ge v1, p2, :cond_2

    .line 231
    move v0, v1

    goto :goto_2

    .line 236
    :cond_1d
    return v0
.end method

.method public whitelist terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
