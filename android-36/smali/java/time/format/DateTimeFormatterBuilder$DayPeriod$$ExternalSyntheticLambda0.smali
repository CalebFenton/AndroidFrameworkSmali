.class public final synthetic Ljava/time/format/DateTimeFormatterBuilder$DayPeriod$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    check-cast p2, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    invoke-static {p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->lambda$static$0(Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;)I

    move-result p1

    return p1
.end method
