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
.field public final dateTimePattern:Ljava/lang/String;

.field public final qualitativeUnitMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final quantitativeUnitMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[",
            "Landroid/icu/text/QuantityFormatter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;)V
    .locals 0
    .param p3, "dateTimePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[",
            "Landroid/icu/text/QuantityFormatter;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 553
    .local p1, "qualitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;>;"
    .local p2, "quantitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;[Lcom/ibm/icu/text/QuantityFormatter;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 557
    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->qualitativeUnitMap:Ljava/util/EnumMap;

    #@5
    .line 558
    iput-object p2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->quantitativeUnitMap:Ljava/util/EnumMap;

    #@7
    .line 559
    iput-object p3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->dateTimePattern:Ljava/lang/String;

    #@9
    .line 556
    return-void
.end method
