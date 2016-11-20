.class public Lsun/net/www/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/HeaderParser$ParserIterator;
    }
.end annotation


# instance fields
.field asize:I

.field nkeys:I

.field raw:Ljava/lang/String;

.field tab:[[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    const/16 v0, 0xa

    #@5
    iput v0, p0, Lsun/net/www/HeaderParser;->asize:I

    #@7
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "raw"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 55
    const/16 v0, 0xa

    #@6
    iput v0, p0, Lsun/net/www/HeaderParser;->asize:I

    #@8
    .line 58
    iput-object p1, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    #@a
    .line 59
    const-class v0, Ljava/lang/String;

    #@c
    new-array v1, v4, [I

    #@e
    iget v2, p0, Lsun/net/www/HeaderParser;->asize:I

    #@10
    const/4 v3, 0x0

    #@11
    aput v2, v1, v3

    #@13
    const/4 v2, 0x1

    #@14
    aput v4, v1, v2

    #@16
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, [[Ljava/lang/String;

    #@1c
    iput-object v0, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@1e
    .line 60
    invoke-direct {p0}, Lsun/net/www/HeaderParser;->parse()V

    #@21
    .line 57
    return-void
.end method

.method private parse()V
    .locals 14

    #@0
    .prologue
    .line 86
    iget-object v10, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    #@2
    if-eqz v10, :cond_e

    #@4
    .line 87
    iget-object v10, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    #@6
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9
    move-result-object v10

    #@a
    iput-object v10, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    #@c
    .line 88
    iget-object v10, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    #@e
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    #@11
    move-result-object v2

    #@12
    .line 89
    .local v2, "ca":[C
    const/4 v0, 0x0

    #@13
    .local v0, "beg":I
    const/4 v3, 0x0

    #@14
    .local v3, "end":I
    const/4 v4, 0x0

    #@15
    .line 90
    .local v4, "i":I
    const/4 v6, 0x1

    #@16
    .line 91
    .local v6, "inKey":Z
    const/4 v7, 0x0

    #@17
    .line 92
    .local v7, "inQuote":Z
    array-length v8, v2

    #@18
    .local v8, "len":I
    move v5, v4

    #@19
    .line 93
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_0
    if-ge v3, v8, :cond_d

    #@1b
    .line 94
    aget-char v1, v2, v3

    #@1d
    .line 95
    .local v1, "c":C
    const/16 v10, 0x3d

    #@1f
    if-ne v1, v10, :cond_0

    #@21
    if-eqz v7, :cond_4

    #@23
    .line 100
    :cond_0
    const/16 v10, 0x22

    #@25
    if-ne v1, v10, :cond_6

    #@27
    .line 101
    if-eqz v7, :cond_5

    #@29
    .line 102
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@2b
    add-int/lit8 v4, v5, 0x1

    #@2d
    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    #@2f
    new-instance v11, Ljava/lang/String;

    #@31
    sub-int v12, v3, v0

    #@33
    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    #@36
    const/4 v12, 0x1

    #@37
    aput-object v11, v10, v12

    #@39
    .line 103
    const/4 v7, 0x0

    #@3a
    .line 105
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@3c
    .line 106
    if-ge v3, v8, :cond_2

    #@3e
    aget-char v10, v2, v3

    #@40
    const/16 v11, 0x20

    #@42
    if-eq v10, v11, :cond_1

    #@44
    aget-char v10, v2, v3

    #@46
    const/16 v11, 0x2c

    #@48
    if-eq v10, v11, :cond_1

    #@4a
    .line 107
    :cond_2
    const/4 v6, 0x1

    #@4b
    .line 108
    move v0, v3

    #@4c
    .line 131
    :goto_1
    iget v10, p0, Lsun/net/www/HeaderParser;->asize:I

    #@4e
    if-ne v4, v10, :cond_3

    #@50
    .line 132
    iget v10, p0, Lsun/net/www/HeaderParser;->asize:I

    #@52
    mul-int/lit8 v10, v10, 0x2

    #@54
    iput v10, p0, Lsun/net/www/HeaderParser;->asize:I

    #@56
    .line 133
    const-class v10, Ljava/lang/String;

    #@58
    const/4 v11, 0x2

    #@59
    new-array v11, v11, [I

    #@5b
    iget v12, p0, Lsun/net/www/HeaderParser;->asize:I

    #@5d
    const/4 v13, 0x0

    #@5e
    aput v12, v11, v13

    #@60
    const/4 v12, 0x2

    #@61
    const/4 v13, 0x1

    #@62
    aput v12, v11, v13

    #@64
    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@67
    move-result-object v9

    #@68
    check-cast v9, [[Ljava/lang/String;

    #@6a
    .line 134
    .local v9, "ntab":[[Ljava/lang/String;
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@6c
    iget-object v11, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@6e
    array-length v11, v11

    #@6f
    const/4 v12, 0x0

    #@70
    const/4 v13, 0x0

    #@71
    invoke-static {v10, v12, v9, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@74
    .line 135
    iput-object v9, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@76
    .end local v9    # "ntab":[[Ljava/lang/String;
    :cond_3
    move v5, v4

    #@77
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    #@78
    .line 96
    :cond_4
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@7a
    aget-object v10, v10, v5

    #@7c
    new-instance v11, Ljava/lang/String;

    #@7e
    sub-int v12, v3, v0

    #@80
    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    #@83
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@86
    move-result-object v11

    #@87
    const/4 v12, 0x0

    #@88
    aput-object v11, v10, v12

    #@8a
    .line 97
    const/4 v6, 0x0

    #@8b
    .line 98
    add-int/lit8 v3, v3, 0x1

    #@8d
    .line 99
    move v0, v3

    #@8e
    move v4, v5

    #@8f
    .line 95
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    #@90
    .line 110
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_5
    const/4 v7, 0x1

    #@91
    .line 111
    add-int/lit8 v3, v3, 0x1

    #@93
    .line 112
    move v0, v3

    #@94
    move v4, v5

    #@95
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    #@96
    .line 114
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_6
    const/16 v10, 0x20

    #@98
    if-eq v1, v10, :cond_7

    #@9a
    const/16 v10, 0x2c

    #@9c
    if-ne v1, v10, :cond_c

    #@9e
    .line 115
    :cond_7
    if-eqz v7, :cond_8

    #@a0
    .line 116
    add-int/lit8 v3, v3, 0x1

    #@a2
    .line 117
    goto/16 :goto_0

    #@a4
    .line 118
    :cond_8
    if-eqz v6, :cond_a

    #@a6
    .line 119
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@a8
    add-int/lit8 v4, v5, 0x1

    #@aa
    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    #@ac
    new-instance v11, Ljava/lang/String;

    #@ae
    sub-int v12, v3, v0

    #@b0
    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    #@b3
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@b6
    move-result-object v11

    #@b7
    const/4 v12, 0x0

    #@b8
    aput-object v11, v10, v12

    #@ba
    .line 123
    :goto_2
    if-ge v3, v8, :cond_b

    #@bc
    aget-char v10, v2, v3

    #@be
    const/16 v11, 0x20

    #@c0
    if-eq v10, v11, :cond_9

    #@c2
    aget-char v10, v2, v3

    #@c4
    const/16 v11, 0x2c

    #@c6
    if-ne v10, v11, :cond_b

    #@c8
    .line 124
    :cond_9
    add-int/lit8 v3, v3, 0x1

    #@ca
    goto :goto_2

    #@cb
    .line 121
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_a
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@cd
    add-int/lit8 v4, v5, 0x1

    #@cf
    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    #@d1
    new-instance v11, Ljava/lang/String;

    #@d3
    sub-int v12, v3, v0

    #@d5
    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    #@d8
    const/4 v12, 0x1

    #@d9
    aput-object v11, v10, v12

    #@db
    goto :goto_2

    #@dc
    .line 126
    :cond_b
    const/4 v6, 0x1

    #@dd
    .line 127
    move v0, v3

    #@de
    goto/16 :goto_1

    #@e0
    .line 129
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_c
    add-int/lit8 v3, v3, 0x1

    #@e2
    move v4, v5

    #@e3
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    #@e5
    .line 139
    .end local v1    # "c":C
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_d
    add-int/lit8 v3, v3, -0x1

    #@e7
    if-le v3, v0, :cond_11

    #@e9
    .line 140
    if-nez v6, :cond_10

    #@eb
    .line 141
    aget-char v10, v2, v3

    #@ed
    const/16 v11, 0x22

    #@ef
    if-ne v10, v11, :cond_f

    #@f1
    .line 142
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@f3
    add-int/lit8 v4, v5, 0x1

    #@f5
    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    #@f7
    new-instance v11, Ljava/lang/String;

    #@f9
    sub-int v12, v3, v0

    #@fb
    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    #@fe
    const/4 v12, 0x1

    #@ff
    aput-object v11, v10, v12

    #@101
    .line 160
    :goto_3
    iput v4, p0, Lsun/net/www/HeaderParser;->nkeys:I

    #@103
    .line 84
    .end local v0    # "beg":I
    .end local v2    # "ca":[C
    .end local v3    # "end":I
    .end local v4    # "i":I
    .end local v6    # "inKey":Z
    .end local v7    # "inQuote":Z
    .end local v8    # "len":I
    :cond_e
    return-void

    #@104
    .line 144
    .restart local v0    # "beg":I
    .restart local v2    # "ca":[C
    .restart local v3    # "end":I
    .restart local v5    # "i":I
    .restart local v6    # "inKey":Z
    .restart local v7    # "inQuote":Z
    .restart local v8    # "len":I
    :cond_f
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@106
    add-int/lit8 v4, v5, 0x1

    #@108
    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    #@10a
    new-instance v11, Ljava/lang/String;

    #@10c
    sub-int v12, v3, v0

    #@10e
    add-int/lit8 v12, v12, 0x1

    #@110
    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    #@113
    const/4 v12, 0x1

    #@114
    aput-object v11, v10, v12

    #@116
    goto :goto_3

    #@117
    .line 147
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_10
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@119
    add-int/lit8 v4, v5, 0x1

    #@11b
    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    #@11d
    new-instance v11, Ljava/lang/String;

    #@11f
    sub-int v12, v3, v0

    #@121
    add-int/lit8 v12, v12, 0x1

    #@123
    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    #@126
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@129
    move-result-object v11

    #@12a
    const/4 v12, 0x0

    #@12b
    aput-object v11, v10, v12

    #@12d
    goto :goto_3

    #@12e
    .line 149
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_11
    if-ne v3, v0, :cond_14

    #@130
    .line 150
    if-nez v6, :cond_13

    #@132
    .line 151
    aget-char v10, v2, v3

    #@134
    const/16 v11, 0x22

    #@136
    if-ne v10, v11, :cond_12

    #@138
    .line 152
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@13a
    add-int/lit8 v4, v5, 0x1

    #@13c
    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    #@13e
    add-int/lit8 v11, v3, -0x1

    #@140
    aget-char v11, v2, v11

    #@142
    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@145
    move-result-object v11

    #@146
    const/4 v12, 0x1

    #@147
    aput-object v11, v10, v12

    #@149
    goto :goto_3

    #@14a
    .line 154
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_12
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@14c
    add-int/lit8 v4, v5, 0x1

    #@14e
    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    #@150
    aget-char v11, v2, v3

    #@152
    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@155
    move-result-object v11

    #@156
    const/4 v12, 0x1

    #@157
    aput-object v11, v10, v12

    #@159
    goto :goto_3

    #@15a
    .line 157
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_13
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@15c
    add-int/lit8 v4, v5, 0x1

    #@15e
    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    #@160
    aget-char v11, v2, v3

    #@162
    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@165
    move-result-object v11

    #@166
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@169
    move-result-object v11

    #@16a
    const/4 v12, 0x0

    #@16b
    aput-object v11, v10, v12

    #@16d
    goto :goto_3

    #@16e
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_14
    move v4, v5

    #@16f
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_3
.end method


# virtual methods
.method public findInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "Default"    # I

    #@0
    .prologue
    .line 242
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0, p1, v1}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 243
    :catch_0
    move-exception v0

    #@e
    .line 244
    .local v0, "t":Ljava/lang/Throwable;
    return p2
.end method

.method public findKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 166
    if-ltz p1, :cond_0

    #@3
    iget v0, p0, Lsun/net/www/HeaderParser;->asize:I

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 167
    :cond_0
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 168
    :cond_1
    iget-object v0, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@b
    aget-object v0, v0, p1

    #@d
    aget-object v0, v0, v1

    #@f
    return-object v0
.end method

.method public findValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 172
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Lsun/net/www/HeaderParser;->asize:I

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 173
    :cond_0
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 174
    :cond_1
    iget-object v0, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@a
    aget-object v0, v0, p1

    #@c
    const/4 v1, 0x1

    #@d
    aget-object v0, v0, v1

    #@f
    return-object v0
.end method

.method public findValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 178
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public findValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "Default"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 182
    if-nez p1, :cond_0

    #@3
    .line 183
    return-object p2

    #@4
    .line 184
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    .line 185
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lsun/net/www/HeaderParser;->asize:I

    #@b
    if-ge v0, v1, :cond_3

    #@d
    .line 186
    iget-object v1, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@f
    aget-object v1, v1, v0

    #@11
    aget-object v1, v1, v2

    #@13
    if-nez v1, :cond_1

    #@15
    .line 187
    return-object p2

    #@16
    .line 188
    :cond_1
    iget-object v1, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@18
    aget-object v1, v1, v0

    #@1a
    aget-object v1, v1, v2

    #@1c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 189
    iget-object v1, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@24
    aget-object v1, v1, v0

    #@26
    const/4 v2, 0x1

    #@27
    aget-object v1, v1, v2

    #@29
    return-object v1

    #@2a
    .line 185
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 192
    :cond_3
    return-object p2
.end method

.method public keys()Ljava/util/Iterator;
    .locals 2

    #@0
    .prologue
    .line 214
    new-instance v0, Lsun/net/www/HeaderParser$ParserIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lsun/net/www/HeaderParser$ParserIterator;-><init>(Lsun/net/www/HeaderParser;Z)V

    #@6
    return-object v0
.end method

.method public subsequence(II)Lsun/net/www/HeaderParser;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x0

    #@2
    .line 71
    if-nez p1, :cond_0

    #@4
    iget v1, p0, Lsun/net/www/HeaderParser;->nkeys:I

    #@6
    if-ne p2, v1, :cond_0

    #@8
    .line 72
    return-object p0

    #@9
    .line 74
    :cond_0
    if-ltz p1, :cond_1

    #@b
    if-lt p1, p2, :cond_2

    #@d
    .line 75
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "invalid start or end"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 74
    :cond_2
    iget v1, p0, Lsun/net/www/HeaderParser;->nkeys:I

    #@18
    if-gt p2, v1, :cond_1

    #@1a
    .line 76
    new-instance v0, Lsun/net/www/HeaderParser;

    #@1c
    invoke-direct {v0}, Lsun/net/www/HeaderParser;-><init>()V

    #@1f
    .line 77
    .local v0, "n":Lsun/net/www/HeaderParser;
    const-class v1, Ljava/lang/String;

    #@21
    new-array v2, v5, [I

    #@23
    iget v3, p0, Lsun/net/www/HeaderParser;->asize:I

    #@25
    aput v3, v2, v4

    #@27
    const/4 v3, 0x1

    #@28
    aput v5, v2, v3

    #@2a
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, [[Ljava/lang/String;

    #@30
    iput-object v1, v0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@32
    .line 78
    iget v1, p0, Lsun/net/www/HeaderParser;->asize:I

    #@34
    iput v1, v0, Lsun/net/www/HeaderParser;->asize:I

    #@36
    .line 79
    iget-object v1, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@38
    iget-object v2, v0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@3a
    sub-int v3, p2, p1

    #@3c
    invoke-static {v1, p1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3f
    .line 80
    sub-int v1, p2, p1

    #@41
    iput v1, v0, Lsun/net/www/HeaderParser;->nkeys:I

    #@43
    .line 81
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 222
    invoke-virtual {p0}, Lsun/net/www/HeaderParser;->keys()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .line 223
    .local v1, "k":Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    .line 224
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v6, "{size="

    #@11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v5

    #@15
    iget v6, p0, Lsun/net/www/HeaderParser;->asize:I

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    const-string/jumbo v6, " nkeys="

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    iget v6, p0, Lsun/net/www/HeaderParser;->nkeys:I

    #@24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    const-string/jumbo v6, " "

    #@2b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    .line 225
    const/4 v0, 0x0

    #@37
    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_3

    #@3d
    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Ljava/lang/String;

    #@43
    .line 227
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lsun/net/www/HeaderParser;->findValue(I)Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    .line 228
    .local v4, "val":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@49
    const-string/jumbo v5, ""

    #@4c
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v5

    #@50
    if-eqz v5, :cond_0

    #@52
    .line 229
    const/4 v4, 0x0

    #@53
    .line 231
    .end local v4    # "val":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v6, " {"

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    if-nez v4, :cond_2

    #@65
    const-string/jumbo v5, ""

    #@68
    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    const-string/jumbo v6, "}"

    #@6f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7a
    .line 232
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7d
    move-result v5

    #@7e
    if-eqz v5, :cond_1

    #@80
    .line 233
    const-string/jumbo v5, ","

    #@83
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@86
    .line 225
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@88
    goto :goto_0

    #@89
    .line 231
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v7, ","

    #@91
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    goto :goto_1

    #@9e
    .line 236
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, " }"

    #@a1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a4
    .line 237
    new-instance v5, Ljava/lang/String;

    #@a6
    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    #@a9
    return-object v5
.end method

.method public values()Ljava/util/Iterator;
    .locals 2

    #@0
    .prologue
    .line 218
    new-instance v0, Lsun/net/www/HeaderParser$ParserIterator;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, p0, v1}, Lsun/net/www/HeaderParser$ParserIterator;-><init>(Lsun/net/www/HeaderParser;Z)V

    #@6
    return-object v0
.end method
