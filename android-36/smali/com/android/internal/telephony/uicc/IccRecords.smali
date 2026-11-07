.class public abstract Lcom/android/internal/telephony/uicc/IccRecords;
.super Landroid/os/Handler;
.source "IccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;,
        Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;,
        Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;,
        Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;,
        Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;
    }
.end annotation


# static fields
.field public static final blacklist CALL_FORWARDING_STATUS_DISABLED:I = 0x0

.field public static final blacklist CALL_FORWARDING_STATUS_ENABLED:I = 0x1

.field public static final blacklist CALL_FORWARDING_STATUS_UNKNOWN:I = -0x1

.field public static final blacklist CARRIER_NAME_DISPLAY_CONDITION_BITMASK_PLMN:I = 0x1

.field public static final blacklist CARRIER_NAME_DISPLAY_CONDITION_BITMASK_SPN:I = 0x2

.field protected static final blacklist DBG:Z = true

.field public static final blacklist DEFAULT_CARRIER_NAME_DISPLAY_CONDITION:I = 0x0

.field public static final blacklist DEFAULT_VOICE_MESSAGE_COUNT:I = -0x2

.field protected static final blacklist EVENT_APP_DETECTED:I = 0x104

.field protected static final blacklist EVENT_APP_LOCKED:I = 0x102

.field protected static final blacklist EVENT_APP_NETWORK_LOCKED:I = 0x103

.field protected static final blacklist EVENT_APP_READY:I = 0x101

.field public static final blacklist EVENT_CFI:I = 0x1

.field public static final blacklist EVENT_GET_ICC_RECORD_DONE:I = 0x64

.field protected static final blacklist EVENT_GET_SMS_RECORD_SIZE_DONE:I = 0x1c

.field public static final blacklist EVENT_MWI:I = 0x0

.field public static final blacklist EVENT_REFRESH:I = 0x1f

.field public static final blacklist EVENT_SET_SMSS_RECORD_DONE:I = 0xc9

.field public static final blacklist EVENT_SPN:I = 0x2

.field protected static final blacklist HANDLER_ACTION_BASE:I = 0x12e500

.field protected static final blacklist HANDLER_ACTION_NONE:I = 0x12e500

.field protected static final blacklist HANDLER_ACTION_SEND_RESPONSE:I = 0x12e501

.field public static final blacklist INVALID_CARRIER_NAME_DISPLAY_CONDITION_BITMASK:I = -0x1

.field protected static final blacklist LOCKED_RECORDS_REQ_REASON_LOCKED:I = 0x1

.field protected static final blacklist LOCKED_RECORDS_REQ_REASON_NETWORK_LOCKED:I = 0x2

.field protected static final blacklist LOCKED_RECORDS_REQ_REASON_NONE:I = 0x0

.field private static final blacklist MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

.field public static final blacklist PLMN_MAX_LENGTH:I = 0x6

.field public static final blacklist PLMN_MIN_LENGTH:I = 0x5

.field protected static final blacklist SMSS_INVALID_TPMR:I = -0x1

.field protected static final blacklist SYSTEM_EVENT_BASE:I = 0x100

.field protected static final blacklist UNINITIALIZED:I = -0x1

.field protected static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist UNKNOWN_VOICE_MESSAGE_COUNT:I = -0x1

.field protected static final blacklist VDBG:Z

.field protected static blacklist sNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected blacklist mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field protected blacklist mCarrierNameDisplayCondition:I

.field blacklist mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

.field protected blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected blacklist mContext:Landroid/content/Context;

