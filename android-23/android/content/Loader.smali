.class public Landroid/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Loader$ForceLoadContentObserver;,
        Landroid/content/Loader$OnLoadCompleteListener;,
        Landroid/content/Loader$OnLoadCanceledListener;
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


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroid/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader$OnLoadCanceledListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v1, 0x0

    #@1
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    iput-boolean v1, p0, Landroid/content/Loader;->mStarted:Z

    #@6
    .line 58
    iput-boolean v1, p0, Landroid/content/Loader;->mAbandoned:Z

    #@8
    .line 59
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    #@b
    .line 60
    iput-boolean v1, p0, Landroid/content/Loader;->mContentChanged:Z

    #@d
    .line 61
    iput-boolean v1, p0, Landroid/content/Loader;->mProcessingChange:Z

    #@f
    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/content/Loader;->mContext:Landroid/content/Context;

    #@15
    .line 131
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 1

    #@0
    .prologue
    .line 403
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    #@3
    .line 404
    invoke-virtual {p0}, Landroid/content/Loader;->onAbandon()V

    #@6
    .line 402
    return-void
.end method

.method public cancelLoad()Z
    .locals 1

    #@0
    .prologue
    .line 320
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/content/Loader;->onCancelLoad()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public commitContentChanged()V
    .locals 1

    #@0
    .prologue
    .line 475
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    #@3
    .line 474
    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 515
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 516
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@a
    .line 517
    const-string/jumbo v1, "}"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 518
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public deliverCancellation()V
    .locals 1

    #@0
    .prologue
    .line 155
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 156
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    #@6
    invoke-interface {v0, p0}, Landroid/content/Loader$OnLoadCanceledListener;->onLoadCanceled(Landroid/content/Loader;)V

    #@9
    .line 154
    :cond_0
    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 143
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 144
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    #@6
    invoke-interface {v0, p0, p1}, Landroid/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V

    #@9
    .line 142
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 540
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mId="

    #@6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget v0, p0, Landroid/content/Loader;->mId:I

    #@b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@e
    .line 541
    const-string/jumbo v0, " mListener="

    #@11
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    #@16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@19
    .line 542
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    #@1b
    if-nez v0, :cond_0

    #@1d
    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    #@1f
    if-nez v0, :cond_0

    #@21
    iget-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 543
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    const-string/jumbo v0, "mStarted="

    #@2b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    #@30
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@33
    .line 544
    const-string/jumbo v0, " mContentChanged="

    #@36
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    #@3b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@3e
    .line 545
    const-string/jumbo v0, " mProcessingChange="

    #@41
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44
    iget-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    #@46
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@49
    .line 547
    :cond_1
    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    #@4b
    if-nez v0, :cond_2

    #@4d
    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    #@4f
    if-eqz v0, :cond_3

    #@51
    .line 548
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    const-string/jumbo v0, "mAbandoned="

    #@57
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    #@5c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@5f
    .line 549
    const-string/jumbo v0, " mReset="

    #@62
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65
    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    #@67
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@6a
    .line 539
    :cond_3
    return-void
.end method

.method public forceLoad()V
    .locals 0

    #@0
    .prologue
    .line 347
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/content/Loader;->onForceLoad()V

    #@3
    .line 346
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 164
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 171
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget v0, p0, Landroid/content/Loader;->mId:I

    #@2
    return v0
.end method

.method public isAbandoned()Z
    .locals 1

    #@0
    .prologue
    .line 253
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    #@2
    return v0
.end method

.method public isReset()Z
    .locals 1

    #@0
    .prologue
    .line 262
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    #@2
    return v0
.end method

.method public isStarted()Z
    .locals 1

    #@0
    .prologue
    .line 244
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    #@2
    return v0
.end method

.method protected onAbandon()V
    .locals 0

    #@0
    .prologue
    .line 416
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onCancelLoad()Z
    .locals 1

    #@0
    .prologue
    .line 335
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onContentChanged()V
    .locals 1

    #@0
    .prologue
    .line 500
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 501
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    #@7
    .line 499
    :goto_0
    return-void

    #@8
    .line 506
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    #@b
    goto :goto_0
.end method

