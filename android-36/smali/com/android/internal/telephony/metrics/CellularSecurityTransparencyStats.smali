.class public Lcom/android/internal/telephony/metrics/CellularSecurityTransparencyStats;
.super Ljava/lang/Object;
.source "CellularSecurityTransparencyStats.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist parsePlmnPartOrDefault(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 66
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    .line 68
    :catch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CellularSecurityTransparencyStats"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public blacklist logIdentifierDisclosure(Landroid/telephony/CellularIdentifierDisclosure;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15

    .line 44
    const-string v0, "SIM MCC"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/metrics/CellularSecurityTransparencyStats;->parsePlmnPartOrDefault(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 45
    const-string p2, "SIM MNC"

    invoke-direct {p0, p3, p2}, Lcom/android/internal/telephony/metrics/CellularSecurityTransparencyStats;->parsePlmnPartOrDefault(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 49
    invoke-virtual {p1}, Landroid/telephony/CellularIdentifierDisclosure;->getPlmn()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_31

    .line 51
    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 52
    array-length p3, p2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_31

    const/4 p3, 0x0

    .line 53
    aget-object p3, p2, p3

    const-string v0, "disclosure MCC"

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/metrics/CellularSecurityTransparencyStats;->parsePlmnPartOrDefault(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x1

    .line 54
    aget-object p2, p2, v0

    const-string v0, "disclosure MNC"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/metrics/CellularSecurityTransparencyStats;->parsePlmnPartOrDefault(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    move v5, p2

    move v4, p3

    goto :goto_34

    :cond_31
    const/4 p3, -0x1

    move v4, p3

    move v5, v4

    .line 59
    :goto_34
    invoke-virtual {p1}, Landroid/telephony/CellularIdentifierDisclosure;->getCellularIdentifier()I

    move-result v6

    invoke-virtual {p1}, Landroid/telephony/CellularIdentifierDisclosure;->getNasProtocolMessage()I

    move-result v7

    .line 60
    invoke-virtual {p1}, Landroid/telephony/CellularIdentifierDisclosure;->isEmergency()Z

    move-result v8

    move-object v1, p0

    move v9, p4

    .line 58
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/metrics/CellularSecurityTransparencyStats;->writeIdentifierDisclosure(IIIIIIZZ)V

    return-void
.end method

.method public blacklist writeIdentifierDisclosure(IIIIIIZZ)V
    .registers 9

    const/16 p0, 0x320

    .line 82
    invoke-static/range {p0 .. p8}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIIIIIIZZ)V

    return-void
.end method
