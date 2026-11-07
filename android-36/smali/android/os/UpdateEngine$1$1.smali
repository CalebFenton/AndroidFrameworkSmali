.class Landroid/os/UpdateEngine$1$1;
.super Ljava/lang/Object;
.source "UpdateEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/UpdateEngine$1;->onStatusUpdate(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/os/UpdateEngine$1;

.field final synthetic blacklist val$percent:F

.field final synthetic blacklist val$status:I


# direct methods
.method constructor blacklist <init>(Landroid/os/UpdateEngine$1;IF)V
    .registers 4
    .param p1, "this$1"    # Landroid/os/UpdateEngine$1;
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

    .line 272
    iput-object p1, p0, Landroid/os/UpdateEngine$1$1;->this$1:Landroid/os/UpdateEngine$1;

    iput p2, p0, Landroid/os/UpdateEngine$1$1;->val$status:I

    iput p3, p0, Landroid/os/UpdateEngine$1$1;->val$percent:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 275
    iget-object v0, p0, Landroid/os/UpdateEngine$1$1;->this$1:Landroid/os/UpdateEngine$1;

    iget-object v0, v0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    iget v1, p0, Landroid/os/UpdateEngine$1$1;->val$status:I

    iget v2, p0, Landroid/os/UpdateEngine$1$1;->val$percent:F

    invoke-virtual {v0, v1, v2}, Landroid/os/UpdateEngineCallback;->onStatusUpdate(IF)V

    .line 276
    return-void
.end method
