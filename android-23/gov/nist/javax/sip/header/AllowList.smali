.class public Lgov/nist/javax/sip/header/AllowList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "AllowList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/Allow;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4139070aee0a9836L


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 62
    const-class v0, Lgov/nist/javax/sip/header/Allow;

    #@2
    const-string/jumbo v1, "Allow"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 61
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 53
    new-instance v0, Lgov/nist/javax/sip/header/AllowList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AllowList;-><init>()V

    #@5
    .line 54
    .local v0, "retval":Lgov/nist/javax/sip/header/AllowList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AllowList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AllowList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    .line 55
    return-object v0
.end method

.method public getMethods()Ljava/util/ListIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 80
    new-instance v2, Ljava/util/LinkedList;

    #@2
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@5
    .line 82
    .local v2, "ll":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v3, p0, Lgov/nist/javax/sip/header/AllowList;->hlist:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/Allow;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lgov/nist/javax/sip/header/Allow;

    #@17
    .line 84
    .local v0, "a":Lgov/nist/javax/sip/header/Allow;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Allow;->getMethod()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@1e
    goto :goto_0

    #@1f
    .line 87
    .end local v0    # "a":Lgov/nist/javax/sip/header/Allow;
    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    #@22
    move-result-object v3

    #@23
    return-object v3
.end method

.method public setMethods(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    .local p1, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@3
    move-result-object v1

    #@4
    .line 107
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 108
    new-instance v0, Lgov/nist/javax/sip/header/Allow;

    #@c
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Allow;-><init>()V

    #@f
    .line 109
    .local v0, "allow":Lgov/nist/javax/sip/header/Allow;
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/lang/String;

    #@15
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    #@18
    .line 110
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AllowList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@1b
    goto :goto_0

    #@1c
    .line 105
    .end local v0    # "allow":Lgov/nist/javax/sip/header/Allow;
    :cond_0
    return-void
.end method
