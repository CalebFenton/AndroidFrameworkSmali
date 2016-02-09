.class Lcom/android/server/dreams/DreamController$3;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamController;->stopDream(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamController;

.field final synthetic val$oldDream:Lcom/android/server/dreams/DreamController$DreamRecord;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController;Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamController;
    .param p2, "val$oldDream"    # Lcom/android/server/dreams/DreamController$DreamRecord;

    #@0
    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$3;->this$0:Lcom/android/server/dreams/DreamController;

    #@2
    iput-object p2, p0, Lcom/android/server/dreams/DreamController$3;->val$oldDream:Lcom/android/server/dreams/DreamController$DreamRecord;

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
    .line 242
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$3;->this$0:Lcom/android/server/dreams/DreamController;

    #@2
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get2(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$Listener;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/dreams/DreamController$3;->val$oldDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@8
    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    #@a
    invoke-interface {v0, v1}, Lcom/android/server/dreams/DreamController$Listener;->onDreamStopped(Landroid/os/Binder;)V

    #@d
    .line 241
    return-void
.end method
