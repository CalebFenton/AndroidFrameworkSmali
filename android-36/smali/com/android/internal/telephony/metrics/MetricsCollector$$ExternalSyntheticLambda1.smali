.class public final synthetic Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    check-cast p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->$r8$lambda$lhuDa79cll_t2NObvvB6__sAWoo(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)V

    return-void
.end method
