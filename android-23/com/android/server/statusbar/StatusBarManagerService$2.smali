.class Lcom/android/server/statusbar/StatusBarManagerService$2;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$net1:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "val$net1"    # I

    #@0
    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->val$net1:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-get1(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/notification/NotificationDelegate;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->val$net1:I

    #@8
    invoke-interface {v0, v1}, Lcom/android/server/notification/NotificationDelegate;->onSetDisabled(I)V

    #@b
    .line 274
    return-void
.end method
