.class Landroid/util/RecurrenceRule$RecurringIterator;
.super Ljava/lang/Object;
.source "RecurrenceRule.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/RecurrenceRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecurringIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/util/Range<",
        "Ljava/time/ZonedDateTime;",
        ">;>;"
    }
.end annotation


# instance fields
.field greylist-max-o cycleEnd:Ljava/time/ZonedDateTime;

.field greylist-max-o cycleStart:Ljava/time/ZonedDateTime;

.field greylist-max-o i:I

.field final synthetic blacklist this$0:Landroid/util/RecurrenceRule;


# direct methods
.method public constructor blacklist <init>(Landroid/util/RecurrenceRule;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 203
    iput-object p1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iget-object v0, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_c

    iget-object p1, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    goto :goto_1c

    .line 205
    :cond_c
    sget-object v0, Landroid/util/RecurrenceRule;->sClock:Ljava/time/Clock;

    invoke-static {v0}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iget-object p1, p1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    :goto_1c
    nop

    .line 206
    .local p1, "anchor":Ljava/time/ZonedDateTime;
    invoke-static {}, Landroid/util/RecurrenceRule;->-$$Nest$sfgetLOGD()Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resolving using anchor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecurrenceRule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_3b
    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    .line 211
    :goto_3e
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_56

    .line 212
    iget v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    .line 213
    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    goto :goto_3e

    .line 217
    :cond_56
    :goto_56
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6e

    .line 218
    iget v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    .line 219
    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    goto :goto_56

    .line 221
    :cond_6e
    return-void
.end method

.method private greylist-max-o roundBoundaryTime(Ljava/time/ZonedDateTime;)Ljava/time/ZonedDateTime;
    .registers 5
    .param p1, "boundary"    # Ljava/time/ZonedDateTime;

    .line 229
    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    invoke-virtual {v0}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v0

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v1, v1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 232
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    sget-object v1, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 234
    :cond_29
    return-object p1
.end method

.method private greylist-max-o updateCycle()V
    .registers 4

    .line 224
    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v0, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v1, v1, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    iget v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    invoke-virtual {v1, v2}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/RecurrenceRule$RecurringIterator;->roundBoundaryTime(Ljava/time/ZonedDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    .line 225
    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v0, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v1, v1, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    iget v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/RecurrenceRule$RecurringIterator;->roundBoundaryTime(Ljava/time/ZonedDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    .line 226
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 5

    .line 240
    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public blacklist next()Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/time/ZonedDateTime;",
            ">;"
        }
    .end annotation

    .line 245
    invoke-static {}, Landroid/util/RecurrenceRule;->-$$Nest$sfgetLOGD()Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cycle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecurrenceRule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_38
    new-instance v0, Landroid/util/Range;

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 247
    .local v0, "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    iget v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    .line 248
    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    .line 249
    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 198
    invoke-virtual {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->next()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method
