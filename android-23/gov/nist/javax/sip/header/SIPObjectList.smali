.class public Lgov/nist/javax/sip/header/SIPObjectList;
.super Lgov/nist/core/GenericObjectList;
.source "SIPObjectList.java"


# static fields
.field private static final serialVersionUID:J = -0x29d7fb4297970e29L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Lgov/nist/core/GenericObjectList;-><init>()V

    #@3
    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "lname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    #@3
    .line 57
    return-void
.end method


# virtual methods
.method public concatenate(Lgov/nist/javax/sip/header/SIPObjectList;)V
    .locals 0
    .param p1, "otherList"    # Lgov/nist/javax/sip/header/SIPObjectList;

    #@0
    .prologue
    .line 103
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;)V

    #@3
    .line 102
    return-void
.end method

.method public concatenate(Lgov/nist/javax/sip/header/SIPObjectList;Z)V
    .locals 0
    .param p1, "otherList"    # Lgov/nist/javax/sip/header/SIPObjectList;
    .param p2, "topFlag"    # Z

    #@0
    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;Z)V

    #@3
    .line 111
    return-void
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 1
    .param p1, "indent"    # I

    #@0
    .prologue
    .line 145
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public first()Lgov/nist/core/GenericObject;
    .locals 1

    #@0
    .prologue
    .line 120
    invoke-super {p0}, Lgov/nist/core/GenericObjectList;->first()Lgov/nist/core/GenericObject;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/SIPObject;

    #@6
    return-object v0
.end method

.method public mergeObjects(Lgov/nist/core/GenericObjectList;)V
    .locals 5
    .param p1, "mergeList"    # Lgov/nist/core/GenericObjectList;

    #@0
    .prologue
    .line 87
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObjectList;->listIterator()Ljava/util/ListIterator;

    #@3
    move-result-object v1

    #@4
    .line 88
    .local v1, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/GenericObject;>;"
    invoke-virtual {p1}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    #@7
    move-result-object v2

    #@8
    .line 89
    .local v2, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/GenericObject;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Lgov/nist/core/GenericObject;

    #@14
    .line 91
    .local v3, "outerObj":Lgov/nist/core/GenericObject;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_0

    #@1a
    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    .line 93
    .local v0, "innerObj":Ljava/lang/Object;
    invoke-virtual {v3, v0}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    #@21
    goto :goto_0

    #@22
    .line 86
    .end local v0    # "innerObj":Ljava/lang/Object;
    .end local v3    # "outerObj":Lgov/nist/core/GenericObject;
    :cond_1
    return-void
.end method

.method public next()Lgov/nist/core/GenericObject;
    .locals 1

    #@0
    .prologue
    .line 130
    invoke-super {p0}, Lgov/nist/core/GenericObjectList;->next()Lgov/nist/core/GenericObject;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/SIPObject;

    #@6
    return-object v0
.end method
