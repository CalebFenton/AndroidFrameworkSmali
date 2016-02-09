.class Lcom/android/server/policy/GlobalActions$5;
.super Landroid/os/Handler;
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
    .line 1079
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

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
    const/4 v1, 0x0

    #@1
    .line 1081
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 1080
    :cond_0
    :goto_0
    return-void

    #@7
    .line 1083
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    #@9
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1084
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    #@11
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    #@18
    .line 1085
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    #@1a
    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@1d
    goto :goto_0

    #@1e
    .line 1089
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    #@20
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-wrap3(Lcom/android/server/policy/GlobalActions;)V

    #@23
    .line 1090
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    #@25
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get0(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    #@2c
    goto :goto_0

    #@2d
    .line 1093
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2f
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-wrap1(Lcom/android/server/policy/GlobalActions;)V

    #@32
    goto :goto_0

    #@33
    .line 1081
    nop

    #@34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
