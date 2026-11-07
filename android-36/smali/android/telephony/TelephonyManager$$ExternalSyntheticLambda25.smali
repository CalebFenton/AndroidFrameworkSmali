.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$1:[B


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;[B)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda25;->f$0:Landroid/os/OutcomeReceiver;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda25;->f$1:[B

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda25;->f$0:Landroid/os/OutcomeReceiver;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda25;->f$1:[B

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->lambda$getSimServiceTable$13(Landroid/os/OutcomeReceiver;[B)V

    return-void
.end method
