.class public Lgov/nist/javax/sip/header/SupportedList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "SupportedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/Supported;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3efed4e2c6983ebfL


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 53
    const-class v0, Lgov/nist/javax/sip/header/Supported;

    #@2
    const-string/jumbo v1, "Supported"

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
    new-instance v0, Lgov/nist/javax/sip/header/SupportedList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/SupportedList;-><init>()V

    #@5
    .line 46
    .local v0, "retval":Lgov/nist/javax/sip/header/SupportedList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/SupportedList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SupportedList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    .line 47
    return-object v0
.end method
