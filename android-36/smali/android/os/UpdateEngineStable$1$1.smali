.class Landroid/os/UpdateEngineStable$1$1;
.super Ljava/lang/Object;
.source "UpdateEngineStable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/UpdateEngineStable$1;->onStatusUpdate(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/os/UpdateEngineStable$1;

.field final synthetic blacklist val$percent:F

.field final synthetic blacklist val$status:I


# direct methods
.method constructor blacklist <init>(Landroid/os/UpdateEngineStable$1;IF)V
    .registers 4
    .param p1, "this$1"    # Landroid/os/UpdateEngineStable$1;
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

    .line 105
    iput-object p1, p0, Landroid/os/UpdateEngineStable$1$1;->this$1:Landroid/os/UpdateEngineStable$1;

    iput p2, p0, Landroid/os/UpdateEngineStable$1$1;->val$status:I

    iput p3, p0, Landroid/os/UpdateEngineStable$1$1;->val$percent:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 108
    iget-object v0, p0, Landroid/os/UpdateEngineStable$1$1;->this$1:Landroid/os/UpdateEngineStable$1;

    iget-object v0, v0, Landroid/os/UpdateEngineStable$1;->val$callback:Landroid/os/UpdateEngineStableCallback;

    iget v1, p0, Landroid/os/UpdateEngineStable$1$1;->val$status:I

    iget v2, p0, Landroid/os/UpdateEngineStable$1$1;->val$percent:F

    invoke-virtual {v0, v1, v2}, Landroid/os/UpdateEngineStableCallback;->onStatusUpdate(IF)V

    .line 109
    return-void
.end method
