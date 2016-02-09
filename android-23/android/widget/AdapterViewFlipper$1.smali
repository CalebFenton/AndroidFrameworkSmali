.class Landroid/widget/AdapterViewFlipper$1;
.super Landroid/content/BroadcastReceiver;
.source "AdapterViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AdapterViewFlipper;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewFlipper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AdapterViewFlipper;

    #@0
    .prologue
    .line 84
    iput-object p1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

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
    const/4 v3, 0x0

    #@1
    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 88
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 89
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #@10
    invoke-static {v1, v3}, Landroid/widget/AdapterViewFlipper;->-set0(Landroid/widget/AdapterViewFlipper;Z)Z

    #@13
    .line 90
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #@15
    invoke-static {v1}, Landroid/widget/AdapterViewFlipper;->-wrap0(Landroid/widget/AdapterViewFlipper;)V

    #@18
    .line 86
    :cond_0
    :goto_0
    return-void

    #@19
    .line 91
    :cond_1
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    #@1c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 92
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #@24
    const/4 v2, 0x1

    #@25
    invoke-static {v1, v2}, Landroid/widget/AdapterViewFlipper;->-set0(Landroid/widget/AdapterViewFlipper;Z)Z

    #@28
    .line 93
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #@2a
    invoke-static {v1, v3}, Landroid/widget/AdapterViewFlipper;->-wrap1(Landroid/widget/AdapterViewFlipper;Z)V

    #@2d
    goto :goto_0
.end method
