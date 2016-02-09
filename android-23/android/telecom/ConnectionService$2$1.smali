.class Landroid/telecom/ConnectionService$2$1;
.super Ljava/lang/Object;
.source "ConnectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/ConnectionService$2;

.field final synthetic val$connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$isIncoming:Z

.field final synthetic val$isUnknown:Z

.field final synthetic val$request:Landroid/telecom/ConnectionRequest;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService$2;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/ConnectionService$2;
    .param p2, "val$connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "val$id"    # Ljava/lang/String;
    .param p4, "val$request"    # Landroid/telecom/ConnectionRequest;
    .param p5, "val$isIncoming"    # Z
    .param p6, "val$isUnknown"    # Z

    #@0
    .prologue
    .line 255
    iput-object p1, p0, Landroid/telecom/ConnectionService$2$1;->this$1:Landroid/telecom/ConnectionService$2;

    #@2
    iput-object p2, p0, Landroid/telecom/ConnectionService$2$1;->val$connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@4
    iput-object p3, p0, Landroid/telecom/ConnectionService$2$1;->val$id:Ljava/lang/String;

    #@6
    iput-object p4, p0, Landroid/telecom/ConnectionService$2$1;->val$request:Landroid/telecom/ConnectionRequest;

    #@8
    iput-boolean p5, p0, Landroid/telecom/ConnectionService$2$1;->val$isIncoming:Z

    #@a
    iput-boolean p6, p0, Landroid/telecom/ConnectionService$2$1;->val$isUnknown:Z

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid/telecom/ConnectionService$2$1;->this$1:Landroid/telecom/ConnectionService$2;

    #@2
    iget-object v0, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@4
    .line 259
    iget-object v1, p0, Landroid/telecom/ConnectionService$2$1;->val$connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@6
    .line 260
    iget-object v2, p0, Landroid/telecom/ConnectionService$2$1;->val$id:Ljava/lang/String;

    #@8
    .line 261
    iget-object v3, p0, Landroid/telecom/ConnectionService$2$1;->val$request:Landroid/telecom/ConnectionRequest;

    #@a
    .line 262
    iget-boolean v4, p0, Landroid/telecom/ConnectionService$2$1;->val$isIncoming:Z

    #@c
    .line 263
    iget-boolean v5, p0, Landroid/telecom/ConnectionService$2$1;->val$isUnknown:Z

    #@e
    .line 258
    invoke-static/range {v0 .. v5}, Landroid/telecom/ConnectionService;->-wrap6(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    #@11
    .line 257
    return-void
.end method
