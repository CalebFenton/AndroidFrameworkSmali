.class public final synthetic Lcom/android/internal/telephony/StateMachine$SmHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    check-cast p1, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->$r8$lambda$mAUsmkAW2qfGGYOQxYz7ejPBH-k(Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;)Z

    move-result p0

    return p0
.end method
