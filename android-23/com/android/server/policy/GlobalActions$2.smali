.class Lcom/android/server/policy/GlobalActions$2;
.super Landroid/telephony/PhoneStateListener;
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
    .line 1047
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 1050
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    return-void

    #@9
    .line 1051
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x3

    #@e
    if-ne v1, v2, :cond_1

    #@10
    const/4 v0, 0x1

    #@11
    .line 1052
    .local v0, "inAirplaneMode":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    #@13
    if-eqz v0, :cond_2

    #@15
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@17
    :goto_1
    invoke-static {v2, v1}, Lcom/android/server/policy/GlobalActions;->-set0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@1a
    .line 1053
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    #@1c
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get1(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    #@1f
    move-result-object v1

    #@20
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    #@22
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    #@29
    .line 1054
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2b
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get0(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    #@32
    .line 1049
    return-void

    #@33
    .line 1051
    .end local v0    # "inAirplaneMode":Z
    :cond_1
    const/4 v0, 0x0

    #@34
    .restart local v0    # "inAirplaneMode":Z
    goto :goto_0

    #@35
    .line 1052
    :cond_2
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@37
    goto :goto_1
.end method
