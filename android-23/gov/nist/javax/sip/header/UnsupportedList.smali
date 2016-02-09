.class public Lgov/nist/javax/sip/header/UnsupportedList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "UnsupportedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/Unsupported;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x383dc391811b9ae5L


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 48
    const-class v0, Lgov/nist/javax/sip/header/Unsupported;

    #@2
    const-string/jumbo v1, "Unsupported"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 47
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 53
    new-instance v0, Lgov/nist/javax/sip/header/UnsupportedList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/UnsupportedList;-><init>()V

    #@5
    .line 54
    .local v0, "retval":Lgov/nist/javax/sip/header/UnsupportedList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/UnsupportedList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/UnsupportedList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method
