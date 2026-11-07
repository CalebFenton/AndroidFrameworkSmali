.class Landroid/telecom/RemoteConference$5;
.super Ljava/lang/Object;
.source "RemoteConference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/RemoteConference;

.field final synthetic blacklist val$callback:Landroid/telecom/RemoteConference$Callback;

.field final synthetic blacklist val$conference:Landroid/telecom/RemoteConference;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telecom/RemoteConference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Landroid/telecom/RemoteConference$5;->this$0:Landroid/telecom/RemoteConference;

    iput-object p2, p0, Landroid/telecom/RemoteConference$5;->val$callback:Landroid/telecom/RemoteConference$Callback;

    iput-object p3, p0, Landroid/telecom/RemoteConference$5;->val$conference:Landroid/telecom/RemoteConference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 259
    iget-object v0, p0, Landroid/telecom/RemoteConference$5;->val$callback:Landroid/telecom/RemoteConference$Callback;

    iget-object v1, p0, Landroid/telecom/RemoteConference$5;->val$conference:Landroid/telecom/RemoteConference;

    iget-object v2, p0, Landroid/telecom/RemoteConference$5;->this$0:Landroid/telecom/RemoteConference;

    invoke-static {v2}, Landroid/telecom/RemoteConference;->-$$Nest$fgetmConnectionCapabilities(Landroid/telecom/RemoteConference;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConference$Callback;->onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConference;I)V

    .line 261
    return-void
.end method
