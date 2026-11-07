.class public final synthetic Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

.field public final synthetic blacklist f$1:Ljava/time/format/DateTimeParseContext;

.field public final synthetic blacklist f$2:J

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;Ljava/time/format/DateTimeParseContext;JII)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;->f$0:Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;->f$1:Ljava/time/format/DateTimeParseContext;

    iput-wide p3, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;->f$2:J

    iput p5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;->f$3:I

    iput p6, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 9

    .line 0
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;->f$0:Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;->f$1:Ljava/time/format/DateTimeParseContext;

    iget-wide v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;->f$2:J

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;->f$3:I

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;->f$4:I

    move-object v6, p1

    check-cast v6, Ljava/time/chrono/Chronology;

    invoke-static/range {v0 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->$r8$lambda$Zl0c7qpNedPhcsUJM8Tw2o1vZLw(Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;Ljava/time/format/DateTimeParseContext;JIILjava/time/chrono/Chronology;)V

    return-void
.end method
