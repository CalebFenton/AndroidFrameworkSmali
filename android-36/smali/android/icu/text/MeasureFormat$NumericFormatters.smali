.class Landroid/icu/text/MeasureFormat$NumericFormatters;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumericFormatters"
.end annotation


# instance fields
.field private blacklist hourMinute:Ljava/lang/String;

.field private blacklist hourMinuteSecond:Ljava/lang/String;

.field private blacklist minuteSecond:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "hourMinute"    # Ljava/lang/String;
    .param p2, "minuteSecond"    # Ljava/lang/String;
    .param p3, "hourMinuteSecond"    # Ljava/lang/String;

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p1, p0, Landroid/icu/text/MeasureFormat$NumericFormatters;->hourMinute:Ljava/lang/String;

    .line 639
    iput-object p2, p0, Landroid/icu/text/MeasureFormat$NumericFormatters;->minuteSecond:Ljava/lang/String;

    .line 640
    iput-object p3, p0, Landroid/icu/text/MeasureFormat$NumericFormatters;->hourMinuteSecond:Ljava/lang/String;

    .line 641
    return-void
.end method


# virtual methods
.method public blacklist getHourMinute()Ljava/lang/String;
    .registers 2

    .line 644
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$NumericFormatters;->hourMinute:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHourMinuteSecond()Ljava/lang/String;
    .registers 2

    .line 652
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$NumericFormatters;->hourMinuteSecond:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMinuteSecond()Ljava/lang/String;
    .registers 2

    .line 648
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$NumericFormatters;->minuteSecond:Ljava/lang/String;

    return-object v0
.end method
