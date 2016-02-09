.class Lcom/android/server/accessibility/AccessibilityManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    #@0
    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    #@0
    .prologue
    .line 312
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v7

    #@6
    monitor-enter v7

    #@7
    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    #@a
    move-result v4

    #@b
    .line 316
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@d
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v6

    #@11
    if-eq v4, v6, :cond_0

    #@13
    .line 317
    const/4 v6, 0x0

    #@14
    monitor-exit v7

    #@15
    return v6

    #@16
    .line 319
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@18
    invoke-static {v6, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@1b
    move-result-object v5

    #@1c
    .line 320
    .local v5, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@1e
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v2

    #@22
    .line 321
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_4

    #@28
    .line 322
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/content/ComponentName;

    #@2e
    .line 323
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 324
    .local v1, "compPkg":Ljava/lang/String;
    const/4 v6, 0x0

    #@33
    array-length v8, p2

    #@34
    :goto_0
    if-ge v6, v8, :cond_1

    #@36
    aget-object v3, p2, v6

    #@38
    .line 325
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    move-result v9

    #@3c
    if-eqz v9, :cond_3

    #@3e
    .line 326
    if-nez p4, :cond_2

    #@40
    .line 327
    const/4 v6, 0x1

    #@41
    monitor-exit v7

    #@42
    return v6

    #@43
    .line 329
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@46
    .line 330
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@48
    .line 331
    const-string/jumbo v10, "enabled_accessibility_services"

    #@4b
    .line 332
    iget-object v11, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@4d
    .line 330
    invoke-static {v9, v10, v11, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V

    #@50
    .line 334
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@53
    move-result-object v9

    #@54
    if-nez v9, :cond_3

    #@56
    .line 335
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@58
    invoke-static {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    .line 324
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 340
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "compPkg":Ljava/lang/String;
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    #@5f
    monitor-exit v7

    #@60
    return v6

    #@61
    .line 312
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v4    # "userId":I
    .end local v5    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v6

    #@62
    monitor-exit v7

    #@63
    throw v6
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 275
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v6

    #@6
    monitor-enter v6

    #@7
    .line 276
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    #@a
    move-result v3

    #@b
    .line 279
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@d
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v5

    #@11
    if-eq v3, v5, :cond_0

    #@13
    monitor-exit v6

    #@14
    .line 280
    return-void

    #@15
    .line 282
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@17
    invoke-static {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@1a
    move-result-object v4

    #@1b
    .line 283
    .local v4, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@1d
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v2

    #@21
    .line 284
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_3

    #@27
    .line 285
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/content/ComponentName;

    #@2d
    .line 286
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 287
    .local v1, "compPkg":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_1

    #@37
    .line 288
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@3a
    .line 290
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3c
    .line 291
    const-string/jumbo v7, "enabled_accessibility_services"

    #@3f
    .line 292
    iget-object v8, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@41
    .line 290
    invoke-static {v5, v7, v8, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V

    #@44
    .line 294
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@46
    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@49
    .line 295
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@4b
    .line 296
    const-string/jumbo v7, "touch_exploration_granted_accessibility_services"

    #@4e
    .line 298
    iget-object v8, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@50
    .line 295
    invoke-static {v5, v7, v8, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V

    #@53
    .line 300
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@56
    move-result-object v5

    #@57
    if-nez v5, :cond_2

    #@59
    .line 301
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@5b
    invoke-static {v5, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    :cond_2
    monitor-exit v6

    #@5f
    .line 303
    return-void

    #@60
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "compPkg":Ljava/lang/String;
    :cond_3
    monitor-exit v6

    #@61
    .line 274
    return-void

    #@62
    .line 275
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v3    # "userId":I
    .end local v4    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v5

    #@63
    monitor-exit v6

    #@64
    throw v5
.end method

.method public onSomePackagesChanged()V
    .locals 4

    #@0
    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 255
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    #@a
    move-result v1

    #@b
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@d
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v3

    #@11
    if-eq v1, v3, :cond_0

    #@13
    monitor-exit v2

    #@14
    .line 256
    return-void

    #@15
    .line 259
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@17
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@1a
    move-result-object v0

    #@1b
    .line 264
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    #@1d
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@20
    .line 265
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@23
    move-result-object v1

    #@24
    if-nez v1, :cond_1

    #@26
    .line 266
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@28
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 267
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@30
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    :cond_1
    monitor-exit v2

    #@34
    .line 251
    return-void

    #@35
    .line 252
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method
