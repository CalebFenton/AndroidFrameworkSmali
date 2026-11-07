.class Landroid/telecom/RemoteConference$8;
.super Ljava/lang/Object;
.source "RemoteConference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telecom/RemoteConference$Callback;

.field final synthetic blacklist val$conference:Landroid/telecom/RemoteConference;

.field final synthetic blacklist val$disconnectCause:Landroid/telecom/DisconnectCause;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V
    .registers 5
    .param p1, "this$0"    # Landroid/telecom/RemoteConference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 310
    iput-object p2, p0, Landroid/telecom/RemoteConference$8;->val$callback:Landroid/telecom/RemoteConference$Callback;

    iput-object p3, p0, Landroid/telecom/RemoteConference$8;->val$conference:Landroid/telecom/RemoteConference;

    iput-object p4, p0, Landroid/telecom/RemoteConference$8;->val$disconnectCause:Landroid/telecom/DisconnectCause;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 313
    iget-object v0, p0, Landroid/telecom/RemoteConference$8;->val$callback:Landroid/telecom/RemoteConference$Callback;

    iget-object v1, p0, Landroid/telecom/RemoteConference$8;->val$conference:Landroid/telecom/RemoteConference;

    iget-object v2, p0, Landroid/telecom/RemoteConference$8;->val$disconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConference$Callback;->onDisconnected(Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V

    .line 314
    return-void
.end method
