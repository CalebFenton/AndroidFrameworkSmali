.class Lorg/apache/xml/utils/PrefixForUriEnumerator;
.super Ljava/lang/Object;
.source "NamespaceSupport2.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private greylist allPrefixes:Ljava/util/Enumeration;

.field private greylist lookahead:Ljava/lang/String;

.field private greylist nsup:Lorg/apache/xml/utils/NamespaceSupport2;

.field private greylist uri:Ljava/lang/String;


# direct methods
.method constructor greylist <init>(Lorg/apache/xml/utils/NamespaceSupport2;Ljava/lang/String;Ljava/util/Enumeration;)V
    .registers 5

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    .line 399
    iput-object p1, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->nsup:Lorg/apache/xml/utils/NamespaceSupport2;

    .line 400
    iput-object p2, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->uri:Ljava/lang/String;

    .line 401
    iput-object p3, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->allPrefixes:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 5

    .line 406
    iget-object v0, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 409
    :cond_6
    iget-object v0, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->allPrefixes:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 411
    iget-object v0, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->allPrefixes:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 412
    iget-object v2, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->uri:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->nsup:Lorg/apache/xml/utils/NamespaceSupport2;

    invoke-virtual {v3, v0}, Lorg/apache/xml/utils/NamespaceSupport2;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 414
    iput-object v0, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    return v1

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .registers 3

    .line 423
    invoke-virtual {p0}, Lorg/apache/xml/utils/PrefixForUriEnumerator;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 425
    iget-object v0, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    const/4 v1, 0x0

    .line 426
    iput-object v1, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    return-object v0

    .line 430
    :cond_c
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
