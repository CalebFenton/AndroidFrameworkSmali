.class Ljava/text/PatternEntry$Parser;
.super Ljava/lang/Object;
.source "PatternEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/PatternEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parser"
.end annotation


# instance fields
.field private i:I

.field private newChars:Ljava/lang/StringBuffer;

.field private newExtension:Ljava/lang/StringBuffer;

.field private pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 286
    new-instance v0, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    iput-object v0, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    #@a
    .line 287
    new-instance v0, Ljava/lang/StringBuffer;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@f
    iput-object v0, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    #@11
    .line 203
    iput-object p1, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    #@13
    .line 204
    const/4 v0, 0x0

    #@14
    iput v0, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@16
    .line 202
    return-void
.end method


# virtual methods
.method public next()Ljava/text/PatternEntry;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 208
    const/4 v3, -0x1

    #@3
    .line 210
    .local v3, "newStrength":I
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    #@5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    #@8
    .line 211
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    #@a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    #@d
    .line 213
    const/4 v1, 0x1

    #@e
    .line 214
    .local v1, "inChars":Z
    const/4 v2, 0x0

    #@f
    .line 216
    .local v2, "inQuote":Z
    :goto_0
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@11
    iget-object v5, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    #@13
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@16
    move-result v5

    #@17
    if-ge v4, v5, :cond_4

    #@19
    .line 217
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    #@1b
    iget v5, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v0

    #@21
    .line 218
    .local v0, "ch":C
    if-eqz v2, :cond_3

    #@23
    .line 219
    const/16 v4, 0x27

    #@25
    if-ne v0, v4, :cond_0

    #@27
    .line 220
    const/4 v2, 0x0

    #@28
    .line 269
    :goto_1
    :sswitch_0
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@2a
    add-int/lit8 v4, v4, 0x1

    #@2c
    iput v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@2e
    goto :goto_0

    #@2f
    .line 222
    :cond_0
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    #@34
    move-result v4

    #@35
    if-nez v4, :cond_1

    #@37
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    #@39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3c
    goto :goto_1

    #@3d
    .line 223
    :cond_1
    if-eqz v1, :cond_2

    #@3f
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    #@41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@44
    goto :goto_1

    #@45
    .line 224
    :cond_2
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    #@47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4a
    goto :goto_1

    #@4b
    .line 226
    :cond_3
    sparse-switch v0, :sswitch_data_0

    #@4e
    .line 251
    if-ne v3, v6, :cond_9

    #@50
    .line 252
    new-instance v5, Ljava/text/ParseException;

    #@52
    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v6, "missing char (=,;<&) : "

    #@5a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    .line 254
    iget-object v7, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    #@60
    iget v8, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@62
    .line 255
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@64
    add-int/lit8 v4, v4, 0xa

    #@66
    iget-object v9, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    #@68
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@6b
    move-result v9

    #@6c
    if-ge v4, v9, :cond_8

    #@6e
    .line 256
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@70
    add-int/lit8 v4, v4, 0xa

    #@72
    .line 254
    :goto_2
    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    .line 253
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    .line 257
    iget v6, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@80
    .line 252
    invoke-direct {v5, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@83
    throw v5

    #@84
    .line 227
    :sswitch_1
    if-eq v3, v6, :cond_5

    #@86
    .line 271
    .end local v0    # "ch":C
    :cond_4
    if-ne v3, v6, :cond_c

    #@88
    .line 272
    const/4 v4, 0x0

    #@89
    return-object v4

    #@8a
    .line 228
    .restart local v0    # "ch":C
    :cond_5
    const/4 v3, 0x3

    #@8b
    goto :goto_1

    #@8c
    .line 229
    :sswitch_2
    if-ne v3, v6, :cond_4

    #@8e
    .line 230
    const/4 v3, 0x2

    #@8f
    goto :goto_1

    #@90
    .line 231
    :sswitch_3
    if-ne v3, v6, :cond_4

    #@92
    .line 232
    const/4 v3, 0x1

    #@93
    goto :goto_1

    #@94
    .line 233
    :sswitch_4
    if-ne v3, v6, :cond_4

    #@96
    .line 234
    const/4 v3, 0x0

    #@97
    goto :goto_1

    #@98
    .line 235
    :sswitch_5
    if-ne v3, v6, :cond_4

    #@9a
    .line 236
    const/4 v3, -0x2

    #@9b
    goto :goto_1

    #@9c
    .line 242
    :sswitch_6
    const/4 v1, 0x0

    #@9d
    goto :goto_1

    #@9e
    .line 244
    :sswitch_7
    const/4 v2, 0x1

    #@9f
    .line 245
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    #@a1
    iget v5, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@a3
    add-int/lit8 v5, v5, 0x1

    #@a5
    iput v5, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@a7
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@aa
    move-result v0

    #@ab
    .line 246
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    #@ad
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    #@b0
    move-result v4

    #@b1
    if-nez v4, :cond_6

    #@b3
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    #@b5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@b8
    goto/16 :goto_1

    #@ba
    .line 247
    :cond_6
    if-eqz v1, :cond_7

    #@bc
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    #@be
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@c1
    goto/16 :goto_1

    #@c3
    .line 248
    :cond_7
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    #@c5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@c8
    goto/16 :goto_1

    #@ca
    .line 256
    :cond_8
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    #@cc
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@cf
    move-result v4

    #@d0
    goto :goto_2

    #@d1
    .line 259
    :cond_9
    invoke-static {v0}, Ljava/text/PatternEntry;->isSpecialChar(C)Z

    #@d4
    move-result v4

    #@d5
    if-eqz v4, :cond_a

    #@d7
    if-nez v2, :cond_a

    #@d9
    .line 260
    new-instance v4, Ljava/text/ParseException;

    #@db
    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v6, "Unquoted punctuation character : "

    #@e3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v5

    #@e7
    const/16 v6, 0x10

    #@e9
    invoke-static {v0, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@ec
    move-result-object v6

    #@ed
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v5

    #@f1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v5

    #@f5
    iget v6, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@f7
    .line 260
    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@fa
    throw v4

    #@fb
    .line 262
    :cond_a
    if-eqz v1, :cond_b

    #@fd
    .line 263
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    #@ff
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@102
    goto/16 :goto_1

    #@104
    .line 265
    :cond_b
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    #@106
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@109
    goto/16 :goto_1

    #@10b
    .line 273
    .end local v0    # "ch":C
    :cond_c
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    #@10d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    #@110
    move-result v4

    #@111
    if-nez v4, :cond_e

    #@113
    .line 274
    new-instance v5, Ljava/text/ParseException;

    #@115
    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    #@117
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11a
    const-string/jumbo v6, "missing chars (=,;<&): "

    #@11d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v6

    #@121
    .line 276
    iget-object v7, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    #@123
    iget v8, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@125
    .line 277
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@127
    add-int/lit8 v4, v4, 0xa

    #@129
    iget-object v9, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    #@12b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@12e
    move-result v9

    #@12f
    if-ge v4, v9, :cond_d

    #@131
    .line 278
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@133
    add-int/lit8 v4, v4, 0xa

    #@135
    .line 276
    :goto_3
    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@138
    move-result-object v4

    #@139
    .line 275
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v4

    #@13d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@140
    move-result-object v4

    #@141
    .line 279
    iget v6, p0, Ljava/text/PatternEntry$Parser;->i:I

    #@143
    .line 274
    invoke-direct {v5, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@146
    throw v5

    #@147
    .line 278
    :cond_d
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    #@149
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@14c
    move-result v4

    #@14d
    goto :goto_3

    #@14e
    .line 282
    :cond_e
    new-instance v4, Ljava/text/PatternEntry;

    #@150
    iget-object v5, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    #@152
    iget-object v6, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    #@154
    invoke-direct {v4, v3, v5, v6}, Ljava/text/PatternEntry;-><init>(ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    #@157
    return-object v4

    #@158
    .line 226
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x26 -> :sswitch_5
        0x27 -> :sswitch_7
        0x2c -> :sswitch_2
        0x2f -> :sswitch_6
        0x3b -> :sswitch_3
        0x3c -> :sswitch_4
        0x3d -> :sswitch_1
    .end sparse-switch
.end method
