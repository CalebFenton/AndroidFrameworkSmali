.class Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;
.super Landroid/view/ActionMode$Callback2;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback2Wrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;
    .param p2, "wrapped"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 2281
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@2
    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    #@5
    .line 2282
    iput-object p2, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    #@7
    .line 2281
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

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
    .line 2286
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 10
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v9, 0x0

    #@3
    .line 2299
    iget-object v6, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    #@5
    invoke-interface {v6, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    #@8
    .line 2300
    iget-object v6, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@a
    invoke-static {v6}, Lcom/android/internal/policy/DecorView;->-get0(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;

    #@d
    move-result-object v6

    #@e
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@11
    move-result-object v6

    #@12
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@14
    .line 2301
    const/16 v7, 0x17

    #@16
    .line 2300
    if-lt v6, v7, :cond_0

    #@18
    move v2, v5

    #@19
    .line 2304
    .local v2, "isMncApp":Z
    :cond_0
    if-eqz v2, :cond_9

    #@1b
    .line 2305
    iget-object v6, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@1d
    iget-object v6, v6, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@1f
    if-ne p1, v6, :cond_7

    #@21
    const/4 v3, 0x1

    #@22
    .line 2306
    .local v3, "isPrimary":Z
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@24
    invoke-static {v6}, Lcom/android/internal/policy/DecorView;->-get2(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;

    #@27
    move-result-object v6

    #@28
    if-ne p1, v6, :cond_8

    #@2a
    const/4 v1, 0x1

    #@2b
    .line 2307
    .local v1, "isFloating":Z
    :goto_1
    if-nez v3, :cond_1

    #@2d
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    #@30
    move-result v6

    #@31
    if-nez v6, :cond_1

    #@33
    .line 2308
    iget-object v6, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@35
    iget-object v6, v6, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    #@37
    new-instance v7, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v8, "Destroying unexpected ActionMode instance of TYPE_PRIMARY; "

    #@3f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    .line 2309
    const-string/jumbo v8, " was not the current primary action mode! Expected "

    #@4a
    .line 2308
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    .line 2310
    iget-object v8, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@50
    iget-object v8, v8, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@52
    .line 2308
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 2312
    :cond_1
    if-nez v1, :cond_2

    #@5f
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    #@62
    move-result v6

    #@63
    if-ne v6, v5, :cond_2

    #@65
    .line 2313
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@67
    iget-object v5, v5, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    #@69
    new-instance v6, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v7, "Destroying unexpected ActionMode instance of TYPE_FLOATING; "

    #@71
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v6

    #@79
    .line 2314
    const-string/jumbo v7, " was not the current floating action mode! Expected "

    #@7c
    .line 2313
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    .line 2315
    iget-object v7, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@82
    invoke-static {v7}, Lcom/android/internal/policy/DecorView;->-get2(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;

    #@85
    move-result-object v7

    #@86
    .line 2313
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v6

    #@8a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v6

    #@8e
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 2321
    :cond_2
    :goto_2
    if-eqz v3, :cond_c

    #@93
    .line 2322
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@95
    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get3(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;

    #@98
    move-result-object v5

    #@99
    if-eqz v5, :cond_3

    #@9b
    .line 2323
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@9d
    iget-object v6, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@9f
    invoke-static {v6}, Lcom/android/internal/policy/DecorView;->-get5(Lcom/android/internal/policy/DecorView;)Ljava/lang/Runnable;

    #@a2
    move-result-object v6

    #@a3
    invoke-virtual {v5, v6}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@a6
    .line 2325
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@a8
    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get4(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@ab
    move-result-object v5

    #@ac
    if-eqz v5, :cond_4

    #@ae
    .line 2326
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@b0
    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-wrap1(Lcom/android/internal/policy/DecorView;)V

    #@b3
    .line 2330
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@b5
    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get4(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@b8
    move-result-object v4

    #@b9
    .line 2331
    .local v4, "lastActionModeView":Lcom/android/internal/widget/ActionBarContextView;
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@bb
    iget-object v6, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@bd
    invoke-static {v6}, Lcom/android/internal/policy/DecorView;->-get4(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@c0
    move-result-object v6

    #@c1
    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@c3
    const/4 v8, 0x2

    #@c4
    new-array v8, v8, [F

    #@c6
    fill-array-data v8, :array_0

    #@c9
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@cc
    move-result-object v6

    #@cd
    invoke-static {v5, v6}, Lcom/android/internal/policy/DecorView;->-set0(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    #@d0
    .line 2333
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@d2
    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get1(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;

    #@d5
    move-result-object v5

    #@d6
    new-instance v6, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;

    #@d8
    invoke-direct {v6, p0, v4}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;-><init>(Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;Lcom/android/internal/widget/ActionBarContextView;)V

    #@db
    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@de
    .line 2365
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@e0
    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get1(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;

    #@e3
    move-result-object v5

    #@e4
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    #@e7
    .line 2368
    .end local v4    # "lastActionModeView":Lcom/android/internal/widget/ActionBarContextView;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@e9
    iput-object v9, v5, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@eb
    .line 2373
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@ed
    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get6(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;

    #@f0
    move-result-object v5

    #@f1
    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@f4
    move-result-object v5

    #@f5
    if-eqz v5, :cond_6

    #@f7
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@f9
    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get6(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;

    #@fc
    move-result-object v5

    #@fd
    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@100
    move-result v5

    #@101
    if-eqz v5, :cond_d

    #@103
    .line 2380
    :cond_6
    :goto_4
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@105
    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->requestFitSystemWindows()V

    #@108
    .line 2298
    return-void

    #@109
    .line 2305
    .end local v1    # "isFloating":Z
    .end local v3    # "isPrimary":Z
    :cond_7
    const/4 v3, 0x0

    #@10a
    .restart local v3    # "isPrimary":Z
    goto/16 :goto_0

    #@10c
    .line 2306
    :cond_8
    const/4 v1, 0x0

    #@10d
    .restart local v1    # "isFloating":Z
    goto/16 :goto_1

    #@10f
    .line 2318
    .end local v1    # "isFloating":Z
    .end local v3    # "isPrimary":Z
    :cond_9
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    #@112
    move-result v6

    #@113
    if-nez v6, :cond_a

    #@115
    const/4 v3, 0x1

    #@116
    .line 2319
    .restart local v3    # "isPrimary":Z
    :goto_5
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    #@119
    move-result v6

    #@11a
    if-ne v6, v5, :cond_b

    #@11c
    const/4 v1, 0x1

    #@11d
    .restart local v1    # "isFloating":Z
    goto/16 :goto_2

    #@11f
    .line 2318
    .end local v1    # "isFloating":Z
    .end local v3    # "isPrimary":Z
    :cond_a
    const/4 v3, 0x0

    #@120
    .restart local v3    # "isPrimary":Z
    goto :goto_5

    #@121
    .line 2319
    :cond_b
    const/4 v1, 0x0

    #@122
    .restart local v1    # "isFloating":Z
    goto/16 :goto_2

    #@124
    .line 2369
    :cond_c
    if-eqz v1, :cond_5

    #@126
    .line 2370
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@128
    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-wrap0(Lcom/android/internal/policy/DecorView;)V

    #@12b
    .line 2371
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@12d
    invoke-static {v5, v9}, Lcom/android/internal/policy/DecorView;->-set1(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    #@130
    goto :goto_3

    #@131
    .line 2375
    :cond_d
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@133
    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get6(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;

    #@136
    move-result-object v5

    #@137
    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@13a
    move-result-object v5

    #@13b
    invoke-interface {v5, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@13e
    goto :goto_4

    #@13f
    .line 2376
    :catch_0
    move-exception v0

    #@140
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    goto :goto_4

    #@141
    .line 2331
    nop

    #@142
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
    .line 2385
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    #@2
    instance-of v0, v0, Landroid/view/ActionMode$Callback2;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2386
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    #@8
    check-cast v0, Landroid/view/ActionMode$Callback2;

    #@a
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    #@d
    .line 2384
    :goto_0
    return-void

    #@e
    .line 2388
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
    .line 2290
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->requestFitSystemWindows()V

    #@5
    .line 2291
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    #@7
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method
