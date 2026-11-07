.class public Lgov/nist/javax/sip/header/AllowEventsList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "AllowEventsList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList<",
        "Lgov/nist/javax/sip/header/AllowEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x980c47f8546c200L


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 62
    const-class v0, Lgov/nist/javax/sip/header/AllowEvents;

    const-string v1, "Allow-Events"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 53
    new-instance v0, Lgov/nist/javax/sip/header/AllowEventsList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AllowEventsList;-><init>()V

    .line 54
    .local v0, "retval":Lgov/nist/javax/sip/header/AllowEventsList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AllowEventsList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AllowEventsList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

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

    .line 79
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 80
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/AllowEvents;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 81
    .local v1, "ll":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 82
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/AllowEvents;

    .line 83
    .local v2, "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/AllowEvents;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v2    # "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    goto :goto_b

    .line 85
    :cond_1f
    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    return-object v2
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

    .line 104
    .local p1, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 105
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 106
    new-instance v1, Lgov/nist/javax/sip/header/AllowEvents;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AllowEvents;-><init>()V

    .line 107
    .local v1, "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/AllowEvents;->setEventType(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/AllowEventsList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 109
    .end local v1    # "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    goto :goto_4

    .line 110
    :cond_1c
    return-void
.end method
