.class Ljava/time/format/DateTimeFormatter$ClassicFormat;
.super Ljava/text/Format;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassicFormat"
.end annotation


# instance fields
.field private final greylist-max-o formatter:Ljava/time/format/DateTimeFormatter;

.field private final greylist-max-o parseType:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/DateTimeFormatter;",
            "Ljava/time/temporal/TemporalQuery<",
            "*>;)V"
        }
    .end annotation

    .line 2199
    .local p2, "parseType":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 2200
    iput-object p1, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    .line 2201
    iput-object p2, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    .line 2202
    return-void
.end method


# virtual methods
.method public whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 2206
    const-string v0, "obj"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2207
    const-string v0, "toAppendTo"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2208
    const-string v0, "pos"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2209
    instance-of v0, p1, Ljava/time/temporal/TemporalAccessor;

    if-eqz v0, :cond_2f

    .line 2212
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2213
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 2215
    :try_start_1a
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v0, v1, p2}, Ljava/time/format/DateTimeFormatter;->formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_22} :catch_24

    .line 2218
    nop

    .line 2219
    return-object p2

    .line 2216
    :catch_24
    move-exception v0

    .line 2217
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2210
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Format target must implement TemporalAccessor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 2223
    const-string v0, "text"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2225
    :try_start_5
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    if-nez v0, :cond_11

    .line 2226
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ljava/time/format/DateTimeFormatter;->-$$Nest$mparseResolved0(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    return-object v0

    .line 2228
    :cond_11
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v0, p1, v1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0
    :try_end_19
    .catch Ljava/time/format/DateTimeParseException; {:try_start_5 .. :try_end_19} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_19} :catch_1a

    return-object v0

    .line 2231
    :catch_1a
    move-exception v0

    .line 2232
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/text/ParseException;

    throw v1

    .line 2229
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_2c
    move-exception v0

    .line 2230
    .local v0, "ex":Ljava/time/format/DateTimeParseException;
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/time/format/DateTimeParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/format/DateTimeParseException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 2237
    const-string v0, "text"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2240
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-static {v2, p1, p2}, Ljava/time/format/DateTimeFormatter;->-$$Nest$mparseUnresolved0(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_d} :catch_3b

    .line 2246
    .local v2, "context":Ljava/time/format/DateTimeParseContext;
    nop

    .line 2247
    if-nez v2, :cond_1a

    .line 2248
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_19

    .line 2249
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2251
    :cond_19
    return-object v1

    .line 2254
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-static {v3}, Ljava/time/format/DateTimeFormatter;->-$$Nest$fgetresolverStyle(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/ResolverStyle;

    move-result-object v3

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-static {v4}, Ljava/time/format/DateTimeFormatter;->-$$Nest$fgetresolverFields(Ljava/time/format/DateTimeFormatter;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeParseContext;->toResolved(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v3

    .line 2255
    .local v3, "resolved":Ljava/time/temporal/TemporalAccessor;
    iget-object v4, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    if-nez v4, :cond_2f

    .line 2256
    return-object v3

    .line 2258
    :cond_2f
    iget-object v4, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    invoke-interface {v3, v4}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_35} :catch_36

    return-object v0

    .line 2259
    .end local v3    # "resolved":Ljava/time/temporal/TemporalAccessor;
    :catch_36
    move-exception v3

    .line 2260
    .local v3, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2261
    return-object v1

    .line 2241
    .end local v2    # "context":Ljava/time/format/DateTimeParseContext;
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :catch_3b
    move-exception v2

    .line 2242
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_45

    .line 2243
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2245
    :cond_45
    return-object v1
.end method
