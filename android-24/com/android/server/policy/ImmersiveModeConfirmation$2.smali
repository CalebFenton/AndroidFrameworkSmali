.class Lcom/android/server/policy/ImmersiveModeConfirmation$2;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@0
    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@2
    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@2
    iput-boolean p1, v0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    #@4
    .line 383
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@6
    iget-boolean v0, v0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 384
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@c
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-get1(Lcom/android/server/policy/ImmersiveModeConfirmation;)Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    #@f
    move-result-object v0

    #@10
    const/4 v1, 0x1

    #@11
    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->removeMessages(I)V

    #@14
    .line 385
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@16
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-get1(Lcom/android/server/policy/ImmersiveModeConfirmation;)Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    #@19
    move-result-object v0

    #@1a
    const/4 v1, 0x2

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    #@1e
    .line 381
    :cond_0
    return-void
.end method
