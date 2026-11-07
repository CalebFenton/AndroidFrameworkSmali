.class Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelativeDateTimeFormatterData"
.end annotation


# instance fields
.field public final greylist-max-o dateTimePattern:Ljava/lang/String;

.field public final greylist-max-o qualitativeUnitMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field greylist-max-o relUnitPatternMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;)V
    .registers 4
    .param p3, "dateTimePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1103
    .local p1, "qualitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;>;"
    .local p2, "relUnitPatternMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;[[Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1104
    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->qualitativeUnitMap:Ljava/util/EnumMap;

    .line 1105
    iput-object p2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->relUnitPatternMap:Ljava/util/EnumMap;

    .line 1107
    iput-object p3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->dateTimePattern:Ljava/lang/String;

    .line 1108
    return-void
.end method
