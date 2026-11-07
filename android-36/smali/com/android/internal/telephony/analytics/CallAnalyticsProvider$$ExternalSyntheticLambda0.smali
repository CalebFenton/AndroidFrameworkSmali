.class public final synthetic Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:J

.field public final synthetic blacklist f$1:Ljava/util/ArrayList;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(JLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$$ExternalSyntheticLambda0;->f$0:J

    iput-object p3, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$$ExternalSyntheticLambda0;->f$0:J

    iget-object v2, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    move-object v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->$r8$lambda$pnoW83REXrxwNs6pk1WG73eXlBA(JLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
