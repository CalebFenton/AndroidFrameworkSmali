.class Lcom/android/server/InputMethodManagerService$8;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;
    .param p2, "val$adapter"    # Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    #@0
    .prologue
    .line 3098
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$8;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 3101
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2
    iget-object v3, v2, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@4
    monitor-enter v3

    #@5
    .line 3102
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    #@7
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-get2(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_0

    #@d
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    #@f
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-get2(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    #@12
    move-result-object v2

    #@13
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    if-gt v2, p2, :cond_1

    #@16
    :cond_0
    monitor-exit v3

    #@17
    .line 3104
    return-void

    #@18
    .line 3102
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    #@1a
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-get3(Lcom/android/server/InputMethodManagerService;)[I

    #@1d
    move-result-object v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 3103
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    #@22
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-get3(Lcom/android/server/InputMethodManagerService;)[I

    #@25
    move-result-object v2

    #@26
    array-length v2, v2

    #@27
    if-le v2, p2, :cond_0

    #@29
    .line 3106
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2b
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-get2(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    #@2e
    move-result-object v2

    #@2f
    aget-object v0, v2, p2

    #@31
    .line 3107
    .local v0, "im":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    #@33
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-get3(Lcom/android/server/InputMethodManagerService;)[I

    #@36
    move-result-object v2

    #@37
    aget v1, v2, p2

    #@39
    .line 3108
    .local v1, "subtypeId":I
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    #@3b
    iput p2, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    #@3d
    .line 3109
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    #@3f
    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->notifyDataSetChanged()V

    #@42
    .line 3110
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    #@44
    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    #@47
    .line 3111
    if-eqz v0, :cond_4

    #@49
    .line 3112
    if-ltz v1, :cond_2

    #@4b
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@4e
    move-result v2

    #@4f
    if-lt v1, v2, :cond_3

    #@51
    .line 3113
    :cond_2
    const/4 v1, -0x1

    #@52
    .line 3115
    :cond_3
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    #@54
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v2, v4, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    :cond_4
    monitor-exit v3

    #@5c
    .line 3100
    return-void

    #@5d
    .line 3101
    .end local v0    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "subtypeId":I
    :catchall_0
    move-exception v2

    #@5e
    monitor-exit v3

    #@5f
    throw v2
.end method
