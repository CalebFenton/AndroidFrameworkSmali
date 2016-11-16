.class Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    #@0
    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    .line 999
    const v1, 0x10802f6

    #@5
    .line 1000
    const v2, 0x10802f5

    #@8
    .line 1001
    const v3, 0x1040137

    #@b
    .line 1002
    const v4, 0x1040138

    #@e
    .line 1003
    const v5, 0x1040139

    #@11
    move-object v0, p0

    #@12
    .line 999
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    #@15
    .line 998
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 2
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 1007
    if-eqz p1, :cond_0

    #@2
    .line 1008
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@4
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Landroid/media/AudioManager;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    #@c
    .line 1006
    :goto_0
    return-void

    #@d
    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@f
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Landroid/media/AudioManager;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x2

    #@14
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    #@17
    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 1019
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    #@0
    .prologue
    .line 1015
    const/4 v0, 0x1

    #@1
    return v0
.end method
