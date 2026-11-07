.class public Lcom/android/internal/telephony/data/DataRetryManager;
.super Landroid/os/Handler;
.source "DataRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;
    }
.end annotation


# static fields
.field private static final blacklist RETRY_LONG_DELAY_TIMER_THRESHOLD_MILLIS:J


# instance fields
.field private final blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private blacklist mDataHandoverRetryRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

.field private final blacklist mDataRetryEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataRetryManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataServiceManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataSetupRetryRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataThrottlingEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mRil:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public static synthetic blacklist $r8$lambda$-rbfxZG7yG1rz-1FDi7sHRQyuFE(JLjava/lang/String;ILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 7

    .line 1628
    iget-wide v0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->expirationTimeMillis:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_24

    iget-object p0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 1629
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    if-eqz p0, :cond_24

    iget-object p0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 1630
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    iget p0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    if-ne p0, p3, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$2ZfjGYjcdagJJ0HBYTKQR6waXUI(Lcom/android/internal/telephony/data/DataRetryManager;IIZJLjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$notifyThrottleStatus$25(IIZJLjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$2vdc98aHBwVF1rpZYR9_k2id3Eo(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .registers 2

    const/4 v0, 0x4

    .line 1403
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9LyEsX_1ykR2sFrLsvpELfpu3K4(Ljava/util/List;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 3

    .line 1842
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda29;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DHzg-icQBJZR6yLsWu3csRvrlW8(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Ljava/util/List;)V
    .registers 2

    .line 1843
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onThrottleStatusChanged(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DlkXOvaCbr0ADSN-Jff1LJYNAS4(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 4

    .line 1564
    iget-object v0, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    iget p0, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$LAk0755WFBHo6Pr7J9g7jVaeTKE(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .registers 2

    const/4 v0, 0x4

    .line 1790
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RCiDpDPuCMwZfE5txSNSnzuoLbs(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 2

    .line 1092
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RRkrEdaCQoZ9Q8R5vBZaZA1xkxE(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z
    .registers 3

    .line 1787
    instance-of v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    iget-object v0, v0, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne v0, p0, :cond_13

    .line 1789
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_13

    return p1

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Riz2CVeZjColYAJbZ5MpZU0YxMs(Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 1

    .line 1617
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$SUzh3cjg4p6V2NnAli9plZQJEIw(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 2

    .line 1618
    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p1

    .line 1619
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$UUIvSgaAON5yBXmuT5FhIDkhT9c(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 3

    .line 1091
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UwHzxSO00TZ4wbgZU7r72R8TAbE(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .registers 2

    .line 1085
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZVq4DTdy0u4Sy48rpxV6tosIhAw(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    .line 1358
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$b9yHI4KKiKVH8AbSzldYqImAClU(Lcom/android/internal/telephony/data/DataNetwork;JLcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 6

    .line 1794
    iget-object v0, p3, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne p0, v0, :cond_c

    iget-wide v0, p3, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->expirationTimeMillis:J

    cmp-long p0, v0, p1

    if-lez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$bbEEk4RfzXl3KPbHq98dOFwettc(Lcom/android/internal/telephony/data/DataRetryManager;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$schedule$10(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cSvEBxwQN_CNpUcZwAn5UkAVs2A(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z
    .registers 5

    .line 1699
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 1700
    instance-of v0, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v0, :cond_1a

    .line 1701
    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    .line 1702
    iget-object v0, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    iget p0, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    if-ne p1, p0, :cond_2b

    return v1

    .line 1704
    :cond_1a
    instance-of p1, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    if-eqz p1, :cond_2b

    .line 1705
    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    .line 1706
    iget-object p1, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$fJtMTiH2N6l0Sp51IEiZ2yd6eac(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)Z
    .registers 4

    .line 1857
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne p1, p0, :cond_c

    return v1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$iiUA7zgEk8NT_nHkeCYjam5Za1M(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 3

    .line 1357
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda30;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda30;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kK-nx8aJm4pHHO62DAEn-Z-_YuA(Lcom/android/internal/telephony/data/DataRetryManager;Lcom/android/internal/telephony/data/DataNetwork;IJ)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$evaluateDataHandoverRetry$5(Lcom/android/internal/telephony/data/DataNetwork;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$krlQxpUP30gXH2NW73P3oO-AEXQ(Lcom/android/internal/telephony/data/DataRetryManager;Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$evaluateDataSetupRetry$4(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m1cIcYqporvBDIzvqoAWhNCB0gk(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 2

    .line 1621
    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p1

    .line 1622
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0

    .line 1621
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$mUfRy3mX3HoaSQZ6Q8aOwpJ5T6o(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 2

    .line 1806
    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$pLyXSUbj7eZw2Fv299coS_Jxbj8(JILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 6

    .line 1613
    iget-wide v0, p3, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->expirationTimeMillis:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_c

    iget p0, p3, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    if-ne p0, p2, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$rQvP_nv0cOpkepOqh3PytsliJYU(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .registers 2

    const/4 v0, 0x4

    .line 1711
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sFrftEt7V4UEsc2poOcYnV4U4c8(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 3

    .line 1084
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$slM8ajPNRoBoKO_Qors9g58BiKQ(Landroid/telephony/data/DataProfile;JILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 7

    .line 1767
    iget-object v0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, p0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    iget-wide v0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->expirationTimeMillis:J

    cmp-long p0, v0, p1

    if-lez p0, :cond_14

    iget p0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    if-ne p0, p3, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$tGG2lOZKLOrOa2aQt2vPKQBRbCM(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z
    .registers 2

    .line 1402
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataRetryManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataRetryManager;->onCarrierConfigUpdated()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monReset(Lcom/android/internal/telephony/data/DataRetryManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 107
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/data/DataRetryManager;->RETRY_LONG_DELAY_TIMER_THRESHOLD_MILLIS:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/telephony/data/DataNetworkController;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;",
            "Landroid/os/Looper;",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;",
            ")V"
        }
    .end annotation

    .line 1015
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 159
    new-instance p4, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p4, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 170
    new-instance p4, Landroid/util/ArraySet;

    invoke-direct {p4}, Landroid/util/ArraySet;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    .line 1016
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1017
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    .line 1018
    iput-object p5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 1019
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DRM-"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLogTag:Ljava/lang/String;

    .line 1020
    invoke-interface {p4, p6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1022
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataServiceManagers:Landroid/util/SparseArray;

    .line 1023
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 1024
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataProfileManager()Lcom/android/internal/telephony/data/DataProfileManager;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 1025
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p4

    const-class p5, Landroid/app/AlarmManager;

    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/AlarmManager;

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1027
    new-instance p4, Lcom/android/internal/telephony/data/DataRetryManager$1;

    new-instance p5, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda2;

    invoke-direct {p5, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;)V

    invoke-direct {p4, p0, p5}, Lcom/android/internal/telephony/data/DataRetryManager$1;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p3, p4}, Lcom/android/internal/telephony/data/DataConfigManager;->registerCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 1034
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object p1

    array-length p3, p1

    const/4 p4, 0x0

    :goto_84
    if-ge p4, p3, :cond_97

    aget p5, p1, p4

    .line 1035
    iget-object p6, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataServiceManagers:Landroid/util/SparseArray;

    invoke-virtual {p6, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/internal/telephony/data/DataServiceManager;

    const/4 p6, 0x6

    .line 1036
    invoke-virtual {p5, p0, p6}, Lcom/android/internal/telephony/data/DataServiceManager;->registerForApnUnthrottled(Landroid/os/Handler;I)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_84

    .line 1038
    :cond_97
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    new-instance p3, Lcom/android/internal/telephony/data/DataRetryManager$2;

    new-instance p4, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;)V

    invoke-direct {p3, p0, p4}, Lcom/android/internal/telephony/data/DataRetryManager$2;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/data/DataProfileManager;->registerCallback(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    .line 1044
    new-instance p1, Lcom/android/internal/telephony/data/DataRetryManager$3;

    new-instance p3, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;)V

    invoke-direct {p1, p0, p3}, Lcom/android/internal/telephony/data/DataRetryManager$3;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 1068
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x8

    const/4 p3, 0x0

    invoke-interface {p1, p0, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1069
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x9

    invoke-interface {p1, p0, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1071
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldResetDataThrottlingWhenTacChanges()Z

    move-result p1

    if-eqz p1, :cond_d5

    .line 1072
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForAreaCodeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_d5
    return-void
.end method

.method private blacklist cancelRetriesForDataProfile(Landroid/telephony/data/DataProfile;I)V
    .registers 5

    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelRetriesForDataProfile: Canceling pending retries for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1697
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/data/DataProfile;I)V

    .line 1698
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda20;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda20;-><init>()V

    .line 1711
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist getRetryFailedCount(ILcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;I)I
    .registers 10

    .line 1454
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ltz v0, :cond_84

    .line 1455
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v3, :cond_81

    .line 1456
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    .line 1458
    iget v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->setupRetryType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_81

    iget v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    if-ne v4, p3, :cond_81

    .line 1460
    iget-object v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 1462
    const-string v3, "Invalid data retry entry detected"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDataRetryEntries="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataRetryManager;->loge(Ljava/lang/String;)V

    .line 1464
    const-string v4, "afeab78c-c0b0-49fc-a51f-f766814d7aa6"

    .line 1465
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1467
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v5

    .line 1464
    invoke-static {v4, v3, v5}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    goto :goto_81

    .line 1470
    :cond_5a
    iget-object v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1471
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPrioritySupportedNetworkCapability()I

    move-result v4

    if-ne v4, p1, :cond_81

    iget-object v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->appliedDataRetryRule:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;

    .line 1473
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 1474
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_84

    .line 1475
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7f

    goto :goto_84

    :cond_7f
    add-int/lit8 v2, v2, 0x1

    :cond_81
    :goto_81
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_84
    :goto_84
    return v2
.end method

.method private blacklist getRetryFailedCount(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;)I
    .registers 8

    .line 1426
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_3d

    .line 1427
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    if-eqz v2, :cond_3a

    .line 1428
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    .line 1429
    iget-object v3, v2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne v3, p1, :cond_3a

    iget-object v3, v2, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->appliedDataRetryRule:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;

    .line 1430
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1431
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3d

    .line 1432
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_38

    goto :goto_3d

    :cond_38
    add-int/lit8 v1, v1, 0x1

    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_3d
    :goto_3d
    return v1
.end method

.method private blacklist isRetryCancelled(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    .line 1130
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v1

    if-ne v1, v0, :cond_b

    const/4 p0, 0x0

    return p0

    .line 1133
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry was removed earlier. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return v0
.end method

.method private synthetic blacklist lambda$evaluateDataHandoverRetry$5(Lcom/android/internal/telephony/data/DataNetwork;IJ)V
    .registers 5

    .line 1316
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->onEvaluateDataHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$evaluateDataSetupRetry$4(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .registers 7

    .line 1179
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/data/DataRetryManager;->onEvaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyThrottleStatus$25(IIZJLjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;
    .registers 8

    .line 1830
    new-instance v0, Landroid/telephony/data/ThrottleStatus$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ThrottleStatus$Builder;-><init>()V

    .line 1831
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    invoke-virtual {v0, p6}, Landroid/telephony/data/ThrottleStatus$Builder;->setApnType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p6

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1832
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {p6, p0}, Landroid/telephony/data/ThrottleStatus$Builder;->setSlotIndex(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    .line 1833
    invoke-virtual {p0, p1}, Landroid/telephony/data/ThrottleStatus$Builder;->setRetryType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    .line 1834
    invoke-virtual {p0, p2}, Landroid/telephony/data/ThrottleStatus$Builder;->setTransportType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    if-eqz p3, :cond_25

    .line 1836
    invoke-virtual {p0}, Landroid/telephony/data/ThrottleStatus$Builder;->setNoThrottle()Landroid/telephony/data/ThrottleStatus$Builder;

    goto :goto_28

    .line 1838
    :cond_25
    invoke-virtual {p0, p4, p5}, Landroid/telephony/data/ThrottleStatus$Builder;->setThrottleExpiryTimeMillis(J)Landroid/telephony/data/ThrottleStatus$Builder;

    .line 1840
    :goto_28
    invoke-virtual {p0}, Landroid/telephony/data/ThrottleStatus$Builder;->build()Landroid/telephony/data/ThrottleStatus;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$schedule$10(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .registers 4

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAlarm retry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1517
    instance-of v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v0, :cond_1a

    const/4 v0, 0x3

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x4

    :goto_1b
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 1903
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1911
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 1927
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1928
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method private blacklist notifyThrottleStatus(Landroid/telephony/data/DataProfile;JII)V
    .registers 15

    .line 1821
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_46

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    move v6, v0

    goto :goto_11

    :cond_10
    move v6, v1

    :goto_11
    if-eqz v6, :cond_1a

    .line 1825
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    .line 1827
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    .line 1828
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;

    move-object v3, p0

    move-wide v7, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;IIZJ)V

    .line 1829
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1841
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1842
    iget-object p0, v3, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_46
    return-void
.end method

.method private blacklist onCancelPendingHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 10

    .line 1786
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1787
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda15;-><init>()V

    .line 1790
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1792
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1793
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda16;

    invoke-direct {v3, p1, v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/telephony/data/DataNetwork;J)V

    .line 1794
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1795
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    if-nez v0, :cond_38

    return-void

    .line 1799
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelPendingHandoverRetry removed throttling entry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1800
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1801
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v3

    .line 1802
    iget v7, v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    const-wide/16 v4, -0x1

    const/4 v6, 0x3

    move-object v2, p0

    .line 1804
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager;->notifyThrottleStatus(Landroid/telephony/data/DataProfile;JII)V

    .line 1806
    iget-object p0, v2, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda17;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-interface {p0, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private blacklist onCarrierConfigUpdated()V
    .registers 3

    const/4 v0, 0x5

    .line 1141
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    .line 1142
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataSetupRetryRules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    .line 1143
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataHandoverRetryRules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConfigUpdated: mDataSetupRetryRuleList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDataHandoverRetryRuleList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;Ljava/lang/String;IZZ)V
    .registers 16

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataProfileUnthrottled: dataProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", apn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    invoke-static {p3}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1600
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1604
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1605
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_77

    .line 1612
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    .line 1613
    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v1, p3}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda5;-><init>(JI)V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 1615
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 1616
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda6;-><init>()V

    .line 1617
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/data/DataProfile;)V

    .line 1618
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 1621
    :cond_62
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/data/DataProfile;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1624
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    goto :goto_93

    :cond_77
    if-eqz p2, :cond_93

    .line 1627
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0, v1, p2, p3}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda9;-><init>(JLjava/lang/String;I)V

    .line 1628
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1632
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 1635
    :cond_93
    :goto_93
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 1636
    const-string p1, "onDataProfileUnthrottled: Nothing to unthrottle."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void

    .line 1641
    :cond_9f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    .line 1644
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    iget p2, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->retryType:I

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x2

    if-ne p2, v3, :cond_bd

    .line 1645
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    move-object v5, p1

    move v8, v3

    goto :goto_d9

    .line 1647
    :cond_bd
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    iget p2, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->retryType:I

    if-ne p2, v1, :cond_d6

    .line 1648
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object p1

    move-object v5, p1

    move v8, v1

    goto :goto_d9

    :cond_d6
    const/4 p1, 0x0

    move-object v5, p1

    move v8, v0

    :goto_d9
    if-eqz v5, :cond_e6

    const-wide/16 v6, -0x1

    move-object v4, p0

    move v9, p3

    .line 1656
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/data/DataRetryManager;->notifyThrottleStatus(Landroid/telephony/data/DataProfile;JII)V

    .line 1659
    invoke-direct {v4, v5, v9}, Lcom/android/internal/telephony/data/DataRetryManager;->cancelRetriesForDataProfile(Landroid/telephony/data/DataProfile;I)V

    goto :goto_e7

    :cond_e6
    move-object v4, p0

    .line 1662
    :goto_e7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onDataProfileUnthrottled: Removing the following throttling entries. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    if-eqz p5, :cond_157

    .line 1665
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_101
    :goto_101
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_157

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    .line 1667
    iget p2, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->retryType:I

    const-wide/16 v5, 0x0

    if-ne p2, v3, :cond_13c

    .line 1668
    new-instance p2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    invoke-direct {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;-><init>()V

    iget-object p3, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 1669
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setDataProfile(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p2

    iget p3, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    .line 1670
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setTransport(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p2

    .line 1671
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setSetupRetryType(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p2

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 1672
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p1

    .line 1673
    invoke-virtual {p1, v5, v6}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1674
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    move-result-object p1

    .line 1668
    invoke-direct {v4, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    goto :goto_101

    :cond_13c
    if-ne p2, v1, :cond_101

    .line 1676
    new-instance p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    invoke-direct {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;-><init>()V

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1677
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->setDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    move-result-object p1

    .line 1678
    invoke-virtual {p1, v5, v6}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    .line 1679
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    move-result-object p1

    .line 1676
    invoke-direct {v4, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    goto :goto_101

    :cond_157
    if-eqz p4, :cond_15e

    .line 1684
    iget-object p0, v4, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_15e
    return-void
.end method

.method private blacklist onEvaluateDataHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;IJ)V
    .registers 14

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvaluateDataHandoverRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retryDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1321
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v6

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p3, v0

    if-eqz v0, :cond_45

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-nez v0, :cond_49

    :cond_45
    move-object v1, p0

    move-object v4, p1

    goto/16 :goto_127

    :cond_49
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_76

    .line 1335
    new-instance p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    invoke-direct {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;-><init>()V

    .line 1336
    invoke-virtual {p2, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    .line 1337
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->setDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    move-result-object p2

    .line 1338
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    move-result-object p2

    .line 1340
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v2

    .line 1341
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v3

    iget-wide v7, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryElapsedTime:J

    const/4 v5, 0x3

    move-object v1, p0

    move-object v4, p1

    .line 1340
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/data/DataRetryManager;->throttleDataProfile(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    .line 1344
    invoke-direct {v1, p2}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    return-void

    :cond_76
    move-object v1, p0

    move-object v4, p1

    .line 1349
    iget-object p0, v1, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7e
    :goto_7e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_126

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;

    .line 1350
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getFailCauses()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_a2

    .line 1351
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getFailCauses()Ljava/util/Set;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7e

    .line 1352
    :cond_a2
    invoke-direct {v1, v4, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->getRetryFailedCount(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;)I

    move-result p3

    .line 1353
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found matching rule "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", failed count="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1354
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getMaxRetries()I

    move-result p4

    if-ne p3, p4, :cond_ec

    .line 1355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Data handover retry failed for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " times. Stopped handover retry."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1357
    iget-object p0, v1, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda21;

    invoke-direct {p1, v4}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda21;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1362
    :cond_ec
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getRetryIntervalsMillis()Ljava/util/List;

    move-result-object p4

    .line 1364
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getRetryIntervalsMillis()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1363
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1362
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 1365
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;-><init>()V

    .line 1366
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    .line 1367
    invoke-virtual {p3, v4}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->setDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    move-result-object p3

    .line 1368
    invoke-virtual {p3, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setAppliedRetryRule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    .line 1369
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    move-result-object p1

    .line 1365
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    goto/16 :goto_7e

    :cond_126
    return-void

    .line 1325
    :goto_127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Network suggested never retry handover for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v2

    .line 1331
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v3

    const/4 v5, 0x3

    const-wide v7, 0x7fffffffffffffffL

    .line 1330
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/data/DataRetryManager;->throttleDataProfile(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    return-void
.end method

.method private blacklist onEvaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p5

    .line 1186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEvaluateDataSetupRetry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", transport="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    invoke-static {v5}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", cause="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-static/range {p4 .. p4}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", retryDelayMillis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1186
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v3, v6

    if-eqz v6, :cond_22f

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v3, v6

    if-nez v6, :cond_58

    goto/16 :goto_22f

    :cond_58
    const-wide/16 v6, -0x1

    cmp-long v6, v3, v6

    const/4 v7, 0x1

    if-eqz v6, :cond_89

    .line 1204
    new-instance v6, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    invoke-direct {v6}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;-><init>()V

    .line 1205
    invoke-virtual {v6, v3, v4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1206
    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setSetupRetryType(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v3

    .line 1207
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v3

    .line 1208
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setDataProfile(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v3

    .line 1209
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setTransport(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v3

    .line 1210
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    move-result-object v8

    .line 1211
    iget-wide v6, v8, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryElapsedTime:J

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager;->throttleDataProfile(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    .line 1214
    invoke-direct {v0, v8}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    return-void

    .line 1219
    :cond_89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDataSetupRetryRuleList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/data/DataRetryManager;->logv(Ljava/lang/String;)V

    .line 1222
    iget-object v3, v0, Lcom/android/internal/telephony/data/DataRetryManager;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 1223
    invoke-static {v2, v3}, Lcom/android/internal/telephony/data/DataUtils;->getGroupedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Ljava/util/List;

    move-result-object v3

    .line 1224
    iget-object v4, v0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    move v8, v6

    :goto_ad
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_227

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;

    .line 1225
    invoke-virtual {v9}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;->isPermanentFailCauseRule()Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_135

    invoke-virtual {v9}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getFailCauses()Ljava/util/Set;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_135

    .line 1226
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    if-eqz v3, :cond_12f

    .line 1227
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    .line 1232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Marked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " permanently failed, but still schedule retry to see if another data profile can be used for setup data."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1238
    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;-><init>()V

    .line 1239
    invoke-virtual {v9}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getRetryIntervalsMillis()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1240
    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setAppliedRetryRule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1241
    invoke-virtual {v1, v11}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setSetupRetryType(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v1

    .line 1242
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setTransport(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v1

    .line 1243
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v1

    .line 1244
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    move-result-object v1

    .line 1238
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    return-void

    .line 1248
    :cond_12f
    const-string v1, "Stopped timer-based retry for TD-based data profile. Will retry only when environment changes."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void

    .line 1253
    :cond_135
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_139
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_221

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 1254
    invoke-virtual {v12, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1255
    invoke-virtual {v13}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPrioritySupportedNetworkCapability()I

    move-result v13

    move/from16 v14, p4

    .line 1256
    invoke-virtual {v9, v13, v14}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;->canBeMatched(II)Z

    move-result v15

    if-eqz v15, :cond_139

    .line 1259
    invoke-virtual {v12, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1258
    invoke-virtual {v0, v8, v5}, Lcom/android/internal/telephony/data/DataRetryManager;->isSimilarNetworkRequestRetryScheduled(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result v8

    if-eqz v8, :cond_17c

    .line 1260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already had similar retry scheduled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void

    .line 1265
    :cond_17c
    invoke-direct {v0, v13, v9, v5}, Lcom/android/internal/telephony/data/DataRetryManager;->getRetryFailedCount(ILcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;I)I

    move-result v8

    .line 1266
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "For capability "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", found matching rule "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", failed count="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v9}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getMaxRetries()I

    move-result v10

    if-ne v8, v10, :cond_1e0

    .line 1270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data retry failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    invoke-static {v5}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Stopped timer-based data retry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    invoke-static {v13}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Condition-based retry will still happen when condition changes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1270
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void

    .line 1279
    :cond_1e0
    invoke-virtual {v9}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getRetryIntervalsMillis()Ljava/util/List;

    move-result-object v10

    .line 1281
    invoke-virtual {v9}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getRetryIntervalsMillis()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v7

    .line 1280
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1279
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1284
    new-instance v8, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    invoke-direct {v8}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;-><init>()V

    .line 1285
    invoke-virtual {v8, v6, v7}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1286
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setAppliedRetryRule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1287
    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setSetupRetryType(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v6

    .line 1288
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setTransport(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v6

    .line 1289
    invoke-virtual {v6, v12}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v6

    .line 1290
    invoke-virtual {v6}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    move-result-object v6

    .line 1284
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    const/4 v8, 0x1

    goto :goto_223

    :cond_221
    move/from16 v14, p4

    :goto_223
    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_ad

    :cond_227
    if-nez v8, :cond_22e

    .line 1298
    const-string v1, "onEvaluateDataSetupRetry: Did not match any retry rule. Stop timer-based retry."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    :cond_22e
    return-void

    .line 1194
    :cond_22f
    :goto_22f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network suggested never retry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    const/4 v4, 0x2

    const-wide v6, 0x7fffffffffffffffL

    const/4 v3, 0x0

    .line 1199
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager;->throttleDataProfile(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    return-void
.end method

.method private blacklist onReset(I)V
    .registers 9

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove all retry and throttling entries, reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataRetryManager;->resetReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1396
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x4

    .line 1397
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1399
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataProfileManager;->clearAllDataProfilePermanentFailures()V

    .line 1401
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda26;-><init>()V

    .line 1402
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda27;-><init>()V

    .line 1403
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1405
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    .line 1406
    iget-object v2, v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 1407
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 1408
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    :goto_5e
    move-object v3, v1

    goto :goto_62

    :cond_60
    const/4 v1, 0x0

    goto :goto_5e

    .line 1409
    :goto_62
    iget v4, v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/data/DataRetryManager;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;Ljava/lang/String;IZZ)V

    goto :goto_42

    :cond_6b
    move-object v1, p0

    .line 1412
    iget-object p0, v1, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static blacklist resetReasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2c

    .line 1894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1893
    :pswitch_1a
    const-string p0, "TAC_CHANGED"

    return-object p0

    .line 1892
    :pswitch_1d
    const-string p0, "DATA_CONFIG_CHANGED"

    return-object p0

    .line 1891
    :pswitch_20
    const-string p0, "DATA_SERVICE_BOUND"

    return-object p0

    .line 1890
    :pswitch_23
    const-string p0, "MODEM_RESTART"

    return-object p0

    .line 1889
    :pswitch_26
    const-string p0, "RADIO_ON"

    return-object p0

    .line 1888
    :pswitch_29
    const-string p0, "DATA_PROFILES_CHANGED"

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private blacklist schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .registers 13

    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduled data retry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hashcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1494
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_35

    .line 1496
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1503
    :cond_35
    iget-wide v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryDelayMillis:J

    sget-wide v2, Lcom/android/internal/telephony/data/DataRetryManager;->RETRY_LONG_DELAY_TIMER_THRESHOLD_MILLIS:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4e

    .line 1504
    instance-of v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v0, :cond_43

    const/4 v0, 0x3

    goto :goto_44

    :cond_43
    const/4 v0, 0x4

    :goto_44
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryDelayMillis:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1510
    :cond_4e
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v5, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryElapsedTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataRetryHash-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    new-instance v10, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda23;

    invoke-direct {v10, p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda23;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    const/4 v4, 0x3

    const/4 v9, 0x0

    .line 1510
    invoke-virtual/range {v3 .. v10}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method private blacklist throttleDataProfile(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V
    .registers 16

    .line 1558
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v4, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;-><init>(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    move-wide p2, v6

    .line 1563
    iget-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    new-instance p6, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda28;

    invoke-direct {p6, p1, p5}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda28;-><init>(Landroid/telephony/data/DataProfile;I)V

    invoke-interface {p4, p6}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1567
    iget-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const/16 p6, 0x64

    if-lt p4, p6, :cond_37

    .line 1570
    const-string p4, "24fd4d46-1d0f-4b13-b7d6-7bad70b8289b"

    .line 1571
    invoke-static {p4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p4

    iget-object p6, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1573
    invoke-virtual {p6}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p6

    .line 1570
    const-string p7, "DataRetryManager throttling more than 100 data profiles"

    invoke-static {p4, p7, p6}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    .line 1574
    iget-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    const/4 p6, 0x0

    invoke-interface {p4, p6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1576
    :cond_37
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Add throttling entry "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1577
    iget-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide p6, 0x7fffffffffffffffL

    cmp-long p4, p2, p6

    if-nez p4, :cond_5b

    const/4 p4, 0x1

    goto :goto_5c

    :cond_5b
    move p4, v5

    .line 1584
    :goto_5c
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataRetryManager;->notifyThrottleStatus(Landroid/telephony/data/DataProfile;JII)V

    return-void
.end method


# virtual methods
.method public blacklist cancelPendingHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 3

    const/4 v0, 0x7

    .line 1777
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1939
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1940
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1941
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1942
    const-string p2, "Data Setup Retry rules:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1944
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1945
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1946
    const-string p2, "Data Handover Retry rules:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1947
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1948
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1949
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1951
    const-string p2, "Retry entries:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1952
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1953
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;

    .line 1954
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6a

    .line 1956
    :cond_7a
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1958
    const-string p2, "Throttling entries:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1959
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1960
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    .line 1961
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_8b

    .line 1963
    :cond_9b
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1965
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1967
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1968
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1969
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist evaluateDataHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;IJ)V
    .registers 11

    .line 1316
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda10;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Lcom/android/internal/telephony/data/DataNetwork;IJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist evaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .registers 15

    .line 1179
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 1080
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_8a

    .line 1121
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->loge(Ljava/lang/String;)V

    return-void

    :pswitch_1c
    const/4 p1, 0x6

    .line 1102
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    return-void

    :pswitch_21
    const/4 p1, 0x3

    .line 1099
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    return-void

    :pswitch_26
    const/4 p1, 0x2

    .line 1096
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    return-void

    .line 1118
    :pswitch_2b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onCancelPendingHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void

    .line 1105
    :pswitch_33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1106
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1110
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    .line 1111
    check-cast p1, Ljava/lang/String;

    move-object v3, p1

    move-object v2, v1

    goto :goto_56

    .line 1112
    :cond_4b
    instance-of v0, p1, Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_54

    .line 1113
    check-cast p1, Landroid/telephony/data/DataProfile;

    move-object v2, p1

    move-object v3, v1

    goto :goto_56

    :cond_54
    move-object v2, v1

    move-object v3, v2

    :goto_56
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    .line 1115
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/data/DataRetryManager;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;Ljava/lang/String;IZZ)V

    return-void

    :pswitch_5d
    move-object v1, p0

    .line 1089
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    .line 1090
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataRetryManager;->isRetryCancelled(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z

    move-result p1

    if-nez p1, :cond_88

    .line 1091
    iget-object p1, v1, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_73
    move-object v1, p0

    .line 1082
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    .line 1083
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataRetryManager;->isRetryCancelled(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z

    move-result p1

    if-nez p1, :cond_88

    .line 1084
    iget-object p1, v1, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_88
    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0x3
        :pswitch_73
        :pswitch_5d
        :pswitch_5
        :pswitch_33
        :pswitch_2b
        :pswitch_26
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist isAnyHandoverRetryScheduled(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 4

    .line 1854
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    .line 1855
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda11;

    const-class v1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1856
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1857
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 5

    .line 1382
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;

    .line 1383
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->getRetryFailedCount(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;)I

    move-result v2

    .line 1384
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getMaxRetries()I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 1385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data handover retry failed for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " times. Stopped handover retry."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDataProfileThrottled(Landroid/telephony/data/DataProfile;I)Z
    .registers 6

    .line 1765
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1766
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/data/DataProfile;JI)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isSimilarNetworkRequestRetryScheduled(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z
    .registers 11

    .line 1726
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1727
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_c
    const/4 v4, 0x0

    if-ltz v2, :cond_7f

    .line 1728
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v5, :cond_7c

    .line 1729
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    .line 1730
    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v6

    if-ne v6, v3, :cond_7c

    iget v6, v5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->setupRetryType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7c

    iget-wide v6, v5, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryElapsedTime:J

    cmp-long v6, v6, v0

    if-lez v6, :cond_7c

    .line 1734
    iget-object v6, v5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 1736
    const-string v4, "Invalid data retry entry detected"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDataRetryEntries="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataRetryManager;->loge(Ljava/lang/String;)V

    .line 1738
    const-string v5, "781af571-f55d-476d-b510-7a5381f633dc"

    .line 1739
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1741
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v6

    .line 1738
    invoke-static {v5, v4, v6}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    goto :goto_7c

    .line 1744
    :cond_65
    iget-object v6, v5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1745
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPrioritySupportedNetworkCapability()I

    move-result v4

    .line 1746
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPrioritySupportedNetworkCapability()I

    move-result v6

    if-ne v4, v6, :cond_7c

    iget v4, v5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    if-ne v4, p2, :cond_7c

    return v3

    :cond_7c
    :goto_7c
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_7f
    return v4
.end method

.method public blacklist onDataNetworkConnected(ILandroid/telephony/data/DataProfile;)V
    .registers 11

    .line 1156
    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1157
    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    :cond_e
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v5, p1

    move-object v3, p2

    .line 1160
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 2

    .line 1867
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 2

    .line 1876
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
