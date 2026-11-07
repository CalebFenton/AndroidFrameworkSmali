.class public final synthetic Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$TrivalentPredicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/PowerManager$WakeLock;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/PowerManager$WakeLock;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$$ExternalSyntheticLambda0;->f$0:Landroid/os/PowerManager$WakeLock;

    iput-object p2, p0, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    return-void
.end method


# virtual methods
.method public final blacklist mustProcessNitzSignal(Lcom/android/internal/telephony/NitzSignal;Lcom/android/internal/telephony/NitzSignal;)Ljava/lang/Boolean;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$$ExternalSyntheticLambda0;->f$0:Landroid/os/PowerManager$WakeLock;

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory;->$r8$lambda$WCiHtcO7mGQYKi4pCFQT4eQ1jd0(Landroid/os/PowerManager$WakeLock;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/NitzSignal;Lcom/android/internal/telephony/NitzSignal;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
