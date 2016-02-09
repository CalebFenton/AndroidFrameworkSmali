.class public Lgov/nist/javax/sip/header/WarningList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "WarningList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/Warning;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x13c080768c5c44dfL


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 58
    const-class v0, Lgov/nist/javax/sip/header/Warning;

    #@2
    const-string/jumbo v1, "Warning"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 51
    new-instance v0, Lgov/nist/javax/sip/header/WarningList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/WarningList;-><init>()V

    #@5
    .line 52
    .local v0, "retval":Lgov/nist/javax/sip/header/WarningList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/WarningList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/WarningList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method
