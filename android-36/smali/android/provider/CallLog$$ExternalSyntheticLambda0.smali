.class public final synthetic Landroid/provider/CallLog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/io/InputStream;

.field public final synthetic blacklist f$1:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/CallLog$$ExternalSyntheticLambda0;->f$0:Ljava/io/InputStream;

    iput-object p2, p0, Landroid/provider/CallLog$$ExternalSyntheticLambda0;->f$1:Landroid/os/OutcomeReceiver;

    iput-object p3, p0, Landroid/provider/CallLog$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/provider/CallLog$$ExternalSyntheticLambda0;->f$0:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/provider/CallLog$$ExternalSyntheticLambda0;->f$1:Landroid/os/OutcomeReceiver;

    iget-object v2, p0, Landroid/provider/CallLog$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Landroid/provider/CallLog;->lambda$storeCallComposerPicture$0(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/content/Context;)V

    return-void
.end method
