.class Lcom/android/server/dreams/DreamManagerService$6;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;

.field final synthetic val$immediate:Z


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p2, "val$immediate"    # Z

    #@0
    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$6;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    iput-boolean p2, p0, Lcom/android/server/dreams/DreamManagerService$6;->val$immediate:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$6;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get1(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;

    #@5
    move-result-object v0

    #@6
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService$6;->val$immediate:Z

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    #@b
    .line 386
    return-void
.end method
