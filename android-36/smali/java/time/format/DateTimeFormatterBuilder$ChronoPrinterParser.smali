.class final Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChronoPrinterParser"
.end annotation


# instance fields
.field private final greylist-max-o textStyle:Ljava/time/format/TextStyle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/format/TextStyle;)V
    .registers 2
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;

    .line 4890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4892
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    .line 4893
    return-void
.end method

.method private greylist-max-o getChronologyName(Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 4952
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    .line 4953
    .local v0, "displayNames":Landroid/icu/text/LocaleDisplayNames;
    const-string v1, "calendar"

    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/LocaleDisplayNames;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4954
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser$$ExternalSyntheticLambda0;-><init>(Ljava/time/chrono/Chronology;)V

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method static synthetic blacklist lambda$getChronologyName$0(Ljava/time/chrono/Chronology;)Ljava/lang/String;
    .registers 2
    .param p0, "chrono"    # Ljava/time/chrono/Chronology;

    .line 4954
    invoke-interface {p0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 5
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 4897
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 4898
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    if-nez v0, :cond_e

    .line 4899
    const/4 v1, 0x0

    return v1

    .line 4901
    :cond_e
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    if-nez v1, :cond_1a

    .line 4902
    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 4904
    :cond_1a
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->getChronologyName(Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4906
    :goto_25
    const/4 v1, 0x1

    return v1
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 16
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 4912
    if-ltz p3, :cond_5a

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_5a

    .line 4915
    invoke-static {}, Ljava/time/chrono/Chronology;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v0

    .line 4916
    .local v0, "chronos":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/chrono/Chronology;>;"
    const/4 v1, 0x0

    .line 4917
    .local v1, "bestMatch":Ljava/time/chrono/Chronology;
    const/4 v2, -0x1

    .line 4918
    .local v2, "matchLen":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/chrono/Chronology;

    .line 4920
    .local v4, "chrono":Ljava/time/chrono/Chronology;
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    if-nez v5, :cond_28

    .line 4921
    invoke-interface {v4}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    .local v5, "name":Ljava/lang/String;
    goto :goto_31

    .line 4923
    .end local v5    # "name":Ljava/lang/String;
    :cond_28
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->getChronologyName(Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    .line 4925
    .local v9, "name":Ljava/lang/String;
    :goto_31
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    .line 4926
    .local v11, "nameLen":I
    if-le v11, v2, :cond_46

    const/4 v10, 0x0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .local v6, "context":Ljava/time/format/DateTimeParseContext;
    .local v7, "text":Ljava/lang/CharSequence;
    .local v8, "position":I
    invoke-virtual/range {v6 .. v11}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 4927
    move-object p1, v4

    .line 4928
    .end local v1    # "bestMatch":Ljava/time/chrono/Chronology;
    .local p1, "bestMatch":Ljava/time/chrono/Chronology;
    move p2, v11

    move-object v1, p1

    move v2, p2

    .end local v2    # "matchLen":I
    .local p2, "matchLen":I
    goto :goto_49

    .line 4926
    .end local v6    # "context":Ljava/time/format/DateTimeParseContext;
    .end local v7    # "text":Ljava/lang/CharSequence;
    .end local v8    # "position":I
    .restart local v1    # "bestMatch":Ljava/time/chrono/Chronology;
    .restart local v2    # "matchLen":I
    .local p1, "context":Ljava/time/format/DateTimeParseContext;
    .local p2, "text":Ljava/lang/CharSequence;
    .restart local p3    # "position":I
    :cond_46
    move-object v6, p1

    move-object v7, p2

    move v8, p3

    .line 4930
    .end local v4    # "chrono":Ljava/time/chrono/Chronology;
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "nameLen":I
    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .restart local v6    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local v7    # "text":Ljava/lang/CharSequence;
    .restart local v8    # "position":I
    :cond_49
    :goto_49
    move-object p1, v6

    move-object p2, v7

    move p3, v8

    goto :goto_12

    .line 4931
    .end local v6    # "context":Ljava/time/format/DateTimeParseContext;
    .end local v7    # "text":Ljava/lang/CharSequence;
    .end local v8    # "position":I
    .restart local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local p2    # "text":Ljava/lang/CharSequence;
    .restart local p3    # "position":I
    :cond_4d
    move-object v6, p1

    move-object v7, p2

    move v8, p3

    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .restart local v6    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local v7    # "text":Ljava/lang/CharSequence;
    .restart local v8    # "position":I
    if-nez v1, :cond_54

    .line 4932
    not-int p1, v8

    return p1

    .line 4934
    :cond_54
    invoke-virtual {v6, v1}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/chrono/Chronology;)V

    .line 4935
    add-int p3, v8, v2

    return p3

    .line 4912
    .end local v0    # "chronos":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/chrono/Chronology;>;"
    .end local v1    # "bestMatch":Ljava/time/chrono/Chronology;
    .end local v2    # "matchLen":I
    .end local v6    # "context":Ljava/time/format/DateTimeParseContext;
    .end local v7    # "text":Ljava/lang/CharSequence;
    .end local v8    # "position":I
    .restart local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local p2    # "text":Ljava/lang/CharSequence;
    .restart local p3    # "position":I
    :cond_5a
    move-object v6, p1

    move-object v7, p2

    move v8, p3

    .line 4913
    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .restart local v6    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local v7    # "text":Ljava/lang/CharSequence;
    .restart local v8    # "position":I
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
