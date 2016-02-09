.class public Landroid/net/MailTo;
.super Ljava/lang/Object;
.source "MailTo.java"


# static fields
.field private static final BODY:Ljava/lang/String; = "body"

.field private static final CC:Ljava/lang/String; = "cc"

.field public static final MAILTO_SCHEME:Ljava/lang/String; = "mailto:"

.field private static final SUBJECT:Ljava/lang/String; = "subject"

.field private static final TO:Ljava/lang/String; = "to"


# instance fields
.field private mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 170
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@a
    .line 169
    return-void
.end method

.method public static isMailTo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "mailto:"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 52
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 54
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public static parse(Ljava/lang/String;)Landroid/net/MailTo;
    .locals 15
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    if-nez p0, :cond_0

    #@2
    .line 66
    new-instance v9, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v9

    #@8
    .line 68
    :cond_0
    invoke-static {p0}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    #@b
    move-result v9

    #@c
    if-nez v9, :cond_1

    #@e
    .line 69
    new-instance v9, Landroid/net/ParseException;

    #@10
    const-string/jumbo v10, "Not a mailto scheme"

    #@13
    invoke-direct {v9, v10}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    #@16
    throw v9

    #@17
    .line 72
    :cond_1
    const-string/jumbo v9, "mailto:"

    #@1a
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@1d
    move-result v9

    #@1e
    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    .line 73
    .local v5, "noScheme":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@25
    move-result-object v2

    #@26
    .line 74
    .local v2, "email":Landroid/net/Uri;
    new-instance v3, Landroid/net/MailTo;

    #@28
    invoke-direct {v3}, Landroid/net/MailTo;-><init>()V

    #@2b
    .line 77
    .local v3, "m":Landroid/net/MailTo;
    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    .line 78
    .local v8, "query":Ljava/lang/String;
    if-eqz v8, :cond_4

    #@31
    .line 79
    const-string/jumbo v9, "&"

    #@34
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    .line 80
    .local v7, "queries":[Ljava/lang/String;
    const/4 v9, 0x0

    #@39
    array-length v11, v7

    #@3a
    move v10, v9

    #@3b
    :goto_0
    if-ge v10, v11, :cond_4

    #@3d
    aget-object v6, v7, v10

    #@3f
    .line 81
    .local v6, "q":Ljava/lang/String;
    const-string/jumbo v9, "="

    #@42
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    .line 82
    .local v4, "nameval":[Ljava/lang/String;
    array-length v9, v4

    #@47
    if-nez v9, :cond_2

    #@49
    .line 80
    :goto_1
    add-int/lit8 v9, v10, 0x1

    #@4b
    move v10, v9

    #@4c
    goto :goto_0

    #@4d
    .line 87
    :cond_2
    iget-object v12, v3, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@4f
    const/4 v9, 0x0

    #@50
    aget-object v9, v4, v9

    #@52
    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v9

    #@56
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@58
    invoke-virtual {v9, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5b
    move-result-object v13

    #@5c
    .line 88
    array-length v9, v4

    #@5d
    const/4 v14, 0x1

    #@5e
    if-le v9, v14, :cond_3

    #@60
    const/4 v9, 0x1

    #@61
    aget-object v9, v4, v9

    #@63
    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@66
    move-result-object v9

    #@67
    .line 87
    :goto_2
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    goto :goto_1

    #@6b
    .line 88
    :cond_3
    const/4 v9, 0x0

    #@6c
    goto :goto_2

    #@6d
    .line 94
    .end local v4    # "nameval":[Ljava/lang/String;
    .end local v6    # "q":Ljava/lang/String;
    .end local v7    # "queries":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    .line 95
    .local v1, "address":Ljava/lang/String;
    if-eqz v1, :cond_6

    #@73
    .line 96
    invoke-virtual {v3}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    .line 97
    .local v0, "addr":Ljava/lang/String;
    if-eqz v0, :cond_5

    #@79
    .line 98
    new-instance v9, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    const-string/jumbo v10, ", "

    #@85
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v9

    #@89
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v9

    #@8d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    .line 100
    :cond_5
    iget-object v9, v3, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@93
    const-string/jumbo v10, "to"

    #@96
    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@99
    .line 103
    .end local v0    # "addr":Ljava/lang/String;
    :cond_6
    return-object v3
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@2
    const-string/jumbo v1, "body"

    #@5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getCc()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@2
    const-string/jumbo v1, "cc"

    #@5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@2
    const-string/jumbo v1, "subject"

    #@5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@2
    const-string/jumbo v1, "to"

    #@5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v3, "mailto:"

    #@5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 155
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x3f

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 156
    iget-object v3, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@f
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "header$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/util/Map$Entry;

    #@23
    .line 157
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Ljava/lang/String;

    #@29
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 158
    const/16 v3, 0x3d

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Ljava/lang/String;

    #@3b
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 160
    const/16 v3, 0x26

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@47
    goto :goto_0

    #@48
    .line 162
    .end local v0    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    return-object v3
.end method
