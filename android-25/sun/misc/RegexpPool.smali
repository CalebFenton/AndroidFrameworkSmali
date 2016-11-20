.class public Lsun/misc/RegexpPool;
.super Ljava/lang/Object;
.source "RegexpPool.java"


# static fields
.field private static final BIG:I = 0x7fffffff


# instance fields
.field private lastDepth:I

.field private prefixMachine:Lsun/misc/RegexpNode;

.field private suffixMachine:Lsun/misc/RegexpNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Lsun/misc/RegexpNode;

    #@5
    invoke-direct {v0}, Lsun/misc/RegexpNode;-><init>()V

    #@8
    iput-object v0, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    #@a
    .line 40
    new-instance v0, Lsun/misc/RegexpNode;

    #@c
    invoke-direct {v0}, Lsun/misc/RegexpNode;-><init>()V

    #@f
    iput-object v0, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    #@11
    .line 42
    const v0, 0x7fffffff

    #@14
    iput v0, p0, Lsun/misc/RegexpPool;->lastDepth:I

    #@16
    .line 44
    return-void
.end method

.method private add(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7
    .param p1, "re"    # Ljava/lang/String;
    .param p2, "ret"    # Ljava/lang/Object;
    .param p3, "replace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/REException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x2a

    #@2
    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    .line 168
    .local v2, "len":I
    const/4 v4, 0x0

    #@7
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v4

    #@b
    if-ne v4, v5, :cond_0

    #@d
    .line 169
    iget-object v3, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    #@f
    .line 170
    .local v3, "p":Lsun/misc/RegexpNode;
    :goto_0
    const/4 v4, 0x1

    #@10
    if-le v2, v4, :cond_3

    #@12
    .line 171
    add-int/lit8 v2, v2, -0x1

    #@14
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v4

    #@18
    invoke-virtual {v3, v4}, Lsun/misc/RegexpNode;->add(C)Lsun/misc/RegexpNode;

    #@1b
    move-result-object v3

    #@1c
    goto :goto_0

    #@1d
    .line 173
    .end local v3    # "p":Lsun/misc/RegexpNode;
    :cond_0
    const/4 v0, 0x0

    #@1e
    .line 174
    .local v0, "exact":Z
    add-int/lit8 v4, v2, -0x1

    #@20
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v4

    #@24
    if-ne v4, v5, :cond_1

    #@26
    .line 175
    add-int/lit8 v2, v2, -0x1

    #@28
    .line 178
    :goto_1
    iget-object v3, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    #@2a
    .line 179
    .restart local v3    # "p":Lsun/misc/RegexpNode;
    const/4 v1, 0x0

    #@2b
    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    #@2d
    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v4

    #@31
    invoke-virtual {v3, v4}, Lsun/misc/RegexpNode;->add(C)Lsun/misc/RegexpNode;

    #@34
    move-result-object v3

    #@35
    .line 179
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_2

    #@38
    .line 177
    .end local v1    # "i":I
    .end local v3    # "p":Lsun/misc/RegexpNode;
    :cond_1
    const/4 v0, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 181
    .restart local v1    # "i":I
    .restart local v3    # "p":Lsun/misc/RegexpNode;
    :cond_2
    iput-boolean v0, v3, Lsun/misc/RegexpNode;->exact:Z

    #@3c
    .line 184
    .end local v0    # "exact":Z
    .end local v1    # "i":I
    :cond_3
    iget-object v4, v3, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    #@3e
    if-eqz v4, :cond_4

    #@40
    if-eqz p3, :cond_5

    #@42
    .line 187
    :cond_4
    iput-object p1, v3, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    #@44
    .line 188
    iput-object p2, v3, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    #@46
    .line 165
    return-void

    #@47
    .line 185
    :cond_5
    new-instance v4, Lsun/misc/REException;

    #@49
    new-instance v5, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    const-string/jumbo v6, " is a duplicate"

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    invoke-direct {v4, v5}, Lsun/misc/REException;-><init>(Ljava/lang/String;)V

    #@60
    throw v4
.end method

.method private matchAfter(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "lastMatchDepth"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 192
    iget-object v6, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    #@3
    .line 193
    .local v6, "p":Lsun/misc/RegexpNode;
    move-object v1, v6

    #@4
    .line 194
    .local v1, "best":Lsun/misc/RegexpNode;
    const/4 v2, 0x0

    #@5
    .line 195
    .local v2, "bst":I
    const/4 v0, 0x0

    #@6
    .line 196
    .local v0, "bend":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v4

    #@a
    .line 198
    .local v4, "len":I
    if-gtz v4, :cond_0

    #@c
    .line 199
    return-object v7

    #@d
    .line 201
    :cond_0
    const/4 v3, 0x0

    #@e
    .local v3, "i":I
    :goto_0
    if-eqz v6, :cond_3

    #@10
    .line 202
    iget-object v7, v6, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    #@12
    if-eqz v7, :cond_2

    #@14
    iget v7, v6, Lsun/misc/RegexpNode;->depth:I

    #@16
    if-ge v7, p2, :cond_2

    #@18
    .line 203
    iget-boolean v7, v6, Lsun/misc/RegexpNode;->exact:Z

    #@1a
    if-eqz v7, :cond_1

    #@1c
    if-ne v3, v4, :cond_2

    #@1e
    .line 204
    :cond_1
    iget v7, v6, Lsun/misc/RegexpNode;->depth:I

    #@20
    iput v7, p0, Lsun/misc/RegexpPool;->lastDepth:I

    #@22
    .line 205
    move-object v1, v6

    #@23
    .line 206
    move v2, v3

    #@24
    .line 207
    move v0, v4

    #@25
    .line 209
    :cond_2
    if-lt v3, v4, :cond_5

    #@27
    .line 214
    :cond_3
    iget-object v6, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    #@29
    .line 215
    move v3, v4

    #@2a
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@2c
    if-ltz v3, :cond_6

    #@2e
    if-eqz v6, :cond_6

    #@30
    .line 216
    iget-object v7, v6, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    #@32
    if-eqz v7, :cond_4

    #@34
    iget v7, v6, Lsun/misc/RegexpNode;->depth:I

    #@36
    if-ge v7, p2, :cond_4

    #@38
    .line 217
    iget v7, v6, Lsun/misc/RegexpNode;->depth:I

    #@3a
    iput v7, p0, Lsun/misc/RegexpPool;->lastDepth:I

    #@3c
    .line 218
    move-object v1, v6

    #@3d
    .line 219
    const/4 v2, 0x0

    #@3e
    .line 220
    add-int/lit8 v0, v3, 0x1

    #@40
    .line 222
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@43
    move-result v7

    #@44
    invoke-virtual {v6, v7}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    #@47
    move-result-object v6

    #@48
    goto :goto_1

    #@49
    .line 211
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@4c
    move-result v7

    #@4d
    invoke-virtual {v6, v7}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    #@50
    move-result-object v6

    #@51
    .line 201
    add-int/lit8 v3, v3, 0x1

    #@53
    goto :goto_0

    #@54
    .line 224
    :cond_6
    iget-object v5, v1, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    #@56
    .line 225
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_7

    #@58
    instance-of v7, v5, Lsun/misc/RegexpTarget;

    #@5a
    if-eqz v7, :cond_7

    #@5c
    .line 226
    check-cast v5, Lsun/misc/RegexpTarget;

    #@5e
    .end local v5    # "o":Ljava/lang/Object;
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    invoke-interface {v5, v7}, Lsun/misc/RegexpTarget;->found(Ljava/lang/String;)Ljava/lang/Object;

    #@65
    move-result-object v5

    #@66
    .line 227
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_7
    return-object v5
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "re"    # Ljava/lang/String;
    .param p2, "ret"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/REException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lsun/misc/RegexpPool;->add(Ljava/lang/String;Ljava/lang/Object;Z)V

    #@4
    .line 58
    return-void
.end method

.method public delete(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "re"    # Ljava/lang/String;

    #@0
    .prologue
    const v8, 0x7fffffff

    #@3
    const/4 v7, 0x0

    #@4
    .line 89
    const/4 v3, 0x0

    #@5
    .line 90
    .local v3, "o":Ljava/lang/Object;
    iget-object v4, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    #@7
    .line 91
    .local v4, "p":Lsun/misc/RegexpNode;
    move-object v0, v4

    #@8
    .line 92
    .local v0, "best":Lsun/misc/RegexpNode;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v6

    #@c
    add-int/lit8 v2, v6, -0x1

    #@e
    .line 94
    .local v2, "len":I
    const/4 v5, 0x1

    #@f
    .line 96
    .local v5, "prefix":Z
    const-string/jumbo v6, "*"

    #@12
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_0

    #@18
    .line 97
    const-string/jumbo v6, "*"

    #@1b
    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_0

    #@21
    .line 100
    :goto_0
    if-gtz v2, :cond_1

    #@23
    .line 101
    return-object v7

    #@24
    .line 98
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 104
    :cond_1
    const/4 v1, 0x0

    #@28
    .local v1, "i":I
    :goto_1
    if-eqz v4, :cond_4

    #@2a
    .line 105
    iget-object v6, v4, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    #@2c
    if-eqz v6, :cond_3

    #@2e
    iget v6, v4, Lsun/misc/RegexpNode;->depth:I

    #@30
    if-ge v6, v8, :cond_3

    #@32
    .line 106
    iget-boolean v6, v4, Lsun/misc/RegexpNode;->exact:Z

    #@34
    if-eqz v6, :cond_2

    #@36
    if-ne v1, v2, :cond_3

    #@38
    .line 107
    :cond_2
    move-object v0, v4

    #@39
    .line 109
    :cond_3
    if-lt v1, v2, :cond_6

    #@3b
    .line 115
    :cond_4
    iget-object v4, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    #@3d
    .line 116
    move v1, v2

    #@3e
    :goto_2
    add-int/lit8 v1, v1, -0x1

    #@40
    if-ltz v1, :cond_7

    #@42
    if-eqz v4, :cond_7

    #@44
    .line 117
    iget-object v6, v4, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    #@46
    if-eqz v6, :cond_5

    #@48
    iget v6, v4, Lsun/misc/RegexpNode;->depth:I

    #@4a
    if-ge v6, v8, :cond_5

    #@4c
    .line 118
    const/4 v5, 0x0

    #@4d
    .line 119
    move-object v0, v4

    #@4e
    .line 121
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@51
    move-result v6

    #@52
    invoke-virtual {v4, v6}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    #@55
    move-result-object v4

    #@56
    goto :goto_2

    #@57
    .line 111
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@5a
    move-result v6

    #@5b
    invoke-virtual {v4, v6}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    #@5e
    move-result-object v4

    #@5f
    .line 104
    add-int/lit8 v1, v1, 0x1

    #@61
    goto :goto_1

    #@62
    .line 125
    :cond_7
    if-eqz v5, :cond_9

    #@64
    .line 126
    iget-object v6, v0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    #@66
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v6

    #@6a
    if-eqz v6, :cond_8

    #@6c
    .line 127
    iget-object v3, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    #@6e
    .line 128
    iput-object v7, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    #@70
    .line 137
    .end local v3    # "o":Ljava/lang/Object;
    :cond_8
    :goto_3
    return-object v3

    #@71
    .line 132
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_9
    iget-object v6, v0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    #@73
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v6

    #@77
    if-eqz v6, :cond_8

    #@79
    .line 133
    iget-object v3, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    #@7b
    .line 134
    iput-object v7, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    #@7d
    goto :goto_3
.end method

.method public match(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    const v0, 0x7fffffff

    #@3
    invoke-direct {p0, p1, v0}, Lsun/misc/RegexpPool;->matchAfter(Ljava/lang/String;I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public matchNext(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    iget v0, p0, Lsun/misc/RegexpPool;->lastDepth:I

    #@2
    invoke-direct {p0, p1, v0}, Lsun/misc/RegexpPool;->matchAfter(Ljava/lang/String;I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 245
    const-string/jumbo v0, "Regexp pool:\n"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@6
    .line 246
    iget-object v0, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    #@8
    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 247
    const-string/jumbo v0, " Suffix machine: "

    #@f
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@12
    .line 248
    iget-object v0, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    #@14
    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    #@16
    invoke-virtual {v0, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    #@19
    .line 249
    const-string/jumbo v0, "\n"

    #@1c
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@1f
    .line 251
    :cond_0
    iget-object v0, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    #@21
    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 252
    const-string/jumbo v0, " Prefix machine: "

    #@28
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@2b
    .line 253
    iget-object v0, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    #@2d
    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    #@2f
    invoke-virtual {v0, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    #@32
    .line 254
    const-string/jumbo v0, "\n"

    #@35
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@38
    .line 244
    :cond_1
    return-void
.end method

.method public replace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "re"    # Ljava/lang/String;
    .param p2, "ret"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 76
    const/4 v1, 0x1

    #@1
    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lsun/misc/RegexpPool;->add(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 74
    :goto_0
    return-void

    #@5
    .line 77
    :catch_0
    move-exception v0

    #@6
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 240
    const v0, 0x7fffffff

    #@3
    iput v0, p0, Lsun/misc/RegexpPool;->lastDepth:I

    #@5
    .line 239
    return-void
.end method
