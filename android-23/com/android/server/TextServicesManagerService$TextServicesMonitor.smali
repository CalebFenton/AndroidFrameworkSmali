.class Lcom/android/server/TextServicesManagerService$TextServicesMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextServicesMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/TextServicesManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TextServicesManagerService;

    #@0
    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$TextServicesMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TextServicesManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;)V

    #@3
    return-void
.end method

.method private isChangingPackagesOfCurrentUser()Z
    .locals 3

    #@0
    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->getChangingUserId()I

    #@3
    move-result v1

    #@4
    .line 170
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    #@6
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get2(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    #@d
    move-result v2

    #@e
    if-ne v1, v2, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    .line 174
    .local v0, "retval":Z
    :goto_0
    return v0

    #@12
    .line 170
    .end local v0    # "retval":Z
    :cond_0
    const/4 v0, 0x0

    #@13
    .restart local v0    # "retval":Z
    goto :goto_0
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 8

    #@0
    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isChangingPackagesOfCurrentUser()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 180
    return-void

    #@7
    .line 182
    :cond_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    #@9
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@c
    move-result-object v4

    #@d
    monitor-enter v4

    #@e
    .line 184
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    #@10
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->-get1(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    #@13
    move-result-object v3

    #@14
    iget-object v5, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    #@16
    invoke-static {v5}, Lcom/android/server/TextServicesManagerService;->-get4(Lcom/android/server/TextServicesManagerService;)Ljava/util/ArrayList;

    #@19
    move-result-object v5

    #@1a
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    #@1c
    invoke-static {v6}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@1f
    move-result-object v6

    #@20
    iget-object v7, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    #@22
    invoke-static {v7}, Lcom/android/server/TextServicesManagerService;->-get2(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@25
    move-result-object v7

    #@26
    .line 183
    invoke-static {v3, v5, v6, v7}, Lcom/android/server/TextServicesManagerService;->-wrap1(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    #@29
    .line 186
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-virtual {v3, v5}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result-object v2

    #@30
    .line 189
    .local v2, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v2, :cond_1

    #@32
    monitor-exit v4

    #@33
    return-void

    #@34
    .line 190
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    .line 191
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    #@3b
    move-result v0

    #@3c
    .line 193
    .local v0, "change":I
    const/4 v3, 0x3

    #@3d
    if-eq v0, v3, :cond_2

    #@3f
    const/4 v3, 0x2

    #@40
    if-ne v0, v3, :cond_4

    #@42
    .line 196
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    #@44
    invoke-static {v3, v1}, Lcom/android/server/TextServicesManagerService;->-wrap0(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    #@47
    move-result-object v2

    #@48
    .line 197
    if-eqz v2, :cond_3

    #@4a
    .line 198
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    #@4c
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-static {v3, v5}, Lcom/android/server/TextServicesManagerService;->-wrap2(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    :cond_3
    monitor-exit v4

    #@54
    .line 178
    return-void

    #@55
    .line 195
    :cond_4
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@58
    move-result v3

    #@59
    .line 192
    if-eqz v3, :cond_3

    #@5b
    goto :goto_0

    #@5c
    .line 182
    .end local v0    # "change":I
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catchall_0
    move-exception v3

    #@5d
    monitor-exit v4

    #@5e
    throw v3
.end method
