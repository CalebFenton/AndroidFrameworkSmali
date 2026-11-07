.class final Landroid/icu/impl/CalendarUtil$CalendarPreferences;
.super Landroid/icu/impl/UResource$Sink;
.source "CalendarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CalendarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CalendarPreferences"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/icu/impl/CalendarUtil$CalendarPreferences;


# instance fields
.field blacklist prefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/icu/impl/CalendarUtil$CalendarPreferences;
    .registers 1

    sget-object v0, Landroid/icu/impl/CalendarUtil$CalendarPreferences;->INSTANCE:Landroid/icu/impl/CalendarUtil$CalendarPreferences;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Landroid/icu/impl/CalendarUtil$CalendarPreferences;

    invoke-direct {v0}, Landroid/icu/impl/CalendarUtil$CalendarPreferences;-><init>()V

    sput-object v0, Landroid/icu/impl/CalendarUtil$CalendarPreferences;->INSTANCE:Landroid/icu/impl/CalendarUtil$CalendarPreferences;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 67
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/CalendarUtil$CalendarPreferences;->prefs:Ljava/util/Map;

    .line 71
    :try_start_a
    const-string v0, "android/icu/impl/data/icudata"

    const-string v1, "supplementalData"

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 73
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string v1, "calendarPreferenceData"

    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_19
    .catch Ljava/util/MissingResourceException; {:try_start_a .. :try_end_19} :catch_1a

    .line 76
    .end local v0    # "rb":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_1b

    .line 74
    :catch_1a
    move-exception v0

    .line 77
    :goto_1b
    return-void
.end method


# virtual methods
.method blacklist getCalendarTypeForRegion(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "region"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Landroid/icu/impl/CalendarUtil$CalendarPreferences;->prefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_d

    const-string v1, "gregorian"

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    return-object v1
.end method

.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 10
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 86
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 87
    .local v0, "calendarPreferenceData":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 88
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v2

    .line 90
    .local v2, "types":Landroid/icu/impl/UResource$Array;
    const/4 v3, 0x0

    invoke-interface {v2, v3, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 91
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "type":Ljava/lang/String;
    const-string v4, "gregorian"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 93
    iget-object v4, p0, Landroid/icu/impl/CalendarUtil$CalendarPreferences;->prefs:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v2    # "types":Landroid/icu/impl/UResource$Array;
    .end local v3    # "type":Ljava/lang/String;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 97
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method
