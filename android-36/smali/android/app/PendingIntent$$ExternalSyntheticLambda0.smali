.class public final synthetic Landroid/app/PendingIntent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
