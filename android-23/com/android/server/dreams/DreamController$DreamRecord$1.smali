.class Lcom/android/server/dreams/DreamController$DreamRecord$1;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamController$DreamRecord;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/dreams/DreamController$DreamRecord;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/dreams/DreamController$DreamRecord;

    #@0
    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

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
    .line 304
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@2
    const/4 v1, 0x0

    #@3
    iput-object v1, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    #@5
    .line 305
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@7
    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    #@9
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get0(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 306
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@13
    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    #@15
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    #@19
    .line 303
    :cond_0
    return-void
.end method
