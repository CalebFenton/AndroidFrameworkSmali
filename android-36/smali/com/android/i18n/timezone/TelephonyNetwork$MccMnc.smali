.class public final Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;
.super Ljava/lang/Object;
.source "TelephonyNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/timezone/TelephonyNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MccMnc"
.end annotation


# instance fields
.field final blacklist mcc:Ljava/lang/String;

.field final blacklist mnc:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;->mcc:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;->mnc:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 49
    return v0

    .line 51
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 54
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;

    .line 55
    .local v2, "mccMnc":Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;
    iget-object v3, p0, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;->mcc:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;->mcc:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;->mnc:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;->mnc:Ljava/lang/String;

    .line 56
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 55
    :goto_2b
    return v0

    .line 52
    .end local v2    # "mccMnc":Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;->mcc:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;->mnc:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MccMnc{mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
