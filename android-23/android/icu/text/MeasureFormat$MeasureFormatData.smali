.class final Landroid/icu/text/MeasureFormat$MeasureFormatData;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MeasureFormatData"
.end annotation


# instance fields
.field final styleToPerPattern:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Landroid/icu/impl/SimplePatternFormatter;",
            ">;"
        }
    .end annotation
.end field

.field final unitToStyleToCountToFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/MeasureUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Landroid/icu/text/QuantityFormatter;",
            ">;>;"
        }
    .end annotation
.end field

.field final unitToStyleToPerUnitPattern:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/MeasureUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Landroid/icu/impl/SimplePatternFormatter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/MeasureUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Landroid/icu/text/QuantityFormatter;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/MeasureUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Landroid/icu/impl/SimplePatternFormatter;",
            ">;>;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Landroid/icu/impl/SimplePatternFormatter;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 907
    .local p1, "unitToStyleToCountToFormat":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/util/MeasureUnit;Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/QuantityFormatter;>;>;"
    .local p2, "unitToStyleToPerUnitPattern":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/util/MeasureUnit;Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/impl/SimplePatternFormatter;>;>;"
    .local p3, "styleToPerPattern":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/impl/SimplePatternFormatter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 911
    iput-object p1, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToCountToFormat:Ljava/util/Map;

    #@5
    .line 912
    iput-object p2, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPerUnitPattern:Ljava/util/Map;

    #@7
    .line 913
    iput-object p3, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    #@9
    .line 910
    return-void
.end method
