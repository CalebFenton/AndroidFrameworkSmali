.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "Rfc822Tokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static crunch(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    .line 178
    const/4 v1, 0x0

    #@3
    .line 179
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v2

    #@7
    .line 181
    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@9
    .line 182
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 184
    .local v0, "c":C
    if-nez v0, :cond_2

    #@f
    .line 185
    if-eqz v1, :cond_0

    #@11
    add-int/lit8 v3, v2, -0x1

    #@13
    if-ne v1, v3, :cond_1

    #@15
    .line 190
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@18
    .line 191
    add-int/lit8 v2, v2, -0x1

    #@1a
    .line 189
    goto :goto_0

    #@1b
    .line 186
    :cond_1
    add-int/lit8 v3, v1, -0x1

    #@1d
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@20
    move-result v3

    #@21
    if-eq v3, v4, :cond_0

    #@23
    .line 187
    add-int/lit8 v3, v1, -0x1

    #@25
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_0

    #@2b
    .line 188
    add-int/lit8 v3, v1, 0x1

    #@2d
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@30
    move-result v3

    #@31
    if-eq v3, v4, :cond_0

    #@33
    .line 189
    add-int/lit8 v3, v1, 0x1

    #@35
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_0

    #@3b
    .line 193
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 196
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 200
    .end local v0    # "c":C
    :cond_3
    const/4 v1, 0x0

    #@42
    :goto_1
    if-ge v1, v2, :cond_5

    #@44
    .line 201
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@47
    move-result v3

    #@48
    if-nez v3, :cond_4

    #@4a
    .line 202
    invoke-virtual {p0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@4d
    .line 200
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 177
    :cond_5
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .locals 11
    .param p0, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 46
    .local p1, "out":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/util/Rfc822Token;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 47
    .local v6, "name":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 48
    .local v0, "address":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    .line 50
    .local v2, "comment":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@10
    .line 51
    .local v4, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@13
    move-result v3

    #@14
    .line 53
    .local v3, "cursor":I
    :cond_0
    :goto_0
    if-ge v4, v3, :cond_13

    #@16
    .line 54
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@19
    move-result v1

    #@1a
    .line 56
    .local v1, "c":C
    const/16 v7, 0x2c

    #@1c
    if-eq v1, v7, :cond_1

    #@1e
    const/16 v7, 0x3b

    #@20
    if-ne v1, v7, :cond_5

    #@22
    .line 57
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@24
    .line 59
    :goto_1
    if-ge v4, v3, :cond_2

    #@26
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@29
    move-result v7

    #@2a
    const/16 v8, 0x20

    #@2c
    if-ne v7, v8, :cond_2

    #@2e
    .line 60
    add-int/lit8 v4, v4, 0x1

    #@30
    goto :goto_1

    #@31
    .line 63
    :cond_2
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    #@34
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@37
    move-result v7

    #@38
    if-lez v7, :cond_4

    #@3a
    .line 66
    new-instance v7, Landroid/text/util/Rfc822Token;

    #@3c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v8

    #@40
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v9

    #@44
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v10

    #@48
    .line 66
    invoke-direct {v7, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4b
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@4e
    .line 75
    :cond_3
    :goto_2
    const/4 v7, 0x0

    #@4f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@52
    .line 76
    const/4 v7, 0x0

    #@53
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@56
    .line 77
    const/4 v7, 0x0

    #@57
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@5a
    goto :goto_0

    #@5b
    .line 69
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@5e
    move-result v7

    #@5f
    if-lez v7, :cond_3

    #@61
    .line 70
    new-instance v7, Landroid/text/util/Rfc822Token;

    #@63
    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v8

    #@67
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v9

    #@6b
    .line 70
    const/4 v10, 0x0

    #@6c
    invoke-direct {v7, v10, v8, v9}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@6f
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@72
    goto :goto_2

    #@73
    .line 78
    :cond_5
    const/16 v7, 0x22

    #@75
    if-ne v1, v7, :cond_9

    #@77
    .line 79
    add-int/lit8 v4, v4, 0x1

    #@79
    .line 81
    :goto_3
    if-ge v4, v3, :cond_0

    #@7b
    .line 82
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@7e
    move-result v1

    #@7f
    .line 84
    const/16 v7, 0x22

    #@81
    if-ne v1, v7, :cond_6

    #@83
    .line 85
    add-int/lit8 v4, v4, 0x1

    #@85
    .line 86
    goto :goto_0

    #@86
    .line 87
    :cond_6
    const/16 v7, 0x5c

    #@88
    if-ne v1, v7, :cond_8

    #@8a
    .line 88
    add-int/lit8 v7, v4, 0x1

    #@8c
    if-ge v7, v3, :cond_7

    #@8e
    .line 89
    add-int/lit8 v7, v4, 0x1

    #@90
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    #@93
    move-result v7

    #@94
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@97
    .line 91
    :cond_7
    add-int/lit8 v4, v4, 0x2

    #@99
    goto :goto_3

    #@9a
    .line 93
    :cond_8
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9d
    .line 94
    add-int/lit8 v4, v4, 0x1

    #@9f
    goto :goto_3

    #@a0
    .line 97
    :cond_9
    const/16 v7, 0x28

    #@a2
    if-ne v1, v7, :cond_f

    #@a4
    .line 98
    const/4 v5, 0x1

    #@a5
    .line 99
    .local v5, "level":I
    add-int/lit8 v4, v4, 0x1

    #@a7
    .line 101
    :goto_4
    if-ge v4, v3, :cond_0

    #@a9
    if-lez v5, :cond_0

    #@ab
    .line 102
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@ae
    move-result v1

    #@af
    .line 104
    const/16 v7, 0x29

    #@b1
    if-ne v1, v7, :cond_b

    #@b3
    .line 105
    const/4 v7, 0x1

    #@b4
    if-le v5, v7, :cond_a

    #@b6
    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b9
    .line 109
    :cond_a
    add-int/lit8 v5, v5, -0x1

    #@bb
    .line 110
    add-int/lit8 v4, v4, 0x1

    #@bd
    goto :goto_4

    #@be
    .line 111
    :cond_b
    const/16 v7, 0x28

    #@c0
    if-ne v1, v7, :cond_c

    #@c2
    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c5
    .line 113
    add-int/lit8 v5, v5, 0x1

    #@c7
    .line 114
    add-int/lit8 v4, v4, 0x1

    #@c9
    goto :goto_4

    #@ca
    .line 115
    :cond_c
    const/16 v7, 0x5c

    #@cc
    if-ne v1, v7, :cond_e

    #@ce
    .line 116
    add-int/lit8 v7, v4, 0x1

    #@d0
    if-ge v7, v3, :cond_d

    #@d2
    .line 117
    add-int/lit8 v7, v4, 0x1

    #@d4
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    #@d7
    move-result v7

    #@d8
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@db
    .line 119
    :cond_d
    add-int/lit8 v4, v4, 0x2

    #@dd
    goto :goto_4

    #@de
    .line 121
    :cond_e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e1
    .line 122
    add-int/lit8 v4, v4, 0x1

    #@e3
    goto :goto_4

    #@e4
    .line 125
    .end local v5    # "level":I
    :cond_f
    const/16 v7, 0x3c

    #@e6
    if-ne v1, v7, :cond_11

    #@e8
    .line 126
    add-int/lit8 v4, v4, 0x1

    #@ea
    .line 128
    :goto_5
    if-ge v4, v3, :cond_0

    #@ec
    .line 129
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@ef
    move-result v1

    #@f0
    .line 131
    const/16 v7, 0x3e

    #@f2
    if-ne v1, v7, :cond_10

    #@f4
    .line 132
    add-int/lit8 v4, v4, 0x1

    #@f6
    .line 133
    goto/16 :goto_0

    #@f8
    .line 135
    :cond_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@fb
    .line 136
    add-int/lit8 v4, v4, 0x1

    #@fd
    goto :goto_5

    #@fe
    .line 139
    :cond_11
    const/16 v7, 0x20

    #@100
    if-ne v1, v7, :cond_12

    #@102
    .line 140
    const/4 v7, 0x0

    #@103
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@106
    .line 141
    add-int/lit8 v4, v4, 0x1

    #@108
    goto/16 :goto_0

    #@10a
    .line 143
    :cond_12
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10d
    .line 144
    add-int/lit8 v4, v4, 0x1

    #@10f
    goto/16 :goto_0

    #@111
    .line 148
    .end local v1    # "c":C
    :cond_13
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    #@114
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@117
    move-result v7

    #@118
    if-lez v7, :cond_15

    #@11a
    .line 151
    new-instance v7, Landroid/text/util/Rfc822Token;

    #@11c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11f
    move-result-object v8

    #@120
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@123
    move-result-object v9

    #@124
    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v10

    #@128
    .line 151
    invoke-direct {v7, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12b
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@12e
    .line 45
    :cond_14
    :goto_6
    return-void

    #@12f
    .line 154
    :cond_15
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@132
    move-result v7

    #@133
    if-lez v7, :cond_14

    #@135
    .line 155
    new-instance v7, Landroid/text/util/Rfc822Token;

    #@137
    .line 156
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v8

    #@13b
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v9

    #@13f
    .line 155
    const/4 v10, 0x0

    #@140
    invoke-direct {v7, v10, v8, v9}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@143
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@146
    goto :goto_6
.end method

.method public static tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 173
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p0, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    #@8
    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    new-array v1, v1, [Landroid/text/util/Rfc822Token;

    #@e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, [Landroid/text/util/Rfc822Token;

    #@14
    return-object v1
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    #@0
    .prologue
    const/16 v7, 0x5c

    #@2
    const/16 v6, 0x28

    #@4
    const/16 v5, 0x22

    #@6
    .line 242
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v2

    #@a
    .line 243
    .local v2, "len":I
    move v1, p2

    #@b
    .line 245
    .local v1, "i":I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_c

    #@d
    .line 246
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@10
    move-result v0

    #@11
    .line 248
    .local v0, "c":C
    const/16 v4, 0x2c

    #@13
    if-eq v0, v4, :cond_1

    #@15
    const/16 v4, 0x3b

    #@17
    if-ne v0, v4, :cond_2

    #@19
    .line 249
    :cond_1
    return v1

    #@1a
    .line 250
    :cond_2
    if-ne v0, v5, :cond_5

    #@1c
    .line 251
    add-int/lit8 v1, v1, 0x1

    #@1e
    .line 253
    :goto_1
    if-ge v1, v2, :cond_0

    #@20
    .line 254
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@23
    move-result v0

    #@24
    .line 256
    if-ne v0, v5, :cond_3

    #@26
    .line 257
    add-int/lit8 v1, v1, 0x1

    #@28
    .line 258
    goto :goto_0

    #@29
    .line 259
    :cond_3
    if-ne v0, v7, :cond_4

    #@2b
    add-int/lit8 v4, v1, 0x1

    #@2d
    if-ge v4, v2, :cond_4

    #@2f
    .line 260
    add-int/lit8 v1, v1, 0x2

    #@31
    .line 259
    goto :goto_1

    #@32
    .line 262
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_1

    #@35
    .line 265
    :cond_5
    if-ne v0, v6, :cond_9

    #@37
    .line 266
    const/4 v3, 0x1

    #@38
    .line 267
    .local v3, "level":I
    add-int/lit8 v1, v1, 0x1

    #@3a
    .line 269
    :goto_2
    if-ge v1, v2, :cond_0

    #@3c
    if-lez v3, :cond_0

    #@3e
    .line 270
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@41
    move-result v0

    #@42
    .line 272
    const/16 v4, 0x29

    #@44
    if-ne v0, v4, :cond_6

    #@46
    .line 273
    add-int/lit8 v3, v3, -0x1

    #@48
    .line 274
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_2

    #@4b
    .line 275
    :cond_6
    if-ne v0, v6, :cond_7

    #@4d
    .line 276
    add-int/lit8 v3, v3, 0x1

    #@4f
    .line 277
    add-int/lit8 v1, v1, 0x1

    #@51
    goto :goto_2

    #@52
    .line 278
    :cond_7
    if-ne v0, v7, :cond_8

    #@54
    add-int/lit8 v4, v1, 0x1

    #@56
    if-ge v4, v2, :cond_8

    #@58
    .line 279
    add-int/lit8 v1, v1, 0x2

    #@5a
    .line 278
    goto :goto_2

    #@5b
    .line 281
    :cond_8
    add-int/lit8 v1, v1, 0x1

    #@5d
    goto :goto_2

    #@5e
    .line 284
    .end local v3    # "level":I
    :cond_9
    const/16 v4, 0x3c

    #@60
    if-ne v0, v4, :cond_b

    #@62
    .line 285
    add-int/lit8 v1, v1, 0x1

    #@64
    .line 287
    :goto_3
    if-ge v1, v2, :cond_0

    #@66
    .line 288
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@69
    move-result v0

    #@6a
    .line 290
    const/16 v4, 0x3e

    #@6c
    if-ne v0, v4, :cond_a

    #@6e
    .line 291
    add-int/lit8 v1, v1, 0x1

    #@70
    .line 292
    goto :goto_0

    #@71
    .line 294
    :cond_a
    add-int/lit8 v1, v1, 0x1

    #@73
    goto :goto_3

    #@74
    .line 298
    :cond_b
    add-int/lit8 v1, v1, 0x1

    #@76
    goto :goto_0

    #@77
    .line 302
    .end local v0    # "c":C
    :cond_c
    return v1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    #@0
    .prologue
    .line 216
    const/4 v0, 0x0

    #@1
    .line 217
    .local v0, "best":I
    const/4 v1, 0x0

    #@2
    .line 219
    .local v1, "i":I
    :cond_0
    :goto_0
    if-ge v1, p2, :cond_2

    #@4
    .line 220
    invoke-virtual {p0, p1, v1}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    #@7
    move-result v1

    #@8
    .line 222
    if-ge v1, p2, :cond_0

    #@a
    .line 223
    add-int/lit8 v1, v1, 0x1

    #@c
    .line 225
    :goto_1
    if-ge v1, p2, :cond_1

    #@e
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v2

    #@12
    const/16 v3, 0x20

    #@14
    if-ne v2, v3, :cond_1

    #@16
    .line 226
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_1

    #@19
    .line 229
    :cond_1
    if-ge v1, p2, :cond_0

    #@1b
    .line 230
    move v0, v1

    #@1c
    goto :goto_0

    #@1d
    .line 235
    :cond_2
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ", "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method
