.class public abstract Landroid/database/ContentObserver;
.super Ljava/lang/Object;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/ContentObserver$NotificationRunnable;,
        Landroid/database/ContentObserver$Transport;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mTransport:Landroid/database/ContentObserver$Transport;


# direct methods
.method static synthetic -wrap0(Landroid/database/ContentObserver;ZLandroid/net/Uri;I)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    #@a
    .line 39
    iput-object p1, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    #@c
    .line 38
    return-void
.end method

.method private dispatchChange(ZLandroid/net/Uri;I)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 196
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    #@7
    .line 194
    :goto_0
    return-void

    #@8
    .line 198
    :cond_0
    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    #@a
    new-instance v1, Landroid/database/ContentObserver$NotificationRunnable;

    #@c
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/database/ContentObserver$NotificationRunnable;-><init>(Landroid/database/ContentObserver;ZLandroid/net/Uri;I)V

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@12
    goto :goto_0
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final dispatchChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 162
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;)V

    #@4
    .line 161
    return-void
.end method

.method public final dispatchChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 178
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, p2, v0}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;I)V

    #@7
    .line 177
    return-void
.end method

.method public getContentObserver()Landroid/database/IContentObserver;
    .locals 2

    #@0
    .prologue
    .line 48
    iget-object v1, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 49
    :try_start_0
    iget-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 50
    new-instance v0, Landroid/database/ContentObserver$Transport;

    #@9
    invoke-direct {v0, p0}, Landroid/database/ContentObserver$Transport;-><init>(Landroid/database/ContentObserver;)V

    #@c
    iput-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    #@e
    .line 52
    :cond_0
    iget-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 48
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 94
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    #@3
    .line 129
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 145
    invoke-virtual {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    #@3
    .line 144
    return-void
.end method

.method public releaseContentObserver()Landroid/database/IContentObserver;
    .locals 3

    #@0
    .prologue
    .line 63
    iget-object v2, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 64
    :try_start_0
    iget-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    #@5
    .line 65
    .local v0, "oldTransport":Landroid/database/ContentObserver$Transport;
    if-eqz v0, :cond_0

    #@7
    .line 66
    invoke-virtual {v0}, Landroid/database/ContentObserver$Transport;->releaseContentObserver()V

    #@a
    .line 67
    const/4 v1, 0x0

    #@b
    iput-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit v2

    #@e
    .line 69
    return-object v0

    #@f
    .line 63
    .end local v0    # "oldTransport":Landroid/database/ContentObserver$Transport;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1
.end method
