.class Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;
.super Landroid/view/ActionMode$Callback2;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback2Wrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p2, "wrapped"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 3526
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    #@5
    .line 3527
    iput-object p2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    #@7
    .line 3526
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 3540
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 3531
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 9
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 3544
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    #@4
    invoke-interface {v4, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    #@7
    .line 3545
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@9
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get0(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/content/Context;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@10
    move-result-object v4

    #@11
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@13
    .line 3546
    const/16 v5, 0x17

    #@15
    .line 3545
    if-lt v4, v5, :cond_6

    #@17
    const/4 v2, 0x1

    #@18
    .line 3549
    .local v2, "isMncApp":Z
    :goto_0
    if-eqz v2, :cond_9

    #@1a
    .line 3550
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@1c
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get3(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    #@1f
    move-result-object v4

    #@20
    if-ne p1, v4, :cond_7

    #@22
    const/4 v3, 0x1

    #@23
    .line 3551
    .local v3, "isPrimary":Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@25
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get2(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    #@28
    move-result-object v4

    #@29
    if-ne p1, v4, :cond_8

    #@2b
    const/4 v1, 0x1

    #@2c
    .line 3552
    .local v1, "isFloating":Z
    :goto_2
    if-nez v3, :cond_0

    #@2e
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    #@31
    move-result v4

    #@32
    if-nez v4, :cond_0

    #@34
    .line 3553
    const-string/jumbo v4, "PhoneWindow"

    #@37
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v6, "Destroying unexpected ActionMode instance of TYPE_PRIMARY; "

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    .line 3554
    const-string/jumbo v6, " was not the current primary action mode! Expected "

    #@4a
    .line 3553
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    .line 3555
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@50
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get3(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    #@53
    move-result-object v6

    #@54
    .line 3553
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 3557
    :cond_0
    if-nez v1, :cond_1

    #@61
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    #@64
    move-result v4

    #@65
    if-ne v4, v7, :cond_1

    #@67
    .line 3558
    const-string/jumbo v4, "PhoneWindow"

    #@6a
    new-instance v5, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v6, "Destroying unexpected ActionMode instance of TYPE_FLOATING; "

    #@72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    .line 3559
    const-string/jumbo v6, " was not the current floating action mode! Expected "

    #@7d
    .line 3558
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    .line 3560
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@83
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get2(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    #@86
    move-result-object v6

    #@87
    .line 3558
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v5

    #@8f
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 3566
    :cond_1
    :goto_3
    if-eqz v3, :cond_c

    #@94
    .line 3567
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@96
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get4(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    #@99
    move-result-object v4

    #@9a
    if-eqz v4, :cond_2

    #@9c
    .line 3568
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@9e
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@a0
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get6(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;

    #@a3
    move-result-object v5

    #@a4
    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@a7
    .line 3570
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@a9
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@ac
    move-result-object v4

    #@ad
    if-eqz v4, :cond_3

    #@af
    .line 3571
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@b1
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-wrap2(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    #@b4
    .line 3572
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@b6
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@b8
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@bb
    move-result-object v5

    #@bc
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@be
    const/4 v7, 0x2

    #@bf
    new-array v7, v7, [F

    #@c1
    fill-array-data v7, :array_0

    #@c4
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@c7
    move-result-object v5

    #@c8
    invoke-static {v4, v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    #@cb
    .line 3574
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@cd
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get1(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;

    #@d0
    move-result-object v4

    #@d1
    new-instance v5, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;

    #@d3
    invoke-direct {v5, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;)V

    #@d6
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@d9
    .line 3600
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@db
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get1(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;

    #@de
    move-result-object v4

    #@df
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    #@e2
    .line 3603
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@e4
    invoke-static {v4, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set2(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    #@e7
    .line 3608
    :cond_4
    :goto_4
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@e9
    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@eb
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@ee
    move-result-object v4

    #@ef
    if-eqz v4, :cond_5

    #@f1
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@f3
    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@f5
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@f8
    move-result v4

    #@f9
    if-eqz v4, :cond_d

    #@fb
    .line 3615
    :cond_5
    :goto_5
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@fd
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestFitSystemWindows()V

    #@100
    .line 3543
    return-void

    #@101
    .line 3545
    .end local v1    # "isFloating":Z
    .end local v2    # "isMncApp":Z
    .end local v3    # "isPrimary":Z
    :cond_6
    const/4 v2, 0x0

    #@102
    .restart local v2    # "isMncApp":Z
    goto/16 :goto_0

    #@104
    .line 3550
    :cond_7
    const/4 v3, 0x0

    #@105
    .restart local v3    # "isPrimary":Z
    goto/16 :goto_1

    #@107
    .line 3551
    :cond_8
    const/4 v1, 0x0

    #@108
    .restart local v1    # "isFloating":Z
    goto/16 :goto_2

    #@10a
    .line 3563
    .end local v1    # "isFloating":Z
    .end local v3    # "isPrimary":Z
    :cond_9
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    #@10d
    move-result v4

    #@10e
    if-nez v4, :cond_a

    #@110
    const/4 v3, 0x1

    #@111
    .line 3564
    .restart local v3    # "isPrimary":Z
    :goto_6
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    #@114
    move-result v4

    #@115
    if-ne v4, v7, :cond_b

    #@117
    const/4 v1, 0x1

    #@118
    .restart local v1    # "isFloating":Z
    goto/16 :goto_3

    #@11a
    .line 3563
    .end local v1    # "isFloating":Z
    .end local v3    # "isPrimary":Z
    :cond_a
    const/4 v3, 0x0

    #@11b
    .restart local v3    # "isPrimary":Z
    goto :goto_6

    #@11c
    .line 3564
    :cond_b
    const/4 v1, 0x0

    #@11d
    .restart local v1    # "isFloating":Z
    goto/16 :goto_3

    #@11f
    .line 3604
    :cond_c
    if-eqz v1, :cond_4

    #@121
    .line 3605
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@123
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-wrap1(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    #@126
    .line 3606
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@128
    invoke-static {v4, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set1(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    #@12b
    goto :goto_4

    #@12c
    .line 3610
    :cond_d
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@12e
    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@130
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@133
    move-result-object v4

    #@134
    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@137
    goto :goto_5

    #@138
    .line 3611
    :catch_0
    move-exception v0

    #@139
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    goto :goto_5

    #@13a
    .line 3572
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3620
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    #@2
    instance-of v0, v0, Landroid/view/ActionMode$Callback2;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3621
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    #@8
    check-cast v0, Landroid/view/ActionMode$Callback2;

    #@a
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    #@d
    .line 3619
    :goto_0
    return-void

    #@e
    .line 3623
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    #@11
    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 3535
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestFitSystemWindows()V

    #@5
    .line 3536
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    #@7
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method
