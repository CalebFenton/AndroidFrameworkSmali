.class public Ljava/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private delimiters:Ljava/lang/String;

.field private position:I

.field private returnDelimiters:Z

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, " \t\n\r\u000c"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@7
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@4
    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;
    .param p3, "returnDelimiters"    # Z

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    if-nez p1, :cond_0

    #@5
    .line 95
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "string == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 97
    :cond_0
    iput-object p1, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@10
    .line 98
    iput-object p2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@12
    .line 99
    iput-boolean p3, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    #@14
    .line 100
    const/4 v0, 0x0

    #@15
    iput v0, p0, Ljava/util/StringTokenizer;->position:I

    #@17
    .line 93
    return-void
.end method


# virtual methods
.method public countTokens()I
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 110
    const/4 v0, 0x0

    #@2
    .line 111
    .local v0, "count":I
    const/4 v2, 0x0

    #@3
    .line 112
    .local v2, "inToken":Z
    iget v1, p0, Ljava/util/StringTokenizer;->position:I

    #@5
    .local v1, "i":I
    iget-object v4, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@a
    move-result v3

    #@b
    .local v3, "length":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@d
    .line 113
    iget-object v4, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@f
    iget-object v5, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@11
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v5

    #@15
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    #@18
    move-result v4

    #@19
    if-ltz v4, :cond_2

    #@1b
    .line 114
    iget-boolean v4, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 115
    add-int/lit8 v0, v0, 0x1

    #@21
    .line 116
    :cond_0
    if-eqz v2, :cond_1

    #@23
    .line 117
    add-int/lit8 v0, v0, 0x1

    #@25
    .line 118
    const/4 v2, 0x0

    #@26
    .line 112
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 121
    :cond_2
    const/4 v2, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 124
    :cond_3
    if-eqz v2, :cond_4

    #@2d
    .line 125
    add-int/lit8 v0, v0, 0x1

    #@2f
    .line 126
    :cond_4
    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hasMoreTokens()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 145
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 146
    new-instance v2, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v3, "delimiters == null"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 148
    :cond_0
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@14
    move-result v1

    #@15
    .line 149
    .local v1, "length":I
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    #@17
    if-ge v2, v1, :cond_3

    #@19
    .line 150
    iget-boolean v2, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 151
    return v5

    #@1e
    .line 155
    :cond_1
    iget v0, p0, Ljava/util/StringTokenizer;->position:I

    #@20
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@22
    .line 156
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@24
    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@26
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v3

    #@2a
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    #@2d
    move-result v2

    #@2e
    const/4 v3, -0x1

    #@2f
    if-ne v2, v3, :cond_2

    #@31
    .line 157
    return v5

    #@32
    .line 155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 159
    .end local v0    # "i":I
    :cond_3
    return v4
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 182
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 183
    new-instance v2, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v3, "delimiters == null"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 185
    :cond_0
    iget v0, p0, Ljava/util/StringTokenizer;->position:I

    #@10
    .line 186
    .local v0, "i":I
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@15
    move-result v1

    #@16
    .line 188
    .local v1, "length":I
    if-ge v0, v1, :cond_8

    #@18
    .line 189
    iget-boolean v2, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    #@1a
    if-eqz v2, :cond_4

    #@1c
    .line 190
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@1e
    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@20
    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v3

    #@26
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    #@29
    move-result v2

    #@2a
    if-ltz v2, :cond_1

    #@2c
    .line 191
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@2e
    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    #@30
    add-int/lit8 v4, v3, 0x1

    #@32
    iput v4, p0, Ljava/util/StringTokenizer;->position:I

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@37
    move-result v2

    #@38
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    return-object v2

    #@3d
    .line 192
    :cond_1
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    #@3f
    :goto_0
    add-int/lit8 v2, v2, 0x1

    #@41
    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    #@43
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    #@45
    if-ge v2, v1, :cond_3

    #@47
    .line 193
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@49
    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@4b
    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@50
    move-result v3

    #@51
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    #@54
    move-result v2

    #@55
    if-ltz v2, :cond_2

    #@57
    .line 194
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@59
    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    #@5b
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    return-object v2

    #@60
    .line 192
    :cond_2
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    #@62
    goto :goto_0

    #@63
    .line 195
    :cond_3
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@65
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    return-object v2

    #@6a
    .line 198
    :cond_4
    :goto_1
    if-ge v0, v1, :cond_5

    #@6c
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@6e
    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@70
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@73
    move-result v3

    #@74
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    #@77
    move-result v2

    #@78
    if-ltz v2, :cond_5

    #@7a
    .line 199
    add-int/lit8 v0, v0, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 200
    :cond_5
    iput v0, p0, Ljava/util/StringTokenizer;->position:I

    #@7f
    .line 201
    if-ge v0, v1, :cond_8

    #@81
    .line 202
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    #@83
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@85
    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    #@87
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    #@89
    if-ge v2, v1, :cond_7

    #@8b
    .line 203
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@8d
    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@8f
    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    #@91
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@94
    move-result v3

    #@95
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    #@98
    move-result v2

    #@99
    if-ltz v2, :cond_6

    #@9b
    .line 204
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@9d
    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    #@9f
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a2
    move-result-object v2

    #@a3
    return-object v2

    #@a4
    .line 202
    :cond_6
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    #@a6
    goto :goto_2

    #@a7
    .line 205
    :cond_7
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    #@a9
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@ac
    move-result-object v2

    #@ad
    return-object v2

    #@ae
    .line 208
    :cond_8
    new-instance v2, Ljava/util/NoSuchElementException;

    #@b0
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@b3
    throw v2
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "delims"    # Ljava/lang/String;

    #@0
    .prologue
    .line 222
    iput-object p1, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@2
    .line 223
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
