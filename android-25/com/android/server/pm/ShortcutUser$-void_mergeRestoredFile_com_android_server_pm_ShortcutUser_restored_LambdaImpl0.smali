.class final synthetic Lcom/android/server/pm/ShortcutUser$-void_mergeRestoredFile_com_android_server_pm_ShortcutUser_restored_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutUser.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_mergeRestoredFile_com_android_server_pm_ShortcutUser_restored_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$s:Lcom/android/server/pm/ShortcutService;

.field private synthetic val$this:Lcom/android/server/pm/ShortcutUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser$-void_mergeRestoredFile_com_android_server_pm_ShortcutUser_restored_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutUser;

    #@5
    iput-object p2, p0, Lcom/android/server/pm/ShortcutUser$-void_mergeRestoredFile_com_android_server_pm_ShortcutUser_restored_LambdaImpl0;->val$s:Lcom/android/server/pm/ShortcutService;

    #@7
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser$-void_mergeRestoredFile_com_android_server_pm_ShortcutUser_restored_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutUser;

    #@2
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser$-void_mergeRestoredFile_com_android_server_pm_ShortcutUser_restored_LambdaImpl0;->val$s:Lcom/android/server/pm/ShortcutService;

    #@4
    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    #@6
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/ShortcutUser;->-com_android_server_pm_ShortcutUser_lambda$4(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutLauncher;)V

    #@9
    return-void
.end method
