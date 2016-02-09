.class public final Lgov/nist/javax/sip/header/ReasonList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "ReasonList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x67873560c2c2475eL


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 56
    const-class v0, Lgov/nist/javax/sip/header/Reason;

    #@2
    const-string/jumbo v1, "Reason"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 48
    new-instance v0, Lgov/nist/javax/sip/header/ReasonList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReasonList;-><init>()V

    #@5
    .line 49
    .local v0, "retval":Lgov/nist/javax/sip/header/ReasonList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ReasonList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ReasonList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    .line 50
    return-object v0
.end method