.method protected onForceLoad()V
    .locals 0

    #@0
    .prologue
    .line 354
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onReset()V
    .locals 0

    #@0
    .prologue
    .line 452
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    #@0
    .prologue
    .line 298
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    #@0
    .prologue
    .line 388
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method public registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 182
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p2, "listener":Landroid/content/Loader$OnLoadCompleteListener;, "Landroid/content/Loader$OnLoadCompleteListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "There is already a listener registered"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 185
    :cond_0
    iput-object p2, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    #@f
    .line 186
    iput p1, p0, Landroid/content/Loader;->mId:I

    #@11
    .line 181
    return-void
.end method

.method public registerOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 214
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "listener":Landroid/content/Loader$OnLoadCanceledListener;, "Landroid/content/Loader$OnLoadCanceledListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "There is already a listener registered"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 217
    :cond_0
    iput-object p1, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    #@f
    .line 213
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v1, 0x0

    #@1
    .line 438
    invoke-virtual {p0}, Landroid/content/Loader;->onReset()V

    #@4
    .line 439
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    #@7
    .line 440
    iput-boolean v1, p0, Landroid/content/Loader;->mStarted:Z

    #@9
    .line 441
    iput-boolean v1, p0, Landroid/content/Loader;->mAbandoned:Z

    #@b
    .line 442
    iput-boolean v1, p0, Landroid/content/Loader;->mContentChanged:Z

    #@d
    .line 443
    iput-boolean v1, p0, Landroid/content/Loader;->mProcessingChange:Z

    #@f
    .line 437
    return-void
.end method

.method public rollbackContentChanged()V
    .locals 1

    #@0
    .prologue
    .line 486
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 487
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    #@7
    .line 485
    :cond_0
    return-void
.end method

.method public final startLoading()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v1, 0x0

    #@1
    .line 287
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    #@4
    .line 288
    iput-boolean v1, p0, Landroid/content/Loader;->mReset:Z

    #@6
    .line 289
    iput-boolean v1, p0, Landroid/content/Loader;->mAbandoned:Z

    #@8
    .line 290
    invoke-virtual {p0}, Landroid/content/Loader;->onStartLoading()V

    #@b
    .line 286
    return-void
.end method

.method public stopLoading()V
    .locals 1

    #@0
    .prologue
    .line 378
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    #@3
    .line 379
    invoke-virtual {p0}, Landroid/content/Loader;->onStopLoading()V

    #@6
    .line 377
    return-void
.end method

.method public takeContentChanged()Z
    .locals 2

    #@0
    .prologue
    .line 461
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    #@2
    .line 462
    .local v0, "res":Z
    const/4 v1, 0x0

    #@3
    iput-boolean v1, p0, Landroid/content/Loader;->mContentChanged:Z

    #@5
    .line 463
    iget-boolean v1, p0, Landroid/content/Loader;->mProcessingChange:Z

    #@7
    or-int/2addr v1, v0

    #@8
    iput-boolean v1, p0, Landroid/content/Loader;->mProcessingChange:Z

    #@a
    .line 464
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 523
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 524
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@a
    .line 525
    const-string/jumbo v1, " id="

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 526
    iget v1, p0, Landroid/content/Loader;->mId:I

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    .line 527
    const-string/jumbo v1, "}"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 528
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method public unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "listener":Landroid/content/Loader$OnLoadCompleteListener;, "Landroid/content/Loader$OnLoadCompleteListener<TD;>;"
    const/4 v1, 0x0

    #@1
    .line 195
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "No listener register"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 198
    :cond_0
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    #@10
    if-eq v0, p1, :cond_1

    #@12
    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 201
    :cond_1
    iput-object v1, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    #@1d
    .line 194
    return-void
.end method

.method public unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "listener":Landroid/content/Loader$OnLoadCanceledListener;, "Landroid/content/Loader$OnLoadCanceledListener<TD;>;"
    const/4 v1, 0x0

    #@1
    .line 229
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "No listener register"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 232
    :cond_0
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    #@10
    if-eq v0, p1, :cond_1

    #@12
    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 235
    :cond_1
    iput-object v1, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    #@1d
    .line 228
    return-void
.end method
