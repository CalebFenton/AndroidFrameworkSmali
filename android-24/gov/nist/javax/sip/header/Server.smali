.class public Lgov/nist/javax/sip/header/Server;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Server.java"

# interfaces
.implements Ljavax/sip/header/ServerHeader;


# static fields
.field private static final serialVersionUID:J = -0x31ca4c7c2de02b7dL


# instance fields
.field protected productTokens:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 86
    const-string/jumbo v0, "Server"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 87
    new-instance v0, Ljava/util/LinkedList;

    #@8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@b
    iput-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    #@d
    .line 85
    return-void
.end method

.method private encodeProduct()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 63
    .local v1, "tokens":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    #@7
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@a
    move-result-object v0

    #@b
    .line 65
    .local v0, "it":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 66
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    .line 67
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 68
    const/16 v2, 0x2f

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@25
    goto :goto_0

    #@26
    .line 72
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    return-object v2
.end method


# virtual methods
.method public addProductToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "pt"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 78
    return-void
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Lgov/nist/javax/sip/header/Server;->encodeProduct()Ljava/lang/String;

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
    .line 103
    iget-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 104
    :cond_0
    return-object v1

    #@e
    .line 106
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

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
    .line 117
    if-nez p1, :cond_0

    #@2
    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 119
    const-string/jumbo v1, "JAIN-SIP Exception, UserAgent, setProduct(), the  product parameter is null"

    #@7
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 122
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    #@d
    .line 116
    return-void
.end method
