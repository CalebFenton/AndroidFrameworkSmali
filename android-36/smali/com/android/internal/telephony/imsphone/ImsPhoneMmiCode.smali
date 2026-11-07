.class public final Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
.super Landroid/os/Handler;
.source "ImsPhoneMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field public static final blacklist UT_BUNDLE_KEY_CLIR:Ljava/lang/String; = "queryClir"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist UT_BUNDLE_KEY_SSINFO:Ljava/lang/String; = "imsSsInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static blacklist sPatternSuppService:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist mAction:Ljava/lang/String;

.field private blacklist mCallbackReceiver:Landroid/os/ResultReceiver;

.field private greylist-max-r mContext:Landroid/content/Context;

.field private blacklist mDialingNumber:Ljava/lang/String;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private blacklist mIsCallFwdReg:Z

.field private blacklist mIsNetworkInitiatedUSSD:Z

.field private blacklist mIsPendingUSSD:Z

.field private blacklist mIsSsInfo:Z

.field private blacklist mIsUssdRequest:Z

.field private blacklist mMessage:Ljava/lang/CharSequence;

.field private greylist-max-r mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private blacklist mPoundString:Ljava/lang/String;

.field private blacklist mPwd:Ljava/lang/String;

.field private blacklist mSc:Ljava/lang/String;

.field private blacklist mSia:Ljava/lang/String;

.field private blacklist mSib:Ljava/lang/String;

.field private blacklist mSic:Ljava/lang/String;

.field private blacklist mState:Lcom/android/internal/telephony/MmiCode$State;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 226
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 4

    .line 598
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 214
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsSsInfo:Z

    .line 599
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 600
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 601
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 603
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-void
.end method

.method private static blacklist convertCdmaMmiCodesTo3gppMmiCodes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 339
    sget-object v0, Lcom/android/internal/telephony/MmiCode;->sPatternCdmaMmiCodeWhileRoaming:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 v1, 0x1

    .line 342
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 343
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 344
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    const-string v3, "67"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    if-eqz v0, :cond_42

    .line 348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#31#"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 349
    :cond_42
    const-string v3, "82"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    if-eqz v0, :cond_60

    .line 351
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*31#"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_60
    return-object p0
.end method

.method private blacklist createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .registers 6

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x10409af

    .line 1929
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    :goto_f
    const/16 v2, 0x80

    if-gt v1, v2, :cond_26

    and-int v2, v1, p1

    if-eqz v2, :cond_23

    .line 1936
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_23
    shl-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_26
    return-object v0
.end method

