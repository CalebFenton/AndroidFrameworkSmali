.class public Lgov/nist/javax/sip/header/UserAgent;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "UserAgent.java"

# interfaces
.implements Ljavax/sip/header/UserAgentHeader;


# static fields
.field private static final serialVersionUID:J = 0x3f4cc6de175b3c07L


# instance fields
.field protected productTokens:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 81
    const-string/jumbo v0, "User-Agent"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 82
    new-instance v0, Ljava/util/LinkedList;

    #@8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@b
    iput-object v0, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    #@d
    .line 80
    return-void
.end method

.method private encodeProduct()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 60
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 61
    .local v1, "tokens":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    #@7
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@a
    move-result-object v0

    #@b
    .line 63
    .local v0, "it":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 64
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    goto :goto_0

    #@1b
    .line 67
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    return-object v2
.end method


# virtual methods
.method public addProductToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "pt"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 73
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 121
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/UserAgent;

    #@6
    .line 122
    .local v0, "retval":Lgov/nist/javax/sip/header/UserAgent;
    iget-object v1, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 123
    new-instance v1, Ljava/util/LinkedList;

    #@c
    iget-object v2, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    #@e
    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    #@11
    iput-object v1, v0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    #@13
    .line 124
    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Lgov/nist/javax/sip/header/UserAgent;->encodeProduct()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getProduct()Ljava/util/ListIterator;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 98
    iget-object v0, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 99
    :cond_0
    return-object v1

    #@e
    .line 101
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    #@10
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public setProduct(Ljava/util/List;)V
    .locals 2
    .param p1, "product"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    if-nez p1, :cond_0

    #@2
    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 114
    const-string/jumbo v1, "JAIN-SIP Exception, UserAgent, setProduct(), the  product parameter is null"

    #@7
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 117
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    #@d
    .line 111
    return-void
.end method
