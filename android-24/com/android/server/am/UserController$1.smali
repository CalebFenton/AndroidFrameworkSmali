.class Lcom/android/server/am/UserController$1;
.super Lcom/android/server/am/PreBootBroadcaster;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;Lcom/android/server/am/UserState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/UserController;
    .param p2, "$anonymous0"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # Lcom/android/internal/util/ProgressReporter;
    .param p5, "val$uss"    # Lcom/android/server/am/UserState;

    #@0
    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/server/am/UserController$1;->this$0:Lcom/android/server/am/UserController;

    #@2
    iput-object p5, p0, Lcom/android/server/am/UserController$1;->val$uss:Lcom/android/server/am/UserState;

    #@4
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/am/PreBootBroadcaster;-><init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;)V

    #@7
    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/server/am/UserController$1;->this$0:Lcom/android/server/am/UserController;

    #@2
    iget-object v1, p0, Lcom/android/server/am/UserController$1;->val$uss:Lcom/android/server/am/UserState;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/am/UserController;->-wrap1(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    #@7
    .line 352
    return-void
.end method
