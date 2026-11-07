.class public final Landroid/timezone/MobileCountries;
.super Ljava/lang/Object;
.source "MobileCountries.java"


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/MobileCountries;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/timezone/MobileCountries;)V
    .registers 3
    .param p1, "delegate"    # Lcom/android/i18n/timezone/MobileCountries;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/MobileCountries;

    iput-object v0, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist getCountryIsoCodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/MobileCountries;->getCountryIsoCodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultCountryIsoCode()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/MobileCountries;->getDefaultCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMcc()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/MobileCountries;->getMcc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileCountries{mDelegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
