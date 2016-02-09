.class public Lgov/nist/javax/sip/header/ErrorInfoList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "ErrorInfoList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ErrorInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 71
    const-class v0, Lgov/nist/javax/sip/header/ErrorInfo;

    #@2
    const-string/jumbo v1, "Error-Info"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 70
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 63
    new-instance v0, Lgov/nist/javax/sip/header/ErrorInfoList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ErrorInfoList;-><init>()V

    #@5
    .line 64
    .local v0, "retval":Lgov/nist/javax/sip/header/ErrorInfoList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ErrorInfoList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ErrorInfoList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    .line 65
    return-object v0
.end method
