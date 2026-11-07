.class public abstract Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
.super Ljava/lang/Object;
.source "WifiNetworkScoreCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiNetworkScoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CacheListener"
.end annotation


# instance fields
.field private greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;->mHandler:Landroid/os/Handler;

    .line 295
    return-void
.end method


# virtual methods
.method public abstract greylist-max-o networkCacheUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation
.end method

.method greylist-max-o post(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    .line 299
    .local p1, "updatedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener$1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener$1;-><init>(Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    return-void
.end method
