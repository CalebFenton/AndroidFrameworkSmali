.class Landroid/telecom/Call$4;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$call:Landroid/telecom/Call;

.field final synthetic blacklist val$callback:Landroid/telecom/Call$Callback;

.field final synthetic blacklist val$details:Landroid/telecom/Call$Details;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .registers 5
    .param p1, "this$0"    # Landroid/telecom/Call;
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

    .line 2745
    iput-object p2, p0, Landroid/telecom/Call$4;->val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, Landroid/telecom/Call$4;->val$call:Landroid/telecom/Call;

    iput-object p4, p0, Landroid/telecom/Call$4;->val$details:Landroid/telecom/Call$Details;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 2748
    iget-object v0, p0, Landroid/telecom/Call$4;->val$callback:Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/Call$4;->val$call:Landroid/telecom/Call;

    iget-object v2, p0, Landroid/telecom/Call$4;->val$details:Landroid/telecom/Call$Details;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Call$Callback;->onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V

    .line 2749
    return-void
.end method
