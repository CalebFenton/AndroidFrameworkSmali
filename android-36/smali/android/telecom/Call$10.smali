.class Landroid/telecom/Call$10;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$call:Landroid/telecom/Call;

.field final synthetic blacklist val$callback:Landroid/telecom/Call$Callback;

.field final synthetic blacklist val$event:Ljava/lang/String;

.field final synthetic blacklist val$extras:Landroid/os/Bundle;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "this$0"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2860
    iput-object p2, p0, Landroid/telecom/Call$10;->val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, Landroid/telecom/Call$10;->val$call:Landroid/telecom/Call;

    iput-object p4, p0, Landroid/telecom/Call$10;->val$event:Ljava/lang/String;

    iput-object p5, p0, Landroid/telecom/Call$10;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 2863
    iget-object v0, p0, Landroid/telecom/Call$10;->val$callback:Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/Call$10;->val$call:Landroid/telecom/Call;

    iget-object v2, p0, Landroid/telecom/Call$10;->val$event:Ljava/lang/String;

    iget-object v3, p0, Landroid/telecom/Call$10;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/telecom/Call$Callback;->onConnectionEvent(Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2864
    return-void
.end method
