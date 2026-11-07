.class public Landroid/net/MailTo;
.super Ljava/lang/Object;
.source "MailTo.java"


# static fields
.field private static final greylist-max-o BODY:Ljava/lang/String; = "body"

.field private static final greylist-max-o CC:Ljava/lang/String; = "cc"

.field public static final whitelist MAILTO_SCHEME:Ljava/lang/String; = "mailto:"

.field private static final greylist-max-o SUBJECT:Ljava/lang/String; = "subject"

.field private static final greylist-max-o TO:Ljava/lang/String; = "to"


# instance fields
.field private greylist-max-o mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    .line 171
    return-void
.end method

.method public static whitelist isMailTo(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .line 51
    if-eqz p0, :cond_d

    const-string/jumbo v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 52
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist parse(Ljava/lang/String;)Landroid/net/MailTo;
    .registers 15
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ParseException;
        }
    .end annotation

    .line 65
    if-eqz p0, :cond_8d

    .line 68
    invoke-static {p0}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 72
    const-string/jumbo v0, "mailto:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "noScheme":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 74
    .local v1, "email":Landroid/net/Uri;
    new-instance v2, Landroid/net/MailTo;

    invoke-direct {v2}, Landroid/net/MailTo;-><init>()V

    .line 77
    .local v2, "m":Landroid/net/MailTo;
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "query":Ljava/lang/String;
    if-eqz v3, :cond_59

    .line 79
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "queries":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_2b
    if-ge v7, v5, :cond_59

    aget-object v8, v4, v7

    .line 81
    .local v8, "q":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 82
    .local v9, "nameval":[Ljava/lang/String;
    array-length v10, v9

    if-nez v10, :cond_39

    .line 83
    goto :goto_56

    .line 87
    :cond_39
    iget-object v10, v2, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    aget-object v11, v9, v6

    invoke-static {v11}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 88
    array-length v12, v9

    const/4 v13, 0x1

    if-le v12, v13, :cond_52

    aget-object v12, v9, v13

    invoke-static {v12}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_53

    :cond_52
    const/4 v12, 0x0

    .line 87
    :goto_53
    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v8    # "q":Ljava/lang/String;
    .end local v9    # "nameval":[Ljava/lang/String;
    :goto_56
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 94
    .end local v4    # "queries":[Ljava/lang/String;
    :cond_59
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "address":Ljava/lang/String;
    if-eqz v4, :cond_84

    .line 96
    invoke-virtual {v2}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "addr":Ljava/lang/String;
    if-eqz v5, :cond_7c

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    :cond_7c
    iget-object v6, v2, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    const-string/jumbo v7, "to"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v5    # "addr":Ljava/lang/String;
    :cond_84
    return-object v2

    .line 69
    .end local v0    # "noScheme":Ljava/lang/String;
    .end local v1    # "email":Landroid/net/Uri;
    .end local v2    # "m":Landroid/net/MailTo;
    .end local v3    # "query":Ljava/lang/String;
    .end local v4    # "address":Ljava/lang/String;
    :cond_85
    new-instance v0, Landroid/net/ParseException;

    const-string v1, "Not a mailto scheme"

    invoke-direct {v0, v1}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_8d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist getBody()Ljava/lang/String;
    .registers 3

    .line 141
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCc()Ljava/lang/String;
    .registers 3

    .line 123
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    const-string v1, "cc"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public whitelist getSubject()Ljava/lang/String;
    .registers 3

    .line 132
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTo()Ljava/lang/String;
    .registers 3

    .line 113
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    const-string/jumbo v1, "to"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mailto:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 157
    .local v2, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .end local v2    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_17

    .line 162
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
