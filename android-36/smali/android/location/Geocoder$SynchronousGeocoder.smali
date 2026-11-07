.class Landroid/location/Geocoder$SynchronousGeocoder;
.super Ljava/lang/Object;
.source "Geocoder.java"

# interfaces
.implements Landroid/location/Geocoder$GeocodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Geocoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronousGeocoder"
.end annotation


# instance fields
.field private blacklist mError:Ljava/lang/String;

.field private final blacklist mLatch:Ljava/util/concurrent/CountDownLatch;

.field private blacklist mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mError:Ljava/lang/String;

    .line 378
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mResults:Ljava/util/List;

    .line 380
    return-void
.end method


# virtual methods
.method public blacklist getResults()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    :try_start_0
    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 401
    goto :goto_20

    .line 397
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/location/Geocoder$SynchronousGeocoder;
    throw v0
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_18} :catch_18

    .line 399
    .restart local p0    # "this":Landroid/location/Geocoder$SynchronousGeocoder;
    :catch_18
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 403
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_20
    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mError:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 406
    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mResults:Ljava/util/List;

    return-object v0

    .line 404
    :cond_27
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mError:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onError(Ljava/lang/String;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/String;

    .line 390
    iput-object p1, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mError:Ljava/lang/String;

    .line 391
    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 392
    return-void
.end method

.method public whitelist onGeocode(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .line 384
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iput-object p1, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mResults:Ljava/util/List;

    .line 385
    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 386
    return-void
.end method
