.class Ljava/time/format/DateTimeFormatterBuilder$1;
.super Ljava/time/format/DateTimeTextProvider;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$store:Ljava/time/format/DateTimeTextProvider$LocaleStore;


# direct methods
.method constructor blacklist <init>(Ljava/time/format/DateTimeFormatterBuilder;Ljava/time/format/DateTimeTextProvider$LocaleStore;)V
    .registers 3
    .param p1, "this$0"    # Ljava/time/format/DateTimeFormatterBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 811
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$1;->val$store:Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {p0}, Ljava/time/format/DateTimeTextProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getText(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "field"    # Ljava/time/temporal/TemporalField;
    .param p3, "value"    # J
    .param p5, "style"    # Ljava/time/format/TextStyle;
    .param p6, "locale"    # Ljava/util/Locale;

    .line 815
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$1;->val$store:Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v0, p3, p4, p5}, Ljava/time/format/DateTimeTextProvider$LocaleStore;->getText(JLjava/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J
    .param p4, "style"    # Ljava/time/format/TextStyle;
    .param p5, "locale"    # Ljava/util/Locale;

    .line 819
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$1;->val$store:Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v0, p2, p3, p4}, Ljava/time/format/DateTimeTextProvider$LocaleStore;->getText(JLjava/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTextIterator(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .registers 6
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "field"    # Ljava/time/temporal/TemporalField;
    .param p3, "style"    # Ljava/time/format/TextStyle;
    .param p4, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 824
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$1;->val$store:Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v0, p3}, Ljava/time/format/DateTimeTextProvider$LocaleStore;->getTextIterator(Ljava/time/format/TextStyle;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "style"    # Ljava/time/format/TextStyle;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 829
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$1;->val$store:Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;->getTextIterator(Ljava/time/format/TextStyle;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
