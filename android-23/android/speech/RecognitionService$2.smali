.class Landroid/speech/RecognitionService$2;
.super Ljava/lang/Object;
.source "RecognitionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/RecognitionService;->dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/RecognitionService;

.field final synthetic val$listener:Landroid/speech/IRecognitionListener;


# direct methods
.method constructor <init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/RecognitionService;
    .param p2, "val$listener"    # Landroid/speech/IRecognitionListener;

    #@0
    .prologue
    .line 102
    iput-object p1, p0, Landroid/speech/RecognitionService$2;->this$0:Landroid/speech/RecognitionService;

    #@2
    iput-object p2, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IRecognitionListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/speech/RecognitionService$2;->this$0:Landroid/speech/RecognitionService;

    #@2
    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->this$0:Landroid/speech/RecognitionService;

    #@8
    invoke-static {v1}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IRecognitionListener;

    #@e
    const/4 v3, 0x3

    #@f
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@16
    .line 104
    return-void
.end method
