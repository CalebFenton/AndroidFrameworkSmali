.class public final synthetic Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Z


# direct methods
.method public synthetic constructor blacklist <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-boolean v0, p0, Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda0;->f$0:Z

    check-cast p1, Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-static {v0, p1, p2}, Landroid/app/KeyguardManager$1;->lambda$onKeyguardLockedStateChanged$1(ZLandroid/app/KeyguardManager$KeyguardLockedStateListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method
