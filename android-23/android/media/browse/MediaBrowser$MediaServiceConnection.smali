.class Landroid/media/browse/MediaBrowser$MediaServiceConnection;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;


# direct methods
.method private constructor <init>(Landroid/media/browse/MediaBrowser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;

    #@0
    .prologue
    .line 777
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$MediaServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;-><init>(Landroid/media/browse/MediaBrowser;)V

    #@3
    return-void
.end method

.method private isCurrent(Ljava/lang/String;)Z
    .locals 4
    .param p1, "funcName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 847
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@3
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-get6(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@6
    move-result-object v0

    #@7
    if-eq v0, p0, :cond_1

    #@9
    .line 848
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@b
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-get7(Landroid/media/browse/MediaBrowser;)I

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 850
    const-string/jumbo v0, "MediaBrowser"

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, " for "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@26
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-get5(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, " with mServiceConnection="

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 851
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@37
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-get6(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@3a
    move-result-object v2

    #@3b
    .line 850
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 851
    const-string/jumbo v2, " this="

    #@42
    .line 850
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 853
    :cond_0
    return v3

    #@52
    .line 855
    :cond_1
    const/4 v0, 0x1

    #@53
    return v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 788
    const-string/jumbo v1, "onServiceConnected"

    #@3
    invoke-direct {p0, v1}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->isCurrent(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 789
    return-void

    #@a
    .line 793
    :cond_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@c
    invoke-static {p2}, Landroid/service/media/IMediaBrowserService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserService;

    #@f
    move-result-object v2

    #@10
    invoke-static {v1, v2}, Landroid/media/browse/MediaBrowser;->-set3(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserService;)Landroid/service/media/IMediaBrowserService;

    #@13
    .line 797
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@15
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@17
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-wrap0(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ServiceCallbacks;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Landroid/media/browse/MediaBrowser;->-set4(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@1e
    .line 798
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@20
    const/4 v2, 0x1

    #@21
    invoke-static {v1, v2}, Landroid/media/browse/MediaBrowser;->-set5(Landroid/media/browse/MediaBrowser;I)I

    #@24
    .line 807
    :try_start_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@26
    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->-get3(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@2c
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-get1(Landroid/media/browse/MediaBrowser;)Landroid/content/Context;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@36
    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-get2(Landroid/media/browse/MediaBrowser;)Landroid/os/Bundle;

    #@39
    move-result-object v3

    #@3a
    iget-object v4, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@3c
    invoke-static {v4}, Landroid/media/browse/MediaBrowser;->-get4(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@3f
    move-result-object v4

    #@40
    invoke-interface {v1, v2, v3, v4}, Landroid/service/media/IMediaBrowserService;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 779
    :goto_0
    return-void

    #@44
    .line 808
    :catch_0
    move-exception v0

    #@45
    .line 812
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaBrowser"

    #@48
    new-instance v2, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v3, "RemoteException during connect for "

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@56
    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-get5(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 830
    const-string/jumbo v0, "onServiceDisconnected"

    #@4
    invoke-direct {p0, v0}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->isCurrent(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 831
    return-void

    #@b
    .line 835
    :cond_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@d
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-set3(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserService;)Landroid/service/media/IMediaBrowserService;

    #@10
    .line 836
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@12
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-set4(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@15
    .line 839
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@17
    const/4 v1, 0x3

    #@18
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-set5(Landroid/media/browse/MediaBrowser;I)I

    #@1b
    .line 840
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@1d
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-get0(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnectionSuspended()V

    #@24
    .line 821
    return-void
.end method
