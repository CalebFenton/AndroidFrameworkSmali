.class public final synthetic Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$2:Landroid/telephony/TelephonyManager$ModemActivityInfoException;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda1;->f$1:Landroid/os/OutcomeReceiver;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda1;->f$2:Landroid/telephony/TelephonyManager$ModemActivityInfoException;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda1;->f$1:Landroid/os/OutcomeReceiver;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda1;->f$2:Landroid/telephony/TelephonyManager$ModemActivityInfoException;

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager$9;->lambda$sendErrorToListener$3(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V

    return-void
.end method
