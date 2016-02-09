.class final Lcom/android/server/policy/GlobalActions$PowerAction;
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
    name = "PowerAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    #@0
    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$PowerAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    .line 339
    const v0, 0x1080030

    #@5
    .line 340
    const v1, 0x1040109

    #@8
    .line 339
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    #@b
    .line 338
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$PowerAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

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
    .line 345
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$PowerAction;->this$0:Lcom/android/server/policy/GlobalActions;

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
    .line 346
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    #@13
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 347
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$PowerAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@1b
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get12(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@1e
    move-result-object v1

    #@1f
    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    #@22
    .line 348
    return v3

    #@23
    .line 350
    :cond_0
    const/4 v1, 0x0

    #@24
    return v1
.end method

.method public onPress()V
    .locals 2

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$PowerAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get12(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    #@a
    .line 364
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 360
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    #@0
    .prologue
    .line 355
    const/4 v0, 0x1

    #@1
    return v0
.end method
