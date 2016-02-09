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
    .line 443
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2
    .line 444
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 437
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    #@8
    .line 438
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    #@d
    .line 443
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 473
    const-string/jumbo v3, "show_ime_with_hard_keyboard"

    #@3
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v2

    #@7
    .line 474
    .local v2, "showImeUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@9
    iget-object v4, v3, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@b
    monitor-enter v4

    #@c
    .line 475
    :try_start_0
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 476
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@14
    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :goto_0
    monitor-exit v4

    #@18
    .line 471
    return-void

    #@19
    .line 478
    :cond_0
    const/4 v0, 0x0

    #@1a
    .line 479
    .local v0, "enabledChanged":Z
    :try_start_1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@1c
    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@1e
    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 480
    .local v1, "newEnabled":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    #@24
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_1

    #@2a
    .line 481
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    #@2c
    .line 482
    const/4 v0, 0x1

    #@2d
    .line 484
    :cond_1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2f
    invoke-virtual {v3, v0}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 474
    .end local v0    # "enabledChanged":Z
    .end local v1    # "newEnabled":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@34
    monitor-exit v4

    #@35
    throw v3
.end method

.method public registerContentObserverLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 448
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    #@7
    if-ne v1, p1, :cond_0

    #@9
    .line 449
    return-void

    #@a
    .line 451
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@c
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v0

    #@12
    .line 452
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 453
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
    .line 454
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    #@23
    .line 456
    :cond_1
    iget v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    #@25
    if-eq v1, p1, :cond_2

    #@27
    .line 457
    const-string/jumbo v1, ""

    #@2a
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    #@2c
    .line 458
    iput p1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    #@2e
    .line 461
    :cond_2
    const-string/jumbo v1, "default_input_method"

    #@31
    .line 460
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@38
    .line 463
    const-string/jumbo v1, "enabled_input_methods"

    #@3b
    .line 462
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@42
    .line 465
    const-string/jumbo v1, "selected_input_method_subtype"

    #@45
    .line 464
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@4c
    .line 467
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    #@4f
    .line 466
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@56
    .line 468
    const/4 v1, 0x1

    #@57
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    #@59
    .line 447
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 491
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
    .line 492
    const-string/jumbo v1, " mLastEnabled="

    #@22
    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 492
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    #@28
    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 492
    const-string/jumbo v1, "}"

    #@2f
    .line 491
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
