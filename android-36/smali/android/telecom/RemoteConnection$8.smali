.class Landroid/telecom/RemoteConnection$8;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->onPostDialChar(C)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic blacklist val$connection:Landroid/telecom/RemoteConnection;

.field final synthetic blacklist val$nextChar:C


# direct methods
.method constructor blacklist <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;C)V
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

    .line 1441
    iput-object p2, p0, Landroid/telecom/RemoteConnection$8;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iput-object p3, p0, Landroid/telecom/RemoteConnection$8;->val$connection:Landroid/telecom/RemoteConnection;

    iput-char p4, p0, Landroid/telecom/RemoteConnection$8;->val$nextChar:C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1444
    iget-object v0, p0, Landroid/telecom/RemoteConnection$8;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$8;->val$connection:Landroid/telecom/RemoteConnection;

    iget-char v2, p0, Landroid/telecom/RemoteConnection$8;->val$nextChar:C

    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConnection$Callback;->onPostDialChar(Landroid/telecom/RemoteConnection;C)V

    .line 1445
    return-void
.end method
