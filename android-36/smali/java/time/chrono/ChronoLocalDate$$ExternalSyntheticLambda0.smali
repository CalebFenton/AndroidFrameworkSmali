.class public final synthetic Ljava/time/chrono/ChronoLocalDate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


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
    check-cast p1, Ljava/time/chrono/ChronoLocalDate;

    check-cast p2, Ljava/time/chrono/ChronoLocalDate;

    invoke-static {p1, p2}, Ljava/time/chrono/ChronoLocalDate;->lambda$timeLineOrder$493d4938$1(Ljava/time/chrono/ChronoLocalDate;Ljava/time/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method
