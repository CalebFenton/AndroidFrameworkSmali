.class public final synthetic Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/time/chrono/Chronology;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/time/chrono/Chronology;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser$$ExternalSyntheticLambda0;->f$0:Ljava/time/chrono/Chronology;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser$$ExternalSyntheticLambda0;->f$0:Ljava/time/chrono/Chronology;

    invoke-static {v0}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->lambda$getChronologyName$0(Ljava/time/chrono/Chronology;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
