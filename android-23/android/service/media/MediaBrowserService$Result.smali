.class public Landroid/service/media/MediaBrowserService$Result;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDebug:Ljava/lang/Object;

.field private mDetachCalled:Z

.field private mSendResultCalled:Z

.field final synthetic this$0:Landroid/service/media/MediaBrowserService;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;
    .param p2, "debug"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 119
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$Result;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 120
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$Result;->mDebug:Ljava/lang/Object;

    #@7
    .line 119
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 3

    #@0
    .prologue
    .line 139
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mDetachCalled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "detach() called when detach() had already been called for: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 141
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$Result;->mDebug:Ljava/lang/Object;

    #@14
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 143
    :cond_0
    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mSendResultCalled:Z

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "detach() called when sendResult() had already been called for: "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 145
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$Result;->mDebug:Ljava/lang/Object;

    #@34
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 147
    :cond_1
    const/4 v0, 0x1

    #@41
    iput-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mDetachCalled:Z

    #@43
    .line 138
    return-void
.end method

.method isDone()Z
    .locals 1

    #@0
    .prologue
    .line 151
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mDetachCalled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mSendResultCalled:Z

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method onResultSent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 158
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public sendResult(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 127
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mSendResultCalled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "sendResult() called twice for: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$Result;->mDebug:Ljava/lang/Object;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 130
    :cond_0
    const/4 v0, 0x1

    #@21
    iput-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mSendResultCalled:Z

    #@23
    .line 131
    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService$Result;->onResultSent(Ljava/lang/Object;)V

    #@26
    .line 126
    return-void
.end method
