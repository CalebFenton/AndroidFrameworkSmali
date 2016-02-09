.class public Lgov/nist/javax/sip/header/RecordRouteList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "RecordRouteList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/RecordRoute;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x17f03837c2e0c363L


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 53
    const-class v0, Lgov/nist/javax/sip/header/RecordRoute;

    #@2
    const-string/jumbo v1, "Record-Route"

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
    .line 46
    new-instance v0, Lgov/nist/javax/sip/header/RecordRouteList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/RecordRouteList;-><init>()V

    #@5
    .line 47
    .local v0, "retval":Lgov/nist/javax/sip/header/RecordRouteList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/RecordRouteList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RecordRouteList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    .line 48
    return-object v0
.end method
