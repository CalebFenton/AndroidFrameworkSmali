.class public final Landroid/timezone/TelephonyNetworkFinder;
.super Ljava/lang/Object;
.source "TelephonyNetworkFinder.java"


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/timezone/TelephonyNetworkFinder;)V
    .registers 3
    .param p1, "delegate"    # Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    iput-object v0, p0, Landroid/timezone/TelephonyNetworkFinder;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist findCountriesByMcc(Ljava/lang/String;)Landroid/timezone/MobileCountries;
    .registers 4
    .param p1, "mcc"    # Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/Flags;->telephonyLookupMccExtension()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 62
    return-object v1

    .line 64
    :cond_8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Landroid/timezone/TelephonyNetworkFinder;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    .line 67
    invoke-virtual {v0, p1}, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->findCountriesByMcc(Ljava/lang/String;)Lcom/android/i18n/timezone/MobileCountries;

    move-result-object v0

    .line 68
    .local v0, "countriesByMcc":Lcom/android/i18n/timezone/MobileCountries;
    if-eqz v0, :cond_18

    new-instance v1, Landroid/timezone/MobileCountries;

    invoke-direct {v1, v0}, Landroid/timezone/MobileCountries;-><init>(Lcom/android/i18n/timezone/MobileCountries;)V

    :cond_18
    return-object v1
.end method

.method public blacklist findNetworkByMccMnc(Ljava/lang/String;Ljava/lang/String;)Landroid/timezone/TelephonyNetwork;
    .registers 5
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;

    .line 47
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Landroid/timezone/TelephonyNetworkFinder;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    .line 51
    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->findNetworkByMccMnc(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/TelephonyNetwork;

    move-result-object v0

    .line 52
    .local v0, "telephonyNetworkDelegate":Lcom/android/i18n/timezone/TelephonyNetwork;
    if-eqz v0, :cond_14

    .line 53
    new-instance v1, Landroid/timezone/TelephonyNetwork;

    invoke-direct {v1, v0}, Landroid/timezone/TelephonyNetwork;-><init>(Lcom/android/i18n/timezone/TelephonyNetwork;)V

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 52
    :goto_15
    return-object v1
.end method
