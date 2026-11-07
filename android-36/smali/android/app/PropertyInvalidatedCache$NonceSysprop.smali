.class final Landroid/app/PropertyInvalidatedCache$NonceSysprop;
.super Landroid/app/PropertyInvalidatedCache$NonceHandler;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonceSysprop"
.end annotation


# instance fields
.field private volatile blacklist mHandle:Landroid/os/SystemProperties$Handle;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 913
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;-><init>(Ljava/lang/String;)V

    .line 914
    return-void
.end method


# virtual methods
.method blacklist getNonceInternal()J
    .registers 5

    .line 924
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_20

    .line 925
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 926
    :try_start_9
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    if-nez v3, :cond_1b

    .line 927
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/SystemProperties;->find(Ljava/lang/String;)Landroid/os/SystemProperties$Handle;

    move-result-object v3

    iput-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    .line 928
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    if-nez v3, :cond_1b

    .line 929
    monitor-exit v0

    return-wide v1

    .line 932
    :cond_1b
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw v1

    .line 934
    :cond_20
    :goto_20
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemProperties$Handle;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist setNonceInternal(J)V
    .registers 5
    .param p1, "value"    # J

    .line 942
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/SystemPropertySetter;->setWithRetry(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    return-void
.end method
