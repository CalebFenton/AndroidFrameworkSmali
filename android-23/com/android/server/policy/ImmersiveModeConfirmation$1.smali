.class Lcom/android/server/policy/ImmersiveModeConfirmation$1;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 327
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

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
    .line 331
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@2
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-get0(Lcom/android/server/policy/ImmersiveModeConfirmation;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 332
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-static {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-set0(Lcom/android/server/policy/ImmersiveModeConfirmation;Z)Z

    #@e
    .line 333
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@10
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-wrap2(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    #@13
    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@15
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-wrap0(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    #@18
    .line 329
    return-void
.end method
