.class public Landroid/test/LoaderTestCase;
.super Landroid/test/AndroidTestCase;
.source "LoaderTestCase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/LoaderTestCase$1;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    new-instance v0, Landroid/test/LoaderTestCase$1;

    #@2
    invoke-direct {v0}, Landroid/test/LoaderTestCase$1;-><init>()V

    #@5
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLoaderResultSynchronously(Landroid/content/Loader;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Loader",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 57
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<TT;>;"
    new-instance v3, Ljava/util/concurrent/ArrayBlockingQueue;

    #@2
    const/4 v5, 0x1

    #@3
    invoke-direct {v3, v5}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    #@6
    .line 61
    .local v3, "queue":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TT;>;"
    new-instance v1, Landroid/test/LoaderTestCase$2;

    #@8
    invoke-direct {v1, p0, v3}, Landroid/test/LoaderTestCase$2;-><init>(Landroid/test/LoaderTestCase;Ljava/util/concurrent/ArrayBlockingQueue;)V

    #@b
    .line 77
    .local v1, "listener":Landroid/content/Loader$OnLoadCompleteListener;, "Landroid/content/Loader$OnLoadCompleteListener<TT;>;"
    new-instance v2, Landroid/test/LoaderTestCase$3;

    #@d
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@10
    move-result-object v5

    #@11
    invoke-direct {v2, p0, v5, p1, v1}, Landroid/test/LoaderTestCase$3;-><init>(Landroid/test/LoaderTestCase;Landroid/os/Looper;Landroid/content/Loader;Landroid/content/Loader$OnLoadCompleteListener;)V

    #@14
    .line 86
    .local v2, "mainThreadHandler":Landroid/os/Handler;
    const/4 v5, 0x0

    #@15
    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@18
    .line 92
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object v4

    #@1c
    .line 99
    .local v4, "result":Ljava/lang/Object;, "TT;"
    return-object v4

    #@1d
    .line 94
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    #@1e
    .line 95
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v5, Ljava/lang/RuntimeException;

    #@20
    const-string/jumbo v6, "waiting thread interrupted"

    #@23
    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@26
    throw v5
.end method
