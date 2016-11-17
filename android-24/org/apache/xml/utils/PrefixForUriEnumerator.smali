.class Lorg/apache/xml/utils/PrefixForUriEnumerator;
.super Ljava/lang/Object;
.source "NamespaceSupport2.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private allPrefixes:Ljava/util/Enumeration;

.field private lookahead:Ljava/lang/String;

.field private nsup:Lorg/apache/xml/utils/NamespaceSupport2;

.field private uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/xml/utils/NamespaceSupport2;Ljava/lang/String;Ljava/util/Enumeration;)V
    .locals 1
    .param p1, "nsup"    # Lorg/apache/xml/utils/NamespaceSupport2;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "allPrefixes"    # Ljava/util/Enumeration;

    #@0
    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 392
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    #@6
    .line 399
    iput-object p1, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->nsup:Lorg/apache/xml/utils/NamespaceSupport2;

    #@8
    .line 400
    iput-object p2, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->uri:Ljava/lang/String;

    #@a
    .line 401
    iput-object p3, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->allPrefixes:Ljava/util/Enumeration;

    #@c
    .line 397
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 406
    iget-object v1, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 407
    return v3

    #@6
    .line 409
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->allPrefixes:Ljava/util/Enumeration;

    #@8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 411
    iget-object v1, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->allPrefixes:Ljava/util/Enumeration;

    #@10
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    .line 412
    .local v0, "prefix":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->uri:Ljava/lang/String;

    #@18
    iget-object v2, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->nsup:Lorg/apache/xml/utils/NamespaceSupport2;

    #@1a
    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/NamespaceSupport2;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 414
    iput-object v0, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    #@26
    .line 415
    return v3

    #@27
    .line 418
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@28
    return v1
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 423
    invoke-virtual {p0}, Lorg/apache/xml/utils/PrefixForUriEnumerator;->hasMoreElements()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 425
    iget-object v0, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    #@8
    .line 426
    .local v0, "tmp":Ljava/lang/String;
    const/4 v1, 0x0

    #@9
    iput-object v1, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    #@b
    .line 427
    return-object v0

    #@c
    .line 430
    .end local v0    # "tmp":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@e
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@11
    throw v1
.end method
