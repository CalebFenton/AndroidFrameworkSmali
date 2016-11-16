.class public Ljava/util/jar/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Manifest$FastInputStream;
    }
.end annotation


# instance fields
.field private attr:Ljava/util/jar/Attributes;

.field private entries:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-instance v0, Ljava/util/jar/Attributes;

    #@5
    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    #@a
    .line 54
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    #@11
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-instance v0, Ljava/util/jar/Attributes;

    #@5
    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    #@a
    .line 54
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    #@11
    .line 69
    invoke-virtual {p0, p1}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    #@14
    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/jar/Manifest;)V
    .locals 2
    .param p1, "man"    # Ljava/util/jar/Manifest;

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-instance v0, Ljava/util/jar/Attributes;

    #@5
    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    #@a
    .line 54
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    #@11
    .line 78
    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    #@13
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->putAll(Ljava/util/Map;)V

    #@1a
    .line 79
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    #@1c
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    #@1f
    move-result-object v1

    #@20
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@23
    .line 77
    return-void
.end method

.method static make72Safe(Ljava/lang/StringBuffer;)V
    .locals 3
    .param p0, "line"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@3
    move-result v1

    #@4
    .line 174
    .local v1, "length":I
    const/16 v2, 0x48

    #@6
    if-le v1, v2, :cond_0

    #@8
    .line 175
    const/16 v0, 0x46

    #@a
    .line 176
    .local v0, "index":I
    :goto_0
    add-int/lit8 v2, v1, -0x2

    #@c
    if-ge v0, v2, :cond_0

    #@e
    .line 177
    const-string/jumbo v2, "\r\n "

    #@11
    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    .line 178
    add-int/lit8 v0, v0, 0x48

    #@16
    .line 179
    add-int/lit8 v1, v1, 0x3

    #@18
    goto :goto_0

    #@19
    .line 182
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method private parseName([BI)Ljava/lang/String;
    .locals 5
    .param p1, "lbuf"    # [B
    .param p2, "len"    # I

    #@0
    .prologue
    .line 265
    const/4 v1, 0x0

    #@1
    aget-byte v1, p1, v1

    #@3
    invoke-direct {p0, v1}, Ljava/util/jar/Manifest;->toLower(I)I

    #@6
    move-result v1

    #@7
    const/16 v2, 0x6e

    #@9
    if-ne v1, v2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    aget-byte v1, p1, v1

    #@e
    invoke-direct {p0, v1}, Ljava/util/jar/Manifest;->toLower(I)I

    #@11
    move-result v1

    #@12
    const/16 v2, 0x61

    #@14
    if-ne v1, v2, :cond_0

    #@16
    .line 266
    const/4 v1, 0x2

    #@17
    aget-byte v1, p1, v1

    #@19
    invoke-direct {p0, v1}, Ljava/util/jar/Manifest;->toLower(I)I

    #@1c
    move-result v1

    #@1d
    const/16 v2, 0x6d

    #@1f
    if-ne v1, v2, :cond_0

    #@21
    const/4 v1, 0x3

    #@22
    aget-byte v1, p1, v1

    #@24
    invoke-direct {p0, v1}, Ljava/util/jar/Manifest;->toLower(I)I

    #@27
    move-result v1

    #@28
    const/16 v2, 0x65

    #@2a
    if-ne v1, v2, :cond_0

    #@2c
    .line 267
    const/4 v1, 0x4

    #@2d
    aget-byte v1, p1, v1

    #@2f
    const/16 v2, 0x3a

    #@31
    if-ne v1, v2, :cond_0

    #@33
    const/4 v1, 0x5

    #@34
    aget-byte v1, p1, v1

    #@36
    const/16 v2, 0x20

    #@38
    if-ne v1, v2, :cond_0

    #@3a
    .line 269
    :try_start_0
    new-instance v1, Ljava/lang/String;

    #@3c
    add-int/lit8 v2, p2, -0x6

    #@3e
    const-string/jumbo v3, "UTF8"

    #@41
    const/4 v4, 0x6

    #@42
    invoke-direct {v1, p1, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    return-object v1

    #@46
    .line 271
    :catch_0
    move-exception v0

    #@47
    .line 274
    :cond_0
    const/4 v1, 0x0

    #@48
    return-object v1
.end method

.method private toLower(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 278
    const/16 v0, 0x41

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const/16 v0, 0x5a

    #@6
    if-gt p1, v0, :cond_0

    #@8
    add-int/lit8 v0, p1, -0x41

    #@a
    add-int/lit8 p1, v0, 0x61

    #@c
    .end local p1    # "c":I
    :cond_0
    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    #@2
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clear()V

    #@5
    .line 134
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    #@7
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@a
    .line 132
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 315
    new-instance v0, Ljava/util/jar/Manifest;

    #@2
    invoke-direct {v0, p0}, Ljava/util/jar/Manifest;-><init>(Ljava/util/jar/Manifest;)V

    #@5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 290
    instance-of v2, p1, Ljava/util/jar/Manifest;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 291
    check-cast v0, Ljava/util/jar/Manifest;

    #@8
    .line 292
    .local v0, "m":Ljava/util/jar/Manifest;
    iget-object v2, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    #@a
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Ljava/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 293
    iget-object v1, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    #@16
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    .line 292
    :cond_0
    return v1

    #@1f
    .line 295
    .end local v0    # "m":Ljava/util/jar/Manifest;
    :cond_1
    return v1
.end method

.method public getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/jar/Attributes;

    #@a
    return-object v0
.end method

.method public getEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getMainAttributes()Ljava/util/jar/Attributes;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    #@2
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    #@8
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 14
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    new-instance v5, Ljava/util/jar/Manifest$FastInputStream;

    #@2
    invoke-direct {v5, p1}, Ljava/util/jar/Manifest$FastInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 197
    .local v5, "fis":Ljava/util/jar/Manifest$FastInputStream;
    const/16 v11, 0x200

    #@7
    new-array v7, v11, [B

    #@9
    .line 199
    .local v7, "lbuf":[B
    iget-object v11, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    #@b
    invoke-virtual {v11, v5, v7}, Ljava/util/jar/Attributes;->read(Ljava/util/jar/Manifest$FastInputStream;[B)V

    #@e
    .line 201
    const/4 v4, 0x0

    #@f
    .local v4, "ecount":I
    const/4 v0, 0x0

    #@10
    .line 203
    .local v0, "acount":I
    const/4 v1, 0x2

    #@11
    .line 206
    .local v1, "asize":I
    const/4 v9, 0x0

    #@12
    .line 207
    .local v9, "name":Ljava/lang/String;
    const/4 v10, 0x1

    #@13
    .line 208
    .local v10, "skipEmptyLines":Z
    const/4 v6, 0x0

    #@14
    .line 210
    .end local v9    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v5, v7}, Ljava/util/jar/Manifest$FastInputStream;->readLine([B)I

    #@17
    move-result v8

    #@18
    .local v8, "len":I
    const/4 v11, -0x1

    #@19
    if-eq v8, v11, :cond_9

    #@1b
    .line 211
    add-int/lit8 v8, v8, -0x1

    #@1d
    aget-byte v11, v7, v8

    #@1f
    const/16 v12, 0xa

    #@21
    if-eq v11, v12, :cond_1

    #@23
    .line 212
    new-instance v11, Ljava/io/IOException;

    #@25
    const-string/jumbo v12, "manifest line too long"

    #@28
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v11

    #@2c
    .line 214
    :cond_1
    if-lez v8, :cond_2

    #@2e
    add-int/lit8 v11, v8, -0x1

    #@30
    aget-byte v11, v7, v11

    #@32
    const/16 v12, 0xd

    #@34
    if-ne v11, v12, :cond_2

    #@36
    .line 215
    add-int/lit8 v8, v8, -0x1

    #@38
    .line 217
    :cond_2
    if-nez v8, :cond_3

    #@3a
    if-nez v10, :cond_0

    #@3c
    .line 220
    :cond_3
    const/4 v10, 0x0

    #@3d
    .line 222
    if-nez v9, :cond_5

    #@3f
    .line 223
    invoke-direct {p0, v7, v8}, Ljava/util/jar/Manifest;->parseName([BI)Ljava/lang/String;

    #@42
    move-result-object v9

    #@43
    .line 224
    .local v9, "name":Ljava/lang/String;
    if-nez v9, :cond_4

    #@45
    .line 225
    new-instance v11, Ljava/io/IOException;

    #@47
    const-string/jumbo v12, "invalid manifest format"

    #@4a
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v11

    #@4e
    .line 227
    :cond_4
    invoke-virtual {v5}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    #@51
    move-result v11

    #@52
    const/16 v12, 0x20

    #@54
    if-ne v11, v12, :cond_7

    #@56
    .line 229
    add-int/lit8 v11, v8, -0x6

    #@58
    new-array v6, v11, [B

    #@5a
    .line 230
    .local v6, "lastline":[B
    add-int/lit8 v11, v8, -0x6

    #@5c
    const/4 v12, 0x6

    #@5d
    const/4 v13, 0x0

    #@5e
    invoke-static {v7, v12, v6, v13, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@61
    goto :goto_0

    #@62
    .line 235
    .end local v6    # "lastline":[B
    .end local v9    # "name":Ljava/lang/String;
    :cond_5
    array-length v11, v6

    #@63
    add-int/2addr v11, v8

    #@64
    add-int/lit8 v11, v11, -0x1

    #@66
    new-array v3, v11, [B

    #@68
    .line 236
    .local v3, "buf":[B
    array-length v11, v6

    #@69
    const/4 v12, 0x0

    #@6a
    const/4 v13, 0x0

    #@6b
    invoke-static {v6, v12, v3, v13, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6e
    .line 237
    array-length v11, v6

    #@6f
    add-int/lit8 v12, v8, -0x1

    #@71
    const/4 v13, 0x1

    #@72
    invoke-static {v7, v13, v3, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@75
    .line 238
    invoke-virtual {v5}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    #@78
    move-result v11

    #@79
    const/16 v12, 0x20

    #@7b
    if-ne v11, v12, :cond_6

    #@7d
    .line 240
    move-object v6, v3

    #@7e
    .line 241
    .restart local v6    # "lastline":[B
    goto :goto_0

    #@7f
    .line 243
    .end local v6    # "lastline":[B
    :cond_6
    new-instance v9, Ljava/lang/String;

    #@81
    array-length v11, v3

    #@82
    const-string/jumbo v12, "UTF8"

    #@85
    const/4 v13, 0x0

    #@86
    invoke-direct {v9, v3, v13, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@89
    .line 244
    .restart local v9    # "name":Ljava/lang/String;
    const/4 v6, 0x0

    #@8a
    .line 246
    .end local v3    # "buf":[B
    :cond_7
    invoke-virtual {p0, v9}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@8d
    move-result-object v2

    #@8e
    .line 247
    .local v2, "attr":Ljava/util/jar/Attributes;
    if-nez v2, :cond_8

    #@90
    .line 248
    new-instance v2, Ljava/util/jar/Attributes;

    #@92
    .end local v2    # "attr":Ljava/util/jar/Attributes;
    invoke-direct {v2, v1}, Ljava/util/jar/Attributes;-><init>(I)V

    #@95
    .line 249
    .restart local v2    # "attr":Ljava/util/jar/Attributes;
    iget-object v11, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    #@97
    invoke-interface {v11, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    .line 251
    :cond_8
    invoke-virtual {v2, v5, v7}, Ljava/util/jar/Attributes;->read(Ljava/util/jar/Manifest$FastInputStream;[B)V

    #@9d
    .line 252
    add-int/lit8 v4, v4, 0x1

    #@9f
    .line 253
    invoke-virtual {v2}, Ljava/util/jar/Attributes;->size()I

    #@a2
    move-result v11

    #@a3
    add-int/2addr v0, v11

    #@a4
    .line 257
    div-int v11, v0, v4

    #@a6
    const/4 v12, 0x2

    #@a7
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    #@aa
    move-result v1

    #@ab
    .line 259
    const/4 v9, 0x0

    #@ac
    .line 260
    .local v9, "name":Ljava/lang/String;
    const/4 v10, 0x1

    #@ad
    goto/16 :goto_0

    #@af
    .line 193
    .end local v2    # "attr":Ljava/util/jar/Attributes;
    .end local v9    # "name":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 147
    new-instance v1, Ljava/io/DataOutputStream;

    #@3
    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@6
    .line 149
    .local v1, "dos":Ljava/io/DataOutputStream;
    iget-object v6, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    #@8
    invoke-virtual {v6, v1}, Ljava/util/jar/Attributes;->writeMain(Ljava/io/DataOutputStream;)V

    #@b
    .line 151
    iget-object v6, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    #@d
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@10
    move-result-object v6

    #@11
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v3

    #@15
    .line 152
    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_1

    #@1b
    .line 153
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Ljava/util/Map$Entry;

    #@21
    .line 154
    .local v2, "e":Ljava/util/Map$Entry;
    new-instance v0, Ljava/lang/StringBuffer;

    #@23
    const-string/jumbo v6, "Name: "

    #@26
    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@29
    .line 155
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, Ljava/lang/String;

    #@2f
    .line 156
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@31
    .line 157
    const-string/jumbo v6, "UTF8"

    #@34
    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@37
    move-result-object v5

    #@38
    .line 158
    .local v5, "vb":[B
    new-instance v4, Ljava/lang/String;

    #@3a
    .end local v4    # "value":Ljava/lang/String;
    array-length v6, v5

    #@3b
    invoke-direct {v4, v5, v7, v7, v6}, Ljava/lang/String;-><init>([BIII)V

    #@3e
    .line 160
    .end local v5    # "vb":[B
    .restart local v4    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    .line 161
    const-string/jumbo v6, "\r\n"

    #@44
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@47
    .line 162
    invoke-static {v0}, Ljava/util/jar/Manifest;->make72Safe(Ljava/lang/StringBuffer;)V

    #@4a
    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@51
    .line 164
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@54
    move-result-object v6

    #@55
    check-cast v6, Ljava/util/jar/Attributes;

    #@57
    invoke-virtual {v6, v1}, Ljava/util/jar/Attributes;->write(Ljava/io/DataOutputStream;)V

    #@5a
    goto :goto_0

    #@5b
    .line 166
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "e":Ljava/util/Map$Entry;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    #@5e
    .line 146
    return-void
.end method
