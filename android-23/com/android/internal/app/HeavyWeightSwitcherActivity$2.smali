.class Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;
.super Ljava/lang/Object;
.source "HeavyWeightSwitcherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/HeavyWeightSwitcherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@0
    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 135
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Landroid/app/IActivityManager;->finishHeavyWeightApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@7
    .line 139
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@9
    iget-boolean v0, v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mHasResult:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 140
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@f
    iget-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@11
    iget-object v1, v1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mStartIntent:Landroid/content/IntentSender;

    #@13
    const/4 v2, -0x1

    #@14
    const/4 v3, 0x0

    #@15
    .line 141
    const/high16 v4, 0x2000000

    #@17
    .line 142
    const/high16 v5, 0x2000000

    #@19
    const/4 v6, 0x0

    #@1a
    .line 140
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    #@1d
    .line 149
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@1f
    invoke-virtual {v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->finish()V

    #@22
    .line 133
    return-void

    #@23
    .line 144
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@25
    iget-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@27
    iget-object v1, v1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mStartIntent:Landroid/content/IntentSender;

    #@29
    const/4 v2, -0x1

    #@2a
    const/4 v3, 0x0

    #@2b
    const/4 v4, 0x0

    #@2c
    const/4 v5, 0x0

    #@2d
    const/4 v6, 0x0

    #@2e
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_2
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_2 .. :try_end_2} :catch_0

    #@31
    goto :goto_1

    #@32
    .line 146
    :catch_0
    move-exception v8

    #@33
    .line 147
    .local v8, "ex":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v0, "HeavyWeightSwitcherActivity"

    #@36
    const-string/jumbo v1, "Failure starting"

    #@39
    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    goto :goto_1

    #@3d
    .line 136
    .end local v8    # "ex":Landroid/content/IntentSender$SendIntentException;
    :catch_1
    move-exception v7

    #@3e
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
