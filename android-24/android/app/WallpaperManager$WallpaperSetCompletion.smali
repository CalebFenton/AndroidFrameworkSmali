.class Landroid/app/WallpaperManager$WallpaperSetCompletion;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperSetCompletion"
.end annotation


# instance fields
.field final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/app/WallpaperManager;)V
    .locals 2
    .param p1, "this$0"    # Landroid/app/WallpaperManager;

    #@0
    .prologue
    .line 1675
    iput-object p1, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->this$0:Landroid/app/WallpaperManager;

    #@2
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    #@5
    .line 1676
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@b
    iput-object v0, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@d
    .line 1675
    return-void
.end method


# virtual methods
.method public onWallpaperChanged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1691
    iget-object v0, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@5
    .line 1690
    return-void
.end method

.method public waitForCompletion()V
    .locals 5

    #@0
    .prologue
    .line 1681
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@2
    const-wide/16 v2, 0x1e

    #@4
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@6
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1679
    :goto_0
    return-void

    #@a
    .line 1682
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
