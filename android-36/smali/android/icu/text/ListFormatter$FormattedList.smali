.class public final Landroid/icu/text/ListFormatter$FormattedList;
.super Ljava/lang/Object;
.source "ListFormatter.java"

# interfaces
.implements Landroid/icu/text/FormattedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormattedList"
.end annotation


# instance fields
.field private final blacklist string:Landroid/icu/impl/FormattedStringBuilder;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/FormattedStringBuilder;)V
    .registers 2
    .param p1, "string"    # Landroid/icu/impl/FormattedStringBuilder;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Landroid/icu/text/ListFormatter$FormattedList;->string:Landroid/icu/impl/FormattedStringBuilder;

    .line 181
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

    .line 220
    .local p1, "appendable":Ljava/lang/Appendable;, "TA;"
    iget-object v0, p0, Landroid/icu/text/ListFormatter$FormattedList;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-static {v0, p1}, Landroid/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .line 204
    iget-object v0, p0, Landroid/icu/text/ListFormatter$FormattedList;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/icu/text/ListFormatter$FormattedList;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/FormattedStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextPosition(Landroid/icu/text/ConstrainedFieldPosition;)Z
    .registers 4
    .param p1, "cfpos"    # Landroid/icu/text/ConstrainedFieldPosition;

    .line 228
    iget-object v0, p0, Landroid/icu/text/ListFormatter$FormattedList;->string:Landroid/icu/impl/FormattedStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->nextPosition(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/text/ConstrainedFieldPosition;Ljava/text/Format$Field;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 212
    iget-object v0, p0, Landroid/icu/text/ListFormatter$FormattedList;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/FormattedStringBuilder;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toCharacterIterator()Ljava/text/AttributedCharacterIterator;
    .registers 3

    .line 236
    iget-object v0, p0, Landroid/icu/text/ListFormatter$FormattedList;->string:Landroid/icu/impl/FormattedStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->toCharacterIterator(Landroid/icu/impl/FormattedStringBuilder;Ljava/text/Format$Field;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/icu/text/ListFormatter$FormattedList;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
