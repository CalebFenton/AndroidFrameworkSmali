.class public Lgov/nist/javax/sip/header/ExtensionHeaderList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "ExtensionHeaderList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList<",
        "Lgov/nist/javax/sip/header/ExtensionHeaderImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x40f769eda9aeca95L


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 58
    const-class v0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "hName"    # Ljava/lang/String;

    .line 54
    const-class v0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    invoke-direct {p0, v0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 49
    new-instance v0, Lgov/nist/javax/sip/header/ExtensionHeaderList;

    iget-object v1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderList;->headerName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/header/ExtensionHeaderList;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "retval":Lgov/nist/javax/sip/header/ExtensionHeaderList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ExtensionHeaderList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 51
    return-object v0
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 5

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v0, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ExtensionHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 65
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/ExtensionHeaderImpl;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 66
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    .line 67
    .local v2, "eh":Lgov/nist/javax/sip/header/ExtensionHeaderImpl;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .end local v2    # "eh":Lgov/nist/javax/sip/header/ExtensionHeaderImpl;
    goto :goto_9

    .line 69
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
