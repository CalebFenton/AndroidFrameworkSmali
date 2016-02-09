.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/Loader$ForceLoadContentObserver;,
        Landroid/support/v4/content/Loader$OnLoadCompleteListener;,
        Landroid/support/v4/content/Loader$OnLoadCanceledListener;
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

.field mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCanceledListener",
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
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    const/4 v1, 0x0

    #@1
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 39
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@6
    .line 40
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    #@8
    .line 41
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    #@b
    .line 42
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@d
    .line 43
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@f
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/support/v4/content/Loader;->mContext:Landroid/content/Context;

    #@15
    .line 113
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 1

    #@0
    .prologue
    .line 385
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    #@3
    .line 386
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onAbandon()V

    #@6
    .line 384
    return-void
.end method

.method public cancelLoad()Z
    .locals 1

    #@0
    .prologue
    .line 302
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onCancelLoad()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public commitContentChanged()V
    .locals 1

    #@0
    .prologue
    .line 457
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@3
    .line 456
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
    .line 497
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 498
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@a
    .line 499
    const-string/jumbo v1, "}"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 500
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
    .line 137
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 138
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    #@6
    invoke-interface {v0, p0}, Landroid/support/v4/content/Loader$OnLoadCanceledListener;->onLoadCanceled(Landroid/support/v4/content/Loader;)V

    #@9
    .line 136
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
    .line 125
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 126
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@6
    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    #@9
    .line 124
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
    .line 522
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mId="

    #@6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget v0, p0, Landroid/support/v4/content/Loader;->mId:I

    #@b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@e
    .line 523
    const-string/jumbo v0, " mListener="

    #@11
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@19
    .line 524
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@1b
    if-nez v0, :cond_0

    #@1d
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@1f
    if-nez v0, :cond_0

    #@21
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 525
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    const-string/jumbo v0, "mStarted="

    #@2b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@30
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@33
    .line 526
    const-string/jumbo v0, " mContentChanged="

    #@36
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@3b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@3e
    .line 527
    const-string/jumbo v0, " mProcessingChange="

    #@41
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@46
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@49
    .line 529
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    #@4b
    if-nez v0, :cond_2

    #@4d
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    #@4f
    if-eqz v0, :cond_3

    #@51
    .line 530
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    const-string/jumbo v0, "mAbandoned="

    #@57
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    #@5c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@5f
    .line 531
    const-string/jumbo v0, " mReset="

    #@62
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    #@67
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@6a
    .line 521
    :cond_3
    return-void
.end method

.method public forceLoad()V
    .locals 0

    #@0
    .prologue
    .line 329
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onForceLoad()V

    #@3
    .line 328
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 146
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 153
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    iget v0, p0, Landroid/support/v4/content/Loader;->mId:I

    #@2
    return v0
.end method

.method public isAbandoned()Z
    .locals 1

    #@0
    .prologue
    .line 235
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    #@2
    return v0
.end method

.method public isReset()Z
    .locals 1

    #@0
    .prologue
    .line 244
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    #@2
    return v0
.end method

.method public isStarted()Z
    .locals 1

    #@0
    .prologue
    .line 226
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@2
    return v0
.end method

.method protected onAbandon()V
    .locals 0

    #@0
    .prologue
    .line 398
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    return-void
.end method

.method protected onCancelLoad()Z
    .locals 1

    #@0
    .prologue
    .line 317
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onContentChanged()V
    .locals 1

    #@0
    .prologue
    .line 482
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 483
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->forceLoad()V

    #@7
    .line 481
    :goto_0
    return-void

    #@8
    .line 488
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@b
    goto :goto_0
.end method

.method protected onForceLoad()V
    .locals 0

    #@0
    .prologue
    .line 336
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    return-void
.end method

.method protected onReset()V
    .locals 0

    #@0
    .prologue
    .line 434
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    #@0
    .prologue
    .line 280
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    #@0
    .prologue
    .line 370
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    return-void
.end method

.method public registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 164
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    .local p2, "listener":Landroid/support/v4/content/Loader$OnLoadCompleteListener;, "Landroid/support/v4/content/Loader$OnLoadCompleteListener<TD;>;"
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "There is already a listener registered"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 167
    :cond_0
    iput-object p2, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@f
    .line 168
    iput p1, p0, Landroid/support/v4/content/Loader;->mId:I

    #@11
    .line 163
    return-void
.end method

.method public registerOnLoadCanceledListener(Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 196
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    .local p1, "listener":Landroid/support/v4/content/Loader$OnLoadCanceledListener;, "Landroid/support/v4/content/Loader$OnLoadCanceledListener<TD;>;"
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "There is already a listener registered"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 199
    :cond_0
    iput-object p1, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    #@f
    .line 195
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    const/4 v1, 0x0

    #@1
    .line 420
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onReset()V

    #@4
    .line 421
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    #@7
    .line 422
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@9
    .line 423
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    #@b
    .line 424
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@d
    .line 425
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@f
    .line 419
    return-void
.end method

.method public rollbackContentChanged()V
    .locals 1

    #@0
    .prologue
    .line 468
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 469
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@7
    .line 467
    :cond_0
    return-void
.end method

.method public final startLoading()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    const/4 v1, 0x0

    #@1
    .line 269
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@4
    .line 270
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mReset:Z

    #@6
    .line 271
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    #@8
    .line 272
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStartLoading()V

    #@b
    .line 268
    return-void
.end method

.method public stopLoading()V
    .locals 1

    #@0
    .prologue
    .line 360
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@3
    .line 361
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStopLoading()V

    #@6
    .line 359
    return-void
.end method

.method public takeContentChanged()Z
    .locals 2

    #@0
    .prologue
    .line 443
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@2
    .line 444
    .local v0, "res":Z
    const/4 v1, 0x0

    #@3
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@5
    .line 445
    iget-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@7
    or-int/2addr v1, v0

    #@8
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@a
    .line 446
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 505
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 506
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@a
    .line 507
    const-string/jumbo v1, " id="

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 508
    iget v1, p0, Landroid/support/v4/content/Loader;->mId:I

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    .line 509
    const-string/jumbo v1, "}"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method public unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    .local p1, "listener":Landroid/support/v4/content/Loader$OnLoadCompleteListener;, "Landroid/support/v4/content/Loader$OnLoadCompleteListener<TD;>;"
    const/4 v1, 0x0

    #@1
    .line 177
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "No listener register"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 180
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@10
    if-eq v0, p1, :cond_1

    #@12
    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 183
    :cond_1
    iput-object v1, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@1d
    .line 176
    return-void
.end method

.method public unregisterOnLoadCanceledListener(Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    .local p1, "listener":Landroid/support/v4/content/Loader$OnLoadCanceledListener;, "Landroid/support/v4/content/Loader$OnLoadCanceledListener<TD;>;"
    const/4 v1, 0x0

    #@1
    .line 211
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "No listener register"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 214
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    #@10
    if-eq v0, p1, :cond_1

    #@12
    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 217
    :cond_1
    iput-object v1, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    #@1d
    .line 210
    return-void
.end method
