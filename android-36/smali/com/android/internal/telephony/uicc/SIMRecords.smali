.class public Lcom/android/internal/telephony/uicc/SIMRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;
    }
.end annotation


# static fields
.field protected static final blacklist EVENT_GET_OPL_DONE:I = 0x10

.field protected static final blacklist EVENT_GET_PNN_DONE:I = 0xf

.field protected static final blacklist EVENT_GET_PSISMSC_DONE:I = 0x2f

.field protected static final blacklist EVENT_GET_SMSS_RECORD_DONE:I = 0x2e

.field protected static final blacklist EVENT_GET_SST_DONE:I = 0x11

.field protected static final blacklist LOG_TAG:Ljava/lang/String; = "SIMRecords"

.field private static final blacklist VDBG:Z


# instance fields
.field private blacklist mCallForwardingStatus:I

.field private blacklist mCphsInfo:[B

.field blacklist mCspPlmnEnabled:Z

.field greylist-max-r mEfCPHS_MWI:[B

.field greylist-max-r mEfCff:[B

.field greylist-max-r mEfCfis:[B

.field greylist-max-r mEfLi:[B

.field greylist-max-r mEfMWIS:[B

.field greylist-max-r mEfPl:[B

.field private blacklist mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field greylist-max-r mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

.field greylist-max-r mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 62
    const-string v0, "SIMRecords"

    const/4 v1, 0x2

    .line 63
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/SIMRecords;->VDBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    const/4 p2, 0x1

    .line 85
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    .line 202
    new-instance p2, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 204
    new-instance p2, Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-direct {p2}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    const/4 p2, 0x0

    .line 206
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 207
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 210
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 212
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p3, 0x15

    invoke-interface {p2, p0, p3, p1}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SIMRecords X ctor this="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist dispatchGsmMessage(Landroid/telephony/SmsMessage;)V
    .registers 2

    .line 1458
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private greylist-max-r getExtFromEf(I)I
    .registers 4

    const/16 v0, 0x6f3b

    if-eq p1, v0, :cond_19

    const/16 v0, 0x6f40

    const/16 v1, 0x6f4a

    if-eq p1, v0, :cond_b

    return v1

    .line 304
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p0, p1, :cond_18

    const/16 p0, 0x6f4e

    return p0

    :cond_18
    return v1

    :cond_19
    const/16 p0, 0x6f4b

    return p0
.end method

.method private greylist-max-r getSpnFsm(ZLandroid/os/AsyncResult;)V
    .registers 8

    if-eqz p1, :cond_1d

    .line 1834
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq p1, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq p1, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq p1, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne p1, v0, :cond_15

    goto :goto_18

    .line 1843
    :cond_15
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_1d

    .line 1840
    :cond_18
    :goto_18
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    return-void

    .line 1847
    :cond_1d
    :goto_1d
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-eq p1, v2, :cond_169

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_ef

    const/4 v3, 0x3

    if-eq p1, v3, :cond_8a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_38

    .line 1954
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    return-void

    .line 1927
    :cond_38
    const-string p1, "No SPN loaded in either CHPS or 3GPP"

    if-eqz p2, :cond_7f

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7f

    .line 1928
    iget-object p2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p2, [B

    .line 1930
    array-length v0, p2

    invoke-static {p2, v4, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7b

    .line 1936
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_59

    goto :goto_7b

    .line 1940
    :cond_59
    iput v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierNameDisplayCondition:I

    .line 1942
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1943
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1944
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    .line 1943
    invoke-virtual {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto :goto_85

    .line 1937
    :cond_7b
    :goto_7b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_85

    .line 1947
    :cond_7f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 1948
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1951
    :goto_85
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    return-void

    :cond_8a
    if-eqz p2, :cond_d4

    .line 1895
    iget-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_d4

    .line 1896
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 1898
    array-length p2, p1

    invoke-static {p1, v4, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 1902
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_cf

    .line 1904
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_a9

    goto :goto_cf

    .line 1908
    :cond_a9
    iput v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierNameDisplayCondition:I

    .line 1910
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Load EF_SPN_CPHS: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1911
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1912
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    .line 1911
    invoke-virtual {p2, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 1914
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_d8

    .line 1905
    :cond_cf
    :goto_cf
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_d8

    .line 1917
    :cond_d4
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1920
    :goto_d8
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object p2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne p1, p2, :cond_168

    .line 1921
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 p2, 0x6f18

    .line 1922
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1921
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1923
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    return-void

    :cond_ef
    if-eqz p2, :cond_14c

    .line 1858
    iget-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_14c

    .line 1859
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 1863
    aget-byte p2, p1, v4

    and-int/lit16 p2, p2, 0xff

    .line 1864
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccRecords;->convertSpnDisplayConditionToBitmask(I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierNameDisplayCondition:I

    .line 1866
    array-length p2, p1

    sub-int/2addr p2, v2

    invoke-static {p1, v2, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_147

    .line 1872
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_119

    goto :goto_147

    .line 1875
    :cond_119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Load EF_SPN: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " carrierNameDisplayCondition: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierNameDisplayCondition:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1877
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1878
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    .line 1877
    invoke-virtual {p2, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 1880
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_150

    .line 1873
    :cond_147
    :goto_147
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_150

    .line 1883
    :cond_14c
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1886
    :goto_150
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object p2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne p1, p2, :cond_168

    .line 1887
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 p2, 0x6f14

    .line 1888
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1887
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1889
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1891
    iput v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierNameDisplayCondition:I

    :cond_168
    return-void

    .line 1849
    :cond_169
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 1851
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 p2, 0x6f46

    .line 1852
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1851
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1853
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1855
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    return-void
.end method

.method private blacklist handleEfCspData([B)V
    .registers 9

    .line 2169
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    .line 2173
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v0, :cond_43

    mul-int/lit8 v4, v3, 0x2

    .line 2175
    aget-byte v5, p1, v4

    const/16 v6, -0x40

    if-ne v5, v6, :cond_40

    .line 2176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v4, v1

    aget-byte v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2177
    aget-byte p1, p1, v4

    const/16 v0, 0x80

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_33

    .line 2181
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    return-void

    .line 2183
    :cond_33
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 2186
    const-string p1, "[CSP] Set Automatic Network Selection"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2187
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2193
    :cond_43
    const-string p1, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleSms([B)V
    .registers 6

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSms status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1465
    aget-byte v0, p1, v1

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2f

    .line 1466
    array-length v0, p1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 1470
    new-array v3, v0, [B

    .line 1471
    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1472
    const-string p1, "3gpp"

    invoke-static {v3, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p1

    .line 1474
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)V

    :cond_2f
    return-void
.end method

.method private blacklist handleSmses(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    .line 1479
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_49

    .line 1482
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSmses status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1487
    aget-byte v4, v3, v1

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x3

    if-ne v4, v5, :cond_46

    .line 1488
    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 1492
    new-array v6, v4, [B

    .line 1493
    invoke-static {v3, v5, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1494
    const-string v4, "3gpp"

    invoke-static {v6, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1496
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)V

    .line 1498
    aput-byte v5, v3, v1

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_49
    return-void
.end method

.method private greylist-max-r isCphsMailboxEnabled()Z
    .registers 4

    .line 2105
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x1

    .line 2106
    aget-byte p0, p0, v1

    const/16 v2, 0x30

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_f

    return v1

    :cond_f
    return v0
.end method

.method private blacklist loadCallForwardingRecords()V
    .registers 5

    const/4 v0, 0x1

    .line 1664
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 1665
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6fcb

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1666
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1667
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6f13

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1668
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    return-void
.end method

.method private blacklist loadEfLiAndEfPl()V
    .registers 6

    .line 1652
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_39

    .line 1653
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v1, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords-IA;)V

    const/16 v3, 0x64

    .line 1654
    invoke-virtual {p0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/16 v4, 0x6f05

    .line 1653
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1655
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1657
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v1, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords-IA;)V

    .line 1658
    invoke-virtual {p0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x2f05

    .line 1657
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1659
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    :cond_39
    return-void
.end method

.method private blacklist onLockedAllRecordsLoaded()V
    .registers 4

    .line 1551
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSimLanguageFromEF()V

    .line 1552
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceCallForwardingFlagFromSimRecords()V

    .line 1553
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_17

    .line 1554
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    :cond_17
    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 1556
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 1559
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLockedAllRecordsLoaded: unexpected mLockedRecordsReqReason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist parseBcdPlmnList([BLjava/lang/String;)[Ljava/lang/String;
    .registers 8

    .line 2082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PLMNs, raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2083
    array-length v0, p1

    if-eqz v0, :cond_6b

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_29

    goto :goto_6b

    .line 2087
    :cond_29
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    .line 2089
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_30
    if-ge v2, v0, :cond_45

    mul-int/lit8 v4, v2, 0x3

    .line 2091
    invoke-static {p1, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdPlmnToString([BI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2093
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_42

    add-int/lit8 v3, v3, 0x1

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 2095
    :cond_45
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 2096
    sget-boolean v0, Lcom/android/internal/telephony/uicc/SIMRecords;->VDBG:Z

    if-eqz v0, :cond_6a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " PLMNs: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/SIMRecords;->logv(Ljava/lang/String;)V

    :cond_6a
    return-object p1

    .line 2084
    :cond_6b
    :goto_6b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received invalid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " PLMN list"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist parseEfOpl(Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 2046
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2047
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v0, :cond_6f

    .line 2049
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 2055
    array-length v5, v4

    const/16 v6, 0x8

    if-eq v5, v6, :cond_34

    .line 2056
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid length for OPL record "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto :goto_6c

    .line 2062
    :cond_34
    invoke-static {v4, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdPlmnToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 2063
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-ge v6, v7, :cond_54

    .line 2064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid length for decoded PLMN "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto :goto_6c

    :cond_54
    const/4 v6, 0x3

    const/4 v8, 0x2

    .line 2067
    invoke-static {v4, v6, v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v6

    .line 2068
    invoke-static {v4, v7, v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v7

    const/4 v8, 0x7

    const/4 v9, 0x1

    .line 2069
    invoke-static {v4, v8, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v4

    .line 2071
    new-instance v8, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;

    invoke-direct {v8, v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;-><init>(Ljava/lang/String;III)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2073
    :cond_6f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseEfOpl: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2074
    new-array p1, v2, [Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mOpl:[Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;

    return-void
.end method

.method private blacklist parseEfPnn(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    if-nez p1, :cond_4

    goto/16 :goto_85

    .line 2003
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2004
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v0, :cond_5c

    .line 2006
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 2007
    new-instance v5, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v6, v4

    invoke-direct {v5, v4, v2, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    const/4 v4, 0x0

    move-object v6, v4

    .line 2011
    :goto_1f
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 2012
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v7

    const/16 v8, 0x43

    if-eq v7, v8, :cond_40

    const/16 v8, 0x45

    if-eq v7, v8, :cond_32

    goto :goto_4d

    .line 2019
    :cond_32
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    .line 2020
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v7

    array-length v7, v7

    .line 2019
    invoke-static {v6, v2, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v6

    goto :goto_4d

    .line 2014
    :cond_40
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v4

    .line 2015
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v7

    array-length v7, v7

    .line 2014
    invoke-static {v4, v2, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v4

    .line 2011
    :goto_4d
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_1f

    .line 2029
    :cond_51
    new-instance v5, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    invoke-direct {v5, v4, v6}, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2031
    :cond_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseEfPnn: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2033
    new-array p1, v2, [Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPnns:[Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    .line 2036
    array-length v0, p1

    if-lez v0, :cond_85

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPnnHomeName:Ljava/lang/String;

    :cond_85
    :goto_85
    return-void
.end method

.method private blacklist parseEfSpdi([B)V
    .registers 6

    .line 1964
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1968
    :goto_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 1970
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result p1

    const/16 v1, 0xa3

    if-ne p1, v1, :cond_24

    .line 1971
    new-instance p1, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    array-length v0, v0

    invoke-direct {p1, v1, v2, v0}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    move-object v0, p1

    .line 1974
    :cond_24
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result p1

    const/16 v1, 0x80

    if-ne p1, v1, :cond_31

    .line 1975
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object p1

    goto :goto_36

    .line 1968
    :cond_31
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_7

    :cond_35
    const/4 p1, 0x0

    :goto_36
    if-nez p1, :cond_39

    return-void

    .line 1984
    :cond_39
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    div-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_41
    add-int/lit8 v1, v2, 0x2

    .line 1985
    array-length v3, p1

    if-ge v1, v3, :cond_56

    .line 1986
    invoke-static {p1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdPlmnToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 1987
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 1988
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v2, v2, 0x3

    goto :goto_41

    .line 1991
    :cond_56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseEfSpdi: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1993
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpdi:[Ljava/lang/String;

    return-void
.end method

.method private blacklist setSimLanguageFromEF()V
    .registers 3

    .line 1542
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110296

    .line 1543
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1544
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setSimLanguage([B[B)V

    return-void

    .line 1546
    :cond_15
    const-string v0, "Not using EF LI/EF PL"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setVoiceCallForwardingFlagFromSimRecords()V
    .registers 5

    .line 1526
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    .line 1528
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v0, v0, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    .line 1529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS: callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void

    .line 1530
    :cond_27
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_4f

    const/4 v2, 0x0

    .line 1532
    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    const/16 v3, 0xa

    if-ne v0, v3, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    .line 1533
    :goto_36
    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFF: callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void

    :cond_4f
    const/4 v0, -0x1

    .line 1536
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    .line 1537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS and EF_CFF not valid. callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setVoiceMailByCountry(Ljava/lang/String;)V
    .registers 3

    .line 1601
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_24

    .line 1604
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    .line 1605
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    .line 1606
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1607
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    :cond_24
    :goto_24
    return-void
.end method

.method private blacklist validEfCfis([B)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_34

    .line 488
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_b

    const/4 v3, 0x4

    if-le v1, v3, :cond_27

    .line 491
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSP byte: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not between 1 and 4"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 494
    :cond_27
    array-length p0, p1

    move v1, v0

    :goto_29
    if-ge v1, p0, :cond_34

    aget-byte v3, p1, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_31

    return v2

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_34
    return v0
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing SIMRecords this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 225
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 2203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIMRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2204
    const-string v0, " extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2205
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mVmConfig="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mCallForwardingStatus="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mSpnState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mCphsInfo="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mCspPlmnEnabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mEfMWIS[]="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mEfCPHS_MWI[]="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mEfCff[]="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mEfCfis[]="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mCarrierNameDisplayCondition="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierNameDisplayCondition:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mSpdi[]="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpdi:[Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mUsimServiceTable="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mGid1="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2219
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result p1

    if-eqz p1, :cond_174

    .line 2220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mFakeGid1="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeGid1()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2222
    :cond_174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mGid2="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid2:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2223
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result p1

    if-eqz p1, :cond_1ac

    .line 2224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mFakeGid2="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeGid2()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    :cond_1ac
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mPnnHomeName="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPnnHomeName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2227
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result p1

    if-eqz p1, :cond_1e4

    .line 2228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mFakePnnHomeName="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakePnnHomeName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2230
    :cond_1e4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mPlmnActRecords[]="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPlmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mOplmnActRecords[]="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mOplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mHplmnActRecords[]="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2233
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mFplmns[]="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFplmns:[Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mEhplmns[]="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mEhplmns:[Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mPsismsc="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPsiSmsc:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " TPMR="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSmssTpmrValue()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2237
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected greylist-max-r fetchSimRecords()V
    .registers 7

    const/4 v0, 0x1

    .line 1673
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 1675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchSimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1677
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 1678
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1680
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x2fe2

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1681
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1685
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v3, 0x6f40

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v4

    const/16 v5, 0xa

    .line 1686
    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1685
    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1687
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1690
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fc9

    invoke-virtual {v1, v4, v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1691
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1693
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fad

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1694
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1697
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fca

    invoke-virtual {v1, v4, v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1698
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1705
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x8

    .line 1707
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f11

    .line 1705
    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1708
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1712
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadCallForwardingRecords()V

    const/4 v1, 0x0

    .line 1714
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 1716
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fcd

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1717
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1719
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fc5

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1720
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1722
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fc6

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1723
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1725
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f38

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1726
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1728
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x1a

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f16

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1729
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1731
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f15

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1732
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1734
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f3e

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1735
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1737
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x24

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f3f

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1738
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1740
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x25

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f60

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1741
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1743
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x26

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f61

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1744
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1746
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x27

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f62

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1747
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1749
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fd9

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1750
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1752
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const v3, 0x12e500

    const/4 v4, -0x1

    const/16 v5, 0x29

    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f7b    # 3.9992E-41f

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1754
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1756
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    .line 1757
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x1c

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f3c

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 1758
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1760
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fe5

    invoke-virtual {v1, v4, v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1761
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1769
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f43

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1770
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 230
    const-string v0, "finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCarrierNameDisplayCondition()I
    .registers 1

    .line 1790
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierNameDisplayCondition:I

    return p0
.end method

.method public blacklist getForbiddenPlmns(Landroid/os/Message;)V
    .registers 5

    .line 1616
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->storePendingTransaction(Landroid/os/Message;)I

    move-result p1

    .line 1617
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x29

    const v2, 0x12e501

    invoke-virtual {p0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const/16 p1, 0x6f7b    # 3.9992E-41f

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist getMsisdnAlphaTag()Ljava/lang/String;
    .registers 1

    .line 353
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-r getMsisdnNumber()Ljava/lang/String;
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-r getOperatorNumeric()Ljava/lang/String;
    .registers 5

    .line 633
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 635
    const-string v0, "getOperatorNumeric: IMSI == null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-object v1

    .line 638
    :cond_d
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    if-nez v2, :cond_15

    goto :goto_28

    .line 645
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/lit8 v3, p0, 0x3

    if-lt v2, v3, :cond_27

    const/4 v1, 0x0

    add-int/lit8 p0, p0, 0x3

    .line 646
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    return-object v1

    .line 639
    :cond_28
    :goto_28
    const-string v0, "getSIMOperatorNumeric: bad mncLength"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist getSimServiceTable()Ljava/lang/String;
    .registers 1

    .line 291
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz p0, :cond_d

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->getUSIMServiceTable()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    return-object p0
.end method

.method public blacklist getVoiceCallForwardingFlag()I
    .registers 1

    .line 539
    iget p0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    return p0
.end method

.method public blacklist getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 1

    .line 429
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-r getVoiceMailNumber()Ljava/lang/String;
    .registers 1

    .line 359
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getVoiceMessageCount()I
    .registers 6

    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 510
    aget-byte v3, v0, v2

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_d

    move v2, v4

    .line 511
    :cond_d
    aget-byte v0, v0, v4

    const/16 v3, 0xff

    and-int/2addr v0, v3

    if-eqz v2, :cond_19

    if-eqz v0, :cond_1a

    if-ne v0, v3, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v0

    .line 517
    :cond_1a
    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " VoiceMessageCount from SIM MWIS = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return v1

    .line 518
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/4 v3, -0x2

    if-eqz v0, :cond_58

    .line 520
    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    const/16 v4, 0xa

    if-ne v0, v4, :cond_3d

    goto :goto_43

    :cond_3d
    const/4 v1, 0x5

    if-ne v0, v1, :cond_42

    move v1, v2

    goto :goto_43

    :cond_42
    move v1, v3

    .line 529
    :goto_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " VoiceMessageCount from SIM CPHS = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return v1

    :cond_58
    return v3
.end method

.method protected blacklist handleFileUpdate(I)V
    .registers 6

    const/16 v0, 0x6f13

    if-eq p1, v0, :cond_a2

    const/16 v0, 0x6f15

    const/4 v1, 0x1

    if-eq p1, v0, :cond_8c

    const/16 v0, 0x6f17

    if-eq p1, v0, :cond_74

    const/16 v0, 0x6f3b

    if-eq p1, v0, :cond_64

    const/16 v0, 0x6f40

    if-eq p1, v0, :cond_45

    const/16 v0, 0x6fc7

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x6fcb

    if-eq p1, v0, :cond_a2

    .line 1446
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1447
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 1448
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    return-void

    .line 1411
    :cond_2c
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1412
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    const/4 v2, 0x6

    .line 1413
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/16 v2, 0x6fc8

    .line 1412
    invoke-virtual {p1, v0, v2, v1, p0}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    return-void

    .line 1432
    :cond_45
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1433
    const-string p1, "SIM Refresh called for EF_MSISDN"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1434
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v2

    const/16 v3, 0xa

    .line 1435
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1434
    invoke-virtual {p1, v0, v2, v1, p0}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    return-void

    .line 1427
    :cond_64
    const-string p1, "SIM Refresh called for EF_FDN"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1428
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    .line 1429
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    return-void

    .line 1416
    :cond_74
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1417
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0xb

    .line 1418
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/16 v2, 0x6f4a

    .line 1417
    invoke-virtual {p1, v0, v2, v1, p0}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    return-void

    .line 1421
    :cond_8c
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1422
    const-string p1, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1423
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x21

    .line 1424
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1423
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    return-void

    .line 1439
    :cond_a2
    const-string p1, "SIM Refresh called for EF_CFIS or EF_CFF_CPHS"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1440
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadCallForwardingRecords()V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]  while being destroyed. Ignoring."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    return-void

    :cond_2c
    const/4 v1, 0x0

    .line 668
    :try_start_2d
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2f} :catch_4a
    .catchall {:try_start_2d .. :try_end_2f} :catchall_46

    const v2, 0x12e501

    const/16 v3, 0x6f4a

    const/16 v4, 0x6f17

    const/4 v5, 0x6

    const-string v6, "Received a PlmnActRecord, raw="

    const/16 v7, 0xff

    const/16 v8, 0xb

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v0, :pswitch_data_9f0

    .line 1372
    :pswitch_42
    :try_start_42
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_45} :catch_4a
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    return-void

    :catchall_46
    move-exception v0

    move-object p1, v0

    goto/16 :goto_9e9

    :catch_4a
    move-exception v0

    move-object p1, v0

    goto/16 :goto_9de

    .line 1344
    :pswitch_4e
    :try_start_4e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1345
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_78

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read USIM EF_PSISMSC field error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_9da

    :catchall_6e
    move-exception v0

    move-object p1, v0

    move v1, v10

    goto/16 :goto_9e9

    :catch_73
    move-exception v0

    move-object p1, v0

    move v1, v10

    goto/16 :goto_9de

    .line 1348
    :cond_78
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    if-eqz p1, :cond_9da

    .line 1349
    array-length v0, p1

    if-lez v0, :cond_9da

    .line 1350
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->parseEfPsiSmsc([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPsiSmsc:Ljava/lang/String;

    .line 1351
    sget-boolean p1, Lcom/android/internal/telephony/uicc/SIMRecords;->VDBG:Z

    if-eqz p1, :cond_9da

    .line 1352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SIMRecords - EF_PSISMSC value = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPsiSmsc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 1360
    :pswitch_a3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1361
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_c3

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read USIM EF_SMSS field error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 1364
    :cond_c3
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmssValues:[B

    .line 1365
    sget-boolean p1, Lcom/android/internal/telephony/uicc/SIMRecords;->VDBG:Z

    if-eqz p1, :cond_9da

    .line 1366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SIMRecords - EF_SMSS TPMR value = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSmssTpmrValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_e5
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_e5} :catch_73
    .catchall {:try_start_4e .. :try_end_e5} :catchall_6e

    goto/16 :goto_9da

    .line 1327
    :pswitch_e7
    :try_start_e7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1328
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_106

    .line 1329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed setting Forbidden PLMNs: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    return-void

    .line 1331
    :cond_106
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->retrievePendingTransaction(Ljava/lang/Integer;)Landroid/util/Pair;

    move-result-object v3

    .line 1332
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    .line 1333
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    new-array v5, v1, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFplmns:[Ljava/lang/String;

    .line 1334
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_131

    .line 1335
    array-length p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4, p1, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1336
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1338
    :cond_131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully setted fplmns "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void

    .line 1282
    :pswitch_148
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1283
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1287
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_15a

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_15a

    .line 1288
    check-cast v3, Landroid/os/Message;

    move-object v2, v9

    goto :goto_169

    .line 1290
    :cond_15a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->retrievePendingTransaction(Ljava/lang/Integer;)Landroid/util/Pair;

    move-result-object v2

    .line 1291
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1294
    :goto_169
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_179

    .line 1295
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1296
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1299
    :cond_179
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 1300
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1b2

    .line 1301
    rem-int/lit8 v4, v0, 0x3

    if-eqz v4, :cond_18c

    goto :goto_1b2

    .line 1308
    :cond_18c
    div-int/lit8 v4, v0, 0x3

    .line 1310
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_196

    move-object v4, v2

    goto :goto_19a

    .line 1313
    :cond_196
    invoke-interface {v2, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 1315
    :goto_19a
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->storePendingTransaction(Landroid/os/Message;Ljava/lang/Object;)I

    move-result v3

    .line 1316
    invoke-static {v2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->encodeFplmns(Ljava/util/List;I)[B

    move-result-object v0

    .line 1317
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x2b

    .line 1320
    invoke-virtual {p0, v4, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const/16 v3, 0x6f7b    # 3.9992E-41f

    .line 1317
    invoke-virtual {v2, v3, v0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    return-void

    .line 1302
    :cond_1b2
    :goto_1b2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve a correct fplmn size: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 1303
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3, p1, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1304
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1d1
    .catch Ljava/lang/RuntimeException; {:try_start_e7 .. :try_end_1d1} :catch_4a
    .catchall {:try_start_e7 .. :try_end_1d1} :catchall_46

    return-void

    .line 1254
    :pswitch_1d2
    :try_start_1d2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1255
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 1256
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1ea

    if-nez v3, :cond_1e1

    goto :goto_1ea

    .line 1259
    :cond_1e1
    const-string v4, "Forbidden"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseBcdPlmnList([BLjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFplmns:[Ljava/lang/String;

    goto :goto_200

    .line 1257
    :cond_1ea
    :goto_1ea
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed getting Forbidden PLMNs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1261
    :goto_200
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_9da

    .line 1262
    sget-boolean v2, Lcom/android/internal/telephony/uicc/SIMRecords;->VDBG:Z

    if-eqz v2, :cond_20d

    const-string v2, "getForbiddenPlmns(): send async response"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->logv(Ljava/lang/String;)V
    :try_end_20d
    .catch Ljava/lang/RuntimeException; {:try_start_1d2 .. :try_end_20d} :catch_73
    .catchall {:try_start_1d2 .. :try_end_20d} :catchall_6e

    .line 1264
    :cond_20d
    :try_start_20d
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->retrievePendingTransaction(Ljava/lang/Integer;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_237

    .line 1267
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_230

    if-eqz v3, :cond_230

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFplmns:[Ljava/lang/String;

    if-eqz v2, :cond_230

    .line 1268
    array-length v0, v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_233

    .line 1271
    :cond_230
    invoke-static {p1, v9, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1273
    :goto_233
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1275
    :cond_237
    const-string p1, "Failed to retrieve a response message for FPLMN"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V
    :try_end_23c
    .catch Ljava/lang/RuntimeException; {:try_start_20d .. :try_end_23c} :catch_4a
    .catchall {:try_start_20d .. :try_end_23c} :catchall_46

    return-void

    .line 1242
    :pswitch_23d
    :try_start_23d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1243
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1244
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_256

    if-nez v0, :cond_24c

    goto :goto_256

    .line 1248
    :cond_24c
    const-string p1, "Equivalent Home"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseBcdPlmnList([BLjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mEhplmns:[Ljava/lang/String;

    goto/16 :goto_9da

    .line 1245
    :cond_256
    :goto_256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed getting Equivalent Home PLMNs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 1227
    :pswitch_26e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1228
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1230
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2b5

    if-nez v0, :cond_27d

    goto :goto_2b5

    .line 1234
    :cond_27d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1235
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/PlmnActRecord;->getRecords([B)[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    .line 1236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HplmnActRecord[]="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 1231
    :cond_2b5
    :goto_2b5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed getting Home PLMN with Access Tech Records: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 1211
    :pswitch_2cd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1212
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1214
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_318

    if-nez v0, :cond_2dc

    goto :goto_318

    .line 1219
    :cond_2dc
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1220
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/PlmnActRecord;->getRecords([B)[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mOplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    .line 1221
    sget-boolean p1, Lcom/android/internal/telephony/uicc/SIMRecords;->VDBG:Z

    if-eqz p1, :cond_9da

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OplmnActRecord[]="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mOplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 1215
    :cond_318
    :goto_318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed getting Operator PLMN with Access Tech Records: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 1196
    :pswitch_330
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1197
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1199
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_37b

    if-nez v0, :cond_33f

    goto :goto_37b

    .line 1203
    :cond_33f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1204
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/PlmnActRecord;->getRecords([B)[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPlmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    .line 1205
    sget-boolean p1, Lcom/android/internal/telephony/uicc/SIMRecords;->VDBG:Z

    if-eqz p1, :cond_9da

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PlmnActRecords="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPlmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 1200
    :cond_37b
    :goto_37b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed getting User PLMN with Access Tech Records: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 1179
    :pswitch_393
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1180
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1182
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3b9

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in get GID2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1184
    iput-object v9, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid2:Ljava/lang/String;

    goto/16 :goto_9da

    .line 1188
    :cond_3b9
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid2:Ljava/lang/String;

    .line 1190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GID2: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 1162
    :pswitch_3d7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1163
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1165
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3fd

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in get GID1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1167
    iput-object v9, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid1:Ljava/lang/String;

    goto/16 :goto_9da

    .line 1171
    :cond_3fd
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid1:Ljava/lang/String;

    .line 1173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GID1: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 1146
    :pswitch_41b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1148
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_43b

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in fetching EF_CSP data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 1153
    :cond_43b
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CSP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1156
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleEfCspData([B)V

    goto/16 :goto_9da

    .line 1131
    :pswitch_45c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1132
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1134
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_46c

    .line 1135
    iput-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    goto/16 :goto_9da

    .line 1137
    :cond_46c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1138
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B
    :try_end_486
    .catch Ljava/lang/RuntimeException; {:try_start_23d .. :try_end_486} :catch_73
    .catchall {:try_start_23d .. :try_end_486} :catchall_6e

    goto/16 :goto_9da

    .line 796
    :pswitch_488
    :try_start_488
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 798
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_49d

    .line 799
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdnTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    .line 801
    const-string v0, "Success to update EF[MSISDN]"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 804
    :cond_49d
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_9e8

    .line 805
    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 806
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_4b2
    .catch Ljava/lang/RuntimeException; {:try_start_488 .. :try_end_4b2} :catch_4a
    .catchall {:try_start_488 .. :try_end_4b2} :catchall_46

    return-void

    .line 1023
    :pswitch_4b3
    :try_start_4b3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1025
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_4bd

    goto/16 :goto_9da

    .line 1029
    :cond_4bd
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    .line 1031
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iCPHS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_4dd
    .catch Ljava/lang/RuntimeException; {:try_start_4b3 .. :try_end_4dd} :catch_73
    .catchall {:try_start_4b3 .. :try_end_4dd} :catchall_6e

    goto/16 :goto_9da

    .line 1108
    :pswitch_4df
    :try_start_4df
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1109
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4fc

    .line 1110
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4f3

    .line 1111
    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    if-eqz v0, :cond_4f3

    .line 1113
    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    .line 1116
    :cond_4f3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1117
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    goto :goto_512

    .line 1119
    :cond_4fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set CPHS MailBox with exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1121
    :goto_512
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_9e8

    .line 1122
    const-string v0, "Callback with CPHS MB successful."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1123
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1125
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_52e
    .catch Ljava/lang/RuntimeException; {:try_start_4df .. :try_end_52e} :catch_4a
    .catchall {:try_start_4df .. :try_end_52e} :catchall_46

    return-void

    .line 911
    :pswitch_52f
    :try_start_52f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 912
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 914
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_53f

    .line 915
    iput-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    goto/16 :goto_9da

    .line 917
    :cond_53f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFF_CPHS: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 918
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B
    :try_end_559
    .catch Ljava/lang/RuntimeException; {:try_start_52f .. :try_end_559} :catch_73
    .catchall {:try_start_52f .. :try_end_559} :catchall_6e

    goto/16 :goto_9da

    .line 999
    :pswitch_55b
    :try_start_55b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1000
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_56b

    .line 1001
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSms([B)V

    return-void

    .line 1003
    :cond_56b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on GET_SMS with exp "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    return-void

    .line 984
    :pswitch_582
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 986
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 988
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5b7

    if-nez v0, :cond_591

    goto :goto_5b7

    .line 992
    :cond_591
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "READ EF_SMS RECORD index="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 993
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x16

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6f3c

    invoke-virtual {p1, v3, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    return-void

    .line 989
    :cond_5b7
    :goto_5b7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on SMS_ON_SIM with exp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " index "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    return-void

    .line 1036
    :pswitch_5d6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SET_MBDN_DONE ex:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_608

    .line 1045
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_600

    .line 1046
    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    if-eqz v0, :cond_600

    .line 1048
    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    .line 1051
    :cond_600
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 1054
    :cond_608
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_64f

    .line 1055
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/os/Message;

    .line 1065
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_637

    if-eqz v0, :cond_637

    .line 1066
    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1067
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1069
    const-string p1, "Callback with MBDN successful."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_638

    :cond_637
    move-object v9, v2

    .line 1074
    :goto_638
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 p1, 0x19

    .line 1076
    invoke-virtual {p0, p1, v10, v1, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1075
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    return-void

    .line 1080
    :cond_64f
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_9e8

    .line 1081
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 1082
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1083
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_69a

    if-eqz v0, :cond_69a

    .line 1084
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1086
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    .line 1085
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v2

    .line 1084
    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_68d

    .line 1087
    const-string v2, "editable_voicemail_number_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68d

    .line 1091
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_6a6

    .line 1095
    :cond_68d
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_6a6

    .line 1099
    :cond_69a
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1102
    :goto_6a6
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 977
    :pswitch_6ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "marked read: sms "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_6c4
    .catch Ljava/lang/RuntimeException; {:try_start_55b .. :try_end_6c4} :catch_4a
    .catchall {:try_start_55b .. :try_end_6c4} :catchall_46

    return-void

    .line 968
    :pswitch_6c5
    :try_start_6c5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 969
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_6cf

    goto/16 :goto_9da

    .line 973
    :cond_6cf
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_9da

    .line 1009
    :pswitch_6d8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1010
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1012
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_6e6

    goto/16 :goto_9da

    .line 1016
    :cond_6e6
    new-instance p1, Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/uicc/UsimServiceTable;-><init>([B)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    .line 1017
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SST: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 957
    :pswitch_705
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 958
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_70f

    goto/16 :goto_9da

    .line 962
    :cond_70f
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEfOpl(Ljava/util/ArrayList;)V

    goto/16 :goto_9da

    .line 946
    :pswitch_718
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 947
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_722

    goto/16 :goto_9da

    .line 951
    :cond_722
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEfPnn(Ljava/util/ArrayList;)V
    :try_end_729
    .catch Ljava/lang/RuntimeException; {:try_start_6c5 .. :try_end_729} :catch_73
    .catchall {:try_start_6c5 .. :try_end_729} :catchall_6e

    goto/16 :goto_9da

    .line 937
    :pswitch_72b
    :try_start_72b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 938
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_9e8

    .line 939
    const-string v0, "update failed. "

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_738
    .catch Ljava/lang/RuntimeException; {:try_start_72b .. :try_end_738} :catch_4a
    .catchall {:try_start_72b .. :try_end_738} :catchall_46

    return-void

    .line 926
    :pswitch_739
    :try_start_739
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 927
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 929
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_747

    goto/16 :goto_9da

    .line 933
    :cond_747
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_9da

    .line 904
    :pswitch_74c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 905
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_9da

    .line 779
    :pswitch_755
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 781
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_764

    .line 782
    const-string p1, "Invalid or missing EF[MSISDN]"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 786
    :cond_764
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 788
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    .line 789
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    .line 791
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSISDN: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SIMRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 868
    :pswitch_792
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I
    :try_end_794
    .catch Ljava/lang/RuntimeException; {:try_start_739 .. :try_end_794} :catch_73
    .catchall {:try_start_739 .. :try_end_794} :catchall_6e

    .line 870
    :try_start_794
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-nez v0, :cond_7a8

    .line 871
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 872
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 874
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_7a6
    .catchall {:try_start_794 .. :try_end_7a6} :catchall_7cf

    if-eqz p1, :cond_7ad

    .line 898
    :cond_7a8
    :goto_7a8
    :try_start_7a8
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->updateOperatorPlmn()V
    :try_end_7ab
    .catch Ljava/lang/RuntimeException; {:try_start_7a8 .. :try_end_7ab} :catch_73
    .catchall {:try_start_7a8 .. :try_end_7ab} :catchall_6e

    goto/16 :goto_9da

    .line 878
    :cond_7ad
    :try_start_7ad
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_AD: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 880
    array-length p1, v0

    const/4 v1, 0x3

    if-ge p1, v1, :cond_7d2

    .line 881
    const-string p1, "Corrupt AD data on SIM"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_7a8

    :catchall_7cf
    move-exception v0

    move-object p1, v0

    goto :goto_7fd

    .line 885
    :cond_7d2
    array-length p1, v0

    if-ne p1, v1, :cond_7db

    .line 886
    const-string p1, "MNC length not present in EF_AD"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_7a8

    .line 890
    :cond_7db
    aget-byte p1, v0, v1

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7fa

    if-ne p1, v1, :cond_7e5

    goto :goto_7fa

    .line 894
    :cond_7e5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received invalid or unset MNC Length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_7a8

    .line 892
    :cond_7fa
    :goto_7fa
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I
    :try_end_7fc
    .catchall {:try_start_7ad .. :try_end_7fc} :catchall_7cf

    goto :goto_7a8

    .line 898
    :goto_7fd
    :try_start_7fd
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->updateOperatorPlmn()V

    .line 899
    throw p1

    .line 834
    :pswitch_801
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 835
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EF_CPHS_MWI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 839
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_83d

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 847
    :cond_83d
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    goto/16 :goto_9da

    .line 813
    :pswitch_841
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 814
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_MWIS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 818
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_87d

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_GET_MWIS_DONE exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 823
    :cond_87d
    aget-byte p1, v0, v1

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_889

    .line 824
    const-string p1, "SIMRecords: Uninitialized record MWIS"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_9da

    .line 828
    :cond_889
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B
    :try_end_88b
    .catch Ljava/lang/RuntimeException; {:try_start_7fd .. :try_end_88b} :catch_73
    .catchall {:try_start_7fd .. :try_end_88b} :catchall_6e

    goto/16 :goto_9da

    .line 727
    :pswitch_88d
    :try_start_88d
    iput-object v9, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 728
    iput-object v9, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;
    :try_end_891
    .catch Ljava/lang/RuntimeException; {:try_start_88d .. :try_end_891} :catch_4a
    .catchall {:try_start_88d .. :try_end_891} :catchall_46

    .line 731
    :try_start_891
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 733
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_8cf

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid or missing EF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v8, :cond_8aa

    .line 737
    const-string v1, "[MAILBOX]"

    goto :goto_8ac

    :cond_8aa
    const-string v1, "[MBDN]"

    :goto_8ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 742
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v5, :cond_9da

    .line 746
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 747
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 749
    invoke-virtual {p0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 747
    invoke-virtual {p1, v4, v3, v10, v0}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_9da

    .line 754
    :cond_8cf
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 757
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v8, :cond_8e7

    .line 758
    const-string v2, " EF[MAILBOX]"

    goto :goto_8e9

    :cond_8e7
    const-string v2, " EF[MBDN]"

    :goto_8e9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_912

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v5, :cond_912

    .line 764
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 765
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 767
    invoke-virtual {p0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 765
    invoke-virtual {p1, v4, v3, v10, v0}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_9da

    .line 772
    :cond_912
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 773
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    goto/16 :goto_9da

    .line 686
    :pswitch_920
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 687
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 690
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_953

    .line 692
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EF_MBI: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 695
    aget-byte p1, v0, v1

    and-int/2addr p1, v7

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    if-eqz p1, :cond_953

    if-eq p1, v7, :cond_953

    .line 699
    const-string p1, "Got valid mailbox number for MBDN"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    move v1, v10

    .line 705
    :cond_953
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-eqz v1, :cond_96f

    .line 709
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    .line 710
    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    .line 709
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_9da

    .line 714
    :cond_96f
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 716
    invoke-virtual {p0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 714
    invoke-virtual {p1, v4, v3, v10, v0}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_9da

    .line 853
    :pswitch_97e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 854
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 856
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_98b

    goto :goto_9da

    .line 860
    :cond_98b
    array-length p1, v0

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIccId:Ljava/lang/String;

    .line 861
    array-length p1, v0

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    .line 863
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iccid: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_9da

    .line 672
    :pswitch_9b4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 674
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_9d3

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception querying IMSI, Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto :goto_9da

    .line 679
    :cond_9d3
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setImsi(Ljava/lang/String;)V
    :try_end_9da
    .catch Ljava/lang/RuntimeException; {:try_start_891 .. :try_end_9da} :catch_73
    .catchall {:try_start_891 .. :try_end_9da} :catchall_6e

    .line 1380
    :cond_9da
    :goto_9da
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    return-void

    .line 1376
    :goto_9de
    :try_start_9de
    const-string v0, "Exception parsing SIM record"

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9e3
    .catchall {:try_start_9de .. :try_end_9e3} :catchall_46

    if-eqz v1, :cond_9e8

    .line 1380
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    :cond_9e8
    return-void

    :goto_9e9
    if-eqz v1, :cond_9ee

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    .line 1382
    :cond_9ee
    throw p1

    nop

    :pswitch_data_9f0
    .packed-switch 0x3
        :pswitch_9b4
        :pswitch_97e
        :pswitch_920
        :pswitch_88d
        :pswitch_841
        :pswitch_801
        :pswitch_792
        :pswitch_755
        :pswitch_88d
        :pswitch_74c
        :pswitch_739
        :pswitch_72b
        :pswitch_718
        :pswitch_705
        :pswitch_6d8
        :pswitch_6c5
        :pswitch_6ae
        :pswitch_5d6
        :pswitch_582
        :pswitch_55b
        :pswitch_42
        :pswitch_52f
        :pswitch_4df
        :pswitch_4b3
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_488
        :pswitch_42
        :pswitch_45c
        :pswitch_41b
        :pswitch_3d7
        :pswitch_42
        :pswitch_393
        :pswitch_330
        :pswitch_2cd
        :pswitch_26e
        :pswitch_23d
        :pswitch_1d2
        :pswitch_148
        :pswitch_e7
        :pswitch_42
        :pswitch_42
        :pswitch_a3
        :pswitch_4e
    .end packed-switch
.end method

.method public blacklist isCspPlmnEnabled()Z
    .registers 1

    .line 2152
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    return p0
.end method

.method protected greylist-max-r log(Ljava/lang/String;)V
    .registers 5

    .line 2112
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "SIMRecords"

    if-eqz v0, :cond_29

    .line 2113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2115
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[SIMRecords] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected greylist-max-r loge(Ljava/lang/String;)V
    .registers 5

    .line 2122
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "SIMRecords"

    if-eqz v0, :cond_29

    .line 2123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2125
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[SIMRecords] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected greylist-max-r logv(Ljava/lang/String;)V
    .registers 5

    .line 2139
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "SIMRecords"

    if-eqz v0, :cond_29

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2142
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[SIMRecords] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 2130
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "SIMRecords"

    if-eqz v0, :cond_29

    .line 2131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 2133
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[SIMRecords] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected blacklist onAllRecordsLoaded()V
    .registers 7

    .line 1566
    const-string v0, "record load complete"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1568
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSimLanguageFromEF()V

    .line 1569
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceCallForwardingFlagFromSimRecords()V

    .line 1573
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1574
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1577
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1578
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    .line 1577
    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    goto :goto_3f

    .line 1580
    :cond_3a
    const-string v1, "onAllRecordsLoaded empty \'gsm.sim.operator.numeric\' skipping"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1583
    :goto_3f
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 1585
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_91

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_91

    .line 1586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAllRecordsLoaded set mcc imsi"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/internal/telephony/uicc/SIMRecords;->VDBG:Z

    if-eqz v4, :cond_70

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_72

    :cond_70
    const-string v4, ""

    :goto_72
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1587
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1588
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1587
    invoke-virtual {v2, v4, v1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto :goto_96

    .line 1590
    :cond_91
    const-string v1, "onAllRecordsLoaded empty imsi skipping setting mcc"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1593
    :goto_96
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 1594
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1595
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method protected blacklist onLocked()V
    .registers 4

    .line 1642
    const-string v0, "only fetch EF_LI, EF_PL and EF_ICCID in locked state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1643
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onLocked()V

    .line 1645
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    .line 1647
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x2fe2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1648
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    return-void
.end method

.method public blacklist onReady()V
    .registers 1

    .line 1637
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    return-void
.end method

.method protected blacklist onRecordLoaded()V
    .registers 3

    .line 1512
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1516
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    return-void

    .line 1517
    :cond_30
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getLockedRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNetworkLockedRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_4a

    .line 1519
    :cond_3d
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-gez v0, :cond_49

    .line 1520
    const-string v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1521
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    :cond_49
    return-void

    .line 1518
    :cond_4a
    :goto_4a
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onLockedAllRecordsLoaded()V

    return-void
.end method

.method public blacklist onRefresh(Z[I)V
    .registers 3

    if-eqz p1, :cond_5

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    :cond_5
    return-void
.end method

.method protected blacklist resetRecords()V
    .registers 5

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 235
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    .line 236
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    const/4 v1, -0x1

    .line 237
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting0 mMncLength"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 239
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIccId:Ljava/lang/String;

    .line 240
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 241
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierNameDisplayCondition:I

    .line 242
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 243
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 244
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpdi:[Ljava/lang/String;

    .line 245
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPnnHomeName:Ljava/lang/String;

    .line 246
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPnns:[Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    .line 247
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mOpl:[Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;

    .line 248
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid1:Ljava/lang/String;

    .line 249
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid2:Ljava/lang/String;

    .line 250
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPlmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    .line 251
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mOplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    .line 252
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    .line 253
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFplmns:[Ljava/lang/String;

    .line 254
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mEhplmns:[Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 258
    const-string v2, "SIMRecords: onRadioOffOrNotAvailable set \'gsm.sim.operator.numeric\' to operator=null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update icc_operator_numeric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 267
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 268
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 269
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public blacklist setForbiddenPlmns(Landroid/os/Message;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1628
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->storePendingTransaction(Landroid/os/Message;Ljava/lang/Object;)I

    move-result p1

    .line 1629
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v0, 0x2a

    const v1, 0x12e501

    .line 1631
    invoke-virtual {p0, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const/16 p1, 0x6f7b    # 3.9992E-41f

    .line 1629
    invoke-virtual {p2, p1, p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFTransparentRecordSize(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setMailboxIndex(I)V
    .registers 2

    .line 2198
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    return-void
.end method

.method public blacklist setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 11

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 339
    :cond_9
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdn:Ljava/lang/String;

    .line 340
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdnTag:Ljava/lang/String;

    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Set MSISDN: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdnTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SIMRecords"

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdn:Ljava/lang/String;

    .line 343
    invoke-static {p2, v0}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 345
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdnTag:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdn:Ljava/lang/String;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 p1, 0x6f40

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v3

    const/16 p1, 0x1e

    .line 348
    invoke-virtual {p0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/16 v2, 0x6f40

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 347
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .registers 13

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_100

    :cond_a
    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    goto/16 :goto_100

    .line 554
    :cond_f
    iput p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    .line 556
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 559
    :try_start_1a
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result p1

    const/16 v1, 0xe

    const/4 v2, 0x0

    if-eqz p1, :cond_b0

    if-eqz p2, :cond_34

    .line 562
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v3, p1, v0

    or-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    goto :goto_3d

    :catch_30
    move-exception v0

    move-object p1, v0

    goto/16 :goto_fb

    .line 564
    :cond_34
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xfe

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 567
    :goto_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceCallForwardingFlag: enable="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mEfCfis="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 568
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 567
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_9a

    .line 572
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9a

    .line 573
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_CFIS: updating cf number, "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SIMRecords"

    invoke-static {v3, p3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logv(Ljava/lang/String;)V

    .line 574
    invoke-static {p3, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object p1

    .line 577
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    array-length v0, p1

    const/4 v3, 0x3

    invoke-static {p1, v2, p3, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    array-length p1, p1

    int-to-byte p1, p1

    const/4 v0, 0x2

    aput-byte p1, p3, v0

    const/4 p1, -0x1

    .line 580
    aput-byte p1, p3, v1

    const/16 v0, 0xf

    .line 581
    aput-byte p1, p3, v0

    .line 584
    :cond_9a
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/16 p1, 0x6fcb

    .line 586
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const/16 v4, 0x6fcb

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 584
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_d2

    .line 588
    :cond_b0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setVoiceCallForwardingFlag: ignoring enable="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " invalid mEfCfis="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 589
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 588
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 592
    :goto_d2
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz p1, :cond_100

    if-eqz p2, :cond_e2

    .line 594
    aget-byte p2, p1, v2

    and-int/lit16 p2, p2, 0xf0

    or-int/lit8 p2, p2, 0xa

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    goto :goto_eb

    .line 597
    :cond_e2
    aget-byte p2, p1, v2

    and-int/lit16 p2, p2, 0xf0

    or-int/lit8 p2, p2, 0x5

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    .line 601
    :goto_eb
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 p3, 0x6f13

    .line 603
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 601
    invoke-virtual {p2, p3, p1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_fa
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1a .. :try_end_fa} :catch_30

    return-void

    .line 606
    :goto_fb
    const-string p2, "Error saving call forwarding flag to SIM. Probably malformed SIM record"

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_100
    :goto_100
    return-void
.end method

.method public blacklist setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 11

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 393
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    if-eqz v0, :cond_1e

    .line 394
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/uicc/IccVmFixedException;

    const-string p2, "Voicemail number is fixed by operator"

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/uicc/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 396
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 400
    :cond_1e
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    .line 401
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    .line 403
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_4e

    const/16 v2, 0xff

    if-eq p1, v2, :cond_4e

    move p1, v0

    .line 406
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    const/16 v2, 0x14

    .line 408
    invoke-virtual {p0, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    const/4 v5, 0x0

    .line 406
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_4e
    move p1, v0

    .line 411
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 413
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x19

    .line 415
    invoke-virtual {p0, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 413
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    return-void

    .line 420
    :cond_6c
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    const-string p2, "Update SIM voice mailbox error"

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 422
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setVoiceMessageWaiting(II)V
    .registers 11

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_62

    :cond_9
    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    goto :goto_62

    .line 451
    :cond_d
    :try_start_d
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/16 p1, 0xe

    const/4 v7, 0x0

    if-eqz v4, :cond_3b

    .line 455
    aget-byte v1, v4, v7

    and-int/lit16 v1, v1, 0xfe

    if-nez p2, :cond_1c

    move v2, v7

    goto :goto_1d

    :cond_1c
    move v2, v0

    :goto_1d
    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 456
    aput-byte v1, v4, v7

    if-gez p2, :cond_29

    .line 462
    aput-byte v7, v4, v0

    goto :goto_2c

    :catch_26
    move-exception v0

    move-object p1, v0

    goto :goto_5d

    :cond_29
    int-to-byte v1, p2

    .line 464
    aput-byte v1, v4, v0

    .line 467
    :goto_2c
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v0, 0x6fca

    .line 469
    invoke-virtual {p0, p1, v0, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const/16 v2, 0x6fca

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 467
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 472
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-eqz v0, :cond_62

    .line 474
    aget-byte v1, v0, v7

    and-int/lit16 v1, v1, 0xf0

    if-nez p2, :cond_47

    const/4 p2, 0x5

    goto :goto_49

    :cond_47
    const/16 p2, 0xa

    :goto_49
    or-int/2addr p2, v1

    int-to-byte p2, p2

    .line 475
    aput-byte p2, v0, v7

    .line 476
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f11

    .line 478
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 476
    invoke-virtual {p2, v1, v0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_5c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_5c} :catch_26

    return-void

    .line 481
    :goto_5d
    const-string p2, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mVmConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " spnState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCphsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    .line 110
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCspPlmnEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " efMWIS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 112
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " efCPHS_MWI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 113
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mEfCff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 114
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mEfCfis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 115
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getOperatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPsiSmsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPsiSmsc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TPMR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSmssTpmrValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
