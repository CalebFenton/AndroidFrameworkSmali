.class public Lsun/security/x509/RDN;
.super Ljava/lang/Object;
.source "RDN.java"


# instance fields
.field final greylist-max-o assertion:[Lsun/security/x509/AVA;

.field private volatile greylist-max-o avaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o canonicalString:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "i"    # I

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lsun/security/x509/AVA;

    iput-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 167
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
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

    .line 182
    .local p3, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const-string v0, "RFC2253"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "searchOffset":I
    const/4 v1, 0x0

    .line 188
    .local v1, "avaOffset":I
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    .local v2, "avaVec":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    const/16 v4, 0x2b

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 190
    .local v5, "nextPlus":I
    :goto_19
    const-string v6, "\""

    const-string v7, "empty AVA in RDN \""

    if-ltz v5, :cond_67

    .line 198
    if-lez v5, :cond_60

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-eq v8, v9, :cond_60

    .line 202
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 203
    .local v8, "avaString":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_45

    .line 208
    new-instance v6, Lsun/security/x509/AVA;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v3, p3}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    .line 210
    .local v6, "ava":Lsun/security/x509/AVA;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v1, v5, 0x1

    goto :goto_60

    .line 204
    .end local v6    # "ava":Lsun/security/x509/AVA;
    :cond_45
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 215
    .end local v8    # "avaString":Ljava/lang/String;
    :cond_60
    :goto_60
    add-int/lit8 v0, v5, 0x1

    .line 216
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto :goto_19

    .line 220
    :cond_67
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "avaString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_8d

    .line 224
    new-instance v6, Lsun/security/x509/AVA;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v3, p3}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    .line 225
    .restart local v6    # "ava":Lsun/security/x509/AVA;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lsun/security/x509/AVA;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lsun/security/x509/AVA;

    iput-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    .line 228
    return-void

    .line 222
    .end local v6    # "ava":Lsun/security/x509/AVA;
    :cond_8d
    new-instance v3, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    .end local v0    # "searchOffset":I
    .end local v1    # "avaOffset":I
    .end local v2    # "avaVec":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    .end local v4    # "avaString":Ljava/lang/String;
    .end local v5    # "nextPlus":I
    :cond_a8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
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

    .line 104
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "quoteCount":I
    const/4 v1, 0x0

    .line 107
    .local v1, "searchOffset":I
    const/4 v2, 0x0

    .line 108
    .local v2, "avaOffset":I
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .local v3, "avaVec":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    const/16 v4, 0x2b

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 110
    .local v5, "nextPlus":I
    :goto_12
    const-string v6, "\""

    const-string v7, "empty AVA in RDN \""

    if-ltz v5, :cond_69

    .line 111
    invoke-static {p1, v1, v5}, Lsun/security/x509/X500Name;->countQuotes(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v0, v8

    .line 119
    if-lez v5, :cond_62

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-eq v8, v9, :cond_62

    const/4 v8, 0x1

    if-eq v0, v8, :cond_62

    .line 124
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "avaString":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_47

    .line 130
    new-instance v6, Lsun/security/x509/AVA;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, p2}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;Ljava/util/Map;)V

    .line 131
    .local v6, "ava":Lsun/security/x509/AVA;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v2, v5, 0x1

    .line 137
    const/4 v0, 0x0

    goto :goto_62

    .line 126
    .end local v6    # "ava":Lsun/security/x509/AVA;
    :cond_47
    new-instance v4, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    .end local v8    # "avaString":Ljava/lang/String;
    :cond_62
    :goto_62
    add-int/lit8 v1, v5, 0x1

    .line 140
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto :goto_12

    .line 144
    :cond_69
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "avaString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_8f

    .line 148
    new-instance v6, Lsun/security/x509/AVA;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, p2}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;Ljava/util/Map;)V

    .line 149
    .restart local v6    # "ava":Lsun/security/x509/AVA;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lsun/security/x509/AVA;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lsun/security/x509/AVA;

    iput-object v7, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    .line 152
    return-void

    .line 146
    .end local v6    # "ava":Lsun/security/x509/AVA;
    :cond_8f
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method constructor greylist-max-o <init>(Lsun/security/util/DerValue;)V
    .registers 8
    .param p1, "rdn"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_2f

    .line 241
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 242
    .local v0, "dis":Lsun/security/util/DerInputStream;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 244
    .local v1, "avaset":[Lsun/security/util/DerValue;
    array-length v2, v1

    new-array v2, v2, [Lsun/security/x509/AVA;

    iput-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    .line 245
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    array-length v3, v1

    if-ge v2, v3, :cond_2e

    .line 246
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v4, Lsun/security/x509/AVA;

    aget-object v5, v1, v2

    invoke-direct {v4, v5}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/DerValue;)V

    aput-object v4, v3, v2

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 248
    .end local v2    # "i":I
    :cond_2e
    return-void

    .line 239
    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v1    # "avaset":[Lsun/security/util/DerValue;
    :cond_2f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "X500 RDN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lsun/security/x509/AVA;)V
    .registers 4
    .param p1, "ava"    # Lsun/security/x509/AVA;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    if-eqz p1, :cond_e

    .line 262
    const/4 v0, 0x1

    new-array v0, v0, [Lsun/security/x509/AVA;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    .line 263
    return-void

    .line 260
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor blacklist <init>([Lsun/security/x509/AVA;)V
    .registers 4
    .param p1, "avas"    # [Lsun/security/x509/AVA;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    invoke-virtual {p1}, [Lsun/security/x509/AVA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/security/x509/AVA;

    iput-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 268
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1a

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 269
    :cond_1a
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 272
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method private greylist-max-o toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;
    .registers 9
    .param p1, "canonical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 443
    .local p2, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1b

    .line 444
    if-eqz p1, :cond_12

    iget-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 445
    :cond_12
    iget-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v0, v0, v2

    invoke-virtual {v0, p2}, Lsun/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 444
    :goto_1a
    return-object v0

    .line 448
    :cond_1b
    iget-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    .line 449
    .local v0, "toOutput":[Lsun/security/x509/AVA;
    if-eqz p1, :cond_2f

    .line 452
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    invoke-virtual {v1}, [Lsun/security/x509/AVA;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Lsun/security/x509/AVA;

    .line 453
    invoke-static {}, Lsun/security/x509/AVAComparator;->getInstance()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 455
    :cond_2f
    new-instance v1, Ljava/util/StringJoiner;

    const-string v3, "+"

    invoke-direct {v1, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 456
    .local v1, "sj":Ljava/util/StringJoiner;
    array-length v3, v0

    :goto_37
    if-ge v2, v3, :cond_4c

    aget-object v4, v0, v2

    .line 457
    .local v4, "ava":Lsun/security/x509/AVA;
    if-eqz p1, :cond_42

    invoke-virtual {v4}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v5

    goto :goto_46

    .line 458
    :cond_42
    invoke-virtual {v4, p2}, Lsun/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 457
    :goto_46
    invoke-virtual {v1, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 456
    .end local v4    # "ava":Lsun/security/x509/AVA;
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 460
    :cond_4c
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public blacklist avas()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lsun/security/x509/RDN;->avaList:Ljava/util/List;

    .line 279
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    if-nez v0, :cond_10

    .line 280
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 281
    iput-object v0, p0, Lsun/security/x509/RDN;->avaList:Ljava/util/List;

    .line 283
    :cond_10
    return-object v0
.end method

.method greylist-max-o encode(Lsun/security/util/DerOutputStream;)V
    .registers 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    const/16 v0, 0x31

    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    invoke-virtual {p1, v0, v1}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 342
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 294
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 295
    return v0

    .line 297
    :cond_4
    instance-of v1, p1, Lsun/security/x509/RDN;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 298
    return v2

    .line 300
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/security/x509/RDN;

    .line 301
    .local v1, "other":Lsun/security/x509/RDN;
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v3, v3

    iget-object v4, v1, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v4, v4

    if-eq v3, v4, :cond_16

    .line 302
    return v2

    .line 304
    :cond_16
    invoke-virtual {p0, v0}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "thisCanon":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "otherCanon":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method greylist-max-o findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .registers 4
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 327
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v1, v1, v0

    iget-object v1, v1, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 328
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v1, v1, v0

    iget-object v1, v1, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    return-object v1

    .line 326
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 316
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist size()I
    .registers 2

    .line 290
    iget-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v0, v0

    return v0
.end method

.method public blacklist toRFC1779String()Ljava/lang/String;
    .registers 2

    .line 369
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toRFC1779String(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 378
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 379
    iget-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lsun/security/x509/AVA;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 382
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v2, v2

    if-ge v1, v2, :cond_30

    .line 384
    if-eqz v1, :cond_22

    .line 385
    const-string v2, " + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_22
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lsun/security/x509/AVA;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 389
    .end local v1    # "i":I
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toRFC2253String()Ljava/lang/String;
    .registers 3

    .line 397
    nop

    .line 398
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lsun/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 397
    return-object v0
.end method

.method public blacklist toRFC2253String(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 407
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lsun/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toRFC2253String(Z)Ljava/lang/String;
    .registers 5
    .param p1, "canonical"    # Z

    .line 417
    if-nez p1, :cond_d

    .line 418
    nop

    .line 419
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lsun/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 418
    return-object v0

    .line 421
    :cond_d
    iget-object v0, p0, Lsun/security/x509/RDN;->canonicalString:Ljava/lang/String;

    .line 422
    .local v0, "c":Ljava/lang/String;
    if-nez v0, :cond_1d

    .line 423
    nop

    .line 424
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lsun/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 425
    iput-object v0, p0, Lsun/security/x509/RDN;->canonicalString:Ljava/lang/String;

    .line 427
    :cond_1d
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 350
    iget-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 351
    iget-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lsun/security/x509/AVA;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 354
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v2, v2

    if-ge v1, v2, :cond_30

    .line 356
    if-eqz v1, :cond_22

    .line 357
    const-string v2, " + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_22
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lsun/security/x509/AVA;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 361
    .end local v1    # "i":I
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
