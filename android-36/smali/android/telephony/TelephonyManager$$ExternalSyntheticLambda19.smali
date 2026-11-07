.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$1:Ljava/io/IOException;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;Ljava/io/IOException;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda19;->f$0:Landroid/os/OutcomeReceiver;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda19;->f$1:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda19;->f$0:Landroid/os/OutcomeReceiver;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda19;->f$1:Ljava/io/IOException;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->lambda$uploadCallComposerPicture$2(Landroid/os/OutcomeReceiver;Ljava/io/IOException;)V

    return-void
.end method
