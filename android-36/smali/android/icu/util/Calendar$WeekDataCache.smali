.class Landroid/icu/util/Calendar$WeekDataCache;
.super Landroid/icu/impl/SoftCache;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeekDataCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/util/Calendar$WeekData;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 5037
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/Calendar-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/Calendar$WeekDataCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist-max-o createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 5044
    invoke-static {p1}, Landroid/icu/util/Calendar;->-$$Nest$smgetWeekDataForRegionInternal(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 5037
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar$WeekDataCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    move-result-object p1

    return-object p1
.end method
