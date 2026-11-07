.class public final synthetic Landroid/ranging/RangingSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/ranging/RangingSession;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/ranging/RangingSession;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda2;->f$0:Landroid/ranging/RangingSession;

    return-void
.end method


# virtual methods
.method public final whitelist onCancel()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda2;->f$0:Landroid/ranging/RangingSession;

    invoke-virtual {v0}, Landroid/ranging/RangingSession;->close()V

    return-void
.end method
