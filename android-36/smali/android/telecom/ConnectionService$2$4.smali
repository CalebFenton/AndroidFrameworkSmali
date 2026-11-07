.class Landroid/telecom/ConnectionService$2$4;
.super Landroid/telecom/Logging/Runnable;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/telecom/ConnectionService$2;

.field final synthetic blacklist val$connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field final synthetic blacklist val$id:Ljava/lang/String;

.field final synthetic blacklist val$isIncoming:Z

.field final synthetic blacklist val$isUnknown:Z

.field final synthetic blacklist val$request:Landroid/telecom/ConnectionRequest;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .registers 9
    .param p1, "this$1"    # Landroid/telecom/ConnectionService$2;
    .param p2, "subsessionName"    # Ljava/lang/String;
    .param p3, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1283
    iput-object p1, p0, Landroid/telecom/ConnectionService$2$4;->this$1:Landroid/telecom/ConnectionService$2;

    iput-object p4, p0, Landroid/telecom/ConnectionService$2$4;->val$connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iput-object p5, p0, Landroid/telecom/ConnectionService$2$4;->val$id:Ljava/lang/String;

    iput-object p6, p0, Landroid/telecom/ConnectionService$2$4;->val$request:Landroid/telecom/ConnectionRequest;

    iput-boolean p7, p0, Landroid/telecom/ConnectionService$2$4;->val$isIncoming:Z

    iput-boolean p8, p0, Landroid/telecom/ConnectionService$2$4;->val$isUnknown:Z

    invoke-direct {p0, p2, p3}, Landroid/telecom/Logging/Runnable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist loggedRun()V
    .registers 8

    .line 1286
    iget-object v0, p0, Landroid/telecom/ConnectionService$2$4;->this$1:Landroid/telecom/ConnectionService$2;

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, p0, Landroid/telecom/ConnectionService$2$4;->val$connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iget-object v3, p0, Landroid/telecom/ConnectionService$2$4;->val$id:Ljava/lang/String;

    iget-object v4, p0, Landroid/telecom/ConnectionService$2$4;->val$request:Landroid/telecom/ConnectionRequest;

    iget-boolean v5, p0, Landroid/telecom/ConnectionService$2$4;->val$isIncoming:Z

    iget-boolean v6, p0, Landroid/telecom/ConnectionService$2$4;->val$isUnknown:Z

    invoke-static/range {v1 .. v6}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConference(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    .line 1291
    return-void
.end method
