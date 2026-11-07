.class Landroid/icu/util/IslamicCalendar$TBLAAlgorithm;
.super Landroid/icu/util/IslamicCalendar$CivilAlgorithm;
.source "IslamicCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/IslamicCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TBLAAlgorithm"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/util/IslamicCalendar$CivilAlgorithm;-><init>(Landroid/icu/util/IslamicCalendar-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/IslamicCalendar-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/IslamicCalendar$TBLAAlgorithm;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist epoch()J
    .registers 3

    .line 481
    const-wide/32 v0, 0x1dbb17

    return-wide v0
.end method

.method public blacklist getType()Landroid/icu/util/IslamicCalendar$CalculationType;
    .registers 2

    .line 478
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    return-object v0
.end method

.method public blacklist isCivil()Z
    .registers 2

    .line 475
    const/4 v0, 0x0

    return v0
.end method
