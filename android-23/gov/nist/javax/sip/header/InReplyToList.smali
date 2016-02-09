.class public final Lgov/nist/javax/sip/header/InReplyToList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "InReplyToList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/InReplyTo;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6eee9c88103b0ac5L


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 57
    const-class v0, Lgov/nist/javax/sip/header/InReplyTo;

    #@2
    const-string/jumbo v1, "In-Reply-To"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 56
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 49
    new-instance v0, Lgov/nist/javax/sip/header/InReplyToList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/InReplyToList;-><init>()V

    #@5
    .line 50
    .local v0, "retval":Lgov/nist/javax/sip/header/InReplyToList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/InReplyToList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/InReplyToList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    .line 51
    return-object v0
.end method
