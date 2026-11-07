.class final Landroid/app/LoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/content/Loader$OnLoadCanceledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/content/Loader$OnLoadCanceledListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o mArgs:Landroid/os/Bundle;

.field greylist-max-o mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mData:Ljava/lang/Object;

.field greylist-max-o mDeliveredData:Z

.field greylist-max-o mDestroyed:Z

.field greylist-max-o mHaveData:Z

.field final greylist-max-o mId:I

.field greylist-max-o mListenerRegistered:Z

.field greylist-max-o mLoader:Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

.field greylist-max-o mReportNextStart:Z

.field greylist-max-o mRetaining:Z

.field greylist-max-o mRetainingStarted:Z

.field greylist-max-o mStarted:Z

.field final synthetic blacklist this$0:Landroid/app/LoaderManagerImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V
    .registers 5
    .param p1, "this$0"    # Landroid/app/LoaderManagerImpl;
    .param p2, "id"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p4, "callbacks":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    iput-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 255
    iput-object p3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 256
    iput-object p4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 257
    return-void
.end method


# virtual methods
.method greylist-max-o callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 7
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 488
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_7d

    .line 489
    const/4 v0, 0x0

    .line 490
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 491
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v1

    iget-object v1, v1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 492
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v1

    iget-object v1, v1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    const-string/jumbo v2, "onLoadFinished"

    iput-object v2, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 495
    :cond_24
    :try_start_24
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4e

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 496
    invoke-virtual {p1, p2}, Landroid/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_4e
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v1, p1, p2}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_24 .. :try_end_53} :catchall_69

    .line 499
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 500
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v1

    iget-object v1, v1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iput-object v0, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 503
    :cond_65
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    goto :goto_7d

    .line 499
    :catchall_69
    move-exception v1

    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 500
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v2

    iget-object v2, v2, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iput-object v0, v2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 502
    :cond_7c
    throw v1

    .line 505
    .end local v0    # "lastBecause":Ljava/lang/String;
    :cond_7d
    :goto_7d
    return-void
.end method

.method greylist-max-o cancel()Z
    .registers 3

    .line 354
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Canceling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1c
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_36

    .line 356
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->cancelLoad()Z

    move-result v0

    .line 357
    .local v0, "cancelLoadResult":Z
    if-nez v0, :cond_35

    .line 358
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {p0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->onLoadCanceled(Landroid/content/Loader;)V

    .line 360
    :cond_35
    return v0

    .line 362
    .end local v0    # "cancelLoadResult":Z
    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o destroy()V
    .registers 6

    .line 366
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Destroying: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    .line 368
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 369
    .local v0, "needReset":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 370
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    if-eqz v3, :cond_9a

    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v3, :cond_9a

    iget-boolean v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v3, :cond_9a

    if-eqz v0, :cond_9a

    .line 371
    sget-boolean v3, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_4c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Reseting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_4c
    const/4 v1, 0x0

    .line 373
    .local v1, "lastBecause":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v3}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v3

    if-eqz v3, :cond_6c

    .line 374
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v3}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v3

    iget-object v3, v3, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, v3, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 375
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v3}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v3

    iget-object v3, v3, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    const-string/jumbo v4, "onLoaderReset"

    iput-object v4, v3, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 378
    :cond_6c
    :try_start_6c
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    iget-object v4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-interface {v3, v4}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/content/Loader;)V
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_86

    .line 380
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v3}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v3

    if-eqz v3, :cond_9a

    .line 381
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v3}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v3

    iget-object v3, v3, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iput-object v1, v3, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_9a

    .line 380
    :catchall_86
    move-exception v2

    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v3}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v3

    if-eqz v3, :cond_99

    .line 381
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v3}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v3

    iget-object v3, v3, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iput-object v1, v3, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 383
    :cond_99
    throw v2

    .line 385
    .end local v1    # "lastBecause":Ljava/lang/String;
    :cond_9a
    :goto_9a
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 386
    iput-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 387
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 388
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v1, :cond_ba

    .line 389
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v1, :cond_b5

    .line 390
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 391
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v1, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 392
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v1, p0}, Landroid/content/Loader;->unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 394
    :cond_b5
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v1}, Landroid/content/Loader;->reset()V

    .line 396
    :cond_ba
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v1, :cond_c3

    .line 397
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 399
    :cond_c3
    return-void
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 521
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 522
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 523
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 524
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 525
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    const-string v1, "  "

    if-eqz v0, :cond_50

    .line 526
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 528
    :cond_50
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v0, :cond_58

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-eqz v0, :cond_7e

    .line 529
    :cond_58
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 530
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 531
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 533
    :cond_7e
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 534
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 535
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 536
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 537
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 538
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 539
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_ee

    .line 540
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 544
    :cond_ee
    return-void
