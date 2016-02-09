.class Lcom/android/server/accounts/AccountManagerService$1$1;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accounts/AccountManagerService$1;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/accounts/AccountManagerService$1;

    #@0
    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->this$1:Lcom/android/server/accounts/AccountManagerService$1;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->this$1:Lcom/android/server/accounts/AccountManagerService$1;

    #@2
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$1;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@4
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-wrap11(Lcom/android/server/accounts/AccountManagerService;)V

    #@7
    .line 297
    return-void
.end method
