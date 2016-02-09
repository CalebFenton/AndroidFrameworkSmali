.class public Lgov/nist/javax/sip/address/NetObjectList;
.super Lgov/nist/core/GenericObjectList;
.source "NetObjectList.java"


# static fields
.field private static final serialVersionUID:J = -0x1589083c1870e7afL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Lgov/nist/core/GenericObjectList;-><init>()V

    #@3
    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "lname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    #@3
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "lname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 73
    .local p2, "cname":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@3
    .line 72
    return-void
.end method


# virtual methods
.method public add(Lgov/nist/javax/sip/address/NetObject;)V
    .locals 0
    .param p1, "obj"    # Lgov/nist/javax/sip/address/NetObject;

    #@0
    .prologue
    .line 90
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->add(Ljava/lang/Object;)Z

    #@3
    .line 89
    return-void
.end method

.method public concatenate(Lgov/nist/javax/sip/address/NetObjectList;)V
    .locals 0
    .param p1, "net_obj_list"    # Lgov/nist/javax/sip/address/NetObjectList;

    #@0
    .prologue
    .line 97
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;)V

    #@3
    .line 96
    return-void
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 1
    .param p1, "indent"    # I

    #@0
    .prologue
    .line 141
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
    .line 106
    invoke-super {p0}, Lgov/nist/core/GenericObjectList;->first()Lgov/nist/core/GenericObject;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/address/NetObject;

    #@6
    return-object v0
.end method

.method public next()Lgov/nist/core/GenericObject;
    .locals 1

    #@0
    .prologue
    .line 115
    invoke-super {p0}, Lgov/nist/core/GenericObjectList;->next()Lgov/nist/core/GenericObject;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/address/NetObject;

    #@6
    return-object v0
.end method

.method public next(Ljava/util/ListIterator;)Lgov/nist/core/GenericObject;
    .locals 1
    .param p1, "li"    # Ljava/util/ListIterator;

    #@0
    .prologue
    .line 123
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->next(Ljava/util/ListIterator;)Lgov/nist/core/GenericObject;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/address/NetObject;

    #@6
    return-object v0
.end method

.method public setMyClass(Ljava/lang/Class;)V
    .locals 0
    .param p1, "cl"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 132
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->setMyClass(Ljava/lang/Class;)V

    #@3
    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 150
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/NetObjectList;->encode()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
