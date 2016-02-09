.class Lcom/android/internal/telephony/RIL$2;
.super Landroid/content/BroadcastReceiver;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/RIL;

    #@0
    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 317
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    #@3
    iget-boolean v0, v2, Lcom/android/internal/telephony/RIL;->mIsDevicePlugged:Z

    #@5
    .line 319
    .local v0, "oldState":Z
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    #@7
    const-string/jumbo v3, "plugged"

    #@a
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    const/4 v1, 0x1

    #@11
    :cond_0
    iput-boolean v1, v2, Lcom/android/internal/telephony/RIL;->mIsDevicePlugged:Z

    #@13
    .line 320
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    #@15
    iget-boolean v1, v1, Lcom/android/internal/telephony/RIL;->mIsDevicePlugged:Z

    #@17
    if-eq v1, v0, :cond_1

    #@19
    .line 321
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    #@1b
    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->-wrap7(Lcom/android/internal/telephony/RIL;)V

    #@1e
    .line 316
    :cond_1
    return-void
.end method
