.class Landroid/app/ActivityOptions$1$1;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityOptions$1;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/app/ActivityOptions$1;

.field final synthetic blacklist val$elapsedRealtime:J


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityOptions$1;J)V
    .registers 4
    .param p1, "this$1"    # Landroid/app/ActivityOptions$1;
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

    .line 771
    iput-object p1, p0, Landroid/app/ActivityOptions$1$1;->this$1:Landroid/app/ActivityOptions$1;

    iput-wide p2, p0, Landroid/app/ActivityOptions$1$1;->val$elapsedRealtime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 773
    iget-object v0, p0, Landroid/app/ActivityOptions$1$1;->this$1:Landroid/app/ActivityOptions$1;

    iget-object v0, v0, Landroid/app/ActivityOptions$1;->val$listener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    iget-wide v1, p0, Landroid/app/ActivityOptions$1$1;->val$elapsedRealtime:J

    invoke-interface {v0, v1, v2}, Landroid/app/ActivityOptions$OnAnimationStartedListener;->onAnimationStarted(J)V

    .line 774
    return-void
.end method
