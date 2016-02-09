.class Lcom/android/server/policy/GlobalActions$6;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIII)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # I
    .param p6, "$anonymous4"    # I

    #@0
    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    move-object v0, p0

    #@3
    move v1, p2

    #@4
    move v2, p3

    #@5
    move v3, p4

    #@6
    move v4, p5

    #@7
    move v5, p6

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    #@b
    .line 225
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .param p1, "buttonOn"    # Z

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    return-void

    #@9
    .line 247
    :cond_0
    const-string/jumbo v0, "ril.cdma.inecmmode"

    #@c
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 246
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 248
    if-eqz p1, :cond_2

    #@18
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@1a
    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$6;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@1c
    .line 249
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    #@1e
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@20
    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-set0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@23
    .line 242
    :cond_1
    return-void

    #@24
    .line 248
    :cond_2
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@26
    goto :goto_0
.end method

.method onToggle(Z)V
    .locals 3
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 229
    const-string/jumbo v1, "ril.cdma.inecmmode"

    #@b
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 228
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 230
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    #@17
    const/4 v2, 0x1

    #@18
    invoke-static {v1, v2}, Lcom/android/server/policy/GlobalActions;->-set2(Lcom/android/server/policy/GlobalActions;Z)Z

    #@1b
    .line 233
    new-instance v0, Landroid/content/Intent;

    #@1d
    const-string/jumbo v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    #@20
    const/4 v2, 0x0

    #@21
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@24
    .line 234
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@29
    .line 235
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2b
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@32
    .line 227
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    :goto_0
    return-void

    #@33
    .line 237
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    #@35
    invoke-static {v1, p1}, Lcom/android/server/policy/GlobalActions;->-wrap0(Lcom/android/server/policy/GlobalActions;Z)V

    #@38
    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 258
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    #@0
    .prologue
    .line 254
    const/4 v0, 0x1

    #@1
    return v0
.end method
