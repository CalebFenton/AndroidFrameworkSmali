.class public final synthetic Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Long;

.field public final synthetic blacklist f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Long;Ljava/util/ArrayList;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Long;

    iput-object p2, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Long;

    iget-object p0, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->$r8$lambda$eNj9xNgtVPntw5elpOfIICqV2EU(Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