.method private blacklist getActionStringFromReqType(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_1c

    const/4 p0, 0x1

    if-eq p1, p0, :cond_19

    const/4 p0, 0x2

    if-eq p1, p0, :cond_16

    const/4 p0, 0x3

    if-eq p1, p0, :cond_13

    const/4 p0, 0x4

    if-eq p1, p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 2125
    :cond_10
    const-string p0, "##"

    return-object p0

    .line 2123
    :cond_13
    const-string p0, "**"

    return-object p0

    .line 2121
    :cond_16
    const-string p0, "*#"

    return-object p0

    .line 2119
    :cond_19
    const-string p0, "#"

    return-object p0

    .line 2117
    :cond_1c
    const-string p0, "*"

    return-object p0
.end method

.method private blacklist getCfnryTime()I
    .registers 4

    .line 1173
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/16 v1, 0x14

    if-nez v0, :cond_f

    return v1

    .line 1178
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 1179
    const-string v0, "support_no_reply_timer_for_cfnry_bool"

    const/4 v2, 0x1

    .line 1180
    invoke-virtual {p0, v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_42

    .line 1185
    :cond_25
    const-string v0, "no_reply_timer_for_cfnry_sec_int"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCfnryTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneMmiCode"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_42
    :goto_42
    return v1
.end method

.method private greylist-max-r getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .registers 2

    .line 1392
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getMmiErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 1393
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x1040684

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .registers 4

    .line 1944
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1946
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getMmiErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_b

    return-object v1

    .line 1948
    :cond_b
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1949
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1951
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getIntCarrierConfig(Ljava/lang/String;)I
    .registers 4

    .line 1962
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 1963
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_17

    .line 1967
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    if-eqz p0, :cond_1f

    .line 1970
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1973
    :cond_1f
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private greylist-max-r getScString()Ljava/lang/CharSequence;
    .registers 3

    .line 1440
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_b8

    .line 1441
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1442
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x104004c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1443
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1444
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040052

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1445
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1446
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x10400cf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1447
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1448
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x104005a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1449
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1450
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040053

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1451
    :cond_62
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1452
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040054

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1453
    :cond_76
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "76"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1454
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040058

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1455
    :cond_8a
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1456
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040059

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1457
    :cond_9e
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "156"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1458
    const-string p0, "Specific Incoming Call Barring"

    return-object p0

    .line 1459
    :cond_ab
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v0, "157"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8

    .line 1460
    const-string p0, "Anonymous Incoming Call Barring"

    return-object p0

    .line 1464
    :cond_b8
    const-string p0, ""

    return-object p0
.end method

.method private blacklist getScStringFromScType(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_48

    :pswitch_3
    const/4 p0, 0x0

    return-object p0

    .line 2108
    :pswitch_5
    const-string p0, "157"

    return-object p0

    .line 2106
    :pswitch_8
    const-string p0, "156"

    return-object p0

    .line 2104
    :pswitch_b
    const-string p0, "353"

    return-object p0

    .line 2102
    :pswitch_e
    const-string p0, "333"

    return-object p0

    .line 2100
    :pswitch_11
    const-string p0, "330"

    return-object p0

    .line 2098
    :pswitch_14
    const-string p0, "351"

    return-object p0

    .line 2096
    :pswitch_17
    const-string p0, "35"

    return-object p0

    .line 2094
    :pswitch_1a
    const-string p0, "332"

    return-object p0

    .line 2092
    :pswitch_1d
    const-string p0, "331"

    return-object p0

    .line 2090
    :pswitch_20
    const-string p0, "33"

    return-object p0

    .line 2088
    :pswitch_23
    const-string p0, "43"

    return-object p0

    .line 2086
    :pswitch_26
    const-string p0, "300"

    return-object p0

    .line 2084
    :pswitch_29
    const-string p0, "77"

    return-object p0

    .line 2082
    :pswitch_2c
    const-string p0, "76"

    return-object p0

    .line 2080
    :pswitch_2f
    const-string p0, "31"

    return-object p0

    .line 2078
    :pswitch_32
    const-string p0, "30"

    return-object p0

    .line 2076
    :pswitch_35
    const-string p0, "004"

    return-object p0

    .line 2074
    :pswitch_38
    const-string p0, "002"

    return-object p0

    .line 2072
    :pswitch_3b
    const-string p0, "62"

    return-object p0

    .line 2070
    :pswitch_3e
    const-string p0, "61"

    return-object p0

    .line 2068
    :pswitch_41
    const-string p0, "67"

    return-object p0

    .line 2066
    :pswitch_44
    const-string p0, "21"

    return-object p0

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_3
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist isCarrierSupportCallerIdVerticalServiceCodes(Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    .line 768
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_17

    .line 773
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    if-eqz p0, :cond_21

    .line 776
    const-string v0, "carrier_supports_caller_id_vertical_service_codes_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .registers 3

    .line 755
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 756
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_10} :catch_11

    return p0

    :catch_11
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist-max-r isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 419
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method static blacklist isPinPukCommand(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_24

    .line 513
    const-string v0, "04"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "042"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "05"

    .line 514
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "052"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isServiceClassVoiceVideoOrNone(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_b

    if-eq p1, p0, :cond_b

    const/16 v0, 0x50

    if-ne p1, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :cond_b
    :goto_b
    return p0
.end method

.method static blacklist isServiceCodeCallBarring(Ljava/lang/String;)Z
    .registers 6

    .line 499
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_21

    const v2, 0x107002d

    .line 501
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 504
    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_21

    aget-object v4, v0, v3

    .line 505
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_21
    return v1
.end method

.method static blacklist isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_34

    .line 490
    const-string v0, "21"

    .line 491
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "67"

    .line 492
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "62"

    .line 493
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "004"

    .line 494
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    :cond_32
    const/4 p0, 0x1

    return p0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 689
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 692
    :cond_b
    invoke-static {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v0

    .line 695
    :cond_12
    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    .line 715
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_21

    .line 716
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_12

    return v1

    .line 720
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v2, :cond_20

    .line 721
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x31

    if-eq p0, p1, :cond_21

    :cond_20
    return v1

    :cond_21
    return v0
.end method

.method public static blacklist isSuppServiceCodes(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    if-eqz p1, :cond_1a

    .line 524
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 525
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->supportsConversionOfCdmaCallerIdMmiCodesWhileRoaming()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 529
    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->convertCdmaMmiCodesTo3gppMmiCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 532
    :cond_1a
    sget-object p1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 533
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_b3

    const/4 p1, 0x3

    .line 534
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 535
    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_37

    return v0

    .line 537
    :cond_37
    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    return v0

    :cond_3e
    if-eqz p0, :cond_49

    .line 539
    const-string p1, "22"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    return v0

    :cond_49
    if-eqz p0, :cond_54

    .line 541
    const-string p1, "30"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    return v0

    :cond_54
    if-eqz p0, :cond_5f

    .line 543
    const-string p1, "31"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    return v0

    :cond_5f
    if-eqz p0, :cond_6a

    .line 545
    const-string p1, "76"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    return v0

    :cond_6a
    if-eqz p0, :cond_75

    .line 547
    const-string p1, "77"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_75

    return v0

    :cond_75
    if-eqz p0, :cond_80

    .line 549
    const-string p1, "300"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    return v0

    :cond_80
    if-eqz p0, :cond_8b

    .line 551
    const-string p1, "156"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8b

    return v0

    :cond_8b
    if-eqz p0, :cond_96

    .line 553
    const-string p1, "157"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_96

    return v0

    :cond_96
    if-eqz p0, :cond_a1

    .line 555
    const-string p1, "03"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a1

    return v0

    :cond_a1
    if-eqz p0, :cond_ac

    .line 557
    const-string p1, "43"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ac

    return v0

    .line 559
    :cond_ac
    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPinPukCommand(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b3

    return v0

    :cond_b3
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isUssdOverImsAllowed()Z
    .registers 5

    .line 1194
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v1, "ImsPhoneMmiCode"

    const/4 v2, 0x0

    if-eqz v0, :cond_43

    .line 1196
    const-string v0, "carrier_ussd_method_int"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2a

    if-eq v0, v3, :cond_29

    const/4 p0, 0x2

    if-eq v0, p0, :cond_28

    const/4 p0, 0x3

    if-eq v0, p0, :cond_29

    .line 1216
    const-string p0, "isUssdOverImsAllowed: Unsupported method"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return v2

    :cond_29
    return v3

    .line 1203
    :cond_2a
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_3d

    return v2

    .line 1207
    :cond_3d
    const-string p0, "isUssdOverImsAllowed: CS is out of service"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1222
    :cond_43
    const-string p0, "isUssdOverImsAllowed: USSD over IMS pipe is not supported."

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private blacklist makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .registers 11

    .line 1570
    const-string v0, "{1}"

    const-string v1, "{2}"

    const-string v2, "{0}"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 1571
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 1577
    iget v2, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_16

    move v2, v4

    goto :goto_17

    :cond_16
    move v2, v3

    .line 1580
    :goto_17
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v6, v4, :cond_31

    if-eqz v2, :cond_27

    .line 1582
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10401e2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_5a

    .line 1585
    :cond_27
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10401e1

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_5a

    :cond_31
    if-nez v6, :cond_45

    .line 1588
    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 1589
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10401e3

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_5a

    :cond_45
    if-eqz v2, :cond_51

    .line 1596
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10401e5

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_5a

    .line 1599
    :cond_51
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10401e4

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1609
    :goto_5a
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v6, p2

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v1, v3

    .line 1610
    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 1611
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 1613
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v5, :cond_8c

    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr p2, v5

    if-ne p2, v4, :cond_8c

    .line 1616
    iget p2, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne p2, v4, :cond_83

    move v3, v4

    .line 1617
    :cond_83
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object p1, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p2, p0, v4, v3, p1}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1620
    :cond_8c
    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    .line 396
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method static blacklist newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/ResultReceiver;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .registers 8

    .line 281
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 282
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->supportsConversionOfCdmaCallerIdMmiCodesWhileRoaming()Z

    move-result v0

    if-nez v0, :cond_24

    .line 283
    :cond_18
    invoke-static {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 284
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isCarrierSupportCallerIdVerticalServiceCodes(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 290
    :cond_24
    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->convertCdmaMmiCodesTo3gppMmiCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 293
    :cond_28
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "#"

    if-eqz v1, :cond_af

    .line 297
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v1, p1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    const/4 v3, 0x1

    .line 298
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    const/4 v3, 0x2

    .line 299
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const/4 v3, 0x3

    .line 300
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const/4 v3, 0x5

    .line 301
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    const/4 v3, 0x7

    .line 302
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    const/16 v3, 0x9

    .line 303
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    const/16 v3, 0xb

    .line 304
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    const/16 v3, 0xc

    .line 305
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 306
    iput-object p2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_ae

    .line 313
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_ae

    .line 314
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_ae

    .line 315
    new-instance p2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {p2, p1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 316
    iput-object p0, p2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    return-object p2

    :cond_ae
    return-object v1

    .line 318
    :cond_af
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_bd

    .line 323
    new-instance p2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {p2, p1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 324
    iput-object p0, p2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    return-object p2

    .line 325
    :cond_bd
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v0

    invoke-static {p2, v0, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTwoDigitShortCode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_cd

    return-object v0

    .line 329
    :cond_cd
    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result p2

    if-eqz p2, :cond_db

    .line 331
    new-instance p2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {p2, p1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 332
    iput-object p0, p2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    return-object p2

    :cond_db
    return-object v0
.end method

.method public static greylist-max-r newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .registers 4

    const/4 v0, 0x0

    .line 273
    invoke-static {p0, p1, v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/ResultReceiver;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object p0

    return-object p0
.end method

.method static blacklist newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .registers 4

    .line 380
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 382
    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 383
    sget-object p0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    const/4 p0, 0x1

    .line 384
    iput-boolean p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    return-object v0
.end method

.method public static blacklist newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .registers 5

    .line 361
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 363
    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 364
    iput-boolean p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    const/4 p0, 0x1

    .line 365
    iput-boolean p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsNetworkInitiatedUSSD:Z

    if-eqz p1, :cond_15

    .line 369
    iput-boolean p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 370
    sget-object p0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0

    .line 372
    :cond_15
    sget-object p0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method private blacklist onIcbQueryComplete(Landroid/os/AsyncResult;)V
    .registers 10

    .line 1749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIcbQueryComplete mmi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneMmiCode"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1751
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_42

    .line 1754
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1756
    instance-of v1, v2, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_39

    .line 1757
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_c3

    .line 1759
    :cond_39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_c3

    .line 1764
    :cond_42
    :try_start_42
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;
    :try_end_46
    .catch Ljava/lang/ClassCastException; {:try_start_42 .. :try_end_46} :catch_47

    goto :goto_4f

    .line 1767
    :catch_47
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Landroid/telephony/ims/ImsSsInfo;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_4f
    const p1, 0x10409ad

    if-eqz v2, :cond_b6

    .line 1769
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5b

    goto :goto_b6

    .line 1773
    :cond_5b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_60
    if-ge v4, v3, :cond_bf

    .line 1774
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/ImsSsInfo;

    .line 1775
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo;->getIncomingCommunicationBarringNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_96

    .line 1776
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Num: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo;->getIncomingCommunicationBarringNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1776
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 1778
    :cond_96
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_aa

    .line 1779
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10409ae

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 1782
    :cond_aa
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_b3
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 1770
    :cond_b6
    :goto_b6
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1787
    :cond_bf
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1789
    :goto_c3
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1790
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void
.end method

.method private blacklist onQueryCfComplete(Landroid/os/AsyncResult;)V
    .registers 11

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1627
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2b

    .line 1630
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1632
    instance-of v1, v2, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_23

    .line 1633
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_8c

    .line 1636
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_8c

    .line 1638
    :cond_2b
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, p1, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_44

    move-object v2, p1

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/16 v5, 0xff

    if-ne v2, v5, :cond_44

    .line 1642
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    move-object v0, v3

    goto :goto_8c

    .line 1646
    :cond_44
    check-cast p1, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x1

    if-eqz p1, :cond_75

    .line 1648
    array-length v5, p1

    if-nez v5, :cond_4d

    goto :goto_75

    .line 1656
    :cond_4d
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    :goto_52
    const/16 v5, 0x80

    if-gt v2, v5, :cond_71

    .line 1668
    array-length v5, p1

    move v6, v4

    :goto_58
    if-ge v6, v5, :cond_6e

    .line 1669
    aget-object v7, p1, v6

    iget v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v8, v2

    if-eqz v8, :cond_6b

    .line 1670
    invoke-direct {p0, v7, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1672
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6b
    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    :cond_6e
    shl-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 1676
    :cond_71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_88

    .line 1650
    :cond_75
    :goto_75
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10409ad

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1653
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {p1, v1, v2, v4, v3}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1679
    :goto_88
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1682
    :goto_8c
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1683
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onQueryCfComplete: mmi="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhoneMmiCode"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void
.end method

.method private blacklist onQueryClirComplete(Landroid/os/AsyncResult;)V
    .registers 11

    .line 1794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1795
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1798
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v3, "ImsPhoneMmiCode"

    if-eqz v2, :cond_2e

    .line 1799
    instance-of v1, v2, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_25

    .line 1800
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_11d

    .line 1802
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_11d

    .line 1805
    :cond_2e
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryClirComplete: CLIR param n="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " m="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v6, p1, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    aget v2, p1, v5

    if-eqz v2, :cond_10d

    if-eq v2, v5, :cond_fc

    const/4 v6, 0x3

    const/4 v7, 0x2

    const v8, 0x1040684

    if-eq v2, v6, :cond_b8

    const/4 v6, 0x4

    if-eq v2, v6, :cond_71

    .line 1872
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1874
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_11d

    .line 1849
    :cond_71
    aget p1, p1, v4

    const v2, 0x104004d

    if-eqz p1, :cond_aa

    if-eq p1, v5, :cond_98

    if-eq p1, v7, :cond_89

    .line 1866
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1868
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_11d

    .line 1861
    :cond_89
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1863
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_11d

    .line 1856
    :cond_98
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104004e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1858
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_11d

    .line 1851
    :cond_aa
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1853
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_11d

    .line 1825
    :cond_b8
    aget p1, p1, v4

    const v2, 0x1040050

    if-eqz p1, :cond_ee

    if-eq p1, v5, :cond_e0

    if-eq p1, v7, :cond_cf

    .line 1842
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1844
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_11d

    .line 1837
    :cond_cf
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104004f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1839
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_11d

    .line 1832
    :cond_e0
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1834
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_11d

    .line 1827
    :cond_ee
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1829
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_11d

    .line 1819
    :cond_fc
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040051

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1821
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_11d

    .line 1814
    :cond_10d
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10409b1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1816
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1878
    :goto_11d
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1879
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onQueryClirComplete mmi="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void
.end method

.method private blacklist onQueryComplete(Landroid/os/AsyncResult;)V
    .registers 7

    .line 1885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1886
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1889
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2c

    .line 1890
    instance-of v1, v1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_23

    .line 1891
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_9e

    .line 1893
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_9e

    .line 1895
    :cond_2c
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, p1, [I

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    move-object v1, p1

    check-cast v1, [I

    aget v1, v1, v2

    const/16 v3, 0xff

    if-ne v1, v3, :cond_3e

    const/4 v0, 0x0

    goto :goto_9e

    .line 1899
    :cond_3e
    check-cast p1, [I

    const v1, 0x1040684

    if-eqz p1, :cond_95

    .line 1901
    array-length v3, p1

    if-eqz v3, :cond_95

    .line 1902
    aget v3, p1, v2

    if-nez v3, :cond_5d

    .line 1903
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10409ad

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1904
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_9e

    .line 1905
    :cond_5d
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_76

    .line 1907
    aget p1, p1, v4

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1908
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_9e

    .line 1909
    :cond_76
    aget p1, p1, v2

    if-ne p1, v4, :cond_8b

    .line 1911
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10409ae

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1912
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_9e

    .line 1914
    :cond_8b
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_9e

    .line 1917
    :cond_95
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1921
    :goto_9e
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1922
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onQueryComplete mmi="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhoneMmiCode"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void
.end method

.method private blacklist onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .registers 7

    .line 1469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1470
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const v1, 0x1040684

    if-eqz v0, :cond_67

    .line 1473
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1475
    instance-of v2, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_5a

    .line 1476
    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 1478
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_35

    .line 1479
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040707

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_115

    .line 1481
    :cond_35
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getMmiErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_40

    .line 1482
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_115

    .line 1483
    :cond_40
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4f

    .line 1484
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_115

    .line 1486
    :cond_4f
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_115

    .line 1488
    :cond_5a
    instance-of v0, v0, Lcom/android/ims/ImsException;

    if-eqz v0, :cond_115

    .line 1489
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_115

    .line 1491
    :cond_67
    iget-object p2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p2, :cond_80

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_80

    check-cast p2, Ljava/lang/Integer;

    .line 1492
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0xff

    if-ne p2, v0, :cond_80

    .line 1493
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    const/4 p1, 0x0

    goto/16 :goto_115

    .line 1495
    :cond_80
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result p2

    const-string v0, "31"

    const v2, 0x10409b2

    if-eqz p2, :cond_b8

    .line 1496
    sget-object p2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1497
    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    if-eqz p2, :cond_9d

    .line 1498
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_a9

    .line 1501
    :cond_9d
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10409ae

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1505
    :goto_a9
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_115

    .line 1506
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/Phone;->saveClirSetting(I)V

    goto :goto_115

    .line 1508
    :cond_b8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result p2

    if-eqz p2, :cond_dd

    .line 1509
    sget-object p2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1510
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10409ad

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1513
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_115

    .line 1514
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/Phone;->saveClirSetting(I)V

    goto :goto_115

    .line 1516
    :cond_dd
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result p2

    if-eqz p2, :cond_f1

    .line 1517
    sget-object p2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1518
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_115

    .line 1520
    :cond_f1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result p2

    if-eqz p2, :cond_108

    .line 1521
    sget-object p2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1522
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x10409b0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_115

    .line 1525
    :cond_108
    sget-object p2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1526
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1530
    :cond_115
    :goto_115
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSetComplete: mmi="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsPhoneMmiCode"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void
.end method

.method private blacklist onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V
    .registers 9

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1690
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1693
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v2, "ImsPhoneMmiCode"

    if-eqz v1, :cond_2e

    .line 1694
    instance-of v1, v1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_25

    .line 1695
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_ee

    .line 1697
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_ee

    .line 1700
    :cond_2e
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Landroid/telephony/ims/ImsSsInfo;

    const v3, 0x10409ae

    const v4, 0x10409ad

    const v5, 0x1040684

    if-eqz v1, :cond_b5

    .line 1701
    const-string v1, "onSuppSvcQueryComplete: Received CLIP/COLP/COLR Response."

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/ImsSsInfo;

    if-eqz p1, :cond_ab

    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSuppSvcQueryComplete: ImsSsInfo mStatus = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1705
    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v1

    if-nez v1, :cond_78

    .line 1708
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10409b1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1710
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_ee

    .line 1711
    :cond_78
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v1

    if-nez v1, :cond_8c

    .line 1712
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1713
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_ee

    .line 1714
    :cond_8c
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_a1

    .line 1715
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1716
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_ee

    .line 1718
    :cond_a1
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_ee

    .line 1721
    :cond_ab
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_ee

    .line 1725
    :cond_b5
    const-string v1, "onSuppSvcQueryComplete: Received Call Barring/CSFB CLIP Response."

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    if-eqz p1, :cond_e5

    .line 1729
    array-length v1, p1

    if-nez v1, :cond_c4

    goto :goto_e5

    :cond_c4
    const/4 v1, 0x0

    .line 1732
    aget p1, p1, v1

    if-eqz p1, :cond_d7

    .line 1733
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1734
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_ee

    .line 1736
    :cond_d7
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1737
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_ee

    .line 1730
    :cond_e5
    :goto_e5
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1743
    :goto_ee
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1744
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSuppSvcQueryComplete mmi="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void
.end method

.method private blacklist processIcbMmiCodeForUpdate()V
    .registers 5

    .line 1370
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1374
    const-string v1, "\\$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 1376
    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->callBarAction(Ljava/lang/String;)I

    move-result v0

    .line 1379
    :try_start_10
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    const/4 v3, 0x0

    .line 1382
    invoke-virtual {p0, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/16 v3, 0xa

    .line 1379
    invoke-interface {v2, v3, v0, p0, v1}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    :try_end_22
    .catch Lcom/android/ims/ImsException; {:try_start_10 .. :try_end_22} :catch_23

    return-void

    .line 1385
    :catch_23
    const-string p0, "ImsPhoneMmiCode"

    const-string v0, "processIcbMmiCodeForUpdate:Could not get UT handle for updating ICB."

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static blacklist scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 568
    const-string v0, "invalid call barring sc"

    if-eqz p0, :cond_62

    .line 572
    const-string v1, "33"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 573
    const-string p0, "AO"

    return-object p0

    .line 574
    :cond_f
    const-string v1, "331"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 575
    const-string p0, "OI"

    return-object p0

    .line 576
    :cond_1a
    const-string v1, "332"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 577
    const-string p0, "OX"

    return-object p0

    .line 578
    :cond_25
    const-string v1, "35"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 579
    const-string p0, "AI"

    return-object p0

    .line 580
    :cond_30
    const-string v1, "351"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 581
    const-string p0, "IR"

    return-object p0

    .line 582
    :cond_3b
    const-string v1, "330"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 583
    const-string p0, "AB"

    return-object p0

    .line 584
    :cond_46
    const-string v1, "333"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 585
    const-string p0, "AG"

    return-object p0

    .line 586
    :cond_51
    const-string v1, "353"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5c

    .line 587
    const-string p0, "AC"

    return-object p0

    .line 589
    :cond_5c
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 569
    :cond_62
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist scToCallForwardReason(Ljava/lang/String;)I
    .registers 3

    .line 424
    const-string v0, "invalid call forward sc"

    if-eqz p0, :cond_46

    .line 428
    const-string v1, "002"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x4

    return p0

    .line 430
    :cond_e
    const-string v1, "21"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 p0, 0x0

    return p0

    .line 432
    :cond_18
    const-string v1, "67"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 p0, 0x1

    return p0

    .line 434
    :cond_22
    const-string v1, "62"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 p0, 0x3

    return p0

    .line 436
    :cond_2c
    const-string v1, "61"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 p0, 0x2

    return p0

    .line 438
    :cond_36
    const-string v1, "004"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    const/4 p0, 0x5

    return p0

    .line 441
    :cond_40
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 425
    :cond_46
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-r serviceClassToCFString(I)Ljava/lang/CharSequence;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_65

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_51

    const/16 v0, 0x8

    if-eq p1, v0, :cond_47

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x20

    if-eq p1, v0, :cond_33

    const/16 v0, 0x40

    if-eq p1, v0, :cond_29

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1f

    const/4 p0, 0x0

    return-object p0

    .line 1560
    :cond_1f
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409a9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1558
    :cond_29
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409aa

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1556
    :cond_33
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409a6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1554
    :cond_3d
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409a7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1552
    :cond_47
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409ab

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1550
    :cond_51
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409a8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1548
    :cond_5b
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409a5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1546
    :cond_65
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409ac

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist siToServiceClass(Ljava/lang/String;)I
    .registers 4

    if-eqz p0, :cond_59

    .line 447
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_59

    :cond_9
    const/16 v0, 0xa

    .line 451
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_56

    const/16 v2, 0x63

    if-eq v0, v2, :cond_53

    packed-switch v0, :pswitch_data_5c

    packed-switch v0, :pswitch_data_68

    packed-switch v0, :pswitch_data_74

    .line 473
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported MMI service code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_37
    const/16 p0, 0x11

    return p0

    :pswitch_3a
    const/16 p0, 0x20

    return p0

    :pswitch_3d
    return v1

    :pswitch_3e
    const/16 p0, 0x50

    return p0

    :pswitch_41
    const/16 p0, 0xa0

    return p0

    :pswitch_44
    const/16 p0, 0x30

    return p0

    :pswitch_47
    const/4 p0, 0x5

    return p0

    :pswitch_49
    const/4 p0, 0x4

    return p0

    :pswitch_4b
    const/16 p0, 0xc

    return p0

    :pswitch_4e
    const/4 p0, 0x1

    return p0

    :pswitch_50
    const/16 p0, 0xd

    return p0

    :cond_53
    const/16 p0, 0x40

    return p0

    :cond_56
    const/16 p0, 0x8

    return p0

    :cond_59
    :goto_59
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_5c
    .packed-switch 0xa
        :pswitch_50
        :pswitch_4e
        :pswitch_4b
        :pswitch_49
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x13
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0x18
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
    .end packed-switch
.end method

.method private static blacklist siToTime(Ljava/lang/String;)I
    .registers 2

    if-eqz p0, :cond_10

    .line 480
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    :cond_9
    const/16 v0, 0xa

    .line 484
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist callBarAction(Ljava/lang/String;)I
    .registers 4

    .line 879
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 881
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 883
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result v0

    const-string v1, "invalid action"

    if-eqz v0, :cond_26

    .line 884
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x3

    return p0

    .line 887
    :cond_20
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 889
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 p0, 0x4

    return p0

    .line 892
    :cond_2e
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist cancel()V
    .registers 3

    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_23

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_b

    goto :goto_23

    .line 632
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 634
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    if-eqz v0, :cond_1e

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->cancelUSSD(Landroid/os/Message;)V

    return-void

    .line 637
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    :cond_23
    :goto_23
    return-void
.end method

.method greylist-max-r getCLIRMode()I
    .registers 3

    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 790
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x2

    return p0

    .line 792
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getDialString()Ljava/lang/String;
    .registers 1

    .line 671
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    return-object p0
.end method

.method greylist-max-r getDialingNumber()Ljava/lang/String;
    .registers 1

    .line 652
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getMessage()Ljava/lang/CharSequence;
    .registers 1

    .line 617
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist getMmiErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .registers 10

    .line 1398
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/android/ims/ImsException;

    const v1, 0x1040687

    const v2, 0x1040a19

    const v3, 0x1040a1c

    const v4, 0x1040a1b

    const v5, 0x1040a1a

    const/4 v6, 0x0

    if-eqz v0, :cond_47

    .line 1399
    check-cast p1, Lcom/android/ims/ImsException;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getCode()I

    move-result p1

    const/16 v0, 0xf1

    if-eq p1, v0, :cond_40

    packed-switch p1, :pswitch_data_ca

    return-object v6

    .line 1409
    :pswitch_24
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1407
    :pswitch_2b
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1405
    :pswitch_32
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1403
    :pswitch_39
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1401
    :cond_40
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1413
    :cond_47
    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_c8

    .line 1414
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 1415
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v7, :cond_5c

    .line 1416
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1417
    :cond_5c
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_6b

    .line 1418
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1419
    :cond_6b
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_7a

    .line 1420
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1421
    :cond_7a
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_89

    .line 1422
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1423
    :cond_89
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL_VIDEO:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_98

    .line 1424
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1425
    :cond_98
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INTERNAL_ERR:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_aa

    .line 1426
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x1040684

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1427
    :cond_aa
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_ba

    .line 1428
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_c8

    .line 1431
    :cond_ba
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1040685

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_c8
    return-object v6

    nop

    :pswitch_data_ca
    .packed-switch 0x336
        :pswitch_39
        :pswitch_32
        :pswitch_2b
        :pswitch_24
    .end packed-switch
.end method

.method public blacklist getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 621
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object p0
.end method

.method public blacklist getState()Lcom/android/internal/telephony/MmiCode$State;
    .registers 1

    .line 611
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object p0
.end method

.method public blacklist getUssdCallbackReceiver()Landroid/os/ResultReceiver;
    .registers 1

    .line 1979
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 1290
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_73

    packed-switch v0, :pswitch_data_7c

    goto :goto_62

    .line 1347
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1348
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1357
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1358
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryClirComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1343
    :pswitch_1a
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void

    .line 1298
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1304
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3f

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    .line 1305
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_33

    move v1, v2

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    .line 1306
    :goto_34
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_3f

    .line 1307
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v4, v3, v2, v1, v5}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1312
    :cond_3f
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    return-void

    .line 1321
    :pswitch_43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1322
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1326
    :pswitch_4b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1328
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_62

    .line 1329
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1330
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1332
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    :cond_62
    :goto_62
    return-void

    .line 1316
    :pswitch_63
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1317
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1292
    :pswitch_6b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1294
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    return-void

    .line 1352
    :cond_73
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1353
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onIcbQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_63
        :pswitch_4b
        :pswitch_43
        :pswitch_20
        :pswitch_1a
        :pswitch_12
        :pswitch_a
    .end packed-switch
.end method

.method greylist-max-r isActivate()Z
    .registers 2

    .line 802
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz p0, :cond_e

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isCancelable()Z
    .registers 1

    .line 645
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    return p0
.end method

.method greylist-max-r isDeactivate()Z
    .registers 2

    .line 807
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz p0, :cond_e

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method greylist-max-r isErasure()Z
    .registers 2

    .line 821
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz p0, :cond_e

    const-string v0, "##"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method blacklist isInterrogate()Z
    .registers 2

    .line 811
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz p0, :cond_e

    const-string v0, "*#"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isNetworkInitiatedUssd()Z
    .registers 1

    .line 2172
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsNetworkInitiatedUSSD:Z

    return p0
.end method

.method public blacklist isPendingUSSD()Z
    .registers 1

    .line 829
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    return p0
.end method

.method public blacklist isPinPukCommand()Z
    .registers 1

    .line 732
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPinPukCommand(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method greylist-max-r isRegister()Z
    .registers 2

    .line 816
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz p0, :cond_e

    const-string v0, "**"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method blacklist isShortCode()Z
    .registers 2

    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz p0, :cond_11

    .line 665
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isSsInfo()Z
    .registers 1

    .line 2137
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsSsInfo:Z

    return p0
.end method

.method greylist-max-r isSupportedOverImsPhone()Z
    .registers 7

    .line 840
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 841
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 842
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_25

    const-string v3, "43"

    .line 843
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "31"

    if-eqz v0, :cond_31

    .line 844
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    :cond_31
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "30"

    if-eqz v0, :cond_3d

    .line 845
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    :cond_3d
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_49

    const-string v5, "77"

    .line 846
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    :cond_49
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_55

    const-string v5, "76"

    .line 847
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    :cond_55
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_61

    const-string v5, "156"

    .line 848
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    :cond_61
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_6e

    const-string v5, "157"

    .line 849
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    goto :goto_97

    .line 863
    :cond_6e
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPinPukCommand()Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_91

    const-string v5, "03"

    .line 865
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    goto :goto_96

    .line 867
    :cond_91
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz p0, :cond_be

    return v1

    :cond_96
    :goto_96
    return v2

    .line 852
    :cond_97
    :goto_97
    :try_start_97
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result p0
    :try_end_9d
    .catch Ljava/lang/RuntimeException; {:try_start_97 .. :try_end_9d} :catch_a7

    if-eqz p0, :cond_a6

    if-eq p0, v1, :cond_a6

    const/16 v0, 0x50

    if-eq p0, v0, :cond_a6

    return v2

    :cond_a6
    return v1

    :catch_a7
    move-exception p0

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid service class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsPhoneMmiCode"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    return v2
.end method

.method public greylist-max-r isTemporaryModeCLIR()Z
    .registers 3

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1e

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 746
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isUssdRequest()Z
    .registers 1

    .line 834
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    return p0
.end method

.method blacklist onUssdFinished(Ljava/lang/String;Z)V
    .registers 6

    .line 1238
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_53

    .line 1239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ImsPhoneMmiCode"

    if-eqz v0, :cond_30

    .line 1240
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040683

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUssdFinished: no message; using: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 1243
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUssdFinished: message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1246
    :goto_46
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    if-nez p2, :cond_4e

    .line 1249
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1251
    :cond_4e
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    :cond_53
    return-void
.end method

.method public blacklist onUssdFinishedError()V
    .registers 3

    .line 1261
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_38

    .line 1262
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1263
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1264
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040684

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1266
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUssdFinishedError: mmi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneMmiCode"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    :cond_38
    return-void
.end method

.method blacklist parseSsData(Landroid/telephony/ims/ImsSsData;)V
    .registers 10

    .line 1995
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getResult()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1996
    new-instance v0, Lcom/android/ims/ImsException;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getResult()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    goto :goto_12

    :cond_11
    move-object v0, v1

    .line 1997
    :goto_12
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScStringFromScType(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 1998
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getActionStringFromReqType(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    .line 1999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseSsData msc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsPhoneMmiCode"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v2, :cond_119

    if-eq v2, v6, :cond_119

    const/4 v7, 0x2

    if-eq v2, v7, :cond_7c

    if-eq v2, v5, :cond_119

    const/4 v7, 0x4

    if-eq v2, v7, :cond_119

    .line 2058
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invaid requestType in SSData : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2030
    :cond_7c
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeClir()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 2031
    const-string v2, "CLIR INTERROGATION"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    new-instance v2, Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getSuppServiceInfoCompat()[I

    move-result-object p1

    invoke-direct {v2, v1, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryClirComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 2033
    :cond_94
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeCF()Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 2034
    const-string v2, "CALL FORWARD INTERROGATION"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getCallForwardInfo()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b2

    .line 2040
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 2041
    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/ims/ImsCallForwardInfo;

    goto :goto_b3

    :cond_b2
    move-object p1, v1

    .line 2043
    :goto_b3
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCfQueryResult([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object p1

    invoke-direct {v2, v1, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 2045
    :cond_c2
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeBarring()Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 2046
    new-instance v2, Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getSuppServiceInfoCompat()[I

    move-result-object p1

    invoke-direct {v2, v1, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 2048
    :cond_d5
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeColr()Z

    move-result v2

    if-nez v2, :cond_108

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeClip()Z

    move-result v2

    if-nez v2, :cond_108

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeColp()Z

    move-result v2

    if-eqz v2, :cond_e8

    goto :goto_108

    .line 2051
    :cond_e8
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeIcb()Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 2052
    new-instance v2, Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getSuppServiceInfo()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, v1, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onIcbQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 2054
    :cond_fb
    new-instance v2, Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getSuppServiceInfoCompat()[I

    move-result-object p1

    invoke-direct {v2, v1, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 2049
    :cond_108
    :goto_108
    new-instance v2, Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getSuppServiceInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v2, v1, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 2006
    :cond_119
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getResult()I

    move-result v2

    if-nez v2, :cond_164

    .line 2007
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeUnConditional()Z

    move-result v2

    if-eqz v2, :cond_164

    .line 2013
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result v2

    if-eqz v2, :cond_131

    .line 2014
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result v2

    if-ne v2, v5, :cond_13c

    .line 2015
    :cond_131
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getServiceClass()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceClassVoiceVideoOrNone(I)Z

    move-result v2

    if-eqz v2, :cond_13c

    move v4, v6

    .line 2017
    :cond_13c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallForwardingFlag cffEnabled: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_15f

    .line 2019
    const-string v2, "setVoiceCallForwardingFlag done from SS Info."

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v6, v4, v1}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_164

    .line 2024
    :cond_15f
    const-string v2, "setCallForwardingFlag aborted. sim records is null."

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_164
    :goto_164
    new-instance v2, Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getCallForwardInfo()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, v1, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    return-void
.end method

.method public greylist-max-r processCode()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 901
    const-string v2, "ImsPhoneMmiCode"

    :try_start_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_8} :catch_3b

    const-string v3, "cs_fallback"

    const-string v4, "\' over CS pipe."

    const-string v5, "\' over IMS pipe."

    if-eqz v0, :cond_5b

    .line 902
    :try_start_10
    const-string v0, "processCode: isShortCode"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isUssdOverImsAllowed()Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_19} :catch_3b

    const-string v6, "processCode: Sending short code \'"

    if-eqz v0, :cond_3e

    .line 906
    :try_start_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sendUssd(Ljava/lang/String;)V

    goto/16 :goto_446

    :catch_3b
    move-exception v0

    goto/16 :goto_41e

    .line 910
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_5b
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_fa

    .line 915
    const-string v0, "processCode: is CF"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v12, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 918
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v11

    .line 919
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v13

    .line 925
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "61"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 926
    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getCfnryTime()I

    move-result v0

    :goto_8f
    move v14, v0

    goto :goto_98

    .line 928
    :cond_91
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v0

    goto :goto_8f

    .line 934
    :goto_98
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 935
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 936
    invoke-virtual {v1, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 935
    invoke-virtual {v0, v11, v13, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(IILandroid/os/Message;)V

    goto/16 :goto_446

    .line 940
    :cond_a9
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_be

    .line 945
    invoke-static {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 947
    iput-boolean v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    move v10, v7

    goto :goto_d4

    .line 950
    :cond_ba
    iput-boolean v7, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    :goto_bc
    move v10, v6

    goto :goto_d4

    .line 952
    :cond_be
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_c6

    move v10, v8

    goto :goto_d4

    .line 954
    :cond_c6
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_cd

    goto :goto_bc

    .line 956
    :cond_cd
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result v0

    if-eqz v0, :cond_f2

    move v10, v3

    :goto_d4
    if-eqz v11, :cond_db

    if-ne v11, v3, :cond_d9

    goto :goto_db

    :cond_d9
    move v0, v8

    goto :goto_dc

    :cond_db
    :goto_db
    move v0, v7

    :goto_dc
    if-eq v10, v7, :cond_e2

    if-ne v10, v6, :cond_e1

    goto :goto_e2

    :cond_e1
    move v7, v8

    .line 970
    :cond_e2
    :goto_e2
    const-string v4, "processCode: is CF setCallForward"

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v9, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 972
    invoke-virtual {v1, v3, v0, v7, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 971
    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    goto/16 :goto_446

    .line 959
    :cond_f2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "invalid action"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :cond_fa
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0
    :try_end_100
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_100} :catch_3b

    const/4 v9, 0x7

    const-string v10, "Invalid or Unsupported MMI Code"

    if-eqz v0, :cond_148

    .line 982
    :try_start_105
    iget-object v14, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 983
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 984
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v0

    .line 986
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v3

    if-eqz v3, :cond_124

    .line 987
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 988
    invoke-virtual {v1, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 987
    invoke-virtual {v3, v12, v4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;I)V

    goto/16 :goto_446

    .line 989
    :cond_124
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    if-nez v3, :cond_137

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_131

    goto :goto_137

    .line 993
    :cond_131
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_137
    :goto_137
    iget-object v11, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v13

    .line 991
    invoke-virtual {v1, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    move/from16 v16, v0

    .line 990
    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    goto/16 :goto_446

    .line 995
    :cond_148
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const/4 v11, 0x6

    if-eqz v0, :cond_1ba

    const-string v12, "31"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 999
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0
    :try_end_159
    .catch Ljava/lang/RuntimeException; {:try_start_105 .. :try_end_159} :catch_3b

    const-string v3, "processCode: Could not get UT handle for updateCLIR."

    if-eqz v0, :cond_179

    :try_start_15d
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1000
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isClirActivationAndDeactivationPrevented()Z

    move-result v0
    :try_end_167
    .catch Ljava/lang/RuntimeException; {:try_start_15d .. :try_end_167} :catch_3b

    if-nez v0, :cond_179

    .line 1002
    :try_start_169
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1003
    invoke-virtual {v1, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1002
    invoke-virtual {v0, v7, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_172} :catch_174

    goto/16 :goto_446

    .line 1005
    :catch_174
    :try_start_174
    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_446

    .line 1007
    :cond_179
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_19c

    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1008
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isClirActivationAndDeactivationPrevented()Z

    move-result v0
    :try_end_189
    .catch Ljava/lang/RuntimeException; {:try_start_174 .. :try_end_189} :catch_3b

    if-nez v0, :cond_19c

    .line 1010
    :try_start_18b
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1011
    invoke-virtual {v1, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x2

    .line 1010
    invoke-virtual {v0, v5, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_195} :catch_197

    goto/16 :goto_446

    .line 1013
    :catch_197
    :try_start_197
    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_446

    .line 1015
    :cond_19c
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v0
    :try_end_1a0
    .catch Ljava/lang/RuntimeException; {:try_start_197 .. :try_end_1a0} :catch_3b

    if-eqz v0, :cond_1b4

    .line 1017
    :try_start_1a2
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v11, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1ab} :catch_1ad

    goto/16 :goto_446

    .line 1019
    :catch_1ad
    :try_start_1ad
    const-string v0, "processCode: Could not get UT handle for queryCLIR."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_446

    .line 1022
    :cond_1b4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :cond_1ba
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_20d

    const-string v12, "30"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20d

    .line 1026
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v0
    :try_end_1ca
    .catch Ljava/lang/RuntimeException; {:try_start_1ad .. :try_end_1ca} :catch_3b

    if-eqz v0, :cond_1de

    .line 1028
    :try_start_1cc
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->queryCLIP(Landroid/os/Message;)V
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1d5} :catch_1d7

    goto/16 :goto_446

    .line 1030
    :catch_1d7
    :try_start_1d7
    const-string v0, "processCode: Could not get UT handle for queryCLIP."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_446

    .line 1032
    :cond_1de
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_1f1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1eb

    goto :goto_1f1

    .line 1040
    :cond_1eb
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f1
    .catch Ljava/lang/RuntimeException; {:try_start_1d7 .. :try_end_1f1} :catch_3b

    .line 1034
    :cond_1f1
    :goto_1f1
    :try_start_1f1
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    .line 1035
    invoke-virtual {v1, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1034
    invoke-interface {v0, v3, v4}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_204
    .catch Lcom/android/ims/ImsException; {:try_start_1f1 .. :try_end_204} :catch_206
    .catch Ljava/lang/RuntimeException; {:try_start_1f1 .. :try_end_204} :catch_3b

    goto/16 :goto_446

    .line 1037
    :catch_206
    :try_start_206
    const-string v0, "processCode: Could not get UT handle for updateCLIP."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_446

    .line 1042
    :cond_20d
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_266

    const-string v12, "76"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_266

    .line 1044
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v0
    :try_end_21d
    .catch Ljava/lang/RuntimeException; {:try_start_206 .. :try_end_21d} :catch_3b

    if-eqz v0, :cond_237

    .line 1046
    :try_start_21f
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1047
    invoke-virtual {v1, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_22e
    .catch Lcom/android/ims/ImsException; {:try_start_21f .. :try_end_22e} :catch_230
    .catch Ljava/lang/RuntimeException; {:try_start_21f .. :try_end_22e} :catch_3b

    goto/16 :goto_446

    .line 1049
    :catch_230
    :try_start_230
    const-string v0, "processCode: Could not get UT handle for queryCOLP."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_446

    .line 1051
    :cond_237
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_24a

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_244

    goto :goto_24a

    .line 1059
    :cond_244
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24a
    .catch Ljava/lang/RuntimeException; {:try_start_230 .. :try_end_24a} :catch_3b

    .line 1053
    :cond_24a
    :goto_24a
    :try_start_24a
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    .line 1054
    invoke-virtual {v1, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1053
    invoke-interface {v0, v3, v4}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V
    :try_end_25d
    .catch Lcom/android/ims/ImsException; {:try_start_24a .. :try_end_25d} :catch_25f
    .catch Ljava/lang/RuntimeException; {:try_start_24a .. :try_end_25d} :catch_3b

    goto/16 :goto_446

    .line 1056
    :catch_25f
    :try_start_25f
    const-string v0, "processCode: Could not get UT handle for updateCOLP."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_446

    .line 1061
    :cond_266
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_2d0

    const-string v12, "77"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d0

    .line 1063
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0
    :try_end_276
    .catch Ljava/lang/RuntimeException; {:try_start_25f .. :try_end_276} :catch_3b

    const-string v3, "processCode: Could not get UT handle for updateCOLR."

    if-eqz v0, :cond_290

    .line 1065
    :try_start_27a
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1066
    invoke-virtual {v1, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1065
    invoke-interface {v0, v7, v4}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_289
    .catch Lcom/android/ims/ImsException; {:try_start_27a .. :try_end_289} :catch_28b
    .catch Ljava/lang/RuntimeException; {:try_start_27a .. :try_end_289} :catch_3b

    goto/16 :goto_446

    .line 1068
    :catch_28b
    :try_start_28b
    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_446

    .line 1070
    :cond_290
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0
    :try_end_294
    .catch Ljava/lang/RuntimeException; {:try_start_28b .. :try_end_294} :catch_3b

    if-eqz v0, :cond_2ac

    .line 1072
    :try_start_296
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1073
    invoke-virtual {v1, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1072
    invoke-interface {v0, v8, v4}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_2a5
    .catch Lcom/android/ims/ImsException; {:try_start_296 .. :try_end_2a5} :catch_2a7
    .catch Ljava/lang/RuntimeException; {:try_start_296 .. :try_end_2a5} :catch_3b

    goto/16 :goto_446

    .line 1075
    :catch_2a7
    :try_start_2a7
    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_446

    .line 1077
    :cond_2ac
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v0
    :try_end_2b0
    .catch Ljava/lang/RuntimeException; {:try_start_2a7 .. :try_end_2b0} :catch_3b

    if-eqz v0, :cond_2ca

    .line 1079
    :try_start_2b2
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1080
    invoke-virtual {v1, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_2c1
    .catch Lcom/android/ims/ImsException; {:try_start_2b2 .. :try_end_2c1} :catch_2c3
    .catch Ljava/lang/RuntimeException; {:try_start_2b2 .. :try_end_2c1} :catch_3b

    goto/16 :goto_446

    .line 1082
    :catch_2c3
    :try_start_2c3
    const-string v0, "processCode: Could not get UT handle for queryCOLR."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_446

    .line 1085
    :cond_2ca
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_2d0
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const/16 v9, 0xa

    if-eqz v0, :cond_301

    const-string v12, "156"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2dc
    .catch Ljava/lang/RuntimeException; {:try_start_2c3 .. :try_end_2dc} :catch_3b

    if-eqz v0, :cond_301

    .line 1089
    :try_start_2de
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_2f5

    .line 1090
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1092
    invoke-virtual {v1, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1090
    invoke-interface {v0, v9, v3}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V

    goto/16 :goto_446

    .line 1094
    :cond_2f5
    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processIcbMmiCodeForUpdate()V
    :try_end_2f8
    .catch Lcom/android/ims/ImsException; {:try_start_2de .. :try_end_2f8} :catch_2fa
    .catch Ljava/lang/RuntimeException; {:try_start_2de .. :try_end_2f8} :catch_3b

    goto/16 :goto_446

    .line 1098
    :catch_2fa
    :try_start_2fa
    const-string v0, "processCode: Could not get UT handle for ICB."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_446

    .line 1100
    :cond_301
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_348

    const-string v12, "157"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_30b
    .catch Ljava/lang/RuntimeException; {:try_start_2fa .. :try_end_30b} :catch_3b

    if-eqz v0, :cond_348

    .line 1104
    :try_start_30d
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_324

    .line 1105
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1107
    invoke-virtual {v1, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1105
    invoke-interface {v0, v11, v3}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V

    goto/16 :goto_446

    .line 1109
    :cond_324
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_32b

    goto :goto_32f

    .line 1111
    :cond_32b
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move v7, v8

    .line 1114
    :goto_32f
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1117
    invoke-virtual {v1, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x0

    .line 1115
    invoke-interface {v0, v11, v7, v3, v4}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    :try_end_33f
    .catch Lcom/android/ims/ImsException; {:try_start_30d .. :try_end_33f} :catch_341
    .catch Ljava/lang/RuntimeException; {:try_start_30d .. :try_end_33f} :catch_3b

    goto/16 :goto_446

    .line 1121
    :catch_341
    :try_start_341
    const-string v0, "processCode: Could not get UT handle for ICBa."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_446

    .line 1123
    :cond_348
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_3c5

    const-string v9, "43"

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c5

    .line 1125
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v0

    .line 1127
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_396

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_368

    goto :goto_396

    .line 1139
    :cond_368
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_390

    .line 1140
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getTerminalBasedCallWaitingState(Z)I

    move-result v0

    if-eq v0, v4, :cond_385

    .line 1142
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1143
    invoke-virtual {v1, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_446

    .line 1145
    :cond_385
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_446

    .line 1148
    :cond_390
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_396
    :goto_396
    if-eqz v0, :cond_39c

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v7, :cond_3b6

    .line 1130
    :cond_39c
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getTerminalBasedCallWaitingState(Z)I

    move-result v3

    if-eq v3, v4, :cond_3b6

    .line 1132
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v4

    .line 1133
    invoke-virtual {v1, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1132
    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZILandroid/os/Message;)V

    return-void

    .line 1137
    :cond_3b6
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v4

    .line 1138
    invoke-virtual {v1, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1137
    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_446

    .line 1150
    :cond_3c5
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_413

    .line 1151
    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isUssdOverImsAllowed()Z

    move-result v0
    :try_end_3cd
    .catch Ljava/lang/RuntimeException; {:try_start_341 .. :try_end_3cd} :catch_3b

    const-string v6, "processCode: Sending ussd string \'"

    if-eqz v0, :cond_3f2

    .line 1152
    :try_start_3d1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    .line 1153
    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1152
    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sendUssd(Ljava/lang/String;)V

    goto :goto_446

    .line 1156
    :cond_3f2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    .line 1157
    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1156
    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1161
    :cond_413
    const-string v0, "processCode: invalid or unsupported MMI"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41e
    .catch Ljava/lang/RuntimeException; {:try_start_3d1 .. :try_end_41e} :catch_3b

    .line 1165
    :goto_41e
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1166
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040684

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCode: RuntimeException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    :goto_446
    return-void
.end method

.method public blacklist processImsSsData(Landroid/os/AsyncResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1987
    :try_start_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/ImsSsData;

    .line 1988
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->parseSsData(Landroid/telephony/ims/ImsSsData;)V
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    .line 1990
    :catch_8
    new-instance p0, Lcom/android/ims/ImsException;

    const-string p1, "Exception in parsing SS Data"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method blacklist sendUssd(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 1273
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 1280
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x2

    .line 1281
    invoke-virtual {p0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1280
    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setIsSsInfo(Z)V
    .registers 2

    .line 2141
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsSsInfo:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 2153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsPhoneMmiCode {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2156
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    :cond_39
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_53

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2158
    :cond_53
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    if-eqz v1, :cond_6d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    :cond_6d
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    if-eqz v1, :cond_87

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sib="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2160
    :cond_87
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    if-eqz v1, :cond_a1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    :cond_a1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    const-string v2, "ImsPhoneMmiCode"

    if-eqz v1, :cond_c1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " poundString="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2162
    :cond_c1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v1, :cond_df

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dialingNumber="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 2163
    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2164
    :cond_df
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    if-eqz v1, :cond_fd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pwd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    :cond_fd
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    if-eqz p0, :cond_106

    const-string p0, " hasReceiver"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    :cond_106
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
