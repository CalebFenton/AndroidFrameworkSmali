.class public Landroid/net/util/NetdService;
.super Ljava/lang/Object;
.source "NetdService.java"


# static fields
.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 28
    const-class v0, Landroid/net/util/NetdService;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    #@8
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/net/INetd;
    .locals 3

    #@0
    .prologue
    .line 40
    const-string/jumbo v1, "netd"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    .line 39
    invoke-static {v1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    #@a
    move-result-object v0

    #@b
    .line 41
    .local v0, "netdInstance":Landroid/net/INetd;
    if-nez v0, :cond_0

    #@d
    .line 42
    sget-object v1, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "WARNING: returning null INetd instance."

    #@12
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 44
    :cond_0
    return-object v0
.end method
