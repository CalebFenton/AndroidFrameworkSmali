.class public Lgov/nist/javax/sip/header/Server;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Server.java"

# interfaces
.implements Ljavax/sip/header/ServerHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x31ca4c7c2de02b7dL


# instance fields
.field protected greylist productTokens:Ljava/util/List;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 86
    const-string v0, "Server"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    .line 88
    return-void
.end method

.method private greylist encodeProduct()Ljava/lang/String;
    .registers 4

    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v0, "tokens":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 65
    .local v1, "it":Ljava/util/ListIterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 66
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 68
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 72
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public greylist addProductToken(Ljava/lang/String;)V
    .registers 3
    .param p1, "pt"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 94
    invoke-direct {p0}, Lgov/nist/javax/sip/header/Server;->encodeProduct()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getProduct()Ljava/util/ListIterator;
    .registers 2

    .line 103
    iget-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    .line 106
    :cond_d
    iget-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0

    .line 104
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist setProduct(Ljava/util/List;)V
    .registers 4
    .param p1, "product"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 117
    if-eqz p1, :cond_5

    .line 122
    iput-object p1, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    .line 123
    return-void

    .line 118
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, UserAgent, setProduct(), the  product parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
