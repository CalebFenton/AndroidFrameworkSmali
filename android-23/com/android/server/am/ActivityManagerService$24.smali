.class Lcom/android/server/am/ActivityManagerService$24;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->startUser(IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$foreground:Z

.field final synthetic val$oldUserId:I

.field final synthetic val$userId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/UserState;ZII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$uss"    # Lcom/android/server/am/UserState;
    .param p3, "val$foreground"    # Z
    .param p4, "val$oldUserId"    # I
    .param p5, "val$userId"    # I

    #@0
    .prologue
    .line 19853
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$24;->val$uss:Lcom/android/server/am/UserState;

    #@4
    iput-boolean p3, p0, Lcom/android/server/am/ActivityManagerService$24;->val$foreground:Z

    #@6
    iput p4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$oldUserId:I

    #@8
    iput p5, p0, Lcom/android/server/am/ActivityManagerService$24;->val$userId:I

    #@a
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    #@0
    .prologue
    .line 19857
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$24;->val$uss:Lcom/android/server/am/UserState;

    #@4
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$24;->val$foreground:Z

    #@6
    iget v3, p0, Lcom/android/server/am/ActivityManagerService$24;->val$oldUserId:I

    #@8
    iget v4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$userId:I

    #@a
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->onUserInitialized(Lcom/android/server/am/UserState;ZII)V

    #@d
    .line 19856
    return-void
.end method
