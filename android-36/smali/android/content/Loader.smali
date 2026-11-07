.class public Landroid/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Loader$OnLoadCompleteListener;,
        Landroid/content/Loader$OnLoadCanceledListener;,
        Landroid/content/Loader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mAbandoned:Z

.field greylist-max-o mContentChanged:Z

.field greylist-max-o mContext:Landroid/content/Context;

.field greylist-max-o mId:I

.field greylist-max-o mListener:Landroid/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader$OnLoadCompleteListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field greylist-max-o mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader$OnLoadCanceledListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field greylist-max-o mProcessingChange:Z

.field greylist-max-o mReset:Z

.field greylist-max-o mStarted:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 62
    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/Loader;->mReset:Z

    .line 64
    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 65
    iput-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Loader;->mContext:Landroid/content/Context;

    .line 146
    return-void
.end method


# virtual methods
.method public whitelist abandon()V
    .registers 2

    .line 416
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 417
    invoke-virtual {p0}, Landroid/content/Loader;->onAbandon()V

    .line 418
    return-void
.end method

.method public whitelist cancelLoad()Z
    .registers 2

    .line 333
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/content/Loader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method public whitelist commitContentChanged()V
    .registers 2

    .line 488
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 489
    return-void
.end method

.method public whitelist dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 528
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 529
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 530
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist deliverCancellation()V
    .registers 2

    .line 168
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    invoke-interface {v0, p0}, Landroid/content/Loader$OnLoadCanceledListener;->onLoadCanceled(Landroid/content/Loader;)V

    .line 171
    :cond_9
    return-void
.end method

.method public whitelist deliverResult(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 156
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_9

    .line 157
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    invoke-interface {v0, p0, p1}, Landroid/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 159
    :cond_9
    return-void
.end method

.method public whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 553
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/Loader;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 554
    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 555
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    if-eqz v0, :cond_46

    .line 556
    :cond_24
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 557
    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 558
    const-string v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 560
    :cond_46
    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    if-nez v0, :cond_4e

    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    if-eqz v0, :cond_66

    .line 561
    :cond_4e
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 562
    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 564
    :cond_66
    return-void
.end method

.method public whitelist forceLoad()V
    .registers 1

    .line 360
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/content/Loader;->onForceLoad()V

    .line 361
    return-void
.end method

.method public whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 177
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 184
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget v0, p0, Landroid/content/Loader;->mId:I

    return v0
.end method

.method public whitelist isAbandoned()Z
    .registers 2

    .line 266
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    return v0
.end method

.method public whitelist isReset()Z
    .registers 2

    .line 275
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    return v0
.end method

.method public whitelist isStarted()Z
    .registers 2

    .line 257
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    return v0
.end method

.method protected whitelist onAbandon()V
    .registers 1

    .line 430
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected whitelist onCancelLoad()Z
    .registers 2

    .line 348
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onContentChanged()V
    .registers 2

    .line 513
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    if-eqz v0, :cond_8

    .line 514
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    goto :goto_b

    .line 519
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 521
    :goto_b
    return-void
.end method

.method protected whitelist onForceLoad()V
    .registers 1

    .line 368
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected whitelist onReset()V
    .registers 1

    .line 466
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected whitelist onStartLoading()V
    .registers 1

    .line 312
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected whitelist onStopLoading()V
    .registers 1

    .line 402
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method public whitelist registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V
    .registers 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 195
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p2, "listener":Landroid/content/Loader$OnLoadCompleteListener;, "Landroid/content/Loader$OnLoadCompleteListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_9

    .line 198
    iput-object p2, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    .line 199
    iput p1, p0, Landroid/content/Loader;->mId:I

    .line 200
    return-void

    .line 196
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 227
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "listener":Landroid/content/Loader$OnLoadCanceledListener;, "Landroid/content/Loader$OnLoadCanceledListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    if-nez v0, :cond_7

    .line 230
    iput-object p1, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    .line 231
    return-void

    .line 228
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist reset()V
    .registers 2

    .line 451
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/content/Loader;->onReset()V

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 454
    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 455
    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 456
    iput-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 457
    return-void
.end method

.method public whitelist rollbackContentChanged()V
    .registers 2

    .line 499
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    if-eqz v0, :cond_7

    .line 500
    invoke-virtual {p0}, Landroid/content/Loader;->onContentChanged()V

    .line 502
    :cond_7
    return-void
.end method

.method public final whitelist startLoading()V
    .registers 2

    .line 300
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    .line 302
    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 303
    invoke-virtual {p0}, Landroid/content/Loader;->onStartLoading()V

    .line 304
    return-void
.end method

.method public whitelist stopLoading()V
    .registers 2

    .line 391
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 392
    invoke-virtual {p0}, Landroid/content/Loader;->onStopLoading()V

    .line 393
    return-void
.end method

.method public whitelist takeContentChanged()Z
    .registers 3

    .line 474
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 475
    .local v0, "res":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 476
    iget-boolean v1, p0, Landroid/content/Loader;->mProcessingChange:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 477
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 536
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 537
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 538
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget v1, p0, Landroid/content/Loader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 208
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "listener":Landroid/content/Loader$OnLoadCompleteListener;, "Landroid/content/Loader$OnLoadCompleteListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_14

    .line 211
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-ne v0, p1, :cond_c

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    .line 215
    return-void

    .line 212
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 242
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "listener":Landroid/content/Loader$OnLoadCanceledListener;, "Landroid/content/Loader$OnLoadCanceledListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_14

    .line 245
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    if-ne v0, p1, :cond_c

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    .line 249
    return-void

    .line 246
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
