.class Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworksExtractor;
.super Ljava/lang/Object;
.source "TelephonyLookup.java"

# interfaces
.implements Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/timezone/TelephonyLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelephonyNetworksExtractor"
.end annotation


# instance fields
.field private blacklist mobileCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/MobileCountries;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist networksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/TelephonyNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworksExtractor;->networksList:Ljava/util/List;

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworksExtractor;->mobileCountries:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/i18n/timezone/TelephonyLookup-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworksExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getTelephonyNetworkFinder()Lcom/android/i18n/timezone/TelephonyNetworkFinder;
    .registers 3

    .line 422
    iget-object v0, p0, Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworksExtractor;->networksList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworksExtractor;->mobileCountries:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->create(Ljava/util/List;Ljava/util/List;)Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist processMobileCountries(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "mcc"    # Ljava/lang/String;
    .param p3, "defaultCountryIso"    # Ljava/lang/String;
    .param p4, "debugInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 418
    .local p2, "countryIsos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworksExtractor;->mobileCountries:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/android/i18n/timezone/MobileCountries;->create(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/android/i18n/timezone/MobileCountries;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    return-void
.end method

.method public blacklist processNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "countryIso"    # Ljava/lang/String;
    .param p4, "debugInfo"    # Ljava/lang/String;

    .line 411
    invoke-static {p1, p2, p3}, Lcom/android/i18n/timezone/TelephonyNetwork;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/TelephonyNetwork;

    move-result-object v0

    .line 412
    .local v0, "network":Lcom/android/i18n/timezone/TelephonyNetwork;
    iget-object v1, p0, Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworksExtractor;->networksList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    return-void
.end method
