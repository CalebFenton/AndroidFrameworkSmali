.class public Lgov/nist/javax/sip/header/AllowList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "AllowList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList<",
        "Lgov/nist/javax/sip/header/Allow;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x4139070aee0a9836L


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 62
    const-class v0, Lgov/nist/javax/sip/header/Allow;

    const-string v1, "Allow"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 53
    new-instance v0, Lgov/nist/javax/sip/header/AllowList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AllowList;-><init>()V

    .line 54
    .local v0, "retval":Lgov/nist/javax/sip/header/AllowList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AllowList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AllowList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 55
    return-object v0
.end method

.method public greylist getMethods()Ljava/util/ListIterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 82
    .local v0, "ll":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v1, p0, Lgov/nist/javax/sip/header/AllowList;->hlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/Allow;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Allow;

    .line 84
    .local v2, "a":Lgov/nist/javax/sip/header/Allow;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Allow;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v2    # "a":Lgov/nist/javax/sip/header/Allow;
    goto :goto_b

    .line 87
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/Allow;>;"
    :cond_1f
    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    return-object v1
.end method

.method public greylist setMethods(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 106
    .local p1, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 107
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 108
    new-instance v1, Lgov/nist/javax/sip/header/Allow;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Allow;-><init>()V

    .line 109
    .local v1, "allow":Lgov/nist/javax/sip/header/Allow;
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/AllowList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 111
    .end local v1    # "allow":Lgov/nist/javax/sip/header/Allow;
    goto :goto_4

    .line 112
    :cond_1c
    return-void
.end method
