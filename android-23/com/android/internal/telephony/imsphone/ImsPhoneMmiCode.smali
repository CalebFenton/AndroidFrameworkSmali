.class public final Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
.super Landroid/os/Handler;
.source "ImsPhoneMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field private static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field private static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field private static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field private static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field private static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field private static final CLIR_DEFAULT:I = 0x0

.field private static final CLIR_INVOCATION:I = 0x1

.field private static final CLIR_NOT_PROVISIONED:I = 0x0

.field private static final CLIR_PRESENTATION_ALLOWED_TEMPORARY:I = 0x4

.field private static final CLIR_PRESENTATION_RESTRICTED_TEMPORARY:I = 0x3

.field private static final CLIR_PROVISIONED_PERMANENT:I = 0x1

.field private static final CLIR_SUPPRESSION:I = 0x2

.field private static final END_OF_USSD_COMMAND:C = '#'

.field private static final EVENT_GET_CLIR_COMPLETE:I = 0x6

.field private static final EVENT_QUERY_CF_COMPLETE:I = 0x1

.field private static final EVENT_QUERY_COMPLETE:I = 0x3

.field private static final EVENT_SET_CFF_COMPLETE:I = 0x4

.field private static final EVENT_SET_COMPLETE:I = 0x0

.field private static final EVENT_SUPP_SVC_QUERY_COMPLETE:I = 0x7

.field private static final EVENT_USSD_CANCEL_COMPLETE:I = 0x5

.field private static final EVENT_USSD_COMPLETE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "ImsPhoneMmiCode"

.field private static final MATCH_GROUP_ACTION:I = 0x2

.field private static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field private static final MATCH_GROUP_POUND_STRING:I = 0x1

.field private static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field private static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field private static final MATCH_GROUP_SIA:I = 0x5

.field private static final MATCH_GROUP_SIB:I = 0x7

.field private static final MATCH_GROUP_SIC:I = 0x9

.field private static final MAX_LENGTH_SHORT_CODE:I = 0x2

.field private static final NUM_PRESENTATION_ALLOWED:I = 0x0

.field private static final NUM_PRESENTATION_RESTRICTED:I = 0x1

.field private static final SC_BAIC:Ljava/lang/String; = "35"

.field private static final SC_BAICa:Ljava/lang/String; = "157"

.field private static final SC_BAICr:Ljava/lang/String; = "351"

.field private static final SC_BAOC:Ljava/lang/String; = "33"

.field private static final SC_BAOIC:Ljava/lang/String; = "331"

.field private static final SC_BAOICxH:Ljava/lang/String; = "332"

.field private static final SC_BA_ALL:Ljava/lang/String; = "330"

.field private static final SC_BA_MO:Ljava/lang/String; = "333"

.field private static final SC_BA_MT:Ljava/lang/String; = "353"

.field private static final SC_BS_MT:Ljava/lang/String; = "156"

.field private static final SC_CFB:Ljava/lang/String; = "67"

.field private static final SC_CFNR:Ljava/lang/String; = "62"

.field private static final SC_CFNRy:Ljava/lang/String; = "61"

.field private static final SC_CFU:Ljava/lang/String; = "21"

.field private static final SC_CF_All:Ljava/lang/String; = "002"

.field private static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field private static final SC_CLIP:Ljava/lang/String; = "30"

.field private static final SC_CLIR:Ljava/lang/String; = "31"

.field private static final SC_CNAP:Ljava/lang/String; = "300"

.field private static final SC_COLP:Ljava/lang/String; = "76"

.field private static final SC_COLR:Ljava/lang/String; = "77"

.field private static final SC_PIN:Ljava/lang/String; = "04"

.field private static final SC_PIN2:Ljava/lang/String; = "042"

.field private static final SC_PUK:Ljava/lang/String; = "05"

.field private static final SC_PUK2:Ljava/lang/String; = "052"

.field private static final SC_PWD:Ljava/lang/String; = "03"

.field private static final SC_WAIT:Ljava/lang/String; = "43"

.field public static final UT_BUNDLE_KEY_CLIR:Ljava/lang/String; = "queryClir"

.field public static final UT_BUNDLE_KEY_SSINFO:Ljava/lang/String; = "imsSsInfo"

.field private static sPatternSuppService:Ljava/util/regex/Pattern;

