.class public Lgov/nist/javax/sip/header/AcceptEncodingList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "AcceptEncodingList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/AcceptEncoding;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 53
    const-class v0, Lgov/nist/javax/sip/header/AcceptEncoding;

    #@2
    const-string/jumbo v1, "Accept-Encoding"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 52
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 45
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncodingList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncodingList;-><init>()V

    #@5
    .line 46
    .local v0, "retval":Lgov/nist/javax/sip/header/AcceptEncodingList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptEncodingList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AcceptEncodingList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    .line 47
    return-object v0
.end method
