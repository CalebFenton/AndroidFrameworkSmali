.class public Ljava/net/URLDecoder;
.super Ljava/lang/Object;
.source "URLDecoder.java"


# static fields
.field static dfltEncName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 82
    sget-object v0, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    #@2
    sput-object v0, Ljava/net/URLDecoder;->dfltEncName:Ljava/lang/String;

    #@4
    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 98
    const/4 v1, 0x0

    #@1
    .line 101
    .local v1, "str":Ljava/lang/String;
    :try_start_0
    sget-object v2, Ljava/net/URLDecoder;->dfltEncName:Ljava/lang/String;

    #@3
    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    .line 106
    .end local v1    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    #@8
    .line 102
    .restart local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v12, 0x25

    #@2
    .line 136
    const/4 v4, 0x0

    #@3
    .line 137
    .local v4, "needToChange":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v5

    #@7
    .line 138
    .local v5, "numChars":I
    new-instance v8, Ljava/lang/StringBuffer;

    #@9
    const/16 v10, 0x1f4

    #@b
    if-le v5, v10, :cond_0

    #@d
    div-int/lit8 v10, v5, 0x2

    #@f
    :goto_0
    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    #@12
    .line 139
    .local v8, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    #@13
    .line 141
    .local v3, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@16
    move-result v10

    #@17
    if-nez v10, :cond_1

    #@19
    .line 142
    new-instance v10, Ljava/io/UnsupportedEncodingException;

    #@1b
    const-string/jumbo v11, "URLDecoder: empty string enc parameter"

    #@1e
    invoke-direct {v10, v11}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@21
    throw v10

    #@22
    .end local v3    # "i":I
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    move v10, v5

    #@23
    .line 138
    goto :goto_0

    #@24
    .line 146
    .restart local v3    # "i":I
    .restart local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    const/4 v0, 0x0

    #@25
    .line 147
    :goto_1
    if-ge v3, v5, :cond_8

    #@27
    .line 148
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v1

    #@2b
    .line 149
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    #@2e
    .line 207
    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@31
    .line 208
    add-int/lit8 v3, v3, 0x1

    #@33
    .line 209
    goto :goto_1

    #@34
    .line 151
    :sswitch_0
    const/16 v10, 0x20

    #@36
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@39
    .line 152
    add-int/lit8 v3, v3, 0x1

    #@3b
    .line 153
    const/4 v4, 0x1

    #@3c
    .line 154
    goto :goto_1

    #@3d
    .line 169
    :sswitch_1
    if-nez v0, :cond_2

    #@3f
    .line 170
    sub-int v10, v5, v3

    #@41
    :try_start_0
    div-int/lit8 v10, v10, 0x3

    #@43
    new-array v0, v10, [B

    #@45
    .line 171
    :cond_2
    const/4 v6, 0x0

    #@46
    .local v6, "pos":I
    move v7, v6

    #@47
    .line 173
    .end local v6    # "pos":I
    .local v7, "pos":I
    :goto_2
    add-int/lit8 v10, v3, 0x2

    #@49
    if-ge v10, v5, :cond_6

    #@4b
    .line 174
    if-ne v1, v12, :cond_6

    #@4d
    .line 176
    add-int/lit8 v10, v3, 0x1

    #@4f
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@52
    move-result v10

    #@53
    invoke-static {v10}, Ljava/net/URLDecoder;->isValidHexChar(C)Z

    #@56
    move-result v10

    #@57
    if-eqz v10, :cond_3

    #@59
    add-int/lit8 v10, v3, 0x2

    #@5b
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@5e
    move-result v10

    #@5f
    invoke-static {v10}, Ljava/net/URLDecoder;->isValidHexChar(C)Z

    #@62
    move-result v10

    #@63
    if-eqz v10, :cond_3

    #@65
    .line 181
    add-int/lit8 v10, v3, 0x1

    #@67
    add-int/lit8 v11, v3, 0x3

    #@69
    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6c
    move-result-object v10

    #@6d
    const/16 v11, 0x10

    #@6f
    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@72
    move-result v9

    #@73
    .line 182
    .local v9, "v":I
    if-gez v9, :cond_4

    #@75
    .line 183
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@77
    new-instance v11, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v12, "URLDecoder: Illegal hex characters in escape (%) pattern - negative value : "

    #@7f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v11

    #@83
    .line 184
    add-int/lit8 v12, v3, 0x3

    #@85
    invoke-virtual {p0, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@88
    move-result-object v12

    #@89
    .line 183
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v11

    #@8d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v11

    #@91
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@94
    throw v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@95
    .line 199
    .end local v7    # "pos":I
    .end local v9    # "v":I
    :catch_0
    move-exception v2

    #@96
    .line 200
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@98
    .line 201
    new-instance v11, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v12, "URLDecoder: Illegal hex characters in escape (%) pattern - "

    #@a0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v11

    #@a4
    .line 202
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@a7
    move-result-object v12

    #@a8
    .line 201
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v11

    #@ac
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v11

    #@b0
    .line 200
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b3
    throw v10

    #@b4
    .line 177
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "pos":I
    :cond_3
    :try_start_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@b6
    new-instance v11, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v12, "URLDecoder: Illegal hex characters in escape (%) pattern : "

    #@be
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v11

    #@c2
    .line 178
    add-int/lit8 v12, v3, 0x3

    #@c4
    invoke-virtual {p0, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c7
    move-result-object v12

    #@c8
    .line 177
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v11

    #@cc
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v11

    #@d0
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d3
    throw v10

    #@d4
    .line 185
    .restart local v9    # "v":I
    :cond_4
    add-int/lit8 v6, v7, 0x1

    #@d6
    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    int-to-byte v10, v9

    #@d7
    aput-byte v10, v0, v7

    #@d9
    .line 186
    add-int/lit8 v3, v3, 0x3

    #@db
    .line 187
    if-ge v3, v5, :cond_5

    #@dd
    .line 188
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@e0
    move-result v1

    #@e1
    :cond_5
    move v7, v6

    #@e2
    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    goto/16 :goto_2

    #@e4
    .line 194
    .end local v9    # "v":I
    :cond_6
    if-ge v3, v5, :cond_7

    #@e6
    if-ne v1, v12, :cond_7

    #@e8
    .line 195
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@ea
    .line 196
    const-string/jumbo v11, "URLDecoder: Incomplete trailing escape (%) pattern"

    #@ed
    .line 195
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f0
    throw v10

    #@f1
    .line 198
    :cond_7
    new-instance v10, Ljava/lang/String;

    #@f3
    const/4 v11, 0x0

    #@f4
    invoke-direct {v10, v0, v11, v7, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@f7
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@fa
    .line 204
    const/4 v4, 0x1

    #@fb
    goto/16 :goto_1

    #@fd
    .line 213
    .end local v1    # "c":C
    .end local v7    # "pos":I
    :cond_8
    if-eqz v4, :cond_9

    #@ff
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@102
    move-result-object p0

    #@103
    .end local p0    # "s":Ljava/lang/String;
    :cond_9
    return-object p0

    #@104
    .line 149
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidHexChar(C)Z
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 218
    const/16 v2, 0x30

    #@4
    if-gt v2, p0, :cond_1

    #@6
    const/16 v2, 0x39

    #@8
    if-gt p0, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/16 v2, 0x61

    #@d
    if-gt v2, p0, :cond_2

    #@f
    const/16 v2, 0x66

    #@11
    if-le p0, v2, :cond_0

    #@13
    :cond_2
    const/16 v2, 0x41

    #@15
    if-gt v2, p0, :cond_3

    #@17
    const/16 v2, 0x46

    #@19
    if-le p0, v2, :cond_0

    #@1b
    :cond_3
    move v0, v1

    #@1c
    goto :goto_0
.end method
