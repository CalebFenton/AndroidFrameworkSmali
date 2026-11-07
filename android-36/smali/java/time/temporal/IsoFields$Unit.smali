.class final enum Ljava/time/temporal/IsoFields$Unit;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Ljava/time/temporal/TemporalUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/IsoFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/temporal/IsoFields$Unit;",
        ">;",
        "Ljava/time/temporal/TemporalUnit;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/temporal/IsoFields$Unit;

.field public static final enum greylist-max-o QUARTER_YEARS:Ljava/time/temporal/IsoFields$Unit;

.field public static final enum greylist-max-o WEEK_BASED_YEARS:Ljava/time/temporal/IsoFields$Unit;


# instance fields
.field private final greylist-max-o duration:Ljava/time/Duration;

.field private final greylist-max-o name:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Ljava/time/temporal/IsoFields$Unit;
    .registers 2

    .line 669
    sget-object v0, Ljava/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljava/time/temporal/IsoFields$Unit;

    sget-object v1, Ljava/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljava/time/temporal/IsoFields$Unit;

    filled-new-array {v0, v1}, [Ljava/time/temporal/IsoFields$Unit;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 674
    new-instance v0, Ljava/time/temporal/IsoFields$Unit;

    const-wide/32 v1, 0x1e18558

    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    const-string v2, "WEEK_BASED_YEARS"

    const/4 v3, 0x0

    const-string v4, "WeekBasedYears"

    invoke-direct {v0, v2, v3, v4, v1}, Ljava/time/temporal/IsoFields$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljava/time/temporal/IsoFields$Unit;

    .line 678
    new-instance v0, Ljava/time/temporal/IsoFields$Unit;

    const-wide/32 v1, 0x786156

    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    const-string v2, "QUARTER_YEARS"

    const/4 v3, 0x1

    const-string v4, "QuarterYears"

    invoke-direct {v0, v2, v3, v4, v1}, Ljava/time/temporal/IsoFields$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljava/time/temporal/IsoFields$Unit;

    .line 669
    invoke-static {}, Ljava/time/temporal/IsoFields$Unit;->$values()[Ljava/time/temporal/IsoFields$Unit;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/IsoFields$Unit;->$VALUES:[Ljava/time/temporal/IsoFields$Unit;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V
    .registers 5
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "estimatedDuration"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    .line 683
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 684
    iput-object p3, p0, Ljava/time/temporal/IsoFields$Unit;->name:Ljava/lang/String;

    .line 685
    iput-object p4, p0, Ljava/time/temporal/IsoFields$Unit;->duration:Ljava/time/Duration;

    .line 686
    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Ljava/time/temporal/IsoFields$Unit;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 669
    const-class v0, Ljava/time/temporal/IsoFields$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/IsoFields$Unit;

    return-object v0
.end method

.method public static greylist-max-o values()[Ljava/time/temporal/IsoFields$Unit;
    .registers 1

    .line 669
    sget-object v0, Ljava/time/temporal/IsoFields$Unit;->$VALUES:[Ljava/time/temporal/IsoFields$Unit;

    invoke-virtual {v0}, [Ljava/time/temporal/IsoFields$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/temporal/IsoFields$Unit;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 9
    .param p2, "amount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 716
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Unit;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 724
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :pswitch_f
    const-wide/16 v0, 0x4

    div-long v2, p2, v0

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    rem-long v0, p2, v0

    const-wide/16 v3, 0x3

    mul-long/2addr v0, v3

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    .line 722
    invoke-interface {v2, v0, v1, v3}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v0

    .line 721
    return-object v0

    .line 718
    :pswitch_25
    sget-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    sget-object v1, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    .line 719
    invoke-interface {p1, v1}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v1

    .line 718
    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_25
        :pswitch_f
    .end packed-switch
.end method

.method public whitelist test-api between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J
    .registers 7
    .param p1, "temporal1Inclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "temporal2Exclusive"    # Ljava/time/temporal/Temporal;

    .line 730
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    .line 731
    invoke-interface {p1, p2, p0}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0

    .line 733
    :cond_f
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Unit;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    .line 740
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :pswitch_1e
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, p2, v0}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    return-wide v0

    .line 735
    :pswitch_28
    sget-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {p2, v0}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    sget-object v2, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    .line 736
    invoke-interface {p1, v2}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    .line 735
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_1e
    .end packed-switch
.end method

.method public whitelist test-api getDuration()Ljava/time/Duration;
    .registers 2

    .line 690
    iget-object v0, p0, Ljava/time/temporal/IsoFields$Unit;->duration:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist test-api isDateBased()Z
    .registers 2

    .line 700
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api isDurationEstimated()Z
    .registers 2

    .line 695
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api isSupportedBy(Ljava/time/temporal/Temporal;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 710
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/Temporal;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/time/temporal/IsoFields;->isIso(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist test-api isTimeBased()Z
    .registers 2

    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 746
    iget-object v0, p0, Ljava/time/temporal/IsoFields$Unit;->name:Ljava/lang/String;

    return-object v0
.end method
