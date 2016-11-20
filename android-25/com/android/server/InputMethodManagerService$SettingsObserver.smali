.class Lcom/android/server/InputMethodManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field mLastEnabled:Ljava/lang/String;

.field mRegistered:Z

.field mUserId:I

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2
    .line 492
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 484
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    #@8
    .line 486
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    #@d
    .line 491
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 13
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 523
    const-string/jumbo v7, "show_ime_with_hard_keyboard"

    #@5
    .line 522
    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v3

    #@9
    .line 525
    .local v3, "showImeUri":Landroid/net/Uri;
    const-string/jumbo v7, "accessibility_soft_keyboard_mode"

    #@c
    .line 524
    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    .line 526
    .local v0, "accessibilityRequestingNoImeUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@12
    iget-object v7, v7, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@14
    monitor-enter v7

    #@15
    .line 527
    :try_start_0
    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v8

    #@19
    if-eqz v8, :cond_1

    #@1b
    .line 528
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@1d
    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    :goto_0
    monitor-exit v7

    #@21
    .line 521
    return-void

    #@22
    .line 529
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v8

    #@26
    if-eqz v8, :cond_4

    #@28
    .line 530
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2a
    .line 531
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2c
    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@2e
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@31
    move-result-object v9

    #@32
    .line 532
    const-string/jumbo v10, "accessibility_soft_keyboard_mode"

    #@35
    .line 533
    iget v11, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    #@37
    const/4 v12, 0x0

    #@38
    .line 530
    invoke-static {v9, v10, v12, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@3b
    move-result v9

    #@3c
    if-ne v9, v5, :cond_2

    #@3e
    :goto_1
    invoke-static {v8, v5}, Lcom/android/server/InputMethodManagerService;->-set0(Lcom/android/server/InputMethodManagerService;Z)Z

    #@41
    .line 534
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@43
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->-get0(Lcom/android/server/InputMethodManagerService;)Z

    #@46
    move-result v5

    #@47
    if-eqz v5, :cond_3

    #@49
    .line 535
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@4b
    iget-boolean v4, v5, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@4d
    .line 536
    .local v4, "showRequested":Z
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@4f
    const/4 v6, 0x0

    #@50
    const/4 v8, 0x0

    #@51
    invoke-virtual {v5, v6, v8}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@54
    .line 537
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@56
    iput-boolean v4, v5, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    goto :goto_0

    #@59
    .line 526
    .end local v4    # "showRequested":Z
    :catchall_0
    move-exception v5

    #@5a
    monitor-exit v7

    #@5b
    throw v5

    #@5c
    :cond_2
    move v5, v6

    #@5d
    .line 530
    goto :goto_1

    #@5e
    .line 538
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@60
    iget-boolean v5, v5, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@62
    if-eqz v5, :cond_0

    #@64
    .line 539
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@66
    const/4 v6, 0x1

    #@67
    const/4 v8, 0x0

    #@68
    invoke-virtual {v5, v6, v8}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@6b
    goto :goto_0

    #@6c
    .line 542
    :cond_4
    const/4 v1, 0x0

    #@6d
    .line 543
    .local v1, "enabledChanged":Z
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@6f
    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@71
    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    .line 544
    .local v2, "newEnabled":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    #@77
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v5

    #@7b
    if-nez v5, :cond_5

    #@7d
    .line 545
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    #@7f
    .line 546
    const/4 v1, 0x1

    #@80
    .line 548
    :cond_5
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@82
    invoke-virtual {v5, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@85
    goto :goto_0
.end method

.method public registerContentObserverLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 496
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    #@7
    if-ne v1, p1, :cond_0

    #@9
    .line 497
    return-void

    #@a
    .line 499
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@c
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v0

    #@12
    .line 500
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 501
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@18
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@21
    .line 502
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    #@23
    .line 504
    :cond_1
    iget v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    #@25
    if-eq v1, p1, :cond_2

    #@27
    .line 505
    const-string/jumbo v1, ""

    #@2a
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    #@2c
    .line 506
    iput p1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    #@2e
    .line 509
    :cond_2
    const-string/jumbo v1, "default_input_method"

    #@31
    .line 508
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@38
    .line 511
    const-string/jumbo v1, "enabled_input_methods"

    #@3b
    .line 510
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@42
    .line 513
    const-string/jumbo v1, "selected_input_method_subtype"

    #@45
    .line 512
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@4c
    .line 515
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    #@4f
    .line 514
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@56
    .line 517
    const-string/jumbo v1, "accessibility_soft_keyboard_mode"

    #@59
    .line 516
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@60
    .line 518
    const/4 v1, 0x1

    #@61
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    #@63
    .line 495
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SettingsObserver{mUserId="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " mRegistered="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 556
    const-string/jumbo v1, " mLastEnabled="

    #@22
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 556
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    #@28
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 556
    const-string/jumbo v1, "}"

    #@2f
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method
