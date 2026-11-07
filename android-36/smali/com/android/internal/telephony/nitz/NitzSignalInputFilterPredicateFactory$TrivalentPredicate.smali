.class public interface abstract Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$TrivalentPredicate;
.super Ljava/lang/Object;
.source "NitzSignalInputFilterPredicateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TrivalentPredicate"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract blacklist mustProcessNitzSignal(Lcom/android/internal/telephony/NitzSignal;Lcom/android/internal/telephony/NitzSignal;)Ljava/lang/Boolean;
.end method
