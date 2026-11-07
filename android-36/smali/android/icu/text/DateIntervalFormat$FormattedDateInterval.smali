.class public final Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"

# interfaces
.implements Landroid/icu/text/FormattedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateIntervalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormattedDateInterval"
.end annotation


# instance fields
.field private final blacklist attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist string:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .registers 4
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)V"
        }
    .end annotation

    .line 285
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;->string:Ljava/lang/String;

    .line 287
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;->attributes:Ljava/util/List;

    .line 288
    return-void
.end method


# virtual methods
.method public whitelist test-api appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;)TA;"
        }
    .end annotation

    .line 327
    .local p1, "appendable":Ljava/lang/Appendable;, "TA;"
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;->string:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .line 311
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;->string:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 303
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextPosition(Landroid/icu/text/ConstrainedFieldPosition;)Z
    .registers 3
    .param p1, "cfpos"    # Landroid/icu/text/ConstrainedFieldPosition;

    .line 335
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;->attributes:Ljava/util/List;

    invoke-static {v0, p1}, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl;->nextPosition(Ljava/util/List;Landroid/icu/text/ConstrainedFieldPosition;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 319
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;->string:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toCharacterIterator()Ljava/text/AttributedCharacterIterator;
    .registers 3

    .line 343
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;->string:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;->attributes:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl;->toCharacterIterator(Ljava/lang/CharSequence;Ljava/util/List;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;->string:Ljava/lang/String;

    return-object v0
.end method
