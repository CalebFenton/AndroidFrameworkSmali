.class Lcom/android/server/InputMethodManagerService$4;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    #@0
    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getPackages(I)[Ljava/lang/String;
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 855
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2
    iget-object v7, v6, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@4
    monitor-enter v7

    #@5
    .line 856
    :try_start_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    #@7
    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@9
    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@c
    move-result v0

    #@d
    .line 860
    .local v0, "currentUserId":I
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    #@f
    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@11
    invoke-virtual {v6, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentUserId(I)V

    #@14
    .line 861
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    #@16
    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@18
    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    #@1b
    move-result-object v4

    #@1c
    .line 863
    .local v4, "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v5, 0x0

    #@1d
    .line 864
    .local v5, "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_0

    #@1f
    .line 865
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@22
    move-result v3

    #@23
    .line 866
    .local v3, "imeCount":I
    new-array v5, v3, [Ljava/lang/String;

    #@25
    .line 867
    .local v5, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    #@26
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@28
    .line 868
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@2e
    .line 869
    .local v2, "ime":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    aput-object v6, v5, v1

    #@34
    .line 867
    add-int/lit8 v1, v1, 0x1

    #@36
    goto :goto_0

    #@37
    .line 872
    .end local v1    # "i":I
    .end local v2    # "ime":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "imeCount":I
    .end local v5    # "packageNames":[Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    #@39
    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@3b
    invoke-virtual {v6, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentUserId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    monitor-exit v7

    #@3f
    .line 873
    return-object v5

    #@40
    .line 855
    .end local v0    # "currentUserId":I
    .end local v4    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :catchall_0
    move-exception v6

    #@41
    monitor-exit v7

    #@42
    throw v6
.end method
