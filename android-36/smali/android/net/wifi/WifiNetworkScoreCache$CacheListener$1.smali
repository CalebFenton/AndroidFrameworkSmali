.class Landroid/net/wifi/WifiNetworkScoreCache$CacheListener$1;
.super Ljava/lang/Object;
.source "WifiNetworkScoreCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;->post(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

.field final synthetic blacklist val$updatedNetworks:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 299
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener$1;->this$0:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    iput-object p2, p0, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener$1;->val$updatedNetworks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 302
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener$1;->this$0:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener$1;->val$updatedNetworks:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;->networkCacheUpdated(Ljava/util/List;)V

    .line 303
    return-void
.end method
