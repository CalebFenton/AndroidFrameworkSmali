.class final Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TvInputCallbackRecord"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;)Landroid/media/tv/TvInputManager$TvInputCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 788
    iput-object p1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    #@5
    .line 789
    iput-object p2, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    #@7
    .line 787
    return-void
.end method


# virtual methods
.method public getCallback()Landroid/media/tv/TvInputManager$TvInputCallback;
    .locals 1

    #@0
    .prologue
    .line 793
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    #@2
    return-object v0
.end method

.method public postInputAdded(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 797
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$1;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$1;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 796
    return-void
.end method

.method public postInputRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 806
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$2;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$2;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 805
    return-void
.end method

.method public postInputStateChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 824
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;

    #@4
    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;I)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 823
    return-void
.end method

.method public postInputUpdated(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 815
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$3;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$3;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 814
    return-void
.end method

.method public postTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    .locals 2
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    .line 833
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Landroid/media/tv/TvInputInfo;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 832
    return-void
.end method
