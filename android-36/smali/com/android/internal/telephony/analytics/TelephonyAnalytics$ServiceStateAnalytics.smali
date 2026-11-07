.class public Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;
.super Landroid/telephony/TelephonyCallback;
.source "TelephonyAnalytics.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/analytics/TelephonyAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceStateAnalytics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;,
        Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLastState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;


# direct methods
.method public static synthetic blacklist $r8$lambda$hkTS1Rwl10SCaEHUJ_-HOn9-peA(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->lambda$onServiceStateChanged$0(IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogSimAbsentState(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->logSimAbsentState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrecordCurrentStateBeforeDump(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->recordCurrentStateBeforeDump()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 615
    const-class v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;Ljava/util/concurrent/Executor;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 650
    iput-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    .line 651
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 628
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 631
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$1;-><init>(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;)V

    iput-object v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 652
    iput-object p2, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->mExecutor:Ljava/util/concurrent/Executor;

    .line 653
    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 655
    iget-object p1, p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist addData(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;J)V
    .registers 8

    if-nez p1, :cond_3

    goto :goto_d

    .line 766
    :cond_3
    iget-wide v0, p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mTimestampStart:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    :goto_d
    return-void

    .line 769
    :cond_e
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "End = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mServiceStateAnalyticsProvider:Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->insertDataToDb(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;J)V

    return-void
.end method

.method private blacklist createCopyWithUpdatedTimestamp(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;)Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;
    .registers 8

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 786
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->getTimeMillis()J

    move-result-wide v4

    .line 787
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;

    iget v1, p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mSlotIndex:I

    iget-object v2, p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mRAT:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mDeviceStatus:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method private blacklist isAirplaneModeOn()Z
    .registers 3

    .line 797
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mContext:Landroid/content/Context;

    .line 798
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 797
    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v1
.end method

.method private synthetic blacklist lambda$onServiceStateChanged$0(IIII)V
    .registers 5

    .line 666
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->logServiceState(IIII)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 823
    const-class p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logAirplaneModeServiceState(J)V
    .registers 9

    .line 737
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmSlotIndex(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->APM:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    .line 738
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v2, "NA"

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    .line 739
    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->setCurrentStateAndAddLastState(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;J)V

    return-void
.end method

.method private blacklist logInServiceData(Ljava/lang/String;J)V
    .registers 10

    .line 750
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmSlotIndex(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->IN_SERVICE:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    .line 752
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    .line 753
    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->setCurrentStateAndAddLastState(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;J)V

    return-void
.end method

.method private blacklist logNoNetworkCoverage(J)V
    .registers 9

    .line 743
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmSlotIndex(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->NO_NETWORK_COVERAGE:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    .line 745
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v2, "NA"

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    .line 746
    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->setCurrentStateAndAddLastState(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;J)V

    return-void
.end method

.method private blacklist logOosWithIwlan(J)V
    .registers 9

    .line 730
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmSlotIndex(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->CELLULAR_OOS_WITH_IWLAN:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    .line 732
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v2, "NA"

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    .line 733
    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->setCurrentStateAndAddLastState(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;J)V

    return-void
.end method

.method private blacklist logServiceState(IIII)V
    .registers 11

    .line 676
    invoke-virtual {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->getTimeMillis()J

    move-result-wide v0

    .line 678
    invoke-static {p3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    .line 680
    invoke-static {p4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    .line 682
    invoke-direct {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->isAirplaneModeOn()Z

    move-result v4

    const/16 v5, 0x12

    if-eqz v4, :cond_20

    if-ne p4, v5, :cond_1c

    if-nez p1, :cond_1c

    .line 685
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->logOosWithIwlan(J)V

    return-void

    .line 687
    :cond_1c
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->logAirplaneModeServiceState(J)V

    return-void

    :cond_20
    if-nez p3, :cond_28

    if-nez p4, :cond_28

    .line 692
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->logNoNetworkCoverage(J)V

    return-void

    :cond_28
    if-eqz p3, :cond_36

    if-nez p4, :cond_36

    if-nez p2, :cond_32

    .line 697
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->logInServiceData(Ljava/lang/String;J)V

    return-void

    .line 699
    :cond_32
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->logNoNetworkCoverage(J)V

    return-void

    :cond_36
    if-nez p3, :cond_48

    if-nez p1, :cond_44

    if-ne p4, v5, :cond_40

    .line 704
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->logOosWithIwlan(J)V

    return-void

    .line 706
    :cond_40
    invoke-direct {p0, v3, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->logInServiceData(Ljava/lang/String;J)V

    return-void

    .line 709
    :cond_44
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->logNoNetworkCoverage(J)V

    return-void

    :cond_48
    if-eqz p1, :cond_51

    if-nez p2, :cond_4d

    goto :goto_51

    .line 716
    :cond_4d
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->logNoNetworkCoverage(J)V

    return-void

    .line 714
    :cond_51
    :goto_51
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->logInServiceData(Ljava/lang/String;J)V

    return-void
.end method

.method private blacklist logSimAbsentState()V
    .registers 7

    .line 723
    invoke-virtual {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->getTimeMillis()J

    move-result-wide v4

    .line 724
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmSlotIndex(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->SIM_ABSENT:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    .line 726
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v2, "NA"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    .line 727
    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->setCurrentStateAndAddLastState(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;J)V

    return-void
.end method

.method private blacklist recordCurrentStateBeforeDump()V
    .registers 6

    .line 774
    invoke-virtual {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->getTimeMillis()J

    move-result-wide v0

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recording "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RecordingStateBDump"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v2, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;

    .line 777
    iget-object v3, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->createCopyWithUpdatedTimestamp(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;)Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 778
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->addData(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;J)V

    return-void
.end method

.method private blacklist setCurrentStateAndAddLastState(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;J)V
    .registers 5

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;

    .line 759
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->addData(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;J)V

    return-void
.end method


# virtual methods
.method protected blacklist getTimeMillis()J
    .registers 3

    .line 803
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 8

    .line 660
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    .line 661
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    .line 662
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v4

    .line 663
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    .line 665
    iget-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {p1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmExecutorService(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$$ExternalSyntheticLambda0;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;IIII)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist registerMyListener(Landroid/content/Context;I)V
    .registers 4

    .line 808
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 809
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 810
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 811
    iget-object p2, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    .line 814
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Null pointer exception caught "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->log(Ljava/lang/String;)V

    return-void
.end method

.method blacklist unregisterMyListener(I)V
    .registers 2

    .line 819
    iget-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    return-void
.end method
