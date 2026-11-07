.class public Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$NitzSignalInputFilterPredicateImpl;
.super Ljava/lang/Object;
.source "NitzSignalInputFilterPredicateFactory.java"

# interfaces
.implements Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NitzSignalInputFilterPredicateImpl"
.end annotation


# instance fields
.field private final blacklist mComponents:[Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$TrivalentPredicate;


# direct methods
.method public constructor blacklist <init>([Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$TrivalentPredicate;)V
    .registers 3

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$TrivalentPredicate;

    iput-object p1, p0, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$NitzSignalInputFilterPredicateImpl;->mComponents:[Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$TrivalentPredicate;

    return-void
.end method


# virtual methods
.method public blacklist mustProcessNitzSignal(Lcom/android/internal/telephony/NitzSignal;Lcom/android/internal/telephony/NitzSignal;)Z
    .registers 6

    .line 272
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$NitzSignalInputFilterPredicateImpl;->mComponents:[Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$TrivalentPredicate;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    aget-object v2, p0, v1

    .line 275
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$TrivalentPredicate;->mustProcessNitzSignal(Lcom/android/internal/telephony/NitzSignal;Lcom/android/internal/telephony/NitzSignal;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 277
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p0, 0x1

    return p0
.end method