.field protected blacklist mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected blacklist mEhplmns:[Ljava/lang/String;

.field protected blacklist mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field protected blacklist mFplmns:[Ljava/lang/String;

.field protected blacklist mFullIccId:Ljava/lang/String;

.field protected blacklist mGid1:Ljava/lang/String;

.field protected blacklist mGid2:Ljava/lang/String;

.field protected blacklist mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

.field public blacklist mIccId:Ljava/lang/String;

.field protected blacklist mImsi:Ljava/lang/String;

.field protected blacklist mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mIsVoiceMailFixed:Z

.field protected blacklist mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected blacklist mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mLockedRecordsReqReason:I

.field protected blacklist mMailboxIndex:I

.field protected blacklist mMncLength:I

.field protected blacklist mMsisdn:Ljava/lang/String;

.field protected blacklist mMsisdnTag:Ljava/lang/String;

.field protected blacklist mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mNewMsisdn:Ljava/lang/String;

.field protected blacklist mNewMsisdnTag:Ljava/lang/String;

.field protected blacklist mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mNewVoiceMailNum:Ljava/lang/String;

.field protected blacklist mNewVoiceMailTag:Ljava/lang/String;

.field protected blacklist mOpl:[Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;

.field protected blacklist mOplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

.field protected blacklist mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected final blacklist mPendingTransactions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/os/Message;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected blacklist mPlmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

.field protected blacklist mPnnHomeName:Ljava/lang/String;

.field protected blacklist mPnns:[Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

.field protected blacklist mPrefLang:Ljava/lang/String;

.field protected blacklist mPsiSmsc:Ljava/lang/String;

.field protected blacklist mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mRecordsOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mRecordsRequested:Z

.field protected blacklist mRecordsToLoad:I

.field protected blacklist mSmsCountOnIcc:I

.field protected blacklist mSmssValues:[B

.field protected blacklist mSpdi:[Ljava/lang/String;

.field private blacklist mSpn:Ljava/lang/String;

.field protected blacklist mSpnUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected blacklist mVoiceMailNum:Ljava/lang/String;

.field protected blacklist mVoiceMailTag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 153

    .line 65
    const-string v0, "IccRecords"

    const/4 v1, 0x2

    .line 66
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    .line 74
    const-string v151, "502147"

    const-string v152, "502148"

    const-string v1, "302370"

    const-string v2, "302720"

    const-string v3, "310260"

    const-string v4, "405025"

    const-string v5, "405026"

    const-string v6, "405027"

    const-string v7, "405028"

    const-string v8, "405029"

    const-string v9, "405030"

    const-string v10, "405031"

    const-string v11, "405032"

    const-string v12, "405033"

    const-string v13, "405034"

    const-string v14, "405035"

    const-string v15, "405036"

    const-string v16, "405037"

    const-string v17, "405038"

    const-string v18, "405039"

    const-string v19, "405040"

    const-string v20, "405041"

    const-string v21, "405042"

    const-string v22, "405043"

    const-string v23, "405044"

    const-string v24, "405045"

    const-string v25, "405046"

    const-string v26, "405047"

    const-string v27, "405750"

    const-string v28, "405751"

    const-string v29, "405752"

    const-string v30, "405753"

    const-string v31, "405754"

    const-string v32, "405755"

    const-string v33, "405756"

    const-string v34, "405799"

    const-string v35, "405800"

    const-string v36, "405801"

    const-string v37, "405802"

    const-string v38, "405803"

    const-string v39, "405804"

    const-string v40, "405805"

    const-string v41, "405806"

    const-string v42, "405807"

    const-string v43, "405808"

    const-string v44, "405809"

    const-string v45, "405810"

    const-string v46, "405811"

    const-string v47, "405812"

    const-string v48, "405813"

    const-string v49, "405814"

    const-string v50, "405815"

    const-string v51, "405816"

    const-string v52, "405817"

    const-string v53, "405818"

    const-string v54, "405819"

    const-string v55, "405820"

    const-string v56, "405821"

    const-string v57, "405822"

    const-string v58, "405823"

    const-string v59, "405824"

    const-string v60, "405825"

    const-string v61, "405826"

    const-string v62, "405827"

    const-string v63, "405828"

    const-string v64, "405829"

    const-string v65, "405830"

    const-string v66, "405831"

    const-string v67, "405832"

    const-string v68, "405833"

    const-string v69, "405834"

    const-string v70, "405835"

    const-string v71, "405836"

    const-string v72, "405837"

    const-string v73, "405838"

    const-string v74, "405839"

    const-string v75, "405840"

    const-string v76, "405841"

    const-string v77, "405842"

    const-string v78, "405843"

    const-string v79, "405844"

    const-string v80, "405845"

    const-string v81, "405846"

    const-string v82, "405847"

    const-string v83, "405848"

    const-string v84, "405849"

    const-string v85, "405850"

    const-string v86, "405851"

    const-string v87, "405852"

    const-string v88, "405853"

    const-string v89, "405854"

    const-string v90, "405855"

    const-string v91, "405856"

    const-string v92, "405857"

    const-string v93, "405858"

    const-string v94, "405859"

    const-string v95, "405860"

    const-string v96, "405861"

    const-string v97, "405862"

    const-string v98, "405863"

    const-string v99, "405864"

    const-string v100, "405865"

    const-string v101, "405866"

    const-string v102, "405867"

    const-string v103, "405868"

    const-string v104, "405869"

    const-string v105, "405870"

    const-string v106, "405871"

    const-string v107, "405872"

    const-string v108, "405873"

    const-string v109, "405874"

    const-string v110, "405875"

    const-string v111, "405876"

    const-string v112, "405877"

    const-string v113, "405878"

    const-string v114, "405879"

    const-string v115, "405880"

    const-string v116, "405881"

    const-string v117, "405882"

    const-string v118, "405883"

    const-string v119, "405884"

    const-string v120, "405885"

    const-string v121, "405886"

    const-string v122, "405908"

    const-string v123, "405909"

    const-string v124, "405910"

    const-string v125, "405911"

    const-string v126, "405912"

    const-string v127, "405913"

    const-string v128, "405914"

    const-string v129, "405915"

    const-string v130, "405916"

    const-string v131, "405917"

    const-string v132, "405918"

    const-string v133, "405919"

    const-string v134, "405920"

    const-string v135, "405921"

    const-string v136, "405922"

    const-string v137, "405923"

    const-string v138, "405924"

    const-string v139, "405925"

    const-string v140, "405926"

    const-string v141, "405927"

    const-string v142, "405928"

    const-string v143, "405929"

    const-string v144, "405930"

    const-string v145, "405931"

    const-string v146, "405932"

    const-string v147, "502142"

    const-string v148, "502143"

    const-string v149, "502145"

    const-string v150, "502146"

    filled-new-array/range {v1 .. v152}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/IccRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .line 203
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccRecords;->sNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 7

    .line 323
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpnUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 129
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 130
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdn:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdnTag:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    .line 148
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    const/4 v2, -0x1

    .line 151
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    .line 152
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    .line 154
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmsCountOnIcc:I

    .line 204
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingTransactions:Ljava/util/HashMap;

    .line 324
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    .line 325
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 326
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 327
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 328
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 331
    new-instance p1, Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    .line 332
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x1f

    invoke-interface {p1, p0, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 334
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p2, 0x101

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 335
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p2, 0x104

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForDetected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p2, 0x102

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 337
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p2, 0x103

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public static blacklist convertSpnDisplayConditionToBitmask(I)I
    .registers 3

    .line 0
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_e

    or-int/lit8 p0, v1, 0x2

    return p0

    :cond_e
    return v1
.end method

.method protected static blacklist findBestLanguage([B[Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_36

    if-nez p1, :cond_6

    goto :goto_36

    :cond_6
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    add-int/lit8 v3, v2, 0x1

    .line 1049
    array-length v4, p0

    if-ge v3, v4, :cond_36

    .line 1050
    new-instance v3, Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    const/4 v5, 0x2

    invoke-direct {v3, p0, v2, v5, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move v4, v1

    .line 1051
    :goto_16
    array-length v6, p1

    if-ge v4, v6, :cond_33

    .line 1052
    aget-object v6, p1, v4

    if-eqz v6, :cond_30

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v5, :cond_30

    aget-object v6, p1, v4

    .line 1053
    invoke-virtual {v6, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    return-object v3

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_33
    add-int/lit8 v2, v2, 0x2

    goto :goto_8

    :cond_36
    :goto_36
    return-object v0
.end method

.method public static blacklist getNetworkNameForPlmnFromPnnOpl([Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;[Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_48

    if-eqz p0, :cond_48

    if-eqz p2, :cond_48

    .line 1486
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_48

    .line 1487
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_16

    goto :goto_48

    .line 1491
    :cond_16
    array-length v1, p1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_48

    aget-object v3, p1, v2

    .line 1492
    invoke-virtual {v3, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->getPnnIdx(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_45

    .line 1494
    array-length p1, p0

    if-ge v3, p1, :cond_2e

    aget-object p0, p0, v3

    if-eqz p0, :cond_2e

    .line 1495
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1497
    :cond_2e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid PNN record for Record"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IccRecords"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_48
    :goto_48
    return-object v0
.end method


# virtual methods
.method public blacklist createSmssRecord(Landroid/os/Message;[B)Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;
    .registers 3

    .line 1676
    new-instance p0, Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;-><init>(Landroid/os/Message;[B)V

    return-object p0
.end method

.method public blacklist dispose()V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForDetected(Landroid/os/Handler;)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 362
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 363
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 364
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_2f

    .line 366
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 368
    :cond_2f
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 1404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IccRecords: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mDestroyed="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mCi="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mFh="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mParentApp="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " recordsLoadedRegistrants: size="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p3}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move p3, p1

    .line 1410
    :goto_88
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    const-string v1, "]="

    if-ge p3, v0, :cond_bb

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  recordsLoadedRegistrants["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1412
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1411
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_88

    .line 1414
    :cond_bb
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mLockedRecordsLoadedRegistrants: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1415
    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1414
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1416
    :goto_d6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    const-string v2, "  mLockedRecordsLoadedRegistrants["

    if-ge p3, v0, :cond_107

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1418
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1417
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_d6

    .line 1420
    :cond_107
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mNetworkLockedRecordsLoadedRegistrants: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1421
    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1420
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1422
    :goto_122
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_151

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1424
    invoke-virtual {v3, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1423
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_122

    .line 1426
    :cond_151
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mImsiReadyRegistrants: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1427
    :goto_16c
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_19d

    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mImsiReadyRegistrants["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1429
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1428
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_16c

    .line 1431
    :cond_19d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mRecordsEventsRegistrants: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1432
    :goto_1b8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_1e9

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRecordsEventsRegistrants["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1434
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1433
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1b8

    .line 1436
    :cond_1e9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mNewSmsRegistrants: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1437
    :goto_204
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_235

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNewSmsRegistrants["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1439
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1438
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_204

    .line 1441
    :cond_235
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mNetworkSelectionModeAutomaticRegistrants: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1442
    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1441
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1443
    :goto_250
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_281

    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNetworkSelectionModeAutomaticRegistrants["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1445
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1444
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_250

    .line 1447
    :cond_281
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mRecordsRequested="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mLockedRecordsReqReason="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mRecordsToLoad="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mRdnCache="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    invoke-static {p3}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " iccid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mMsisdn="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMsisdnTag="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVoiceMailNum="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVoiceMailTag="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewVoiceMailNum="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewVoiceMailTag="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsVoiceMailFixed="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mImsi="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_3ca

    .line 1462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3cc

    :cond_3ca
    const-string p1, "null"

    :goto_3cc
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1461
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result p1

    if-eqz p1, :cond_3f8

    .line 1464
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mFakeImsi="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIMSI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    :cond_3f8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mMncLength="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mMailboxIndex="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mSpn="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result p1

    if-eqz p1, :cond_45c

    .line 1470
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mFakeSpn="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeSpn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    :cond_45c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .registers 1

    .line 386
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    return-object p0
.end method

.method public blacklist getCarrierNameDisplayCondition()I
    .registers 1

    .line 1108
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierNameDisplayCondition:I

    return p0
.end method

.method public blacklist getEhplmns()[Ljava/lang/String;
    .registers 1

    .line 1229
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mEhplmns:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getFullIccId()Ljava/lang/String;
    .registers 1

    .line 450
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getGid1()Ljava/lang/String;
    .registers 2

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeGid1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 715
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid1:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getGid2()Ljava/lang/String;
    .registers 2

    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeGid2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 729
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid2:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getHomePlmns()[Ljava/lang/String;
    .registers 5

    .line 1133
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1136
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEhplmns()[Ljava/lang/String;

    move-result-object v1

    .line 1139
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderDisplayInformation()[Ljava/lang/String;

    move-result-object p0

    .line 1142
    invoke-static {v1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v1, 0x1

    .line 1143
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 1146
    :cond_18
    invoke-static {p0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    const-class v3, Ljava/lang/String;

    if-nez v2, :cond_2b

    .line 1147
    filled-new-array {v1, p0}, [[Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/internal/telephony/util/ArrayUtils;->concatElements(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [Ljava/lang/String;

    .line 1150
    :cond_2b
    invoke-static {v3, v1, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIMSI()Ljava/lang/String;
    .registers 2

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIMSI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 611
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIccId()Ljava/lang/String;
    .registers 2

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIccid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 442
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1270
    sget-boolean v0, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    if-eqz v0, :cond_9

    const-string v0, "getIccSimChallengeResponse:"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1273
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1274
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v2, 0x0

    if-eqz v0, :cond_cf

    if-nez v1, :cond_14

    goto/16 :goto_cf

    .line 1280
    :cond_14
    new-instance v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;-><init>(Lcom/android/internal/telephony/uicc/IccRecords-IA;)V

    .line 1282
    monitor-enter v3

    .line 1283
    :try_start_1a
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x5a

    const/4 v5, 0x0

    .line 1284
    invoke-virtual {p0, v4, v5, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1283
    invoke-interface {v0, p1, p2, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1286
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_3f

    :cond_2c
    const-wide/16 v0, 0x9c4

    add-long v4, p1, v0

    .line 1290
    :try_start_30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_49

    .line 1291
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_3e} :catch_42
    .catchall {:try_start_30 .. :try_end_3e} :catchall_3f

    goto :goto_49

    :catchall_3f
    move-exception p0

    goto/16 :goto_cd

    .line 1293
    :catch_42
    :try_start_42
    const-string v4, "IccRecords"

    const-string v5, "getIccSimChallengeResponse: InterruptedException."

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_49
    :goto_49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    cmp-long v4, v4, v0

    if-gez v4, :cond_5a

    iget-object v4, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->authRsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    if-nez v4, :cond_5a

    iget-object v4, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2c

    .line 1298
    :cond_5a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    cmp-long p1, v4, v0

    if-ltz p1, :cond_72

    iget-object p1, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->authRsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    if-nez p1, :cond_72

    iget-object p1, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_72

    .line 1300
    const-string p1, "getIccSimChallengeResponse timeout!"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 1301
    monitor-exit v3

    return-object v2

    .line 1304
    :cond_72
    iget-object p1, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->exception:Ljava/lang/Throwable;

    instance-of p2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz p2, :cond_90

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 1305
    sget-object p2, Lcom/android/internal/telephony/uicc/IccRecords$1;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_8a

    goto :goto_90

    .line 1307
    :cond_8a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 1312
    :cond_90
    :goto_90
    iget-object p1, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_ac

    .line 1313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getIccSimChallengeResponse exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 1316
    monitor-exit v3

    return-object v2

    .line 1319
    :cond_ac
    iget-object p1, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->authRsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    if-nez p1, :cond_b7

    .line 1320
    const-string p1, "getIccSimChallengeResponse: No authentication response"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 1321
    monitor-exit v3

    return-object v2

    .line 1323
    :cond_b7
    monitor-exit v3
    :try_end_b8
    .catchall {:try_start_42 .. :try_end_b8} :catchall_3f

    .line 1324
    sget-boolean p1, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    if-eqz p1, :cond_c1

    const-string p1, "getIccSimChallengeResponse: return rsp.authRsp"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1326
    :cond_c1
    iget-object p0, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->authRsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz p0, :cond_cc

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    :cond_cc
    return-object v2

    .line 1323
    :goto_cd
    :try_start_cd
    monitor-exit v3
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_3f

    throw p0

    .line 1276
    :cond_cf
    :goto_cf
    const-string p1, "getIccSimChallengeResponse: Fail, ci or parentApp is null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    return-object v2
.end method

.method public blacklist getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected blacklist getLockedRecordsLoaded()Z
    .registers 2

    .line 867
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-nez v0, :cond_a

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getMsisdnAlphaTag()Ljava/lang/String;
    .registers 1

    .line 764
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getMsisdnNumber()Ljava/lang/String;
    .registers 1

    .line 701
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNAI()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected blacklist getNetworkLockedRecordsLoaded()Z
    .registers 2

    .line 872
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-nez v0, :cond_b

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getOperatorNumeric()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getOpl()[Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;
    .registers 1

    .line 751
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mOpl:[Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;

    return-object p0
.end method

.method public blacklist getPlmnsFromHplmnActRecord()[Ljava/lang/String;
    .registers 5

    .line 1236
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1237
    :cond_6
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1238
    :goto_a
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    array-length v3, v2

    if-ge v1, v3, :cond_18

    .line 1239
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    return-object v0
.end method

.method public blacklist getPnnHomeName()Ljava/lang/String;
    .registers 2

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakePnnHomeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 743
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPnnHomeName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPnns()[Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;
    .registers 1

    .line 747
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPnns:[Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    return-object p0
.end method

.method public blacklist getRecordsLoaded()Z
    .registers 2

    .line 863
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-nez v0, :cond_a

    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getServiceProviderDisplayInformation()[Ljava/lang/String;
    .registers 1

    .line 1120
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpdi:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getServiceProviderName()Ljava/lang/String;
    .registers 2

    .line 777
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeSpn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 783
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getServiceProviderNameWithBrandOverride()Ljava/lang/String;
    .registers 3

    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    return-object v0

    .line 800
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSimLanguage()Ljava/lang/String;
    .registers 1

    .line 1024
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSmsCapacityOnIcc()I
    .registers 3

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSmsCapacityOnIcc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmsCountOnIcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1372
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmsCountOnIcc:I

    return p0
.end method

.method public blacklist getSmscIdentity()Ljava/lang/String;
    .registers 1

    .line 1400
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPsiSmsc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSmssTpmrValue()I
    .registers 3

    .line 1667
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmssValues:[B

    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 p0, 0x0

    .line 1668
    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 1670
    :cond_d
    const-string v0, "IccRecords - EF_SMSS is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getVoiceCallForwardingFlag()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 1

    .line 838
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getVoiceMailNumber()Ljava/lang/String;
    .registers 1

    .line 768
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    return-object p0
.end method

.method public abstract blacklist getVoiceMessageCount()I
.end method

.method protected abstract blacklist handleFileUpdate(I)V
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 881
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1c1

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_195

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_117

    const/16 v1, 0x64

    if-eq v0, v1, :cond_b7

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_61

    const/16 v1, 0xca

    if-eq v0, v1, :cond_3c

    packed-switch v0, :pswitch_data_23e

    .line 1016
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 888
    :pswitch_24
    iput v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 889
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onDetected()V

    return-void

    .line 898
    :pswitch_2a
    iput v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 899
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onLocked()V

    return-void

    .line 893
    :pswitch_30
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 894
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onLocked()V

    return-void

    .line 883
    :pswitch_36
    iput v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 884
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onReady()V

    return-void

    .line 1007
    :cond_3c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1008
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_5b

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read USIM EF_FDN field error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    return-void

    .line 1011
    :cond_5b
    const-string p1, "EF_FDN read successfully"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    return-void

    .line 987
    :cond_61
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 989
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_6c

    .line 990
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;

    goto :goto_6d

    :cond_6c
    const/4 v0, 0x0

    .line 992
    :goto_6d
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_84

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;->-$$Nest$mgetSmssValue(Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;)[B

    move-result-object v1

    if-eqz v1, :cond_84

    .line 993
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;->-$$Nest$mgetSmssValue(Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;)[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmssValues:[B

    goto :goto_9a

    .line 995
    :cond_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM EF_SMSS field updating error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    :goto_9a
    if-eqz v0, :cond_b1

    .line 997
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;->-$$Nest$mgetMessage(Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_b1

    .line 998
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;->-$$Nest$mgetMessage(Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;)Landroid/os/Message;

    move-result-object p0

    .line 999
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v0, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1000
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1002
    :cond_b1
    const-string p1, "smssRecord or smssRecord.getMessage() object is null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    return-void

    .line 904
    :cond_b7
    :try_start_b7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 905
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;->getEfName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 908
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_f6

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Record Load Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    goto :goto_f9

    :catchall_f2
    move-exception p1

    goto :goto_113

    :catch_f4
    move-exception p1

    goto :goto_fe

    .line 911
    :cond_f6
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;->onRecordLoaded(Landroid/os/AsyncResult;)V
    :try_end_f9
    .catch Ljava/lang/RuntimeException; {:try_start_b7 .. :try_end_f9} :catch_f4
    .catchall {:try_start_b7 .. :try_end_f9} :catchall_f2

    .line 918
    :goto_f9
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    goto/16 :goto_238

    .line 915
    :goto_fe
    :try_start_fe
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception parsing SIM record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_112
    .catchall {:try_start_fe .. :try_end_112} :catchall_f2

    goto :goto_f9

    .line 918
    :goto_113
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    .line 919
    throw p1

    .line 933
    :cond_117
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 934
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;

    .line 935
    const-string v1, "EVENT_AKA_AUTHENTICATE_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 937
    monitor-enter v0

    .line 938
    :try_start_125
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_144

    .line 939
    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->exception:Ljava/lang/Throwable;

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception ICC SIM AKA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    goto :goto_18d

    :catchall_142
    move-exception p0

    goto :goto_193

    .line 941
    :cond_144
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez p1, :cond_157

    .line 942
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "Null SIM authentication response"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->exception:Ljava/lang/Throwable;

    .line 944
    const-string p1, "EVENT_AKA_AUTHENTICATE_DONE: null response"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_156
    .catchall {:try_start_125 .. :try_end_156} :catchall_142

    goto :goto_18d

    .line 947
    :cond_157
    :try_start_157
    check-cast p1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iput-object p1, v0, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->authRsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 948
    sget-boolean p1, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    if-eqz p1, :cond_18d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ICC SIM AKA: authRsp = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->authRsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V
    :try_end_175
    .catch Ljava/lang/ClassCastException; {:try_start_157 .. :try_end_175} :catch_176
    .catchall {:try_start_157 .. :try_end_175} :catchall_142

    goto :goto_18d

    :catch_176
    move-exception p1

    .line 950
    :try_start_177
    iput-object p1, v0, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->exception:Ljava/lang/Throwable;

    .line 951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse ICC SIM AKA contents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 954
    :cond_18d
    :goto_18d
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 955
    monitor-exit v0

    goto/16 :goto_238

    :goto_193
    monitor-exit v0
    :try_end_194
    .catchall {:try_start_177 .. :try_end_194} :catchall_142

    throw p0

    .line 923
    :cond_195
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 924
    const-string v0, "Card REFRESH occurred: "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 925
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1aa

    .line 926
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    return-void

    .line 928
    :cond_1aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Icc refresh Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    return-void

    .line 960
    :cond_1c1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 962
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1e3

    .line 963
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in EVENT_GET_SMS_RECORD_SIZE_DONE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    return-void

    .line 968
    :cond_1e3
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 973
    :try_start_1e7
    aget v0, p1, v3

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmsCountOnIcc:I

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_GET_SMS_RECORD_SIZE_DONE Size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V
    :try_end_215
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1e7 .. :try_end_215} :catch_21b
    .catchall {:try_start_1e7 .. :try_end_215} :catchall_219

    .line 982
    :goto_215
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    goto :goto_238

    :catchall_219
    move-exception p1

    goto :goto_239

    :catch_21b
    move-exception p1

    const/4 v0, -0x1

    .line 978
    :try_start_21d
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmsCountOnIcc:I

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArrayIndexOutOfBoundsException in EVENT_GET_SMS_RECORD_SIZE_DONE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 979
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_237
    .catchall {:try_start_21d .. :try_end_237} :catchall_219

    goto :goto_215

    :goto_238
    return-void

    .line 982
    :goto_239
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    .line 983
    throw p1

    nop

    :pswitch_data_23e
    .packed-switch 0x101
        :pswitch_36
        :pswitch_30
        :pswitch_2a
        :pswitch_24
    .end packed-switch
.end method

.method protected blacklist handleRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .registers 4

    if-nez p1, :cond_8

    .line 1067
    const-string p1, "handleRefresh received without input"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    return-void

    .line 1071
    :cond_8
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1072
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    .line 1077
    :cond_1f
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-eqz v0, :cond_29

    .line 1084
    const-string p1, "handleRefresh with unknown operation"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    return-void

    .line 1079
    :cond_29
    const-string v0, "handleRefresh with SIM_FILE_UPDATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1080
    iget p1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleFileUpdate(I)V

    return-void
.end method

.method public blacklist isCspPlmnEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isLoaded()Z
    .registers 1

    .line 1198
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public blacklist isProvisioned()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist loadFdnRecords()V
    .registers 4

    .line 1700
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_1c

    .line 1701
    const-string v0, "Loading FdnRecords"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1702
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/16 v1, 0xca

    .line 1703
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/16 v1, 0x6f3b

    const/16 v2, 0x6f4b

    .line 1702
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    :cond_1c
    return-void
.end method

.method protected abstract blacklist log(Ljava/lang/String;)V
.end method

.method protected abstract blacklist loge(Ljava/lang/String;)V
.end method

.method protected abstract blacklist onAllRecordsLoaded()V
.end method

.method protected blacklist onDetected()V
    .registers 2

    const/4 v0, 0x0

    .line 374
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 375
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected blacklist onLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 381
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected abstract blacklist onReady()V
.end method

.method protected abstract blacklist onRecordLoaded()V
.end method

.method public abstract blacklist onRefresh(Z[I)V
.end method

.method protected blacklist parseEfPsiSmsc([B)Ljava/lang/String;
    .registers 5

    .line 1382
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1383
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 1384
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_2b

    .line 1385
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 1388
    :cond_2b
    sget-boolean v0, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    if-eqz v0, :cond_47

    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find EF PSISMSC field in SIM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_22

    .line 538
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 539
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 542
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public blacklist registerForLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_22

    .line 495
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 496
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getLockedRecordsLoaded()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 499
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public blacklist registerForNetworkLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_22

    .line 518
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 519
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 521
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNetworkLockedRecordsLoaded()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 522
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public blacklist registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 590
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 591
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 580
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 581
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 566
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 567
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    const/4 p0, 0x0

    .line 571
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyResult(Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 572
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_22

    .line 458
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 459
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 461
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 462
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public blacklist registerForRecordsOverride(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_22

    .line 479
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 480
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 482
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 483
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public blacklist registerForSpnUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_24

    .line 554
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 555
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpnUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 557
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_24

    .line 558
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist retrievePendingTransaction(Ljava/lang/Integer;)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/os/Message;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingTransactions:Ljava/util/HashMap;

    monitor-enter v0

    .line 425
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 426
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public blacklist setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->override(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p2, v7}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 345
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 346
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist setImsi(Ljava/lang/String;)V
    .registers 5

    .line 620
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 621
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 622
    const-string p1, "Invalid IMSI padding digits received."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 625
    :cond_11
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 627
    :cond_1c
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz p1, :cond_2f

    const-string v1, "[0-9]+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 628
    const-string p1, "Invalid non-numeric IMSI digits received."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 629
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 635
    :cond_2f
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v1, 0x6

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_44

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0xf

    if-le p1, v2, :cond_5c

    .line 636
    :cond_44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid IMSI "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 637
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 640
    :cond_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMSI: mMncLength="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 642
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz p1, :cond_a6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_a6

    .line 643
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMSI: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 647
    :cond_a6
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->updateOperatorPlmn()V

    .line 649
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6

    .line 756
    const-string p1, "setMsisdn() should not be invoked on base IccRecords"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 758
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 p2, 0x82

    const/4 v0, 0x0

    const/16 v1, 0x6a

    invoke-direct {p1, v1, p2, v0}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    .line 759
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object p1

    iput-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 760
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected blacklist setServiceProviderName(Ljava/lang/String;)V
    .registers 3

    .line 804
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz p1, :cond_f

    .line 805
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    .line 806
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpnUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_17
    return-void
.end method

.method protected blacklist setSimLanguage([B[B)V
    .registers 6

    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    .line 1030
    :try_start_a
    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->findBestLanguage([B[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_29

    .line 1032
    :catch_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse EF-LI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1035
    :goto_29
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;

    if-nez v1, :cond_4c

    .line 1037
    :try_start_2d
    invoke-static {p2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->findBestLanguage([B[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;
    :try_end_33
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_33} :catch_34

    goto :goto_4c

    .line 1039
    :catch_34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to parse EF-PL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public blacklist setSmssTpmrValue(ILandroid/os/Message;)V
    .registers 6

    .line 1639
    sget-boolean v0, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    if-eqz v0, :cond_9

    const-string v0, "setSmssTpmrValue()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1640
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmssValues:[B

    const/16 v1, 0xff

    if-eqz v0, :cond_33

    array-length v2, v0

    if-lez v2, :cond_33

    if-ltz p1, :cond_33

    if-gt p1, v1, :cond_33

    .line 1641
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    and-int/2addr p1, v1

    int-to-byte p1, p1

    const/4 v1, 0x0

    .line 1642
    aput-byte p1, v0, v1

    .line 1643
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->createSmssRecord(Landroid/os/Message;[B)Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;

    move-result-object p1

    .line 1644
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0xc9

    .line 1645
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/16 p1, 0x6f43

    .line 1644
    invoke-virtual {p2, p1, v0, p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    return-void

    :cond_33
    if-eqz p2, :cond_64

    .line 1647
    const-string v0, "Failed to set EF_SMSS [TPMR] field to SIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 1648
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmssValues:[B

    if-eqz p0, :cond_54

    array-length p0, p0

    if-gtz p0, :cond_42

    goto :goto_54

    :cond_42
    if-ltz p1, :cond_46

    if-le p1, v1, :cond_61

    .line 1652
    :cond_46
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TPMR value is not in allowed range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_61

    .line 1649
    :cond_54
    :goto_54
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "EF_SMSS file not found"

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1655
    :cond_61
    :goto_61
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_64
    return-void
.end method

.method public blacklist setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .registers 4

    .line 0
    return-void
.end method

.method public abstract blacklist setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist setVoiceMessageWaiting(II)V
.end method

.method public blacklist storePendingTransaction(Landroid/os/Message;)I
    .registers 3

    const/4 v0, 0x0

    .line 397
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->storePendingTransaction(Landroid/os/Message;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist storePendingTransaction(Landroid/os/Message;Ljava/lang/Object;)I
    .registers 5

    .line 409
    sget-object v0, Lcom/android/internal/telephony/uicc/IccRecords;->sNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 410
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingTransactions:Ljava/util/HashMap;

    monitor-enter p1

    .line 412
    :try_start_e
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingTransactions:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    monitor-exit p1

    return v0

    :catchall_19
    move-exception p0

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDestroyed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mFh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mParentApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " recordsToLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " adnCache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " recordsRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " lockedRecordsReqReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " iccid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_8f

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFakeIccid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIccid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    :cond_8f
    move-object v0, v2

    :goto_90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " msisdnTag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " voiceMailNum="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 290
    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " voiceMailTag="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    .line 292
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " newVoiceMailTag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isVoiceMailFixed="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mImsi="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_102

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_104

    :cond_102
    const-string v0, "null"

    :goto_104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_127

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mFakeImsi="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_128

    :cond_127
    move-object v0, v2

    :goto_128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mncLength="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mailboxIndex="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " spn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_168

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mFakeSpn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeSpn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist unregisterForImsiReady(Landroid/os/Handler;)V
    .registers 2

    .line 546
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForLockedRecordsLoaded(Landroid/os/Handler;)V
    .registers 2

    .line 507
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNetworkLockedRecordsLoaded(Landroid/os/Handler;)V
    .registers 2

    .line 530
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V
    .registers 2

    .line 594
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNewSms(Landroid/os/Handler;)V
    .registers 2

    .line 585
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRecordsEvents(Landroid/os/Handler;)V
    .registers 2

    .line 576
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .registers 2

    .line 467
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRecordsOverride(Landroid/os/Handler;)V
    .registers 2

    .line 471
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSpnUpdate(Landroid/os/Handler;)V
    .registers 2

    .line 562
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpnUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method protected blacklist updateOperatorPlmn()V
    .registers 9

    .line 654
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ba

    .line 658
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    const/4 v4, 0x2

    if-ne v1, v4, :cond_44

    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    if-lt v1, v4, :cond_44

    .line 659
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 660
    sget-object v4, Lcom/android/internal/telephony/uicc/IccRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    array-length v5, v4

    move v6, v3

    :goto_1e
    if-ge v6, v5, :cond_44

    aget-object v7, v4, v6

    .line 661
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 662
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI: setting1 mMncLength="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    goto :goto_44

    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 670
    :cond_44
    :goto_44
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    if-nez v1, :cond_83

    .line 672
    :try_start_48
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 673
    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting2 mMncLength="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_6c} :catch_6d

    goto :goto_83

    .line 676
    :catch_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Corrupt IMSI! setting3 mMncLength="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 680
    :cond_83
    :goto_83
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    if-eqz v1, :cond_ba

    const/4 v4, -0x1

    if-eq v1, v4, :cond_ba

    .line 681
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/2addr v4, v2

    if-lt v1, v4, :cond_ba

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update mccmnc="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 685
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/2addr p0, v2

    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    :cond_ba
    return-void
.end method
