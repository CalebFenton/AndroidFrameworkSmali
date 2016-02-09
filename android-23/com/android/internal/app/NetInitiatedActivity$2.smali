.class Lcom/android/internal/app/NetInitiatedActivity$2;
.super Landroid/os/Handler;
.source "NetInitiatedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NetInitiatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/NetInitiatedActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/NetInitiatedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/NetInitiatedActivity;

    #@0
    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 68
    :goto_0
    return-void

    #@6
    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    #@8
    invoke-static {v0}, Lcom/android/internal/app/NetInitiatedActivity;->-get1(Lcom/android/internal/app/NetInitiatedActivity;)I

    #@b
    move-result v0

    #@c
    const/4 v1, -0x1

    #@d
    if-eq v0, v1, :cond_0

    #@f
    .line 72
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    #@11
    iget-object v1, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    #@13
    invoke-static {v1}, Lcom/android/internal/app/NetInitiatedActivity;->-get0(Lcom/android/internal/app/NetInitiatedActivity;)I

    #@16
    move-result v1

    #@17
    invoke-static {v0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->-wrap1(Lcom/android/internal/app/NetInitiatedActivity;I)V

    #@1a
    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    #@1c
    invoke-virtual {v0}, Lcom/android/internal/app/NetInitiatedActivity;->finish()V

    #@1f
    goto :goto_0

    #@20
    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
