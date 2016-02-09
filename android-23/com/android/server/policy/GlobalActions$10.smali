.class Lcom/android/server/policy/GlobalActions$10;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I

    #@0
    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$10;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    #@5
    .line 450
    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 2

    #@0
    .prologue
    .line 453
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.ASSIST"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 454
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 455
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$10;->this$0:Lcom/android/server/policy/GlobalActions;

    #@f
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@16
    .line 452
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 465
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    #@0
    .prologue
    .line 460
    const/4 v0, 0x1

    #@1
    return v0
.end method
