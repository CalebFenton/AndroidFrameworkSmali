.class Landroid/telecom/RemoteConnection$4;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic blacklist val$connection:Landroid/telecom/RemoteConnection;

.field final synthetic blacklist val$connectionCapabilities:I


# direct methods
.method constructor blacklist <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/telecom/RemoteConnection;
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

    .line 1365
    iput-object p2, p0, Landroid/telecom/RemoteConnection$4;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iput-object p3, p0, Landroid/telecom/RemoteConnection$4;->val$connection:Landroid/telecom/RemoteConnection;

    iput p4, p0, Landroid/telecom/RemoteConnection$4;->val$connectionCapabilities:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1368
    iget-object v0, p0, Landroid/telecom/RemoteConnection$4;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$4;->val$connection:Landroid/telecom/RemoteConnection;

    iget v2, p0, Landroid/telecom/RemoteConnection$4;->val$connectionCapabilities:I

    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConnection$Callback;->onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConnection;I)V

    .line 1369
    return-void
.end method
