.class public Landroid/media/MediaScannerConnection;
.super Ljava/lang/Object;
.source "MediaScannerConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScannerConnection$OnScanCompletedListener;,
        Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;,
        Landroid/media/MediaScannerConnection$ClientProxy;,
        Landroid/media/MediaScannerConnection$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScannerConnection"


# instance fields
.field private mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private final mListener:Landroid/media/IMediaScannerListener$Stub;

.field private mService:Landroid/media/IMediaScannerService;


# direct methods
.method static synthetic -get0(Landroid/media/MediaScannerConnection;)Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    new-instance v0, Landroid/media/MediaScannerConnection$1;

    #@5
    invoke-direct {v0, p0}, Landroid/media/MediaScannerConnection$1;-><init>(Landroid/media/MediaScannerConnection;)V

    #@8
    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mListener:Landroid/media/IMediaScannerListener$Stub;

    #@a
    .line 103
    iput-object p1, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    #@c
    .line 104
    iput-object p2, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    #@e
    .line 102
    return-void
.end method

.method public static scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paths"    # [Ljava/lang/String;
    .param p2, "mimeTypes"    # [Ljava/lang/String;
    .param p3, "callback"    # Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    #@0
    .prologue
    .line 235
    new-instance v0, Landroid/media/MediaScannerConnection$ClientProxy;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/media/MediaScannerConnection$ClientProxy;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    #@5
    .line 236
    .local v0, "client":Landroid/media/MediaScannerConnection$ClientProxy;
    new-instance v1, Landroid/media/MediaScannerConnection;

    #@7
    invoke-direct {v1, p0, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    #@a
    .line 237
    .local v1, "connection":Landroid/media/MediaScannerConnection;
    iput-object v1, v0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    #@c
    .line 238
    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    #@f
    .line 234
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 4

    #@0
    .prologue
    .line 113
    monitor-enter p0

    #@1
    .line 114
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaScannerConnection;->mConnected:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 115
    new-instance v0, Landroid/content/Intent;

    #@7
    const-class v1, Landroid/media/IMediaScannerService;

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 117
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@12
    const-string/jumbo v2, "com.android.providers.media"

    #@15
    .line 118
    const-string/jumbo v3, "com.android.providers.media.MediaScannerService"

    #@18
    .line 117
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1e
    .line 119
    iget-object v1, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    #@20
    const/4 v2, 0x1

    #@21
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@24
    .line 120
    const/4 v1, 0x1

    #@25
    iput-boolean v1, p0, Landroid/media/MediaScannerConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    #@28
    .line 112
    return-void

    #@29
    .line 113
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit p0

    #@2b
    throw v1
.end method

.method public disconnect()V
    .locals 2

    #@0
    .prologue
    .line 129
    monitor-enter p0

    #@1
    .line 130
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaScannerConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 135
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    .line 141
    :goto_0
    const/4 v1, 0x0

    #@b
    :try_start_2
    iput-boolean v1, p0, Landroid/media/MediaScannerConnection;->mConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d
    :cond_0
    monitor-exit p0

    #@e
    .line 128
    return-void

    #@f
    .line 129
    :catchall_0
    move-exception v1

    #@10
    monitor-exit p0

    #@11
    throw v1

    #@12
    .line 136
    :catch_0
    move-exception v0

    #@13
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 151
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-boolean v0, p0, Landroid/media/MediaScannerConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    :goto_0
    monitor-exit p0

    #@8
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 248
    monitor-enter p0

    #@1
    .line 249
    :try_start_0
    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    #@7
    .line 250
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 251
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    #@11
    invoke-interface {v0}, Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;->onMediaScannerConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit p0

    #@15
    .line 244
    return-void

    #@16
    .line 248
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 263
    monitor-enter p0

    #@1
    .line 264
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 259
    return-void

    #@6
    .line 263
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    monitor-enter p0

    #@1
    .line 165
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Landroid/media/MediaScannerConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 172
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    #@b
    iget-object v2, p0, Landroid/media/MediaScannerConnection;->mListener:Landroid/media/IMediaScannerListener$Stub;

    #@d
    invoke-interface {v1, p1, p2, v2}, Landroid/media/IMediaScannerService;->requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    :goto_0
    monitor-exit p0

    #@11
    .line 163
    return-void

    #@12
    .line 166
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    #@14
    const-string/jumbo v2, "not connected to MediaScannerService"

    #@17
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    .line 164
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit p0

    #@1d
    throw v1

    #@1e
    .line 173
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
