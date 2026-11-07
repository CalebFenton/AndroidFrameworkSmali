.class public final synthetic Landroid/telecom/Connection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telecom/Connection;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$4:Landroid/os/OutcomeReceiver;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telecom/Connection;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Connection$$ExternalSyntheticLambda2;->f$0:Landroid/telecom/Connection;

    iput-wide p2, p0, Landroid/telecom/Connection$$ExternalSyntheticLambda2;->f$1:J

    iput-object p4, p0, Landroid/telecom/Connection$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p5, p0, Landroid/telecom/Connection$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Landroid/telecom/Connection$$ExternalSyntheticLambda2;->f$4:Landroid/os/OutcomeReceiver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 9

    .line 0
    iget-object v0, p0, Landroid/telecom/Connection$$ExternalSyntheticLambda2;->f$0:Landroid/telecom/Connection;

    iget-wide v1, p0, Landroid/telecom/Connection$$ExternalSyntheticLambda2;->f$1:J

    iget-object v3, p0, Landroid/telecom/Connection$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v4, p0, Landroid/telecom/Connection$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/telecom/Connection$$ExternalSyntheticLambda2;->f$4:Landroid/os/OutcomeReceiver;

    move-object v6, p1

    check-cast v6, Landroid/telecom/Connection$Listener;

    invoke-static/range {v0 .. v6}, Landroid/telecom/Connection;->$r8$lambda$_bl6hDpVI8EEHWuYBg2ktuMWrCQ(Landroid/telecom/Connection;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/Connection$Listener;)V

    return-void
.end method
