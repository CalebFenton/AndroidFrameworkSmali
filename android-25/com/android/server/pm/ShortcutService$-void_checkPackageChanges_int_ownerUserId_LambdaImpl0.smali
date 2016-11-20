.class final synthetic Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_checkPackageChanges_int_ownerUserId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$gonePackages:Ljava/util/ArrayList;

.field private synthetic val$this:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/util/ArrayList;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    #@5
    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;->val$gonePackages:Ljava/util/ArrayList;

    #@7
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    #@2
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;->val$gonePackages:Ljava/util/ArrayList;

    #@4
    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    #@6
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService_lambda$16(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackageItem;)V

    #@9
    return-void
.end method
