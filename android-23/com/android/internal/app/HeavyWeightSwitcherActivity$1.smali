.class Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;
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
    .line 122
    iput-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@6
    iget v2, v2, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurTask:I

    #@8
    const/4 v3, 0x0

    #@9
    const/4 v4, 0x0

    #@a
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 128
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->finish()V

    #@12
    .line 123
    return-void

    #@13
    .line 126
    :catch_0
    move-exception v0

    #@14
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
