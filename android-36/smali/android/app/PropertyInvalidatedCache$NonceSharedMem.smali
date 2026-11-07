.class final Landroid/app/PropertyInvalidatedCache$NonceSharedMem;
.super Landroid/app/PropertyInvalidatedCache$NonceHandler;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonceSharedMem"
.end annotation


# instance fields
.field private volatile blacklist mHandle:I

.field private final blacklist mShortName:Ljava/lang/String;

.field private volatile blacklist mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 963
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;-><init>(Ljava/lang/String;)V

    .line 956
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 964
    if-eqz p2, :cond_19

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 965
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    goto :goto_1b

    .line 967
    :cond_19
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    .line 969
    :goto_1b
    return-void
.end method

.method private blacklist initialize(Z)I
    .registers 7
    .param p1, "update"    # Z

    .line 978
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 979
    :try_start_3
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 980
    .local v1, "handle":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    .line 981
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    if-nez v3, :cond_18

    .line 982
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getInstance()Landroid/app/PropertyInvalidatedCache$NonceStore;

    move-result-object v3

    iput-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    .line 983
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    if-nez v3, :cond_18

    .line 984
    monitor-exit v0

    return v2

    .line 987
    :cond_18
    if-eqz p1, :cond_21

    .line 988
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/PropertyInvalidatedCache$NonceStore;->storeName(Ljava/lang/String;)I

    .line 990
    :cond_21
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getHandleForName(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 991
    if-ne v1, v2, :cond_2e

    .line 992
    monitor-exit v0

    return v2

    .line 995
    :cond_2e
    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 997
    :cond_30
    monitor-exit v0

    return v1

    .line 998
    .end local v1    # "handle":I
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method


# virtual methods
.method blacklist getNonceInternal()J
    .registers 4

    .line 1006
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 1007
    .local v0, "handle":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 1008
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->initialize(Z)I

    move-result v0

    .line 1009
    if-ne v0, v1, :cond_f

    .line 1010
    const-wide/16 v1, 0x0

    return-wide v1

    .line 1013
    :cond_f
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    invoke-virtual {v1, v0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getNonce(I)J

    move-result-wide v1

    return-wide v1
.end method

.method blacklist setNonceInternal(J)V
    .registers 7
    .param p1, "value"    # J

    .line 1020
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 1021
    .local v0, "handle":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    .line 1022
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->initialize(Z)I

    move-result v0

    .line 1023
    if-eq v0, v1, :cond_d

    goto :goto_29

    .line 1024
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to assign nonce handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1027
    :cond_29
    :goto_29
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/PropertyInvalidatedCache$NonceStore;->setNonce(IJ)Z

    .line 1028
    return-void
.end method
