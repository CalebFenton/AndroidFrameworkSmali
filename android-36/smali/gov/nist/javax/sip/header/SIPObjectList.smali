.class public Lgov/nist/javax/sip/header/SIPObjectList;
.super Lgov/nist/core/GenericObjectList;
.source "SIPObjectList.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x29d7fb4297970e29L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Lgov/nist/core/GenericObjectList;-><init>()V

    .line 69
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "lname"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public greylist concatenate(Lgov/nist/javax/sip/header/SIPObjectList;)V
    .registers 2
    .param p1, "otherList"    # Lgov/nist/javax/sip/header/SIPObjectList;

    .line 103
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;)V

    .line 104
    return-void
.end method

.method public greylist concatenate(Lgov/nist/javax/sip/header/SIPObjectList;Z)V
    .registers 3
    .param p1, "otherList"    # Lgov/nist/javax/sip/header/SIPObjectList;
    .param p2, "topFlag"    # Z

    .line 112
    invoke-super {p0, p1, p2}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;Z)V

    .line 113
    return-void
.end method

.method public greylist debugDump(I)Ljava/lang/String;
    .registers 3
    .param p1, "indent"    # I

    .line 145
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist first()Lgov/nist/core/GenericObject;
    .registers 2

    .line 120
    invoke-super {p0}, Lgov/nist/core/GenericObjectList;->first()Lgov/nist/core/GenericObject;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPObject;

    return-object v0
.end method

.method public greylist mergeObjects(Lgov/nist/core/GenericObjectList;)V
    .registers 6
    .param p1, "mergeList"    # Lgov/nist/core/GenericObjectList;

    .line 87
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 88
    .local v0, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/GenericObject;>;"
    invoke-virtual {p1}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 89
    .local v1, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/GenericObject;>;"
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/GenericObject;

    .line 91
    .local v2, "outerObj":Lgov/nist/core/GenericObject;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 93
    .local v3, "innerObj":Ljava/lang/Object;
    invoke-virtual {v2, v3}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    .line 94
    .end local v3    # "innerObj":Ljava/lang/Object;
    goto :goto_14

    .line 95
    .end local v2    # "outerObj":Lgov/nist/core/GenericObject;
    :cond_22
    goto :goto_8

    .line 96
    :cond_23
    return-void
.end method

.method public greylist next()Lgov/nist/core/GenericObject;
    .registers 2

    .line 130
    invoke-super {p0}, Lgov/nist/core/GenericObjectList;->next()Lgov/nist/core/GenericObject;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPObject;

    return-object v0
.end method
