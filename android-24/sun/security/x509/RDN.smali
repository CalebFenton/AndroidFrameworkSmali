.class public Lsun/security/x509/RDN;
.super Ljava/lang/Object;
.source "RDN.java"


# instance fields
.field final assertion:[Lsun/security/x509/AVA;

.field private volatile avaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field

.field private volatile canonicalString:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-array v0, p1, [Lsun/security/x509/AVA;

    #@5
    iput-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    #@7
    .line 92
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, v0}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #@7
    .line 169
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p3, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v9, 0x2b

    #@2
    const/4 v8, 0x3

    #@3
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 187
    const-string/jumbo v6, "RFC2253"

    #@9
    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c
    move-result v6

    #@d
    if-nez v6, :cond_0

    #@f
    .line 188
    new-instance v6, Ljava/io/IOException;

    #@11
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "Unsupported format "

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@28
    throw v6

    #@29
    .line 190
    :cond_0
    const/4 v5, 0x0

    #@2a
    .line 191
    .local v5, "searchOffset":I
    const/4 v1, 0x0

    #@2b
    .line 192
    .local v1, "avaOffset":I
    new-instance v3, Ljava/util/ArrayList;

    #@2d
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@30
    .line 193
    .local v3, "avaVec":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    #@33
    move-result v4

    #@34
    .line 194
    .local v4, "nextPlus":I
    :goto_0
    if-ltz v4, :cond_3

    #@36
    .line 202
    if-lez v4, :cond_2

    #@38
    add-int/lit8 v6, v4, -0x1

    #@3a
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@3d
    move-result v6

    #@3e
    const/16 v7, 0x5c

    #@40
    if-eq v6, v7, :cond_2

    #@42
    .line 206
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    .line 207
    .local v2, "avaString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@49
    move-result v6

    #@4a
    if-nez v6, :cond_1

    #@4c
    .line 208
    new-instance v6, Ljava/io/IOException;

    #@4e
    new-instance v7, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v8, "empty AVA in RDN \""

    #@56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    const-string/jumbo v8, "\""

    #@61
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v6

    #@6d
    .line 212
    :cond_1
    new-instance v0, Lsun/security/x509/AVA;

    #@6f
    .line 213
    new-instance v6, Ljava/io/StringReader;

    #@71
    invoke-direct {v6, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@74
    .line 212
    invoke-direct {v0, v6, v8, p3}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    #@77
    .line 214
    .local v0, "ava":Lsun/security/x509/AVA;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7a
    .line 217
    add-int/lit8 v1, v4, 0x1

    #@7c
    .line 219
    .end local v0    # "ava":Lsun/security/x509/AVA;
    .end local v2    # "avaString":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v4, 0x1

    #@7e
    .line 220
    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->indexOf(II)I

    #@81
    move-result v4

    #@82
    goto :goto_0

    #@83
    .line 224
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@86
    move-result-object v2

    #@87
    .line 225
    .restart local v2    # "avaString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@8a
    move-result v6

    #@8b
    if-nez v6, :cond_4

    #@8d
    .line 226
    new-instance v6, Ljava/io/IOException;

    #@8f
    new-instance v7, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v8, "empty AVA in RDN \""

    #@97
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v7

    #@9b
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v7

    #@9f
    const-string/jumbo v8, "\""

    #@a2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v7

    #@a6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v7

    #@aa
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ad
    throw v6

    #@ae
    .line 228
    :cond_4
    new-instance v0, Lsun/security/x509/AVA;

    #@b0
    new-instance v6, Ljava/io/StringReader;

    #@b2
    invoke-direct {v6, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@b5
    invoke-direct {v0, v6, v8, p3}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    #@b8
    .line 229
    .restart local v0    # "ava":Lsun/security/x509/AVA;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@bb
    .line 231
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@be
    move-result v6

    #@bf
    new-array v6, v6, [Lsun/security/x509/AVA;

    #@c1
    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@c4
    move-result-object v6

    #@c5
    check-cast v6, [Lsun/security/x509/AVA;

    #@c7
    iput-object v6, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@c9
    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v9, 0x2b

    #@2
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 109
    const/4 v5, 0x0

    #@6
    .line 110
    .local v5, "quoteCount":I
    const/4 v6, 0x0

    #@7
    .line 111
    .local v6, "searchOffset":I
    const/4 v1, 0x0

    #@8
    .line 112
    .local v1, "avaOffset":I
    new-instance v3, Ljava/util/ArrayList;

    #@a
    const/4 v7, 0x3

    #@b
    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 113
    .local v3, "avaVec":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    #@11
    move-result v4

    #@12
    .line 114
    .local v4, "nextPlus":I
    :goto_0
    if-ltz v4, :cond_2

    #@14
    .line 115
    invoke-static {p1, v6, v4}, Lsun/security/x509/X500Name;->countQuotes(Ljava/lang/String;II)I

    #@17
    move-result v7

    #@18
    add-int/2addr v5, v7

    #@19
    .line 123
    if-lez v4, :cond_1

    #@1b
    add-int/lit8 v7, v4, -0x1

    #@1d
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v7

    #@21
    const/16 v8, 0x5c

    #@23
    if-eq v7, v8, :cond_1

    #@25
    .line 124
    const/4 v7, 0x1

    #@26
    if-eq v5, v7, :cond_1

    #@28
    .line 128
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 129
    .local v2, "avaString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@2f
    move-result v7

    #@30
    if-nez v7, :cond_0

    #@32
    .line 130
    new-instance v7, Ljava/io/IOException;

    #@34
    new-instance v8, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v9, "empty AVA in RDN \""

    #@3c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    const-string/jumbo v9, "\""

    #@47
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@52
    throw v7

    #@53
    .line 134
    :cond_0
    new-instance v0, Lsun/security/x509/AVA;

    #@55
    new-instance v7, Ljava/io/StringReader;

    #@57
    invoke-direct {v7, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@5a
    invoke-direct {v0, v7, p2}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;Ljava/util/Map;)V

    #@5d
    .line 135
    .local v0, "ava":Lsun/security/x509/AVA;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@60
    .line 138
    add-int/lit8 v1, v4, 0x1

    #@62
    .line 141
    const/4 v5, 0x0

    #@63
    .line 143
    .end local v0    # "ava":Lsun/security/x509/AVA;
    .end local v2    # "avaString":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v4, 0x1

    #@65
    .line 144
    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->indexOf(II)I

    #@68
    move-result v4

    #@69
    goto :goto_0

    #@6a
    .line 148
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6d
    move-result-object v2

    #@6e
    .line 149
    .restart local v2    # "avaString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@71
    move-result v7

    #@72
    if-nez v7, :cond_3

    #@74
    .line 150
    new-instance v7, Ljava/io/IOException;

    #@76
    new-instance v8, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v9, "empty AVA in RDN \""

    #@7e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v8

    #@82
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v8

    #@86
    const-string/jumbo v9, "\""

    #@89
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v8

    #@8d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v8

    #@91
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@94
    throw v7

    #@95
    .line 152
    :cond_3
    new-instance v0, Lsun/security/x509/AVA;

    #@97
    new-instance v7, Ljava/io/StringReader;

    #@99
    invoke-direct {v7, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@9c
    invoke-direct {v0, v7, p2}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;Ljava/util/Map;)V

    #@9f
    .line 153
    .restart local v0    # "ava":Lsun/security/x509/AVA;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a2
    .line 155
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@a5
    move-result v7

    #@a6
    new-array v7, v7, [Lsun/security/x509/AVA;

    #@a8
    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@ab
    move-result-object v7

    #@ac
    check-cast v7, [Lsun/security/x509/AVA;

    #@ae
    iput-object v7, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@b0
    .line 108
    return-void
.end method

.method constructor <init>(Lsun/security/util/DerValue;)V
    .locals 6
    .param p1, "rdn"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 242
    iget-byte v3, p1, Lsun/security/util/DerValue;->tag:B

    #@5
    const/16 v4, 0x31

    #@7
    if-eq v3, v4, :cond_0

    #@9
    .line 243
    new-instance v3, Ljava/io/IOException;

    #@b
    const-string/jumbo v4, "X500 RDN"

    #@e
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v3

    #@12
    .line 245
    :cond_0
    new-instance v1, Lsun/security/util/DerInputStream;

    #@14
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@17
    move-result-object v3

    #@18
    invoke-direct {v1, v3}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@1b
    .line 246
    .local v1, "dis":Lsun/security/util/DerInputStream;
    const/4 v3, 0x5

    #@1c
    invoke-virtual {v1, v3}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    #@1f
    move-result-object v0

    #@20
    .line 248
    .local v0, "avaset":[Lsun/security/util/DerValue;
    array-length v3, v0

    #@21
    new-array v3, v3, [Lsun/security/x509/AVA;

    #@23
    iput-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@25
    .line 249
    const/4 v2, 0x0

    #@26
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    #@27
    if-ge v2, v3, :cond_1

    #@29
    .line 250
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@2b
    new-instance v4, Lsun/security/x509/AVA;

    #@2d
    aget-object v5, v0, v2

    #@2f
    invoke-direct {v4, v5}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/DerValue;)V

    #@32
    aput-object v4, v3, v2

    #@34
    .line 249
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_0

    #@37
    .line 241
    :cond_1
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/AVA;)V
    .locals 2
    .param p1, "ava"    # Lsun/security/x509/AVA;

    #@0
    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 263
    if-nez p1, :cond_0

    #@5
    .line 264
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 266
    :cond_0
    const/4 v0, 0x1

    #@c
    new-array v0, v0, [Lsun/security/x509/AVA;

    #@e
    const/4 v1, 0x0

    #@f
    aput-object p1, v0, v1

    #@11
    iput-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@13
    .line 262
    return-void
.end method

.method public constructor <init>([Lsun/security/x509/AVA;)V
    .locals 2
    .param p1, "avas"    # [Lsun/security/x509/AVA;

    #@0
    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, [Lsun/security/x509/AVA;

    #@9
    iput-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@b
    .line 271
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@e
    array-length v1, v1

    #@f
    if-ge v0, v1, :cond_1

    #@11
    .line 272
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@13
    aget-object v1, v1, v0

    #@15
    if-nez v1, :cond_0

    #@17
    .line 273
    new-instance v1, Ljava/lang/NullPointerException;

    #@19
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@1c
    throw v1

    #@1d
    .line 271
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 269
    :cond_1
    return-void
.end method

.method private toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p1, "canonical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v6, 0x2b

    #@2
    const/4 v5, 0x0

    #@3
    .line 447
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@5
    array-length v3, v3

    #@6
    const/4 v4, 0x1

    #@7
    if-ne v3, v4, :cond_1

    #@9
    .line 448
    if-eqz p1, :cond_0

    #@b
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@d
    aget-object v3, v3, v5

    #@f
    invoke-virtual {v3}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    :goto_0
    return-object v3

    #@14
    .line 449
    :cond_0
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@16
    aget-object v3, v3, v5

    #@18
    invoke-virtual {v3, p2}, Lsun/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    goto :goto_0

    #@1d
    .line 452
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    .line 453
    .local v2, "relname":Ljava/lang/StringBuilder;
    if-nez p1, :cond_3

    #@24
    .line 454
    const/4 v1, 0x0

    #@25
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@27
    array-length v3, v3

    #@28
    if-ge v1, v3, :cond_6

    #@2a
    .line 455
    if-lez v1, :cond_2

    #@2c
    .line 456
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 458
    :cond_2
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@31
    aget-object v3, v3, v1

    #@33
    invoke-virtual {v3, p2}, Lsun/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 454
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 463
    .end local v1    # "i":I
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    #@3f
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@41
    array-length v3, v3

    #@42
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@45
    .line 464
    .local v0, "avaList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    const/4 v1, 0x0

    #@46
    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@48
    array-length v3, v3

    #@49
    if-ge v1, v3, :cond_4

    #@4b
    .line 465
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@4d
    aget-object v3, v3, v1

    #@4f
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@52
    .line 464
    add-int/lit8 v1, v1, 0x1

    #@54
    goto :goto_2

    #@55
    .line 467
    :cond_4
    invoke-static {}, Lsun/security/x509/AVAComparator;->getInstance()Ljava/util/Comparator;

    #@58
    move-result-object v3

    #@59
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@5c
    .line 469
    const/4 v1, 0x0

    #@5d
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@60
    move-result v3

    #@61
    if-ge v1, v3, :cond_6

    #@63
    .line 470
    if-lez v1, :cond_5

    #@65
    .line 471
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@68
    .line 473
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6b
    move-result-object v3

    #@6c
    check-cast v3, Lsun/security/x509/AVA;

    #@6e
    invoke-virtual {v3}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 469
    add-int/lit8 v1, v1, 0x1

    #@77
    goto :goto_3

    #@78
    .line 476
    .end local v0    # "avaList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    return-object v3
.end method


# virtual methods
.method public avas()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Lsun/security/x509/RDN;->avaList:Ljava/util/List;

    #@2
    .line 283
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    if-nez v0, :cond_0

    #@4
    .line 284
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@6
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    .line 285
    iput-object v0, p0, Lsun/security/x509/RDN;->avaList:Ljava/util/List;

    #@10
    .line 287
    :cond_0
    return-object v0
.end method

.method encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@2
    const/16 v1, 0x31

    #@4
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    #@7
    .line 344
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 298
    if-ne p0, p1, :cond_0

    #@4
    .line 299
    return v5

    #@5
    .line 301
    :cond_0
    instance-of v3, p1, Lsun/security/x509/RDN;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 302
    return v6

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 304
    check-cast v0, Lsun/security/x509/RDN;

    #@d
    .line 305
    .local v0, "other":Lsun/security/x509/RDN;
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@f
    array-length v3, v3

    #@10
    iget-object v4, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@12
    array-length v4, v4

    #@13
    if-eq v3, v4, :cond_2

    #@15
    .line 306
    return v6

    #@16
    .line 308
    :cond_2
    invoke-virtual {p0, v5}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 309
    .local v2, "thisCanon":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 310
    .local v1, "otherCanon":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    return v3
.end method

.method findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .locals 2
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    .line 330
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 331
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@8
    aget-object v1, v1, v0

    #@a
    iget-object v1, v1, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    #@c
    invoke-virtual {v1, p1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 332
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@14
    aget-object v1, v1, v0

    #@16
    iget-object v1, v1, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@18
    return-object v1

    #@19
    .line 330
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 335
    :cond_1
    const/4 v1, 0x0

    #@1d
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 320
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public toRFC1779String()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 373
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toRFC1779String(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1
    .line 382
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@3
    array-length v2, v2

    #@4
    const/4 v3, 0x1

    #@5
    if-ne v2, v3, :cond_0

    #@7
    .line 383
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@9
    aget-object v2, v2, v4

    #@b
    invoke-virtual {v2, p1}, Lsun/security/x509/AVA;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    return-object v2

    #@10
    .line 386
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 387
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@18
    array-length v2, v2

    #@19
    if-ge v0, v2, :cond_2

    #@1b
    .line 388
    if-eqz v0, :cond_1

    #@1d
    .line 389
    const-string/jumbo v2, " + "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 391
    :cond_1
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@25
    aget-object v2, v2, v0

    #@27
    invoke-virtual {v2, p1}, Lsun/security/x509/AVA;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 387
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 393
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    return-object v2
.end method

.method public toRFC2253String()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 402
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    .line 401
    invoke-direct {p0, v1, v0}, Lsun/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public toRFC2253String(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 411
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lsun/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public toRFC2253String(Z)Ljava/lang/String;
    .locals 3
    .param p1, "canonical"    # Z

    #@0
    .prologue
    .line 421
    if-nez p1, :cond_0

    #@2
    .line 423
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    .line 422
    invoke-direct {p0, v2, v1}, Lsun/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 425
    :cond_0
    iget-object v0, p0, Lsun/security/x509/RDN;->canonicalString:Ljava/lang/String;

    #@e
    .line 426
    .local v0, "c":Ljava/lang/String;
    if-nez v0, :cond_1

    #@10
    .line 428
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x1

    #@15
    .line 427
    invoke-direct {p0, v2, v1}, Lsun/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 429
    iput-object v0, p0, Lsun/security/x509/RDN;->canonicalString:Ljava/lang/String;

    #@1b
    .line 431
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 354
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@3
    array-length v2, v2

    #@4
    const/4 v3, 0x1

    #@5
    if-ne v2, v3, :cond_0

    #@7
    .line 355
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@9
    aget-object v2, v2, v4

    #@b
    invoke-virtual {v2}, Lsun/security/x509/AVA;->toString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    return-object v2

    #@10
    .line 358
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 359
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@18
    array-length v2, v2

    #@19
    if-ge v0, v2, :cond_2

    #@1b
    .line 360
    if-eqz v0, :cond_1

    #@1d
    .line 361
    const-string/jumbo v2, " + "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 363
    :cond_1
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@25
    aget-object v2, v2, v0

    #@27
    invoke-virtual {v2}, Lsun/security/x509/AVA;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 359
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 365
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    return-object v2
.end method