.end method

.method greylist-max-o finishRetain()V
    .registers 3

    .line 304
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-eqz v0, :cond_30

    .line 305
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Finished Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 307
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eq v0, v1, :cond_30

    .line 308
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_30

    .line 312
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 317
    :cond_30
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-nez v0, :cond_43

    .line 324
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 326
    :cond_43
    return-void
.end method

.method public whitelist onLoadCanceled(Landroid/content/Loader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 403
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLoadCanceled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1d
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-eqz v0, :cond_2b

    .line 406
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2a

    const-string v0, "  Ignoring load canceled -- destroyed"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_2a
    return-void

    .line 410
    :cond_2b
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_41

    .line 413
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_40

    const-string v0, "  Ignoring load canceled -- not active"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_40
    return-void

    .line 417
    :cond_41
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 418
    .local v0, "pending":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_73

    .line 422
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_5f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Switching to pending loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_5f
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 424
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 426
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v1, v0}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V

    .line 428
    :cond_73
    return-void
.end method

.method public whitelist onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 7
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 432
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLoadComplete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_1d
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-eqz v0, :cond_2b

    .line 435
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2a

    const-string v0, "  Ignoring load complete -- destroyed"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_2a
    return-void

    .line 439
    :cond_2b
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_41

    .line 442
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_40

    const-string v0, "  Ignoring load complete -- not active"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_40
    return-void

    .line 446
    :cond_41
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 447
    .local v0, "pending":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_74

    .line 451
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_5f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Switching to pending loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_5f
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 453
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 455
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v1, v0}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V

    .line 456
    return-void

    .line 461
    :cond_74
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    if-ne v1, p2, :cond_7c

    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v1, :cond_88

    .line 462
    :cond_7c
    iput-object p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 463
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 464
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v1, :cond_88

    .line 465
    invoke-virtual {p0, p1, p2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 475
    :cond_88
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 476
    .local v1, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v1, :cond_a7

    if-eq v1, p0, :cond_a7

    .line 477
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 478
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 479
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    iget v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 482
    :cond_a7
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v2

    if-eqz v2, :cond_c2

    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v2

    if-nez v2, :cond_c2

    .line 483
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v2

    iget-object v2, v2, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 485
    :cond_c2
    return-void
.end method

.method greylist-max-o reportStart()V
    .registers 3

    .line 329
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_1a

    .line 330
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-eqz v0, :cond_1a

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 332
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v0, :cond_1a

    .line 333
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 337
    :cond_1a
    return-void
.end method

.method greylist-max-o retain()V
    .registers 3

    .line 296
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 298
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 301
    return-void
.end method

.method greylist-max-o start()V
    .registers 5

    .line 260
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eqz v0, :cond_c

    .line 264
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 265
    return-void

    .line 268
    :cond_c
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_11

    .line 270
    return-void

    .line 273
    :cond_11
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 275
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LoaderManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_2f
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-nez v0, :cond_43

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_43

    .line 277
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-interface {v0, v2, v3}, Landroid/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 279
    :cond_43
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_96

    .line 280
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 281
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_64

    goto :goto_7f

    .line 282
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_7f
    :goto_7f
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-nez v0, :cond_91

    .line 287
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v2, p0}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 288
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0, p0}, Landroid/content/Loader;->registerOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 289
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 291
    :cond_91
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    .line 293
    :cond_96
    return-void
.end method

.method greylist-max-o stop()V
    .registers 3

    .line 340
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 342
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v1, :cond_3c

    .line 343
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v1, :cond_3c

    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v1, :cond_3c

    .line 345
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 346
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 347
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 348
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->stopLoading()V

    .line 351
    :cond_3c
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 510
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 516
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
