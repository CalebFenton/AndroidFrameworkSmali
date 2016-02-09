.class Lcom/android/server/policy/GlobalActions$3;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    #@0
    .prologue
    .line 1058
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1061
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1062
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    #@f
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get7(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@17
    .line 1060
    :cond_0
    return-void
.end method
