.class Lcom/android/server/am/ActivityManagerService$28;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->stopUserLocked(ILandroid/app/IStopUserCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/UserState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$uss"    # Lcom/android/server/am/UserState;

    #@0
    .prologue
    .line 20242
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$28;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$28;->val$uss:Lcom/android/server/am/UserState;

    #@4
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    #@0
    .prologue
    .line 20246
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$28;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$28;->val$uss:Lcom/android/server/am/UserState;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->finishUserStop(Lcom/android/server/am/UserState;)V

    #@7
    .line 20245
    return-void
.end method
