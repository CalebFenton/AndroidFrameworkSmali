.class public Landroid/telephony/SubscriptionPlan$Builder;
.super Ljava/lang/Object;
.source "SubscriptionPlan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final greylist-max-o plan:Landroid/telephony/SubscriptionPlan;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V
    .registers 7
    .param p1, "start"    # Ljava/time/ZonedDateTime;
    .param p2, "end"    # Ljava/time/ZonedDateTime;
    .param p3, "period"    # Ljava/time/Period;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-instance v0, Landroid/telephony/SubscriptionPlan;

    new-instance v1, Landroid/util/RecurrenceRule;

    invoke-direct {v1, p1, p2, p3}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/SubscriptionPlan;-><init>(Landroid/util/RecurrenceRule;Landroid/telephony/SubscriptionPlan-IA;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    .line 300
    return-void
.end method

.method public static whitelist createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 5
    .param p0, "start"    # Ljava/time/ZonedDateTime;
    .param p1, "end"    # Ljava/time/ZonedDateTime;

    .line 310
    invoke-virtual {p1, p0}, Ljava/time/ZonedDateTime;->isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 314
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0

    .line 311
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isn\'t after start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createRecurring(Ljava/time/ZonedDateTime;Ljava/time/Period;)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 5
    .param p0, "start"    # Ljava/time/ZonedDateTime;
    .param p1, "period"    # Ljava/time/Period;

    .line 332
    invoke-virtual {p1}, Ljava/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Ljava/time/Period;->isNegative()Z

    move-result v0

    if-nez v0, :cond_13

    .line 335
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0

    .line 333
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createRecurringDaily(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 4
    .param p0, "start"    # Ljava/time/ZonedDateTime;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static whitelist createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 4
    .param p0, "start"    # Ljava/time/ZonedDateTime;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/time/Period;->ofMonths(I)Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static whitelist createRecurringWeekly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 4
    .param p0, "start"    # Ljava/time/ZonedDateTime;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/SubscriptionPlan;
    .registers 2

    .line 360
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    return-object v0
.end method

.method public whitelist resetNetworkTypes()Landroid/telephony/SubscriptionPlan$Builder;
    .registers 4

    .line 432
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v1

    .line 433
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v2

    array-length v2, v2

    .line 432
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionPlan;->-$$Nest$fputnetworkTypes(Landroid/telephony/SubscriptionPlan;[I)V

    .line 434
    return-object p0
.end method

.method public whitelist setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 6
    .param p1, "dataLimitBytes"    # J
    .param p3, "dataLimitBehavior"    # I

    .line 385
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1b

    .line 388
    if-ltz p3, :cond_13

    .line 391
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1, p2}, Landroid/telephony/SubscriptionPlan;->-$$Nest$fputdataLimitBytes(Landroid/telephony/SubscriptionPlan;J)V

    .line 392
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p3}, Landroid/telephony/SubscriptionPlan;->-$$Nest$fputdataLimitBehavior(Landroid/telephony/SubscriptionPlan;I)V

    .line 393
    return-object p0

    .line 389
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Limit behavior must be defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Limit bytes must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 8
    .param p1, "dataUsageBytes"    # J
    .param p3, "dataUsageTime"    # J

    .line 404
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1d

    .line 407
    cmp-long v0, p3, v0

    if-ltz v0, :cond_15

    .line 410
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1, p2}, Landroid/telephony/SubscriptionPlan;->-$$Nest$fputdataUsageBytes(Landroid/telephony/SubscriptionPlan;J)V

    .line 411
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p3, p4}, Landroid/telephony/SubscriptionPlan;->-$$Nest$fputdataUsageTime(Landroid/telephony/SubscriptionPlan;J)V

    .line 412
    return-object p0

    .line 408
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Usage time must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Usage bytes must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNetworkTypes([I)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 4
    .param p1, "networkTypes"    # [I

    .line 423
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionPlan;->-$$Nest$fputnetworkTypes(Landroid/telephony/SubscriptionPlan;[I)V

    .line 424
    return-object p0
.end method

.method public whitelist setSubscriptionStatus(I)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 4
    .param p1, "subscriptionStatus"    # I

    .line 444
    if-ltz p1, :cond_b

    const/4 v0, 0x4

    if-gt p1, v0, :cond_b

    .line 449
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionPlan;->-$$Nest$fputmSubscriptionStatus(Landroid/telephony/SubscriptionPlan;I)V

    .line 450
    return-object p0

    .line 446
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subscription status must be defined with a valid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 3
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 371
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionPlan;->-$$Nest$fputsummary(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)V

    .line 372
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 365
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionPlan;->-$$Nest$fputtitle(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)V

    .line 366
    return-object p0
.end method
