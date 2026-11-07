.class public final synthetic Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$TrivalentPredicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist mustProcessNitzSignal(Lcom/android/internal/telephony/NitzSignal;Lcom/android/internal/telephony/NitzSignal;)Ljava/lang/Boolean;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory;->$r8$lambda$OMUaQ0AmRDjIzCaTI1i8lBhyKL0(Lcom/android/internal/telephony/NitzSignal;Lcom/android/internal/telephony/NitzSignal;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
