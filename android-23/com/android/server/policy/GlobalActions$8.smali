.class Lcom/android/server/policy/GlobalActions$8;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;
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
    .line 371
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    #@5
    .line 372
    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    new-array v1, v1, [Ljava/lang/Object;

    #@9
    .line 419
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@b
    const/4 v3, 0x0

    #@c
    aput-object v2, v1, v3

    #@e
    .line 420
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    .line 418
    const v2, 0x104010d

    #@16
    .line 417
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public onPress()V
    .locals 4

    #@0
    .prologue
    .line 375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #@2
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    #@4
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@b
    .line 376
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x104010b

    #@e
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    #@11
    .line 377
    const v2, 0x104010c

    #@14
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    #@17
    .line 378
    const/high16 v2, 0x1040000

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@1d
    .line 380
    new-instance v2, Lcom/android/server/policy/GlobalActions$8$1;

    #@1f
    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$8$1;-><init>(Lcom/android/server/policy/GlobalActions$8;)V

    #@22
    .line 379
    const v3, 0x1040360

    #@25
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@28
    .line 402
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@2b
    move-result-object v1

    #@2c
    .line 403
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@2f
    move-result-object v2

    #@30
    const/16 v3, 0x7d9

    #@32
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    #@35
    .line 404
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    #@38
    .line 374
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 412
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    #@0
    .prologue
    .line 408
    const/4 v0, 0x1

    #@1
    return v0
.end method
