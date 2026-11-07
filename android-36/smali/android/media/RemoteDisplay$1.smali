.class Landroid/media/RemoteDisplay$1;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;->notifyDisplayConnected(Landroid/view/Surface;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/RemoteDisplay;

.field final synthetic blacklist val$flags:I

.field final synthetic blacklist val$height:I

.field final synthetic blacklist val$session:I

.field final synthetic blacklist val$surface:Landroid/view/Surface;

.field final synthetic blacklist val$width:I


# direct methods
.method constructor blacklist <init>(Landroid/media/RemoteDisplay;Landroid/view/Surface;IIII)V
    .registers 7
    .param p1, "this$0"    # Landroid/media/RemoteDisplay;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Landroid/media/RemoteDisplay$1;->this$0:Landroid/media/RemoteDisplay;

    iput-object p2, p0, Landroid/media/RemoteDisplay$1;->val$surface:Landroid/view/Surface;

    iput p3, p0, Landroid/media/RemoteDisplay$1;->val$width:I

    iput p4, p0, Landroid/media/RemoteDisplay$1;->val$height:I

    iput p5, p0, Landroid/media/RemoteDisplay$1;->val$flags:I

    iput p6, p0, Landroid/media/RemoteDisplay$1;->val$session:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 137
    iget-object v0, p0, Landroid/media/RemoteDisplay$1;->this$0:Landroid/media/RemoteDisplay;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->-$$Nest$fgetmListener(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RemoteDisplay$1;->val$surface:Landroid/view/Surface;

    iget v3, p0, Landroid/media/RemoteDisplay$1;->val$width:I

    iget v4, p0, Landroid/media/RemoteDisplay$1;->val$height:I

    iget v5, p0, Landroid/media/RemoteDisplay$1;->val$flags:I

    iget v6, p0, Landroid/media/RemoteDisplay$1;->val$session:I

    invoke-interface/range {v1 .. v6}, Landroid/media/RemoteDisplay$Listener;->onDisplayConnected(Landroid/view/Surface;IIII)V

    .line 138
    return-void
.end method
