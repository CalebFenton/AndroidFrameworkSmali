.class Lcom/android/server/dreams/DreamController$1;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamController;

    #@0
    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    #@2
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get0(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    #@a
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get0(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    #@d
    move-result-object v0

    #@e
    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    #@10
    if-eqz v0, :cond_0

    #@12
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    #@14
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get0(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    #@17
    move-result-object v0

    #@18
    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 74
    :cond_0
    :goto_0
    return-void

    #@1d
    .line 76
    :cond_1
    const-string/jumbo v0, "DreamController"

    #@20
    const-string/jumbo v1, "Bound dream did not connect in the time allotted"

    #@23
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 77
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    #@28
    const/4 v1, 0x1

    #@29
    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    #@2c
    goto :goto_0
.end method
