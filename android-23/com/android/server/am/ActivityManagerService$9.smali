.class Lcom/android/server/am/ActivityManagerService$9;
.super Lcom/android/server/am/ActivityManagerService$ForegroundToken;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->setProcessForeground(Landroid/os/IBinder;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "this$0_1"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 6911
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ForegroundToken;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    #@5
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    #@0
    .prologue
    .line 6914
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->foregroundTokenDied(Lcom/android/server/am/ActivityManagerService$ForegroundToken;)V

    #@5
    .line 6913
    return-void
.end method
