.class Landroid/mtp/MtpDevice$1;
.super Ljava/lang/Object;
.source "MtpDevice.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/MtpDevice;->readEvent(Landroid/os/CancellationSignal;)Landroid/mtp/MtpEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/mtp/MtpDevice;

.field final synthetic blacklist val$handle:I


# direct methods
.method constructor blacklist <init>(Landroid/mtp/MtpDevice;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/mtp/MtpDevice;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 400
    iput-object p1, p0, Landroid/mtp/MtpDevice$1;->this$0:Landroid/mtp/MtpDevice;

    iput p2, p0, Landroid/mtp/MtpDevice$1;->val$handle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .registers 3

    .line 403
    iget-object v0, p0, Landroid/mtp/MtpDevice$1;->this$0:Landroid/mtp/MtpDevice;

    iget v1, p0, Landroid/mtp/MtpDevice$1;->val$handle:I

    invoke-static {v0, v1}, Landroid/mtp/MtpDevice;->-$$Nest$mnative_discard_event_request(Landroid/mtp/MtpDevice;I)V

    .line 404
    return-void
.end method
