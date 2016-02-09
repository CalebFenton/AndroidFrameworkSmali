.class final Landroid/app/SystemServiceRegistry$59;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Landroid/media/tv/TvInputManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 621
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService()Landroid/media/tv/TvInputManager;
    .locals 4

    #@0
    .prologue
    .line 624
    const-string/jumbo v2, "tv_input"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 625
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/tv/ITvInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManager;

    #@a
    move-result-object v1

    #@b
    .line 626
    .local v1, "service":Landroid/media/tv/ITvInputManager;
    new-instance v2, Landroid/media/tv/TvInputManager;

    #@d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@10
    move-result v3

    #@11
    invoke-direct {v2, v1, v3}, Landroid/media/tv/TvInputManager;-><init>(Landroid/media/tv/ITvInputManager;I)V

    #@14
    return-object v2
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 623
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$59;->createService()Landroid/media/tv/TvInputManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
