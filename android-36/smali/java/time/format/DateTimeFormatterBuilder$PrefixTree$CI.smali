.class Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
.super Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CI"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4772
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder-IA;)V

    .line 4773
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-void
.end method


# virtual methods
.method protected greylist-max-o isEqual(CC)Z
    .registers 4
    .param p1, "c1"    # C
    .param p2, "c2"    # C

    .line 4782
    invoke-static {p1, p2}, Ljava/time/format/DateTimeParseContext;->charEqualsIgnoreCase(CC)Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4777
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    invoke-direct {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected bridge synthetic blacklist newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 4769
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o prefixOf(Ljava/lang/CharSequence;II)Z
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I
    .param p3, "end"    # I

    .line 4787
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4788
    .local v0, "len":I
    sub-int v1, p3, p2

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    .line 4789
    return v2

    .line 4791
    :cond_c
    const/4 v1, 0x0

    .line 4792
    .local v1, "off0":I
    :goto_d
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "len":I
    .local v3, "len":I
    if-lez v0, :cond_2a

    .line 4793
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->key:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "off0":I
    .local v4, "off0":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {p0, v0, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->isEqual(CC)Z

    move-result p2

    if-nez p2, :cond_26

    .line 4794
    return v2

    .line 4793
    :cond_26
    move p2, v1

    move v0, v3

    move v1, v4

    goto :goto_d

    .line 4797
    .end local v4    # "off0":I
    .local v1, "off0":I
    .restart local p2    # "off":I
    :cond_2a
    const/4 v0, 0x1

    return v0
.end method
