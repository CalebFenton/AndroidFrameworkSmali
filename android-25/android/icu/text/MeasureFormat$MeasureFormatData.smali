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


# static fields
.field static final PATTERN_COUNT:I

.field static final PER_UNIT_INDEX:I


# instance fields
.field final styleToPerPattern:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final unitToStyleToPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/MeasureUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1023
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    #@2
    sput v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PER_UNIT_INDEX:I

    #@4
    .line 1024
    sget v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PER_UNIT_INDEX:I

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    sput v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PATTERN_COUNT:I

    #@a
    .line 1022
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1035
    const/4 v0, 0x3

    #@4
    new-array v0, v0, [Landroid/icu/text/MeasureFormat$FormatWidth;

    #@6
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@8
    .line 1038
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    .line 1037
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    #@f
    .line 1040
    new-instance v0, Ljava/util/EnumMap;

    #@11
    const-class v1, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@13
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@16
    .line 1039
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    #@18
    .line 1022
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MeasureFormat$MeasureFormatData;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/MeasureFormat$MeasureFormatData;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method hasPerFormatter(Landroid/icu/text/MeasureFormat$FormatWidth;)Z
    .locals 1
    .param p1, "width"    # Landroid/icu/text/MeasureFormat$FormatWidth;

    #@0
    .prologue
    .line 1027
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
