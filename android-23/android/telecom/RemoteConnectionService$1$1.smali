.class Landroid/telecom/RemoteConnectionService$1$1;
.super Landroid/telecom/RemoteConference$Callback;
.source "RemoteConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnectionService$1;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/RemoteConnectionService$1;

.field final synthetic val$callId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/RemoteConnectionService$1;
    .param p2, "val$callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 210
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$1$1;->this$1:Landroid/telecom/RemoteConnectionService$1;

    #@2
    iput-object p2, p0, Landroid/telecom/RemoteConnectionService$1$1;->val$callId:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Landroid/telecom/RemoteConference$Callback;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/RemoteConference;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/RemoteConference;

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1$1;->this$1:Landroid/telecom/RemoteConnectionService$1;

    #@2
    iget-object v0, v0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@4
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get2(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1$1;->val$callId:Ljava/lang/String;

    #@a
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 214
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1$1;->this$1:Landroid/telecom/RemoteConnectionService$1;

    #@f
    iget-object v0, v0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@11
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-wrap3(Landroid/telecom/RemoteConnectionService;)V

    #@14
    .line 212
    return-void
.end method