.field private static sTwoDigitNumberPattern:[Ljava/lang/String;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialingNumber:Ljava/lang/String;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIsCallFwdReg:Z

.field private mIsPendingUSSD:Z

.field private mIsUssdRequest:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mPoundString:Ljava/lang/String;

.field private mPwd:Ljava/lang/String;

.field private mSc:Ljava/lang/String;

.field private mSia:Ljava/lang/String;

.field private mSib:Ljava/lang/String;

.field private mSic:Ljava/lang/String;

.field private mState:Lcom/android/internal/telephony/MmiCode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 191
    const-string/jumbo v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    #@3
    .line 190
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    #@9
    .line 66
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    .line 451
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@b
    .line 182
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@f
    .line 452
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@11
    .line 453
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@17
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@19
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1b
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@23
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@25
    .line 448
    return-void
.end method

.method private createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "serviceClass"    # I

    #@0
    .prologue
    .line 1511
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    .line 1512
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@4
    const v3, 0x104007d

    #@7
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@a
    move-result-object v2

    #@b
    .line 1511
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@e
    .line 1514
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@f
    .line 1515
    .local v0, "classMask":I
    :goto_0
    const/16 v2, 0x80

    #@11
    .line 1514
    if-gt v0, v2, :cond_1

    #@13
    .line 1518
    and-int v2, v0, p1

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 1519
    const-string/jumbo v2, "\n"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 1520
    and-int v2, v0, p1

    #@1f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@26
    .line 1516
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1523
    :cond_1
    return-object v1
.end method

.method private getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@2
    const v1, 0x104007a

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1077
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@6
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@e
    const v1, 0x1040093

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@18
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@20
    const v1, 0x1040091

    #@23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@26
    move-result-object v0

    #@27
    return-object v0

    #@28
    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@2a
    const-string/jumbo v1, "03"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_2

    #@33
    .line 1082
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@35
    const v1, 0x1040094

    #@38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@3b
    move-result-object v0

    #@3c
    return-object v0

    #@3d
    .line 1083
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@3f
    const-string/jumbo v1, "43"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_3

    #@48
    .line 1084
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@4a
    const v1, 0x1040092

    #@4d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@50
    move-result-object v0

    #@51
    return-object v0

    #@52
    .line 1085
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@54
    const-string/jumbo v1, "30"

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_4

    #@5d
    .line 1086
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@5f
    const v1, 0x104008d

    #@62
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@65
    move-result-object v0

    #@66
    return-object v0

    #@67
    .line 1087
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@69
    const-string/jumbo v1, "31"

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_5

    #@72
    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@74
    const v1, 0x104008e

    #@77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7a
    move-result-object v0

    #@7b
    return-object v0

    #@7c
    .line 1089
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@7e
    const-string/jumbo v1, "76"

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v0

    #@85
    if-eqz v0, :cond_6

    #@87
    .line 1090
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@89
    const v1, 0x104008f

    #@8c
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@8f
    move-result-object v0

    #@90
    return-object v0

    #@91
    .line 1091
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@93
    const-string/jumbo v1, "77"

    #@96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v0

    #@9a
    if-eqz v0, :cond_7

    #@9c
    .line 1092
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@9e
    const v1, 0x1040090

    #@a1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@a4
    move-result-object v0

    #@a5
    return-object v0

    #@a6
    .line 1096
    :cond_7
    const-string/jumbo v0, ""

    #@a9
    return-object v0
.end method

.method private static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 326
    if-eqz p0, :cond_0

    #@4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    move v0, v1

    #@c
    goto :goto_0
.end method

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 7
    .param p0, "sc"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 406
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@4
    move-result-object v2

    #@5
    .line 407
    .local v2, "resource":Landroid/content/res/Resources;
    if-eqz p0, :cond_1

    #@7
    .line 409
    const v3, 0x1070038

    #@a
    .line 408
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 410
    .local v0, "barringMMI":[Ljava/lang/String;
    if-eqz v0, :cond_1

    #@10
    .line 411
    array-length v5, v0

    #@11
    move v3, v4

    #@12
    :goto_0
    if-ge v3, v5, :cond_1

    #@14
    aget-object v1, v0, v3

    #@16
    .line 412
    .local v1, "match":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v6

    #@1a
    if-eqz v6, :cond_0

    #@1c
    const/4 v3, 0x1

    #@1d
    return v3

    #@1e
    .line 411
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 416
    .end local v0    # "barringMMI":[Ljava/lang/String;
    .end local v1    # "match":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 397
    if-eqz p0, :cond_1

    #@2
    .line 398
    const-string/jumbo v0, "21"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 399
    const-string/jumbo v0, "67"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    .line 398
    if-nez v0, :cond_0

    #@14
    .line 399
    const-string/jumbo v0, "61"

    #@17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    .line 398
    if-nez v0, :cond_0

    #@1d
    .line 400
    const-string/jumbo v0, "62"

    #@20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    .line 398
    if-nez v0, :cond_0

    #@26
    .line 400
    const-string/jumbo v0, "002"

    #@29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    .line 398
    if-nez v0, :cond_0

    #@2f
    .line 401
    const-string/jumbo v0, "004"

    #@32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    .line 397
    :goto_0
    return v0

    #@37
    .line 398
    :cond_0
    const/4 v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 397
    :cond_1
    const/4 v0, 0x0

    #@3a
    goto :goto_0
.end method

.method private static isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .locals 2
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 548
    if-nez p0, :cond_0

    #@3
    .line 549
    return v1

    #@4
    .line 556
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 557
    return v1

    #@b
    .line 560
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 561
    return v1

    #@16
    .line 563
    :cond_2
    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method private static isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 583
    if-eqz p0, :cond_2

    #@5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    if-gt v0, v1, :cond_2

    #@b
    .line 584
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 585
    return v3

    #@12
    .line 588
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@15
    move-result v0

    #@16
    if-ne v0, v1, :cond_1

    #@18
    .line 589
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    const/16 v1, 0x31

    #@1e
    if-eq v0, v1, :cond_2

    #@20
    .line 590
    :cond_1
    return v3

    #@21
    .line 593
    :cond_2
    return v2
.end method

.method private static isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 521
    const-string/jumbo v1, "ImsPhoneMmiCode"

    #@4
    const-string/jumbo v3, "isTwoDigitShortCode"

    #@7
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 523
    if-eqz p1, :cond_0

    #@c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v1

    #@10
    const/4 v3, 0x2

    #@11
    if-le v1, v3, :cond_1

    #@13
    :cond_0
    return v2

    #@14
    .line 525
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    #@16
    if-nez v1, :cond_2

    #@18
    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b
    move-result-object v1

    #@1c
    .line 527
    const v3, 0x107002b

    #@1f
    .line 526
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    sput-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    #@25
    .line 530
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    #@27
    array-length v4, v3

    #@28
    move v1, v2

    #@29
    :goto_0
    if-ge v1, v4, :cond_4

    #@2b
    aget-object v0, v3, v1

    #@2d
    .line 531
    .local v0, "dialnumber":Ljava/lang/String;
    const-string/jumbo v5, "ImsPhoneMmiCode"

    #@30
    new-instance v6, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v7, "Two Digit Number Pattern "

    #@38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 532
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_3

    #@4d
    .line 533
    const-string/jumbo v1, "ImsPhoneMmiCode"

    #@50
    const-string/jumbo v2, "Two Digit Number Pattern -true"

    #@53
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 534
    const/4 v1, 0x1

    #@57
    return v1

    #@58
    .line 530
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 537
    .end local v0    # "dialnumber":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "ImsPhoneMmiCode"

    #@5e
    const-string/jumbo v3, "Two Digit Number Pattern -false"

    #@61
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 538
    return v2
.end method

.method private makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "serviceClassMask"    # I

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v7, 0x1

    #@4
    .line 1189
    new-array v3, v6, [Ljava/lang/String;

    #@6
    const-string/jumbo v5, "{0}"

    #@9
    aput-object v5, v3, v8

    #@b
    const-string/jumbo v5, "{1}"

    #@e
    aput-object v5, v3, v7

    #@10
    const-string/jumbo v5, "{2}"

    #@13
    aput-object v5, v3, v9

    #@15
    .line 1190
    .local v3, "sources":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/CharSequence;

    #@17
    .line 1197
    .local v1, "destinations":[Ljava/lang/CharSequence;
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    #@19
    if-ne v5, v9, :cond_1

    #@1b
    const/4 v2, 0x1

    #@1c
    .line 1199
    .local v2, "needTimeTemplate":Z
    :goto_0
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@1e
    if-ne v5, v7, :cond_3

    #@20
    .line 1200
    if-eqz v2, :cond_2

    #@22
    .line 1201
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@24
    .line 1202
    const v6, 0x10400ce

    #@27
    .line 1201
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@2a
    move-result-object v4

    #@2b
    .line 1228
    .local v4, "template":Ljava/lang/CharSequence;
    :goto_1
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@2d
    and-int/2addr v5, p2

    #@2e
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    #@31
    move-result-object v5

    #@32
    aput-object v5, v1, v8

    #@34
    .line 1229
    iget-object v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@36
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    #@38
    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    aput-object v5, v1, v7

    #@3e
    .line 1230
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    #@40
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    aput-object v5, v1, v9

    #@46
    .line 1232
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    #@48
    if-nez v5, :cond_0

    #@4a
    .line 1233
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@4c
    and-int/2addr v5, p2

    #@4d
    if-ne v5, v7, :cond_0

    #@4f
    .line 1235
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@51
    if-ne v5, v7, :cond_6

    #@53
    const/4 v0, 0x1

    #@54
    .line 1236
    .local v0, "cffEnabled":Z
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@56
    if-eqz v5, :cond_0

    #@58
    .line 1237
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@5a
    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@5c
    invoke-virtual {v5, v7, v0, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@5f
    .line 1241
    .end local v0    # "cffEnabled":Z
    :cond_0
    invoke-static {v4, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@62
    move-result-object v5

    #@63
    return-object v5

    #@64
    .line 1197
    .end local v2    # "needTimeTemplate":Z
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x0

    #@65
    .restart local v2    # "needTimeTemplate":Z
    goto :goto_0

    #@66
    .line 1204
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@68
    .line 1205
    const v6, 0x10400cd

    #@6b
    .line 1204
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@6e
    move-result-object v4

    #@6f
    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    #@70
    .line 1207
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_3
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@72
    if-nez v5, :cond_4

    #@74
    iget-object v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@76
    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    #@79
    move-result v5

    #@7a
    if-eqz v5, :cond_4

    #@7c
    .line 1208
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@7e
    .line 1209
    const v6, 0x10400cc

    #@81
    .line 1208
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@84
    move-result-object v4

    #@85
    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    #@86
    .line 1214
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_4
    if-eqz v2, :cond_5

    #@88
    .line 1215
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@8a
    .line 1216
    const v6, 0x10400d0

    #@8d
    .line 1215
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@90
    move-result-object v4

    #@91
    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    #@92
    .line 1218
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@94
    .line 1219
    const v6, 0x10400cf

    #@97
    .line 1218
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9a
    move-result-object v4

    #@9b
    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    #@9c
    .line 1235
    :cond_6
    const/4 v0, 0x0

    #@9d
    .restart local v0    # "cffEnabled":Z
    goto :goto_2
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 318
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    return-object v1

    #@a
    .line 320
    :cond_0
    return-object p0
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    .line 234
    const/4 v1, 0x0

    #@1
    .line 236
    .local v1, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    #@3
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6
    move-result-object v0

    #@7
    .line 239
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 240
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@f
    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@12
    .line 241
    .local v1, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const/4 v2, 0x1

    #@13
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    #@1d
    .line 242
    const/4 v2, 0x2

    #@1e
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    #@28
    .line 243
    const/4 v2, 0x3

    #@29
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@33
    .line 244
    const/4 v2, 0x5

    #@34
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    #@3e
    .line 245
    const/4 v2, 0x7

    #@3f
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    #@49
    .line 246
    const/16 v2, 0x9

    #@4b
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    #@55
    .line 247
    const/16 v2, 0xb

    #@57
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    #@61
    .line 248
    const/16 v2, 0xc

    #@63
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@6d
    .line 254
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@6f
    if-eqz v2, :cond_0

    #@71
    .line 255
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@73
    const-string/jumbo v3, "#"

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@79
    move-result v2

    #@7a
    .line 254
    if-eqz v2, :cond_0

    #@7c
    .line 256
    const-string/jumbo v2, "#"

    #@7f
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@82
    move-result v2

    #@83
    .line 254
    if-eqz v2, :cond_0

    #@85
    .line 257
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@87
    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@8a
    .line 258
    .restart local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    #@8c
    .line 276
    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_0
    :goto_0
    return-object v1

    #@8d
    .line 260
    .local v1, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_1
    const-string/jumbo v2, "#"

    #@90
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@93
    move-result v2

    #@94
    if-eqz v2, :cond_2

    #@96
    .line 265
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@98
    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@9b
    .line 266
    .local v1, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    #@9d
    goto :goto_0

    #@9e
    .line 267
    .local v1, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@a1
    move-result-object v2

    #@a2
    invoke-static {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z

    #@a5
    move-result v2

    #@a6
    if-eqz v2, :cond_3

    #@a8
    .line 269
    const/4 v1, 0x0

    #@a9
    goto :goto_0

    #@aa
    .line 270
    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    #@ad
    move-result v2

    #@ae
    if-eqz v2, :cond_0

    #@b0
    .line 272
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@b2
    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@b5
    .line 273
    .local v1, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@b7
    goto :goto_0
.end method

.method static newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 2
    .param p0, "ussdMessge"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    .line 302
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@5
    .line 304
    .local v0, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@7
    .line 305
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@9
    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@b
    .line 306
    const/4 v1, 0x1

    #@c
    iput-boolean v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    #@e
    .line 308
    return-object v0
.end method

.method static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 2
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "isUssdRequest"    # Z
    .param p2, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    .line 284
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@2
    invoke-direct {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@5
    .line 286
    .local v0, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@7
    .line 287
    iput-boolean p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    #@9
    .line 290
    if-eqz p1, :cond_0

    #@b
    .line 291
    const/4 v1, 0x1

    #@c
    iput-boolean v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    #@e
    .line 292
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@10
    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@12
    .line 297
    :goto_0
    return-object v0

    #@13
    .line 294
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@15
    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@17
    goto :goto_0
.end method

.method private onQueryCfComplete(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 1247
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    #@7
    move-result-object v7

    #@8
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@b
    .line 1248
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "\n"

    #@e
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 1250
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@13
    if-eqz v7, :cond_2

    #@15
    .line 1251
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@17
    iput-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@19
    .line 1253
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1b
    instance-of v7, v7, Lcom/android/ims/ImsException;

    #@1d
    if-eqz v7, :cond_1

    #@1f
    .line 1254
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@21
    check-cast v0, Lcom/android/ims/ImsException;

    #@23
    .line 1255
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    if-eqz v7, :cond_0

    #@29
    .line 1256
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 1305
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@32
    .line 1306
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@34
    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@37
    .line 1246
    return-void

    #@38
    .line 1258
    .restart local v0    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3f
    goto :goto_0

    #@40
    .line 1262
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@47
    goto :goto_0

    #@48
    .line 1267
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4a
    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    #@4c
    .line 1269
    .local v2, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v7, v2

    #@4d
    if-nez v7, :cond_4

    #@4f
    .line 1271
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@51
    const v8, 0x104007e

    #@54
    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@5b
    .line 1274
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@5d
    if-eqz v7, :cond_3

    #@5f
    .line 1275
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@61
    const/4 v8, 0x1

    #@62
    invoke-virtual {v7, v8, v10, v9}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@65
    .line 1302
    :cond_3
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@67
    iput-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@69
    goto :goto_0

    #@6a
    .line 1279
    :cond_4
    new-instance v6, Landroid/text/SpannableStringBuilder;

    #@6c
    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@6f
    .line 1287
    .local v6, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x1

    #@70
    .line 1288
    .local v5, "serviceClassMask":I
    :goto_2
    const/16 v7, 0x80

    #@72
    .line 1287
    if-gt v5, v7, :cond_7

    #@74
    .line 1291
    const/4 v1, 0x0

    #@75
    .local v1, "i":I
    array-length v3, v2

    #@76
    .local v3, "s":I
    :goto_3
    if-ge v1, v3, :cond_6

    #@78
    .line 1292
    aget-object v7, v2, v1

    #@7a
    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@7c
    and-int/2addr v7, v5

    #@7d
    if-eqz v7, :cond_5

    #@7f
    .line 1293
    aget-object v7, v2, v1

    #@81
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@88
    .line 1295
    const-string/jumbo v7, "\n"

    #@8b
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@8e
    .line 1291
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@90
    goto :goto_3

    #@91
    .line 1289
    :cond_6
    shl-int/lit8 v5, v5, 0x1

    #@93
    goto :goto_2

    #@94
    .line 1299
    .end local v1    # "i":I
    .end local v3    # "s":I
    :cond_7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@97
    goto :goto_1
.end method

.method private onQueryClirComplete(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const v11, 0x104009f

    #@3
    const v10, 0x104009c

    #@6
    const/4 v9, 0x1

    #@7
    const v8, 0x104007a

    #@a
    const/4 v7, 0x0

    #@b
    .line 1372
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    #@10
    move-result-object v4

    #@11
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@14
    .line 1373
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "\n"

    #@17
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 1374
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@1c
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1e
    .line 1376
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@20
    if-eqz v4, :cond_2

    #@22
    .line 1378
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@24
    instance-of v4, v4, Lcom/android/ims/ImsException;

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 1379
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2a
    check-cast v1, Lcom/android/ims/ImsException;

    #@2c
    .line 1380
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    if-eqz v4, :cond_1

    #@32
    .line 1381
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 1461
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@3b
    .line 1462
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3d
    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@40
    .line 1371
    return-void

    #@41
    .line 1383
    .restart local v1    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@48
    goto :goto_0

    #@49
    .line 1387
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4b
    check-cast v3, Landroid/os/Bundle;

    #@4d
    .line 1388
    .local v3, "ssInfo":Landroid/os/Bundle;
    const-string/jumbo v4, "queryClir"

    #@50
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    #@53
    move-result-object v0

    #@54
    .line 1391
    .local v0, "clirInfo":[I
    const-string/jumbo v4, "ImsPhoneMmiCode"

    #@57
    new-instance v5, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v6, "CLIR param n="

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    aget v6, v0, v7

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    .line 1392
    const-string/jumbo v6, " m="

    #@6c
    .line 1391
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    .line 1392
    aget v6, v0, v9

    #@72
    .line 1391
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v5

    #@7a
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 1395
    aget v4, v0, v9

    #@7f
    packed-switch v4, :pswitch_data_0

    #@82
    .line 1455
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@84
    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@8b
    .line 1457
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@8d
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@8f
    goto :goto_0

    #@90
    .line 1397
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@92
    .line 1398
    const v5, 0x10400a0

    #@95
    .line 1397
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@98
    move-result-object v4

    #@99
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@9c
    .line 1399
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@9e
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@a0
    goto :goto_0

    #@a1
    .line 1402
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@a3
    .line 1403
    const v5, 0x10400a1

    #@a6
    .line 1402
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@a9
    move-result-object v4

    #@aa
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@ad
    .line 1404
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@af
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@b1
    goto :goto_0

    #@b2
    .line 1408
    :pswitch_3
    aget v4, v0, v7

    #@b4
    packed-switch v4, :pswitch_data_1

    #@b7
    .line 1425
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@b9
    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@bc
    move-result-object v4

    #@bd
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@c0
    .line 1427
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@c2
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@c4
    goto/16 :goto_0

    #@c6
    .line 1410
    :pswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@c8
    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@cb
    move-result-object v4

    #@cc
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@cf
    .line 1412
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@d1
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@d3
    goto/16 :goto_0

    #@d5
    .line 1415
    :pswitch_5
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@d7
    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@da
    move-result-object v4

    #@db
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@de
    .line 1417
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@e0
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@e2
    goto/16 :goto_0

    #@e4
    .line 1420
    :pswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@e6
    .line 1421
    const v5, 0x104009d

    #@e9
    .line 1420
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@ec
    move-result-object v4

    #@ed
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@f0
    .line 1422
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@f2
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@f4
    goto/16 :goto_0

    #@f6
    .line 1432
    :pswitch_7
    aget v4, v0, v7

    #@f8
    packed-switch v4, :pswitch_data_2

    #@fb
    .line 1449
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@fd
    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@100
    move-result-object v4

    #@101
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@104
    .line 1451
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@106
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@108
    goto/16 :goto_0

    #@10a
    .line 1434
    :pswitch_8
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@10c
    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@10f
    move-result-object v4

    #@110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@113
    .line 1436
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@115
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@117
    goto/16 :goto_0

    #@119
    .line 1439
    :pswitch_9
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@11b
    .line 1440
    const v5, 0x104009e

    #@11e
    .line 1439
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@121
    move-result-object v4

    #@122
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@125
    .line 1441
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@127
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@129
    goto/16 :goto_0

    #@12b
    .line 1444
    :pswitch_a
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@12d
    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@130
    move-result-object v4

    #@131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@134
    .line 1446
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@136
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@138
    goto/16 :goto_0

    #@13a
    .line 1395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_7
    .end packed-switch

    #@148
    .line 1408
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    #@152
    .line 1432
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private onQueryComplete(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const v7, 0x104007a

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 1467
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    #@a
    move-result-object v3

    #@b
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@e
    .line 1468
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\n"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 1470
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@16
    if-eqz v3, :cond_2

    #@18
    .line 1471
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@1a
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1c
    .line 1473
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    instance-of v3, v3, Lcom/android/ims/ImsException;

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 1474
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@24
    check-cast v0, Lcom/android/ims/ImsException;

    #@26
    .line 1475
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 1476
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 1505
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@35
    .line 1506
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@37
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@3a
    .line 1466
    return-void

    #@3b
    .line 1478
    .restart local v0    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@42
    goto :goto_0

    #@43
    .line 1481
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@4a
    goto :goto_0

    #@4b
    .line 1485
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4d
    check-cast v1, [I

    #@4f
    .line 1487
    .local v1, "ints":[I
    array-length v3, v1

    #@50
    if-eqz v3, :cond_6

    #@52
    .line 1488
    aget v3, v1, v5

    #@54
    if-nez v3, :cond_3

    #@56
    .line 1489
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@58
    const v4, 0x104007e

    #@5b
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@62
    .line 1502
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@64
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@66
    goto :goto_0

    #@67
    .line 1490
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@69
    const-string/jumbo v4, "43"

    #@6c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v3

    #@70
    if-eqz v3, :cond_4

    #@72
    .line 1492
    aget v3, v1, v6

    #@74
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@7b
    goto :goto_1

    #@7c
    .line 1493
    :cond_4
    aget v3, v1, v5

    #@7e
    if-ne v3, v6, :cond_5

    #@80
    .line 1495
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@82
    const v4, 0x104007c

    #@85
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@88
    move-result-object v3

    #@89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@8c
    goto :goto_1

    #@8d
    .line 1497
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@8f
    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@92
    move-result-object v3

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@96
    goto :goto_1

    #@97
    .line 1500
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@99
    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9c
    move-result-object v3

    #@9d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@a0
    goto :goto_1
.end method

.method private onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const v5, 0x104007f

    #@3
    const v4, 0x104007a

    #@6
    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    #@b
    move-result-object v3

    #@c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@f
    .line 1102
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\n"

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 1104
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@17
    if-eqz v3, :cond_3

    #@19
    .line 1105
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@1b
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1d
    .line 1107
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1f
    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 1108
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@25
    check-cast v3, Lcom/android/internal/telephony/CommandException;

    #@27
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@2a
    move-result-object v0

    #@2b
    .line 1109
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@2d
    if-ne v0, v3, :cond_0

    #@2f
    .line 1110
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@31
    .line 1111
    const v4, 0x1040081

    #@34
    .line 1110
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3b
    .line 1151
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@3d
    .line 1152
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3f
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@42
    .line 1100
    return-void

    #@43
    .line 1113
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@45
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@4c
    goto :goto_0

    #@4d
    .line 1117
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4f
    check-cast v1, Lcom/android/ims/ImsException;

    #@51
    .line 1118
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    if-eqz v3, :cond_2

    #@57
    .line 1119
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    goto :goto_0

    #@5f
    .line 1121
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@66
    goto :goto_0

    #@67
    .line 1124
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@6a
    move-result v3

    #@6b
    if-eqz v3, :cond_5

    #@6d
    .line 1125
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@6f
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@71
    .line 1126
    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    #@73
    if-eqz v3, :cond_4

    #@75
    .line 1127
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@77
    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@7e
    goto :goto_0

    #@7f
    .line 1130
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@81
    .line 1131
    const v4, 0x104007c

    #@84
    .line 1130
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@8b
    goto :goto_0

    #@8c
    .line 1133
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    #@8f
    move-result v3

    #@90
    if-eqz v3, :cond_6

    #@92
    .line 1134
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@94
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@96
    .line 1135
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@98
    .line 1136
    const v4, 0x104007e

    #@9b
    .line 1135
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9e
    move-result-object v3

    #@9f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@a2
    goto :goto_0

    #@a3
    .line 1137
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    #@a6
    move-result v3

    #@a7
    if-eqz v3, :cond_7

    #@a9
    .line 1138
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@ab
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@ad
    .line 1139
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@af
    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@b2
    move-result-object v3

    #@b3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@b6
    goto :goto_0

    #@b7
    .line 1141
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    #@ba
    move-result v3

    #@bb
    if-eqz v3, :cond_8

    #@bd
    .line 1142
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@bf
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@c1
    .line 1143
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@c3
    .line 1144
    const v4, 0x1040080

    #@c6
    .line 1143
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@c9
    move-result-object v3

    #@ca
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@cd
    goto/16 :goto_0

    #@cf
    .line 1146
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@d1
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@d3
    .line 1147
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@d5
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@d8
    move-result-object v3

    #@d9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@dc
    goto/16 :goto_0
.end method

.method private onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const v10, 0x104007c

    #@3
    const v9, 0x104007a

    #@6
    const/4 v8, 0x1

    #@7
    const/4 v7, 0x0

    #@8
    .line 1311
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    #@d
    move-result-object v5

    #@e
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@11
    .line 1312
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\n"

    #@14
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 1314
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@19
    if-eqz v5, :cond_2

    #@1b
    .line 1315
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@1d
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1f
    .line 1317
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@21
    instance-of v5, v5, Lcom/android/ims/ImsException;

    #@23
    if-eqz v5, :cond_1

    #@25
    .line 1318
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@27
    check-cast v1, Lcom/android/ims/ImsException;

    #@29
    .line 1319
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    if-eqz v5, :cond_0

    #@2f
    .line 1320
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 1367
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@38
    .line 1368
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3a
    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@3d
    .line 1310
    return-void

    #@3e
    .line 1322
    .restart local v1    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@45
    goto :goto_0

    #@46
    .line 1325
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@4d
    goto :goto_0

    #@4e
    .line 1328
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@50
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@52
    .line 1329
    const/4 v3, 0x0

    #@53
    .line 1330
    .local v3, "ssInfo":Lcom/android/ims/ImsSsInfo;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@55
    instance-of v5, v5, Landroid/os/Bundle;

    #@57
    if-eqz v5, :cond_6

    #@59
    .line 1331
    const-string/jumbo v5, "ImsPhoneMmiCode"

    #@5c
    const-string/jumbo v6, "Received CLIP/COLP/COLR Response."

    #@5f
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 1333
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@64
    check-cast v4, Landroid/os/Bundle;

    #@66
    .line 1334
    .local v4, "ssInfoResp":Landroid/os/Bundle;
    const-string/jumbo v5, "imsSsInfo"

    #@69
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@6c
    move-result-object v3

    #@6d
    .end local v3    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    check-cast v3, Lcom/android/ims/ImsSsInfo;

    #@6f
    .line 1335
    .local v3, "ssInfo":Lcom/android/ims/ImsSsInfo;
    if-eqz v3, :cond_5

    #@71
    .line 1336
    const-string/jumbo v5, "ImsPhoneMmiCode"

    #@74
    new-instance v6, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v7, "ImsSsInfo mStatus = "

    #@7c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    iget v7, v3, Lcom/android/ims/ImsSsInfo;->mStatus:I

    #@82
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v6

    #@86
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v6

    #@8a
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 1337
    iget v5, v3, Lcom/android/ims/ImsSsInfo;->mStatus:I

    #@8f
    if-nez v5, :cond_3

    #@91
    .line 1338
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@93
    const v6, 0x104007e

    #@96
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@9d
    .line 1339
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@9f
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@a1
    goto :goto_0

    #@a2
    .line 1340
    :cond_3
    iget v5, v3, Lcom/android/ims/ImsSsInfo;->mStatus:I

    #@a4
    if-ne v5, v8, :cond_4

    #@a6
    .line 1341
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@a8
    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@ab
    move-result-object v5

    #@ac
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@af
    .line 1342
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@b1
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@b3
    goto :goto_0

    #@b4
    .line 1344
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@b6
    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@b9
    move-result-object v5

    #@ba
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@bd
    goto/16 :goto_0

    #@bf
    .line 1347
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@c1
    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@c4
    move-result-object v5

    #@c5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@c8
    goto/16 :goto_0

    #@ca
    .line 1351
    .end local v4    # "ssInfoResp":Landroid/os/Bundle;
    .local v3, "ssInfo":Lcom/android/ims/ImsSsInfo;
    :cond_6
    const-string/jumbo v5, "ImsPhoneMmiCode"

    #@cd
    const-string/jumbo v6, "Received Call Barring Response."

    #@d0
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    .line 1353
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d5
    check-cast v0, [I

    #@d7
    .line 1356
    .local v0, "cbInfos":[I
    aget v5, v0, v7

    #@d9
    if-ne v5, v8, :cond_7

    #@db
    .line 1357
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@dd
    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@e0
    move-result-object v5

    #@e1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@e4
    .line 1358
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@e6
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@e8
    goto/16 :goto_0

    #@ea
    .line 1360
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@ec
    const v6, 0x104007e

    #@ef
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@f2
    move-result-object v5

    #@f3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@f6
    .line 1361
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@f8
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@fa
    goto/16 :goto_0
.end method

.method private processIcbMmiCodeForUpdate()V
    .locals 7

    #@0
    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    #@2
    .line 1054
    .local v0, "dialingNumber":Ljava/lang/String;
    const/4 v2, 0x0

    #@3
    .line 1056
    .local v2, "icbNum":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@5
    .line 1057
    const-string/jumbo v3, "\\$"

    #@8
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 1061
    .end local v2    # "icbNum":[Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@e
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@10
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@13
    move-result-object v3

    #@14
    .line 1063
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@17
    move-result v4

    #@18
    .line 1064
    const/4 v5, 0x7

    #@19
    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v5

    #@1d
    .line 1062
    const/16 v6, 0xa

    #@1f
    .line 1061
    invoke-interface {v3, v6, v4, v5, v2}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IZLandroid/os/Message;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 1052
    :goto_0
    return-void

    #@23
    .line 1066
    :catch_0
    move-exception v1

    #@24
    .line 1067
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@27
    const-string/jumbo v4, "Could not get UT handle for updating ICB."

    #@2a
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    goto :goto_0
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 421
    if-nez p0, :cond_0

    #@2
    .line 422
    new-instance v0, Ljava/lang/RuntimeException;

    #@4
    const-string/jumbo v1, "invalid call barring sc"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 425
    :cond_0
    const-string/jumbo v0, "33"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 426
    const-string/jumbo v0, "AO"

    #@17
    return-object v0

    #@18
    .line 427
    :cond_1
    const-string/jumbo v0, "331"

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 428
    const-string/jumbo v0, "OI"

    #@24
    return-object v0

    #@25
    .line 429
    :cond_2
    const-string/jumbo v0, "332"

    #@28
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_3

    #@2e
    .line 430
    const-string/jumbo v0, "OX"

    #@31
    return-object v0

    #@32
    .line 431
    :cond_3
    const-string/jumbo v0, "35"

    #@35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_4

    #@3b
    .line 432
    const-string/jumbo v0, "AI"

    #@3e
    return-object v0

    #@3f
    .line 433
    :cond_4
    const-string/jumbo v0, "351"

    #@42
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_5

    #@48
    .line 434
    const-string/jumbo v0, "IR"

    #@4b
    return-object v0

    #@4c
    .line 435
    :cond_5
    const-string/jumbo v0, "330"

    #@4f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v0

    #@53
    if-eqz v0, :cond_6

    #@55
    .line 436
    const-string/jumbo v0, "AB"

    #@58
    return-object v0

    #@59
    .line 437
    :cond_6
    const-string/jumbo v0, "333"

    #@5c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v0

    #@60
    if-eqz v0, :cond_7

    #@62
    .line 438
    const-string/jumbo v0, "AG"

    #@65
    return-object v0

    #@66
    .line 439
    :cond_7
    const-string/jumbo v0, "353"

    #@69
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_8

    #@6f
    .line 440
    const-string/jumbo v0, "AC"

    #@72
    return-object v0

    #@73
    .line 442
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    #@75
    const-string/jumbo v1, "invalid call barring sc"

    #@78
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v0
.end method

.method private static scToCallForwardReason(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 331
    if-nez p0, :cond_0

    #@2
    .line 332
    new-instance v0, Ljava/lang/RuntimeException;

    #@4
    const-string/jumbo v1, "invalid call forward sc"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 335
    :cond_0
    const-string/jumbo v0, "002"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 336
    const/4 v0, 0x4

    #@15
    return v0

    #@16
    .line 337
    :cond_1
    const-string/jumbo v0, "21"

    #@19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 338
    const/4 v0, 0x0

    #@20
    return v0

    #@21
    .line 339
    :cond_2
    const-string/jumbo v0, "67"

    #@24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 340
    const/4 v0, 0x1

    #@2b
    return v0

    #@2c
    .line 341
    :cond_3
    const-string/jumbo v0, "62"

    #@2f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 342
    const/4 v0, 0x3

    #@36
    return v0

    #@37
    .line 343
    :cond_4
    const-string/jumbo v0, "61"

    #@3a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_5

    #@40
    .line 344
    const/4 v0, 0x2

    #@41
    return v0

    #@42
    .line 345
    :cond_5
    const-string/jumbo v0, "004"

    #@45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_6

    #@4b
    .line 346
    const/4 v0, 0x5

    #@4c
    return v0

    #@4d
    .line 348
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    #@4f
    const-string/jumbo v1, "invalid call forward sc"

    #@52
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@55
    throw v0
.end method

.method private serviceClassToCFString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "serviceClass"    # I

    #@0
    .prologue
    .line 1163
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1181
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 1165
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@7
    const v1, 0x10400af

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 1167
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@11
    const v1, 0x10400b0

    #@14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 1169
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@1b
    const v1, 0x10400b1

    #@1e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 1171
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@25
    const v1, 0x10400b2

    #@28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@2b
    move-result-object v0

    #@2c
    return-object v0

    #@2d
    .line 1173
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@2f
    const v1, 0x10400b4

    #@32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 1175
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@39
    const v1, 0x10400b3

    #@3c
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@3f
    move-result-object v0

    #@40
    return-object v0

    #@41
    .line 1177
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@43
    const v1, 0x10400b5

    #@46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@49
    move-result-object v0

    #@4a
    return-object v0

    #@4b
    .line 1179
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@4d
    const v1, 0x10400b6

    #@50
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@53
    move-result-object v0

    #@54
    return-object v0

    #@55
    .line 1163
    nop

    #@56
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .locals 4
    .param p0, "si"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 354
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1

    #@9
    .line 355
    :cond_0
    return v2

    #@a
    .line 358
    :cond_1
    const/16 v1, 0xa

    #@c
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@f
    move-result v0

    #@10
    .line 360
    .local v0, "serviceCode":I
    sparse-switch v0, :sswitch_data_0

    #@13
    .line 380
    new-instance v1, Ljava/lang/RuntimeException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "unsupported MMI service code "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 361
    :sswitch_0
    const/16 v1, 0xd

    #@2f
    return v1

    #@30
    .line 362
    :sswitch_1
    const/4 v1, 0x1

    #@31
    return v1

    #@32
    .line 363
    :sswitch_2
    const/16 v1, 0xc

    #@34
    return v1

    #@35
    .line 364
    :sswitch_3
    const/4 v1, 0x4

    #@36
    return v1

    #@37
    .line 366
    :sswitch_4
    const/16 v1, 0x8

    #@39
    return v1

    #@3a
    .line 368
    :sswitch_5
    const/4 v1, 0x5

    #@3b
    return v1

    #@3c
    .line 370
    :sswitch_6
    const/16 v1, 0x30

    #@3e
    return v1

    #@3f
    .line 372
    :sswitch_7
    const/16 v1, 0xa0

    #@41
    return v1

    #@42
    .line 373
    :sswitch_8
    const/16 v1, 0x50

    #@44
    return v1

    #@45
    .line 374
    :sswitch_9
    const/16 v1, 0x10

    #@47
    return v1

    #@48
    .line 375
    :sswitch_a
    const/16 v1, 0x20

    #@4a
    return v1

    #@4b
    .line 376
    :sswitch_b
    const/16 v1, 0x11

    #@4d
    return v1

    #@4e
    .line 377
    :sswitch_c
    const/16 v1, 0x40

    #@50
    return v1

    #@51
    .line 360
    nop

    #@52
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x10 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_7
        0x16 -> :sswitch_8
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x63 -> :sswitch_c
    .end sparse-switch
.end method

.method private static siToTime(Ljava/lang/String;)I
    .locals 2
    .param p0, "si"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 387
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 388
    :cond_0
    return v1

    #@a
    .line 391
    :cond_1
    const/16 v0, 0xa

    #@c
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@f
    move-result v0

    #@10
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    #@0
    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@8
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 480
    :cond_0
    return-void

    #@d
    .line 483
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@11
    .line 485
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@17
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->cancelUSSD()V

    #@1a
    .line 477
    :goto_0
    return-void

    #@1b
    .line 488
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1d
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@20
    goto :goto_0
.end method

.method getCLIRMode()I
    .locals 2

    #@0
    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "31"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 624
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 625
    const/4 v0, 0x2

    #@16
    return v0

    #@17
    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 627
    const/4 v0, 0x1

    #@1e
    return v0

    #@1f
    .line 631
    :cond_1
    const/4 v0, 0x0

    #@20
    return v0
.end method

.method getDialingNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    #@0
    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 979
    iget v2, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v2, :pswitch_data_0

    #@6
    .line 976
    :cond_0
    :goto_0
    return-void

    #@7
    .line 981
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Landroid/os/AsyncResult;

    #@b
    .line 983
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    #@e
    goto :goto_0

    #@f
    .line 987
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11
    check-cast v0, Landroid/os/AsyncResult;

    #@13
    .line 993
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@15
    if-nez v2, :cond_1

    #@17
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@19
    if-ne v2, v4, :cond_1

    #@1b
    .line 994
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@1d
    if-ne v2, v4, :cond_2

    #@1f
    const/4 v1, 0x1

    #@20
    .line 995
    .local v1, "cffEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 996
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@26
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@28
    invoke-virtual {v2, v4, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@2b
    .line 1000
    .end local v1    # "cffEnabled":Z
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    #@2e
    goto :goto_0

    #@2f
    .line 994
    :cond_2
    const/4 v1, 0x0

    #@30
    .restart local v1    # "cffEnabled":Z
    goto :goto_1

    #@31
    .line 1004
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cffEnabled":Z
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33
    check-cast v0, Landroid/os/AsyncResult;

    #@35
    .line 1005
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    #@38
    goto :goto_0

    #@39
    .line 1009
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3b
    check-cast v0, Landroid/os/AsyncResult;

    #@3d
    .line 1010
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    #@40
    goto :goto_0

    #@41
    .line 1014
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@43
    check-cast v0, Landroid/os/AsyncResult;

    #@45
    .line 1016
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@47
    if-eqz v2, :cond_0

    #@49
    .line 1017
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@4b
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@4d
    .line 1018
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@50
    move-result-object v2

    #@51
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@53
    .line 1020
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@55
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@58
    goto :goto_0

    #@59
    .line 1031
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@5b
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@5e
    goto :goto_0

    #@5f
    .line 1035
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@61
    check-cast v0, Landroid/os/AsyncResult;

    #@63
    .line 1036
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V

    #@66
    goto :goto_0

    #@67
    .line 1040
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@69
    check-cast v0, Landroid/os/AsyncResult;

    #@6b
    .line 1041
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryClirComplete(Landroid/os/AsyncResult;)V

    #@6e
    goto :goto_0

    #@6f
    .line 979
    nop

    #@70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method isActivate()Z
    .locals 2

    #@0
    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "*"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public isCancelable()Z
    .locals 1

    #@0
    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    #@2
    return v0
.end method

.method isDeactivate()Z
    .locals 2

    #@0
    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "#"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method isErasure()Z
    .locals 2

    #@0
    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "##"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method isInterrogate()Z
    .locals 2

    #@0
    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "*#"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method isMMI()Z
    .locals 1

    #@0
    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isPendingUSSD()Z
    .locals 1

    #@0
    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    #@2
    return v0
.end method

.method isPinPukCommand()Z
    .locals 2

    #@0
    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "04"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@11
    const-string/jumbo v1, "042"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@1c
    const-string/jumbo v1, "05"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    .line 600
    if-nez v0, :cond_0

    #@25
    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@27
    const-string/jumbo v1, "052"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    .line 600
    :goto_0
    return v0

    #@2f
    :cond_0
    const/4 v0, 0x1

    #@30
    goto :goto_0

    #@31
    :cond_1
    const/4 v0, 0x0

    #@32
    goto :goto_0
.end method

.method isRegister()Z
    .locals 2

    #@0
    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "**"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method isShortCode()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 514
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 515
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x2

    #@10
    if-gt v1, v2, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    .line 514
    :cond_0
    return v0
.end method

.method isSupportedOverImsPhone()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 669
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    return v4

    #@9
    .line 670
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@b
    if-eqz v1, :cond_1

    #@d
    return v3

    #@e
    .line 671
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@10
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_8

    #@16
    .line 672
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@18
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    .line 671
    if-nez v1, :cond_8

    #@1e
    .line 673
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@20
    if-eqz v1, :cond_2

    #@22
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@24
    const-string/jumbo v2, "43"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    .line 671
    if-nez v1, :cond_8

    #@2d
    .line 674
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@2f
    if-eqz v1, :cond_3

    #@31
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@33
    const-string/jumbo v2, "31"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    .line 671
    if-nez v1, :cond_8

    #@3c
    .line 675
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@3e
    if-eqz v1, :cond_4

    #@40
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@42
    const-string/jumbo v2, "30"

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v1

    #@49
    .line 671
    if-nez v1, :cond_8

    #@4b
    .line 676
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@4d
    if-eqz v1, :cond_5

    #@4f
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@51
    const-string/jumbo v2, "77"

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v1

    #@58
    .line 671
    if-nez v1, :cond_8

    #@5a
    .line 677
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@5c
    if-eqz v1, :cond_6

    #@5e
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@60
    const-string/jumbo v2, "76"

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v1

    #@67
    .line 671
    if-nez v1, :cond_8

    #@69
    .line 678
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@6b
    if-eqz v1, :cond_7

    #@6d
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@6f
    const-string/jumbo v2, "156"

    #@72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v1

    #@76
    .line 671
    if-nez v1, :cond_8

    #@78
    .line 679
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@7a
    if-eqz v1, :cond_a

    #@7c
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@7e
    const-string/jumbo v2, "157"

    #@81
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v1

    #@85
    .line 671
    if-eqz v1, :cond_a

    #@87
    .line 681
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    #@89
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    #@8c
    move-result v0

    #@8d
    .line 682
    .local v0, "serviceClass":I
    if-eqz v0, :cond_9

    #@8f
    .line 683
    if-eq v0, v4, :cond_9

    #@91
    .line 684
    return v3

    #@92
    .line 686
    :cond_9
    return v4

    #@93
    .line 687
    .end local v0    # "serviceClass":I
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPinPukCommand()Z

    #@96
    move-result v1

    #@97
    if-nez v1, :cond_b

    #@99
    .line 688
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@9b
    if-eqz v1, :cond_c

    #@9d
    .line 689
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@9f
    const-string/jumbo v2, "03"

    #@a2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a5
    move-result v1

    #@a6
    if-nez v1, :cond_b

    #@a8
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@aa
    const-string/jumbo v2, "30"

    #@ad
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v1

    #@b1
    if-nez v1, :cond_b

    #@b3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@b5
    const-string/jumbo v2, "31"

    #@b8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bb
    move-result v1

    #@bc
    .line 687
    if-eqz v1, :cond_c

    #@be
    .line 690
    :cond_b
    return v3

    #@bf
    .line 691
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    #@c1
    if-eqz v1, :cond_d

    #@c3
    return v4

    #@c4
    .line 693
    :cond_d
    return v3
.end method

.method isTemporaryModeCLIR()Z
    .locals 2

    #@0
    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "31"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 614
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_0

    #@19
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    #@1c
    move-result v0

    #@1d
    .line 613
    :goto_0
    return v0

    #@1e
    .line 614
    :cond_0
    const/4 v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 613
    :cond_1
    const/4 v0, 0x0

    #@21
    goto :goto_0
.end method

.method public isUssdRequest()Z
    .locals 1

    #@0
    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    #@2
    return v0
.end method

.method onUssdFinished(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .param p2, "isUssdRequest"    # Z

    #@0
    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@4
    if-ne v0, v1, :cond_1

    #@6
    .line 929
    if-nez p1, :cond_2

    #@8
    .line 930
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@a
    const v1, 0x1040082

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@13
    .line 934
    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    #@15
    .line 936
    if-nez p2, :cond_0

    #@17
    .line 937
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1b
    .line 940
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1d
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@20
    .line 927
    :cond_1
    return-void

    #@21
    .line 932
    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@23
    goto :goto_0
.end method

.method onUssdFinishedError()V
    .locals 2

    #@0
    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 953
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@a
    .line 954
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@c
    const v1, 0x104007a

    #@f
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@15
    .line 956
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@17
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@1a
    .line 951
    :cond_0
    return-void
.end method

.method processCode()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v14, 0x3

    #@1
    const/4 v13, 0x1

    #@2
    .line 700
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 701
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@b
    const-string/jumbo v6, "isShortCode"

    #@e
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 704
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@14
    new-instance v6, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v13, "Sending short code \'"

    #@1c
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    .line 705
    iget-object v13, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@22
    .line 704
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    .line 705
    const-string/jumbo v13, "\' over CS pipe."

    #@29
    .line 704
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 706
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@36
    const-string/jumbo v6, "cs_fallback"

    #@39
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 910
    :catch_0
    move-exception v8

    #@3e
    .line 911
    .local v8, "exc":Ljava/lang/RuntimeException;
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@40
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@42
    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@44
    const v6, 0x104007a

    #@47
    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@4d
    .line 913
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4f
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@52
    .line 698
    .end local v8    # "exc":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void

    #@53
    .line 707
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@55
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_c

    #@5b
    .line 708
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@5e
    const-string/jumbo v6, "is CF"

    #@61
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 710
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    #@66
    .line 711
    .local v3, "dialingNumber":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@68
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    #@6b
    move-result v2

    #@6c
    .line 712
    .local v2, "reason":I
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    #@6e
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    #@71
    move-result v4

    #@72
    .line 713
    .local v4, "serviceClass":I
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    #@74
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToTime(Ljava/lang/String;)I

    #@77
    move-result v5

    #@78
    .line 715
    .local v5, "time":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    #@7b
    move-result v0

    #@7c
    if-eqz v0, :cond_2

    #@7e
    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@80
    .line 717
    const/4 v6, 0x1

    #@81
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@84
    move-result-object v6

    #@85
    .line 716
    invoke-virtual {v0, v2, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    #@88
    goto :goto_0

    #@89
    .line 721
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@8c
    move-result v0

    #@8d
    if-eqz v0, :cond_6

    #@8f
    .line 726
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    #@92
    move-result v0

    #@93
    if-eqz v0, :cond_5

    #@95
    .line 727
    const/4 v1, 0x1

    #@96
    .line 728
    .local v1, "cfAction":I
    const/4 v0, 0x0

    #@97
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    #@99
    .line 744
    :goto_1
    if-eqz v2, :cond_3

    #@9b
    .line 745
    const/4 v0, 0x4

    #@9c
    if-ne v2, v0, :cond_a

    #@9e
    :cond_3
    const/4 v11, 0x1

    #@9f
    .line 748
    .local v11, "isSettingUnconditional":I
    :goto_2
    if-eq v1, v13, :cond_4

    #@a1
    .line 749
    if-ne v1, v14, :cond_b

    #@a3
    :cond_4
    const/4 v10, 0x1

    #@a4
    .line 751
    .local v10, "isEnableDesired":I
    :goto_3
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@a7
    const-string/jumbo v6, "is CF setCallForward"

    #@aa
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ad
    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@af
    .line 754
    const/4 v6, 0x4

    #@b0
    .line 753
    invoke-virtual {p0, v6, v11, v10, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@b3
    move-result-object v6

    #@b4
    .line 752
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    #@b7
    goto :goto_0

    #@b8
    .line 730
    .end local v1    # "cfAction":I
    .end local v10    # "isEnableDesired":I
    .end local v11    # "isSettingUnconditional":I
    :cond_5
    const/4 v1, 0x3

    #@b9
    .line 731
    .restart local v1    # "cfAction":I
    const/4 v0, 0x1

    #@ba
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    #@bc
    goto :goto_1

    #@bd
    .line 733
    .end local v1    # "cfAction":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    #@c0
    move-result v0

    #@c1
    if-eqz v0, :cond_7

    #@c3
    .line 734
    const/4 v1, 0x0

    #@c4
    .restart local v1    # "cfAction":I
    goto :goto_1

    #@c5
    .line 735
    .end local v1    # "cfAction":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    #@c8
    move-result v0

    #@c9
    if-eqz v0, :cond_8

    #@cb
    .line 736
    const/4 v1, 0x3

    #@cc
    .restart local v1    # "cfAction":I
    goto :goto_1

    #@cd
    .line 737
    .end local v1    # "cfAction":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    #@d0
    move-result v0

    #@d1
    if-eqz v0, :cond_9

    #@d3
    .line 738
    const/4 v1, 0x4

    #@d4
    .restart local v1    # "cfAction":I
    goto :goto_1

    #@d5
    .line 740
    .end local v1    # "cfAction":I
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    #@d7
    const-string/jumbo v6, "invalid action"

    #@da
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@dd
    throw v0

    #@de
    .line 745
    .restart local v1    # "cfAction":I
    :cond_a
    const/4 v11, 0x0

    #@df
    .restart local v11    # "isSettingUnconditional":I
    goto :goto_2

    #@e0
    .line 749
    :cond_b
    const/4 v10, 0x0

    #@e1
    .restart local v10    # "isEnableDesired":I
    goto :goto_3

    #@e2
    .line 758
    .end local v1    # "cfAction":I
    .end local v2    # "reason":I
    .end local v3    # "dialingNumber":Ljava/lang/String;
    .end local v4    # "serviceClass":I
    .end local v5    # "time":I
    .end local v10    # "isEnableDesired":I
    .end local v11    # "isSettingUnconditional":I
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@e4
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    #@e7
    move-result v0

    #@e8
    if-eqz v0, :cond_10

    #@ea
    .line 763
    iget-object v12, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    #@ec
    .line 764
    .local v12, "password":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@ee
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    #@f1
    move-result-object v9

    #@f2
    .line 766
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    #@f5
    move-result v0

    #@f6
    if-eqz v0, :cond_d

    #@f8
    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@fa
    .line 768
    const/4 v6, 0x7

    #@fb
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@fe
    move-result-object v6

    #@ff
    .line 767
    invoke-virtual {v0, v9, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    #@102
    goto/16 :goto_0

    #@104
    .line 769
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@107
    move-result v0

    #@108
    if-nez v0, :cond_e

    #@10a
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    #@10d
    move-result v0

    #@10e
    if-eqz v0, :cond_f

    #@110
    .line 770
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@112
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@115
    move-result v6

    #@116
    .line 771
    const/4 v13, 0x0

    #@117
    invoke-virtual {p0, v13, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11a
    move-result-object v13

    #@11b
    .line 770
    invoke-virtual {v0, v9, v6, v12, v13}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    #@11e
    goto/16 :goto_0

    #@120
    .line 773
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    #@122
    const-string/jumbo v6, "Invalid or Unsupported MMI Code"

    #@125
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@128
    throw v0

    #@129
    .line 775
    .end local v9    # "facility":Ljava/lang/String;
    .end local v12    # "password":Ljava/lang/String;
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@12b
    if-eqz v0, :cond_14

    #@12d
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@12f
    const-string/jumbo v6, "31"

    #@132
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@135
    move-result v0

    #@136
    if-eqz v0, :cond_14

    #@138
    .line 779
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@13b
    move-result v0

    #@13c
    if-eqz v0, :cond_11

    #@13e
    .line 781
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@140
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@142
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@145
    move-result-object v0

    #@146
    .line 782
    const/4 v6, 0x0

    #@147
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14a
    move-result-object v6

    #@14b
    .line 781
    const/4 v13, 0x1

    #@14c
    invoke-interface {v0, v13, v6}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@14f
    goto/16 :goto_0

    #@151
    .line 783
    :catch_1
    move-exception v7

    #@152
    .line 784
    .local v7, "e":Lcom/android/ims/ImsException;
    :try_start_3
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@155
    const-string/jumbo v6, "Could not get UT handle for updateCLIR."

    #@158
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15b
    goto/16 :goto_0

    #@15d
    .line 786
    .end local v7    # "e":Lcom/android/ims/ImsException;
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    #@160
    move-result v0

    #@161
    if-eqz v0, :cond_12

    #@163
    .line 788
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@165
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@167
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@16a
    move-result-object v0

    #@16b
    .line 789
    const/4 v6, 0x0

    #@16c
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@16f
    move-result-object v6

    #@170
    .line 788
    const/4 v13, 0x2

    #@171
    invoke-interface {v0, v13, v6}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    #@174
    goto/16 :goto_0

    #@176
    .line 790
    :catch_2
    move-exception v7

    #@177
    .line 791
    .restart local v7    # "e":Lcom/android/ims/ImsException;
    :try_start_5
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@17a
    const-string/jumbo v6, "Could not get UT handle for updateCLIR."

    #@17d
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@180
    goto/16 :goto_0

    #@182
    .line 793
    .end local v7    # "e":Lcom/android/ims/ImsException;
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    #@185
    move-result v0

    #@186
    if-eqz v0, :cond_13

    #@188
    .line 795
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@18a
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@18c
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@18f
    move-result-object v0

    #@190
    .line 796
    const/4 v6, 0x6

    #@191
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@194
    move-result-object v6

    #@195
    .line 795
    invoke-interface {v0, v6}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_6
    .catch Lcom/android/ims/ImsException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    #@198
    goto/16 :goto_0

    #@19a
    .line 797
    :catch_3
    move-exception v7

    #@19b
    .line 798
    .restart local v7    # "e":Lcom/android/ims/ImsException;
    :try_start_7
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@19e
    const-string/jumbo v6, "Could not get UT handle for queryCLIR."

    #@1a1
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a4
    goto/16 :goto_0

    #@1a6
    .line 801
    .end local v7    # "e":Lcom/android/ims/ImsException;
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    #@1a8
    const-string/jumbo v6, "Invalid or Unsupported MMI Code"

    #@1ab
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1ae
    throw v0

    #@1af
    .line 803
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@1b1
    if-eqz v0, :cond_18

    #@1b3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@1b5
    const-string/jumbo v6, "30"

    #@1b8
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bb
    move-result v0

    #@1bc
    if-eqz v0, :cond_18

    #@1be
    .line 805
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    #@1c1
    move-result v0

    #@1c2
    if-eqz v0, :cond_15

    #@1c4
    .line 807
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1c6
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1c8
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@1cb
    move-result-object v0

    #@1cc
    .line 808
    const/4 v6, 0x7

    #@1cd
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1d0
    move-result-object v6

    #@1d1
    .line 807
    invoke-interface {v0, v6}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_8
    .catch Lcom/android/ims/ImsException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    #@1d4
    goto/16 :goto_0

    #@1d6
    .line 809
    :catch_4
    move-exception v7

    #@1d7
    .line 810
    .restart local v7    # "e":Lcom/android/ims/ImsException;
    :try_start_9
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@1da
    const-string/jumbo v6, "Could not get UT handle for queryCLIP."

    #@1dd
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e0
    goto/16 :goto_0

    #@1e2
    .line 812
    .end local v7    # "e":Lcom/android/ims/ImsException;
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@1e5
    move-result v0

    #@1e6
    if-nez v0, :cond_16

    #@1e8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    #@1eb
    move-result v0

    #@1ec
    if-eqz v0, :cond_17

    #@1ee
    .line 814
    :cond_16
    :try_start_a
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1f0
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1f2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@1f5
    move-result-object v0

    #@1f6
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@1f9
    move-result v6

    #@1fa
    .line 815
    const/4 v13, 0x0

    #@1fb
    invoke-virtual {p0, v13, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1fe
    move-result-object v13

    #@1ff
    .line 814
    invoke-interface {v0, v6, v13}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_a
    .catch Lcom/android/ims/ImsException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    #@202
    goto/16 :goto_0

    #@204
    .line 816
    :catch_5
    move-exception v7

    #@205
    .line 817
    .restart local v7    # "e":Lcom/android/ims/ImsException;
    :try_start_b
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@208
    const-string/jumbo v6, "Could not get UT handle for updateCLIP."

    #@20b
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20e
    goto/16 :goto_0

    #@210
    .line 820
    .end local v7    # "e":Lcom/android/ims/ImsException;
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    #@212
    const-string/jumbo v6, "Invalid or Unsupported MMI Code"

    #@215
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@218
    throw v0

    #@219
    .line 822
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@21b
    if-eqz v0, :cond_1c

    #@21d
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@21f
    const-string/jumbo v6, "76"

    #@222
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@225
    move-result v0

    #@226
    if-eqz v0, :cond_1c

    #@228
    .line 824
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    #@22b
    move-result v0

    #@22c
    if-eqz v0, :cond_19

    #@22e
    .line 826
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@230
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@232
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@235
    move-result-object v0

    #@236
    .line 827
    const/4 v6, 0x7

    #@237
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@23a
    move-result-object v6

    #@23b
    .line 826
    invoke-interface {v0, v6}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_c
    .catch Lcom/android/ims/ImsException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    #@23e
    goto/16 :goto_0

    #@240
    .line 828
    :catch_6
    move-exception v7

    #@241
    .line 829
    .restart local v7    # "e":Lcom/android/ims/ImsException;
    :try_start_d
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@244
    const-string/jumbo v6, "Could not get UT handle for queryCOLP."

    #@247
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24a
    goto/16 :goto_0

    #@24c
    .line 831
    .end local v7    # "e":Lcom/android/ims/ImsException;
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@24f
    move-result v0

    #@250
    if-nez v0, :cond_1a

    #@252
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    #@255
    move-result v0

    #@256
    if-eqz v0, :cond_1b

    #@258
    .line 833
    :cond_1a
    :try_start_e
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@25a
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@25c
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@25f
    move-result-object v0

    #@260
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@263
    move-result v6

    #@264
    .line 834
    const/4 v13, 0x0

    #@265
    invoke-virtual {p0, v13, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@268
    move-result-object v13

    #@269
    .line 833
    invoke-interface {v0, v6, v13}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V
    :try_end_e
    .catch Lcom/android/ims/ImsException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    #@26c
    goto/16 :goto_0

    #@26e
    .line 835
    :catch_7
    move-exception v7

    #@26f
    .line 836
    .restart local v7    # "e":Lcom/android/ims/ImsException;
    :try_start_f
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@272
    const-string/jumbo v6, "Could not get UT handle for updateCOLP."

    #@275
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@278
    goto/16 :goto_0

    #@27a
    .line 839
    .end local v7    # "e":Lcom/android/ims/ImsException;
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    #@27c
    const-string/jumbo v6, "Invalid or Unsupported MMI Code"

    #@27f
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@282
    throw v0

    #@283
    .line 841
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@285
    if-eqz v0, :cond_20

    #@287
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@289
    const-string/jumbo v6, "77"

    #@28c
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28f
    move-result v0

    #@290
    if-eqz v0, :cond_20

    #@292
    .line 843
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    #@295
    move-result v0

    #@296
    if-eqz v0, :cond_1d

    #@298
    .line 845
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@29a
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@29c
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@29f
    move-result-object v0

    #@2a0
    .line 846
    const/4 v6, 0x0

    #@2a1
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2a4
    move-result-object v6

    #@2a5
    .line 845
    const/4 v13, 0x0

    #@2a6
    invoke-interface {v0, v13, v6}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_10
    .catch Lcom/android/ims/ImsException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    #@2a9
    goto/16 :goto_0

    #@2ab
    .line 847
    :catch_8
    move-exception v7

    #@2ac
    .line 848
    .restart local v7    # "e":Lcom/android/ims/ImsException;
    :try_start_11
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@2af
    const-string/jumbo v6, "Could not get UT handle for updateCOLR."

    #@2b2
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b5
    goto/16 :goto_0

    #@2b7
    .line 850
    .end local v7    # "e":Lcom/android/ims/ImsException;
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    #@2ba
    move-result v0

    #@2bb
    if-eqz v0, :cond_1e

    #@2bd
    .line 852
    :try_start_12
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2bf
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2c1
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@2c4
    move-result-object v0

    #@2c5
    .line 853
    const/4 v6, 0x0

    #@2c6
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2c9
    move-result-object v6

    #@2ca
    .line 852
    const/4 v13, 0x1

    #@2cb
    invoke-interface {v0, v13, v6}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_12
    .catch Lcom/android/ims/ImsException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    #@2ce
    goto/16 :goto_0

    #@2d0
    .line 854
    :catch_9
    move-exception v7

    #@2d1
    .line 855
    .restart local v7    # "e":Lcom/android/ims/ImsException;
    :try_start_13
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@2d4
    const-string/jumbo v6, "Could not get UT handle for updateCOLR."

    #@2d7
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2da
    goto/16 :goto_0

    #@2dc
    .line 857
    .end local v7    # "e":Lcom/android/ims/ImsException;
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0

    #@2df
    move-result v0

    #@2e0
    if-eqz v0, :cond_1f

    #@2e2
    .line 859
    :try_start_14
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2e4
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2e6
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@2e9
    move-result-object v0

    #@2ea
    .line 860
    const/4 v6, 0x7

    #@2eb
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2ee
    move-result-object v6

    #@2ef
    .line 859
    invoke-interface {v0, v6}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_14
    .catch Lcom/android/ims/ImsException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    #@2f2
    goto/16 :goto_0

    #@2f4
    .line 861
    :catch_a
    move-exception v7

    #@2f5
    .line 862
    .restart local v7    # "e":Lcom/android/ims/ImsException;
    :try_start_15
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@2f8
    const-string/jumbo v6, "Could not get UT handle for queryCOLR."

    #@2fb
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2fe
    goto/16 :goto_0

    #@300
    .line 865
    .end local v7    # "e":Lcom/android/ims/ImsException;
    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    #@302
    const-string/jumbo v6, "Invalid or Unsupported MMI Code"

    #@305
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@308
    throw v0

    #@309
    .line 867
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@30b
    if-eqz v0, :cond_23

    #@30d
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@30f
    const-string/jumbo v6, "156"

    #@312
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    #@315
    move-result v0

    #@316
    if-eqz v0, :cond_23

    #@318
    .line 869
    :try_start_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    #@31b
    move-result v0

    #@31c
    if-eqz v0, :cond_21

    #@31e
    .line 870
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@320
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@322
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@325
    move-result-object v0

    #@326
    .line 872
    const/4 v6, 0x7

    #@327
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@32a
    move-result-object v6

    #@32b
    .line 871
    const/16 v13, 0xa

    #@32d
    .line 870
    invoke-interface {v0, v13, v6}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_16
    .catch Lcom/android/ims/ImsException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    #@330
    goto/16 :goto_0

    #@332
    .line 877
    :catch_b
    move-exception v7

    #@333
    .line 878
    .restart local v7    # "e":Lcom/android/ims/ImsException;
    :try_start_17
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@336
    const-string/jumbo v6, "Could not get UT handle for ICB."

    #@339
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    #@33c
    goto/16 :goto_0

    #@33e
    .line 873
    .end local v7    # "e":Lcom/android/ims/ImsException;
    :cond_21
    :try_start_18
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@341
    move-result v0

    #@342
    if-nez v0, :cond_22

    #@344
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    #@347
    move-result v0

    #@348
    if-eqz v0, :cond_0

    #@34a
    .line 874
    :cond_22
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processIcbMmiCodeForUpdate()V
    :try_end_18
    .catch Lcom/android/ims/ImsException; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    #@34d
    goto/16 :goto_0

    #@34f
    .line 880
    :cond_23
    :try_start_19
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@351
    if-eqz v0, :cond_24

    #@353
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@355
    const-string/jumbo v6, "157"

    #@358
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0

    #@35b
    move-result v0

    #@35c
    if-eqz v0, :cond_24

    #@35e
    .line 883
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    #@361
    move-result v0

    #@362
    if-eqz v0, :cond_0

    #@364
    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@366
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@368
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@36b
    move-result-object v0

    #@36c
    .line 886
    const/4 v6, 0x7

    #@36d
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@370
    move-result-object v6

    #@371
    .line 885
    const/4 v13, 0x6

    #@372
    .line 884
    invoke-interface {v0, v13, v6}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_1a
    .catch Lcom/android/ims/ImsException; {:try_start_1a .. :try_end_1a} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0

    #@375
    goto/16 :goto_0

    #@377
    .line 888
    :catch_c
    move-exception v7

    #@378
    .line 889
    .restart local v7    # "e":Lcom/android/ims/ImsException;
    :try_start_1b
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@37b
    const-string/jumbo v6, "Could not get UT handle for ICBa."

    #@37e
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@381
    goto/16 :goto_0

    #@383
    .line 891
    .end local v7    # "e":Lcom/android/ims/ImsException;
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@385
    if-eqz v0, :cond_28

    #@387
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@389
    const-string/jumbo v6, "43"

    #@38c
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38f
    move-result v0

    #@390
    if-eqz v0, :cond_28

    #@392
    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    #@394
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    #@397
    move-result v4

    #@398
    .line 895
    .restart local v4    # "serviceClass":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@39b
    move-result v0

    #@39c
    if-nez v0, :cond_25

    #@39e
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    #@3a1
    move-result v0

    #@3a2
    if-eqz v0, :cond_26

    #@3a4
    .line 896
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3a6
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@3a9
    move-result v6

    #@3aa
    .line 897
    const/4 v13, 0x0

    #@3ab
    invoke-virtual {p0, v13, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3ae
    move-result-object v13

    #@3af
    .line 896
    invoke-virtual {v0, v6, v4, v13}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    #@3b2
    goto/16 :goto_0

    #@3b4
    .line 898
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    #@3b7
    move-result v0

    #@3b8
    if-eqz v0, :cond_27

    #@3ba
    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3bc
    const/4 v6, 0x3

    #@3bd
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3c0
    move-result-object v6

    #@3c1
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    #@3c4
    goto/16 :goto_0

    #@3c6
    .line 901
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    #@3c8
    const-string/jumbo v6, "Invalid or Unsupported MMI Code"

    #@3cb
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3ce
    throw v0

    #@3cf
    .line 903
    .end local v4    # "serviceClass":I
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    #@3d1
    if-eqz v0, :cond_29

    #@3d3
    .line 904
    const-string/jumbo v0, "ImsPhoneMmiCode"

    #@3d6
    new-instance v6, Ljava/lang/StringBuilder;

    #@3d8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3db
    const-string/jumbo v13, "Sending pound string \'"

    #@3de
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e1
    move-result-object v6

    #@3e2
    .line 905
    iget-object v13, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@3e4
    .line 904
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e7
    move-result-object v6

    #@3e8
    .line 905
    const-string/jumbo v13, "\' over CS pipe."

    #@3eb
    .line 904
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ee
    move-result-object v6

    #@3ef
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f2
    move-result-object v6

    #@3f3
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f6
    .line 906
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@3f8
    const-string/jumbo v6, "cs_fallback"

    #@3fb
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@3fe
    throw v0

    #@3ff
    .line 908
    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    #@401
    const-string/jumbo v6, "Invalid or Unsupported MMI Code"

    #@404
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@407
    throw v0
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_0
.end method

.method sendUssd(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 962
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    #@3
    .line 969
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@5
    .line 970
    const/4 v1, 0x2

    #@6
    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    .line 969
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    #@d
    .line 960
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1535
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "ImsPhoneMmiCode {"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 1537
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "State="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    .line 1538
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    #@18
    if-eqz v1, :cond_0

    #@1a
    const-string/jumbo v1, " action="

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 1539
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@28
    if-eqz v1, :cond_1

    #@2a
    const-string/jumbo v1, " sc="

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 1540
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    #@38
    if-eqz v1, :cond_2

    #@3a
    const-string/jumbo v1, " sia="

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 1541
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    #@48
    if-eqz v1, :cond_3

    #@4a
    const-string/jumbo v1, " sib="

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 1542
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    #@58
    if-eqz v1, :cond_4

    #@5a
    const-string/jumbo v1, " sic="

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 1543
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    #@68
    if-eqz v1, :cond_5

    #@6a
    const-string/jumbo v1, " poundString="

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 1544
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@78
    if-eqz v1, :cond_6

    #@7a
    const-string/jumbo v1, " dialingNumber="

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    .line 1545
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    #@88
    if-eqz v1, :cond_7

    #@8a
    const-string/jumbo v1, " pwd="

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    #@93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    .line 1546
    :cond_7
    const-string/jumbo v1, "}"

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    .line 1547
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    return-object v1
.end method
