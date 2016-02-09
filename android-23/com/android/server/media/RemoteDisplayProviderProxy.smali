.class final Lcom/android/server/media/RemoteDisplayProviderProxy;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;,
        Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;,
        Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;,
        Lcom/android/server/media/RemoteDisplayProviderProxy$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "RemoteDisplayProvider"


# instance fields
.field private mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

.field private mBound:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnectionReady:Z

.field private final mContext:Landroid/content/Context;

.field private mDiscoveryMode:I

.field private mDisplayState:Landroid/media/RemoteDisplayState;

.field private mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

.field private final mDisplayStateChanged:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mRunning:Z

.field private mScheduledDisplayStateChangedCallback:Z

.field private mSelectedDisplayId:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/media/RemoteDisplayState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/media/RemoteDisplayProviderProxy;)Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/media/RemoteDisplayProviderProxy;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/media/RemoteDisplayProviderProxy;Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .locals 0
    .param p1, "connection"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->onConnectionDied(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/media/RemoteDisplayProviderProxy;Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .locals 0
    .param p1, "connection"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->onConnectionReady(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/media/RemoteDisplayProviderProxy;Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V
    .locals 0
    .param p1, "connection"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
    .param p2, "state"    # Landroid/media/RemoteDisplayState;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 43
    const-string/jumbo v0, "RemoteDisplayProvider"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    #@a
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 310
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$1;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    #@8
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateChanged:Ljava/lang/Runnable;

    #@a
    .line 66
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mContext:Landroid/content/Context;

    #@c
    .line 67
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    #@e
    .line 68
    iput p3, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mUserId:I

    #@10
    .line 69
    new-instance v0, Landroid/os/Handler;

    #@12
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@15
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    #@17
    .line 65
    return-void
.end method

.method private bind()V
    .locals 5

    #@0
    .prologue
    .line 185
    iget-boolean v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    #@2
    if-nez v2, :cond_1

    #@4
    .line 186
    sget-boolean v2, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 187
    const-string/jumbo v2, "RemoteDisplayProvider"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    const-string/jumbo v4, ": Binding"

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 190
    :cond_0
    new-instance v1, Landroid/content/Intent;

    #@24
    const-string/jumbo v2, "com.android.media.remotedisplay.RemoteDisplayProvider"

    #@27
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2a
    .line 191
    .local v1, "service":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    #@2c
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@2f
    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mContext:Landroid/content/Context;

    #@31
    .line 195
    new-instance v3, Landroid/os/UserHandle;

    #@33
    iget v4, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mUserId:I

    #@35
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    #@38
    .line 194
    const v4, 0x4000001

    #@3b
    .line 193
    invoke-virtual {v2, v1, p0, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@3e
    move-result v2

    #@3f
    iput-boolean v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    #@41
    .line 196
    iget-boolean v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    #@43
    if-nez v2, :cond_1

    #@45
    sget-boolean v2, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    #@47
    if-eqz v2, :cond_1

    #@49
    .line 197
    const-string/jumbo v2, "RemoteDisplayProvider"

    #@4c
    new-instance v3, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    const-string/jumbo v4, ": Bind failed"

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 184
    .end local v1    # "service":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    #@64
    .line 199
    .restart local v1    # "service":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@65
    .line 200
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-boolean v2, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    #@67
    if-eqz v2, :cond_1

    #@69
    .line 201
    const-string/jumbo v2, "RemoteDisplayProvider"

    #@6c
    new-instance v3, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    const-string/jumbo v4, ": Bind failed"

    #@78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@83
    goto :goto_0
.end method

.method private disconnect()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 284
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 285
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 286
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@b
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->disconnect(Ljava/lang/String;)V

    #@10
    .line 288
    :cond_0
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    #@13
    .line 289
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@15
    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->dispose()V

    #@18
    .line 290
    iput-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@1a
    .line 291
    invoke-direct {p0, v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDisplayState(Landroid/media/RemoteDisplayState;)V

    #@1d
    .line 283
    :cond_1
    return-void
.end method

.method private onConnectionDied(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@2
    if-ne v0, p1, :cond_1

    #@4
    .line 267
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 268
    const-string/jumbo v0, "RemoteDisplayProvider"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, ": Service connection died"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    #@25
    .line 265
    :cond_1
    return-void
.end method

.method private onConnectionReady(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@2
    if-ne v0, p1, :cond_1

    #@4
    .line 254
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    #@7
    .line 256
    iget v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 257
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@d
    iget v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->setDiscoveryMode(I)V

    #@12
    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 260
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@18
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->connect(Ljava/lang/String;)V

    #@1d
    .line 252
    :cond_1
    return-void
.end method

.method private onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V
    .locals 3
    .param p1, "connection"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
    .param p2, "state"    # Landroid/media/RemoteDisplayState;

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@2
    if-ne v0, p1, :cond_1

    #@4
    .line 276
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 277
    const-string/jumbo v0, "RemoteDisplayProvider"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, ": State changed, state="

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 279
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDisplayState(Landroid/media/RemoteDisplayState;)V

    #@29
    .line 274
    :cond_1
    return-void
.end method

.method private setDisplayState(Landroid/media/RemoteDisplayState;)V
    .locals 2
    .param p1, "state"    # Landroid/media/RemoteDisplayState;

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    #@2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 297
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    #@a
    .line 298
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z

    #@c
    if-nez v0, :cond_0

    #@e
    .line 299
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z

    #@11
    .line 300
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    #@13
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateChanged:Ljava/lang/Runnable;

    #@15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@18
    .line 295
    :cond_0
    return-void
.end method

.method private shouldBind()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 174
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 176
    iget v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    #@7
    if-nez v0, :cond_0

    #@9
    .line 177
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 178
    :cond_0
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 181
    :cond_1
    return v1
.end method

.method private unbind()V
    .locals 3

    #@0
    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 209
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 210
    const-string/jumbo v0, "RemoteDisplayProvider"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, ": Unbinding"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 213
    :cond_0
    const/4 v0, 0x0

    #@23
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    #@25
    .line 214
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    #@28
    .line 215
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mContext:Landroid/content/Context;

    #@2a
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@2d
    .line 207
    :cond_1
    return-void
.end method

.method private updateBinding()V
    .locals 1

    #@0
    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->shouldBind()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 167
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->bind()V

    #@9
    .line 165
    :goto_0
    return-void

    #@a
    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->unbind()V

    #@d
    goto :goto_0
.end method


# virtual methods
.method public adjustDisplayVolume(I)V
    .locals 2
    .param p1, "delta"    # I

    #@0
    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 123
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@a
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->adjustVolume(Ljava/lang/String;I)V

    #@f
    .line 121
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "Proxy"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, "  mUserId="

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    iget v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mUserId:I

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    const-string/jumbo v1, "  mRunning="

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    const-string/jumbo v1, "  mBound="

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6e
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    const-string/jumbo v1, "  mActiveConnection="

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8b
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v0

    #@94
    const-string/jumbo v1, "  mConnectionReady="

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    #@9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v0

    #@a5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a8
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    const-string/jumbo v1, "  mDiscoveryMode="

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v0

    #@b8
    iget v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    #@ba
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v0

    #@be
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v0

    #@c2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c5
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v0

    #@ce
    const-string/jumbo v1, "  mSelectedDisplayId="

    #@d1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v0

    #@d5
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    #@d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v0

    #@db
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v0

    #@df
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e2
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v0

    #@eb
    const-string/jumbo v1, "  mDisplayState="

    #@ee
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v0

    #@f2
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    #@f4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v0

    #@f8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v0

    #@fc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ff
    .line 72
    return-void
.end method

.method public getDisplayState()Landroid/media/RemoteDisplayState;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    #@2
    return-object v0
.end method

.method public getFlattenedComponentName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    #@2
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    #@2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 129
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    #@e
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    .line 128
    :goto_0
    return v0

    #@17
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 221
    sget-boolean v2, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 222
    const-string/jumbo v2, "RemoteDisplayProvider"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    const-string/jumbo v4, ": Connected"

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 225
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 226
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    #@25
    .line 228
    invoke-static {p2}, Landroid/media/IRemoteDisplayProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteDisplayProvider;

    #@28
    move-result-object v1

    #@29
    .line 229
    .local v1, "provider":Landroid/media/IRemoteDisplayProvider;
    if-eqz v1, :cond_3

    #@2b
    .line 230
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@2d
    invoke-direct {v0, p0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/IRemoteDisplayProvider;)V

    #@30
    .line 231
    .local v0, "connection":Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->register()Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_2

    #@36
    .line 232
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@38
    .line 220
    .end local v0    # "connection":Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
    .end local v1    # "provider":Landroid/media/IRemoteDisplayProvider;
    :cond_1
    :goto_0
    return-void

    #@39
    .line 234
    .restart local v0    # "connection":Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
    .restart local v1    # "provider":Landroid/media/IRemoteDisplayProvider;
    :cond_2
    sget-boolean v2, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    #@3b
    if-eqz v2, :cond_1

    #@3d
    .line 235
    const-string/jumbo v2, "RemoteDisplayProvider"

    #@40
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    const-string/jumbo v4, ": Registration failed"

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    goto :goto_0

    #@58
    .line 239
    .end local v0    # "connection":Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
    :cond_3
    const-string/jumbo v2, "RemoteDisplayProvider"

    #@5b
    new-instance v3, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    const-string/jumbo v4, ": Service returned invalid remote display provider binder"

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 246
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 247
    const-string/jumbo v0, "RemoteDisplayProvider"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, ": Service disconnected"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    #@21
    .line 245
    return-void
.end method

.method public rebindIfDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->shouldBind()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 160
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->unbind()V

    #@d
    .line 161
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->bind()V

    #@10
    .line 158
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    #@0
    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    #@2
    .line 84
    return-void
.end method

.method public setDiscoveryMode(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 93
    iget v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 94
    iput p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    #@6
    .line 95
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 96
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->setDiscoveryMode(I)V

    #@f
    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    #@12
    .line 92
    :cond_1
    return-void
.end method

.method public setDisplayVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    #@0
    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 117
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@a
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->setVolume(Ljava/lang/String;I)V

    #@f
    .line 115
    :cond_0
    return-void
.end method

.method public setSelectedDisplay(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_2

    #@8
    .line 104
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 105
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@12
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->disconnect(Ljava/lang/String;)V

    #@17
    .line 107
    :cond_0
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    #@19
    .line 108
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    #@1b
    if-eqz v0, :cond_1

    #@1d
    if-eqz p1, :cond_1

    #@1f
    .line 109
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    #@21
    invoke-virtual {v0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->connect(Ljava/lang/String;)V

    #@24
    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    #@27
    .line 102
    :cond_2
    return-void
.end method

.method public start()V
    .locals 3

    #@0
    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 138
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 139
    const-string/jumbo v0, "RemoteDisplayProvider"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, ": Starting"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 142
    :cond_0
    const/4 v0, 0x1

    #@23
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    #@25
    .line 143
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    #@28
    .line 136
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    #@0
    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 149
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 150
    const-string/jumbo v0, "RemoteDisplayProvider"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, ": Stopping"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 153
    :cond_0
    const/4 v0, 0x0

    #@23
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    #@25
    .line 154
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    #@28
    .line 147
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Service connection "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    #@e
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method
