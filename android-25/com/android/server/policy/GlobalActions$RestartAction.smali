.class final Lcom/android/server/policy/GlobalActions$RestartAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestartAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    #@0
    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$RestartAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    .line 384
    const v0, 0x108042f

    #@5
    const v1, 0x104012d

    #@8
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    #@b
    .line 383
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$RestartAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$RestartAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@3
    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 389
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$RestartAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@3
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "user"

    #@a
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/os/UserManager;

    #@10
    .line 390
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    #@13
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 391
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$RestartAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@1b
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get13(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@1e
    move-result-object v1

    #@1f
    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    #@22
    .line 392
    return v3

    #@23
    .line 394
    :cond_0
    const/4 v1, 0x0

    #@24
    return v1
.end method

.method public onPress()V
    .locals 2

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$RestartAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get13(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    #@a
    .line 408
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 404
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    #@0
    .prologue
    .line 399
    const/4 v0, 0x1

    #@1
    return v0
.end method
