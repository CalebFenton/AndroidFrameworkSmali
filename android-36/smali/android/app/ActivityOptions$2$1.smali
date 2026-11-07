.class Landroid/app/ActivityOptions$2$1;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityOptions$2;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/app/ActivityOptions$2;

.field final synthetic blacklist val$elapsedRealtime:J


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityOptions$2;J)V
    .registers 4
    .param p1, "this$1"    # Landroid/app/ActivityOptions$2;
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

    .line 800
    iput-object p1, p0, Landroid/app/ActivityOptions$2$1;->this$1:Landroid/app/ActivityOptions$2;

    iput-wide p2, p0, Landroid/app/ActivityOptions$2$1;->val$elapsedRealtime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 803
    iget-object v0, p0, Landroid/app/ActivityOptions$2$1;->this$1:Landroid/app/ActivityOptions$2;

    iget-object v0, v0, Landroid/app/ActivityOptions$2;->val$listener:Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    iget-wide v1, p0, Landroid/app/ActivityOptions$2$1;->val$elapsedRealtime:J

    invoke-interface {v0, v1, v2}, Landroid/app/ActivityOptions$OnAnimationFinishedListener;->onAnimationFinished(J)V

    .line 804
    return-void
.end method
