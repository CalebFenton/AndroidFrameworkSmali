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

.field private static final EVENT_QUERY_ICB_COMPLETE:I = 0xa

.field private static final EVENT_SET_CFF_COMPLETE:I = 0x4

.field private static final EVENT_SET_COMPLETE:I = 0x0

.field private static final EVENT_SUPP_SVC_QUERY_COMPLETE:I = 0x7

.field private static final EVENT_USSD_CANCEL_COMPLETE:I = 0x5

.field private static final EVENT_USSD_COMPLETE:I = 0x2

.field static final IcbAnonymousMmi:Ljava/lang/String; = "Anonymous Incoming Call Barring"

.field static final IcbDnMmi:Ljava/lang/String; = "Specific Incoming Call Barring"

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

.field private static final SC_CFUT:Ljava/lang/String; = "22"

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
    .line 197
    const-string/jumbo v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    #@3
    .line 196
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
    .line 469
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
    .line 185
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@f
    .line 470
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@11
    .line 471
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@17
    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@19
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@1b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@21
    .line 466
    return-void
.end method

.method private createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "serviceClass"    # I

    #@0
    .prologue
    .line 1619
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    .line 1620
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@4
    const v3, 0x104009e

    #@7
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@a
    move-result-object v2

    #@b
    .line 1619
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@e
    .line 1622
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@f
    .line 1623
    .local v0, "classMask":I
    :goto_0
    const/16 v2, 0x80

    #@11
    .line 1622
    if-gt v0, v2, :cond_1

    #@13
    .line 1626
    and-int v2, v0, p1

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 1627
    const-string/jumbo v2, "\n"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 1628
    and-int v2, v0, p1

    #@1f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@26
    .line 1624
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1631
    :cond_1
    return-object v1
.end method

.method private getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@2
    const v1, 0x104009b

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
    .line 1140
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1141
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@6
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@e
    const v1, 0x10400b4

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@18
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 1144
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@20
    const v1, 0x10400b2

    #@23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@26
    move-result-object v0

    #@27
    return-object v0

    #@28
    .line 1145
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
    .line 1146
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@35
    const v1, 0x10400b5

    #@38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@3b
    move-result-object v0

    #@3c
    return-object v0

    #@3d
    .line 1147
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
    .line 1148
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@4a
    const v1, 0x10400b3

    #@4d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@50
    move-result-object v0

    #@51
    return-object v0

    #@52
    .line 1149
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
    .line 1150
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@5f
    const v1, 0x10400ae

    #@62
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@65
    move-result-object v0

    #@66
    return-object v0

    #@67
    .line 1151
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
    .line 1152
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@74
    const v1, 0x10400af

    #@77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7a
    move-result-object v0

    #@7b
    return-object v0

    #@7c
    .line 1153
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
    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@89
    const v1, 0x10400b0

    #@8c
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@8f
    move-result-object v0

    #@90
    return-object v0

    #@91
    .line 1155
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
    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@9e
    const v1, 0x10400b1

    #@a1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@a4
    move-result-object v0

    #@a5
    return-object v0

    #@a6
    .line 1157
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@a8
    const-string/jumbo v1, "156"

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ae
    move-result v0

    #@af
    if-eqz v0, :cond_8

    #@b1
    .line 1158
    const-string/jumbo v0, "Specific Incoming Call Barring"

    #@b4
    return-object v0

    #@b5
    .line 1159
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@b7
    const-string/jumbo v1, "157"

    #@ba
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result v0

    #@be
    if-eqz v0, :cond_9

    #@c0
    .line 1160
    const-string/jumbo v0, "Anonymous Incoming Call Barring"

    #@c3
    return-object v0

    #@c4
    .line 1164
    :cond_9
    const-string/jumbo v0, ""

    #@c7
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
    .line 344
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

.method static isScMatchesSuppServType(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 328
    const/4 v0, 0x0

    #@1
    .line 329
    .local v0, "isMatch":Z
    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    #@3
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6
    move-result-object v1

    #@7
    .line 330
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 331
    const/4 v3, 0x3

    #@e
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 332
    .local v2, "sc":Ljava/lang/String;
    const-string/jumbo v3, "22"

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 333
    const/4 v0, 0x1

    #@20
    .line 338
    .end local v2    # "sc":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    #@21
    .line 334
    .restart local v2    # "sc":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "156"

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_0

    #@2a
    .line 335
    const/4 v0, 0x1

    #@2b
    goto :goto_0
.end method

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 7
    .param p0, "sc"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 424
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@4
    move-result-object v2

    #@5
    .line 425
    .local v2, "resource":Landroid/content/res/Resources;
    if-eqz p0, :cond_1

    #@7
    .line 427
    const v3, 0x107003c

    #@a
    .line 426
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 428
    .local v0, "barringMMI":[Ljava/lang/String;
    if-eqz v0, :cond_1

    #@10
    .line 429
    array-length v5, v0

    #@11
    move v3, v4

    #@12
    :goto_0
    if-ge v3, v5, :cond_1

    #@14
    aget-object v1, v0, v3

    #@16
    .line 430
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
    .line 429
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 434
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
    .line 415
    if-eqz p0, :cond_1

    #@2
    .line 416
    const-string/jumbo v0, "21"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 417
    const-string/jumbo v0, "67"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    .line 416
    if-nez v0, :cond_0

    #@14
    .line 417
    const-string/jumbo v0, "61"

    #@17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    .line 416
    if-nez v0, :cond_0

    #@1d
    .line 418
    const-string/jumbo v0, "62"

    #@20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    .line 416
    if-nez v0, :cond_0

    #@26
    .line 418
    const-string/jumbo v0, "002"

    #@29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    .line 416
    if-nez v0, :cond_0

    #@2f
    .line 419
    const-string/jumbo v0, "004"

    #@32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    .line 415
    :goto_0
    return v0

    #@37
    .line 416
    :cond_0
    const/4 v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 415
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
    .line 566
    if-nez p0, :cond_0

    #@3
    .line 567
    return v1

    #@4
    .line 574
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 575
    return v1

    #@b
    .line 578
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
    .line 579
    return v1

    #@16
    .line 581
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
    .line 601
    if-eqz p0, :cond_2

    #@5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    if-gt v0, v1, :cond_2

    #@b
    .line 602
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 603
    return v3

    #@12
    .line 606
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@15
    move-result v0

    #@16
    if-ne v0, v1, :cond_1

    #@18
    .line 607
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    const/16 v1, 0x31

    #@1e
    if-eq v0, v1, :cond_2

    #@20
    .line 608
    :cond_1
    return v3

    #@21
    .line 611
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
    .line 539
    const-string/jumbo v1, "ImsPhoneMmiCode"

    #@4
    const-string/jumbo v3, "isTwoDigitShortCode"

    #@7
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 541
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
    .line 543
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    #@16
    if-nez v1, :cond_2

    #@18
    .line 544
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b
    move-result-object v1

    #@1c
    .line 545
    const v3, 0x107002e

    #@1f
    .line 544
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    sput-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    #@25
    .line 548
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
    .line 549
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
    .line 550
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_3

    #@4d
    .line 551
    const-string/jumbo v1, "ImsPhoneMmiCode"

    #@50
    const-string/jumbo v2, "Two Digit Number Pattern -true"

    #@53
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 552
    const/4 v1, 0x1

    #@57
    return v1

    #@58
    .line 548
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 555
    .end local v0    # "dialnumber":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "ImsPhoneMmiCode"

    #@5e
    const-string/jumbo v3, "Two Digit Number Pattern -false"

    #@61
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 556
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
    .line 1258
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
    .line 1259
    .local v3, "sources":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/CharSequence;

    #@17
    .line 1266
    .local v1, "destinations":[Ljava/lang/CharSequence;
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    #@19
    if-ne v5, v9, :cond_1

    #@1b
    const/4 v2, 0x1

    #@1c
    .line 1268
    .local v2, "needTimeTemplate":Z
    :goto_0
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@1e
    if-ne v5, v7, :cond_3

    #@20
    .line 1269
    if-eqz v2, :cond_2

    #@22
    .line 1270
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@24
    .line 1271
    const v6, 0x10400ec

    #@27
    .line 1270
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@2a
    move-result-object v4

    #@2b
    .line 1297
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
    .line 1298
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
    .line 1299
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    #@40
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    aput-object v5, v1, v9

    #@46
    .line 1301
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    #@48
    if-nez v5, :cond_0

    #@4a
    .line 1302
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@4c
    and-int/2addr v5, p2

    #@4d
    if-ne v5, v7, :cond_0

    #@4f
    .line 1304
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@51
    if-ne v5, v7, :cond_6

    #@53
    const/4 v0, 0x1

    #@54
    .line 1305
    .local v0, "cffEnabled":Z
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@56
    if-eqz v5, :cond_0

    #@58
    .line 1306
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@5a
    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@5c
    invoke-virtual {v5, v7, v0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@5f
    .line 1310
    .end local v0    # "cffEnabled":Z
    :cond_0
    invoke-static {v4, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@62
    move-result-object v5

    #@63
    return-object v5

    #@64
    .line 1266
    .end local v2    # "needTimeTemplate":Z
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x0

    #@65
    .restart local v2    # "needTimeTemplate":Z
    goto :goto_0

    #@66
    .line 1273
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@68
    .line 1274
    const v6, 0x10400eb

    #@6b
    .line 1273
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@6e
    move-result-object v4

    #@6f
    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    #@70
    .line 1276
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
    .line 1277
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@7e
    .line 1278
    const v6, 0x10400ea

    #@81
    .line 1277
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@84
    move-result-object v4

    #@85
    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    #@86
    .line 1283
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_4
    if-eqz v2, :cond_5

    #@88
    .line 1284
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@8a
    .line 1285
    const v6, 0x10400ee

    #@8d
    .line 1284
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@90
    move-result-object v4

    #@91
    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    #@92
    .line 1287
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@94
    .line 1288
    const v6, 0x10400ed

    #@97
    .line 1287
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9a
    move-result-object v4

    #@9b
    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    #@9c
    .line 1304
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
    .line 322
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
    .line 324
    :cond_0
    return-object p0
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    .line 240
    const/4 v1, 0x0

    #@1
    .line 242
    .local v1, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    #@3
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6
    move-result-object v0

    #@7
    .line 245
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 246
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@f
    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@12
    .line 247
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
    .line 248
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
    .line 249
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
    .line 250
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
    .line 251
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
    .line 252
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
    .line 253
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
    .line 254
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
    .line 260
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@6f
    if-eqz v2, :cond_0

    #@71
    .line 261
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@73
    const-string/jumbo v3, "#"

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@79
    move-result v2

    #@7a
    .line 260
    if-eqz v2, :cond_0

    #@7c
    .line 262
    const-string/jumbo v2, "#"

    #@7f
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@82
    move-result v2

    #@83
    .line 260
    if-eqz v2, :cond_0

    #@85
    .line 263
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@87
    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@8a
    .line 264
    .restart local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    #@8c
    .line 282
    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_0
    :goto_0
    return-object v1

    #@8d
    .line 266
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
    .line 271
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@98
    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@9b
    .line 272
    .local v1, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    #@9d
    goto :goto_0

    #@9e
    .line 273
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
    .line 275
    const/4 v1, 0x0

    #@a9
    goto :goto_0

    #@aa
    .line 276
    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    #@ad
    move-result v2

    #@ae
    if-eqz v2, :cond_0

    #@b0
    .line 278
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@b2
    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@b5
    .line 279
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
    .line 306
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@5
    .line 308
    .local v0, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@7
    .line 309
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@9
    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@b
    .line 310
    const/4 v1, 0x1

    #@c
    iput-boolean v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    #@e
    .line 312
    return-object v0
.end method

.method static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 2
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "isUssdRequest"    # Z
    .param p2, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    .line 289
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@2
    invoke-direct {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@5
    .line 291
    .local v0, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@7
    .line 292
    iput-boolean p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    #@9
    .line 295
    if-eqz p1, :cond_0

    #@b
    .line 296
    const/4 v1, 0x1

    #@c
    iput-boolean v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    #@e
    .line 297
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@10
    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@12
    .line 302
    :goto_0
    return-object v0

    #@13
    .line 299
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@15
    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@17
    goto :goto_0
.end method

.method private onIcbQueryComplete(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const v7, 0x104009f

    #@3
    .line 1438
    const-string/jumbo v5, "ImsPhoneMmiCode"

    #@6
    const-string/jumbo v6, "onIcbQueryComplete "

    #@9
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 1439
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    #@11
    move-result-object v5

    #@12
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@15
    .line 1440
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\n"

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 1442
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1d
    if-eqz v5, :cond_2

    #@1f
    .line 1443
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@21
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@23
    .line 1445
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@25
    instance-of v5, v5, Lcom/android/ims/ImsException;

    #@27
    if-eqz v5, :cond_1

    #@29
    .line 1446
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2b
    check-cast v0, Lcom/android/ims/ImsException;

    #@2d
    .line 1447
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    if-eqz v5, :cond_0

    #@33
    .line 1448
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 1475
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@3c
    .line 1476
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3e
    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@41
    .line 1437
    return-void

    #@42
    .line 1450
    .restart local v0    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@49
    goto :goto_0

    #@4a
    .line 1453
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@51
    goto :goto_0

    #@52
    .line 1456
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@54
    check-cast v2, [Lcom/android/ims/ImsSsInfo;

    #@56
    .line 1457
    .local v2, "infos":[Lcom/android/ims/ImsSsInfo;
    array-length v5, v2

    #@57
    if-nez v5, :cond_4

    #@59
    .line 1458
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@5b
    invoke-virtual {v5, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@62
    .line 1473
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@64
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@66
    goto :goto_0

    #@67
    .line 1460
    :cond_4
    const/4 v1, 0x0

    #@68
    .local v1, "i":I
    array-length v3, v2

    #@69
    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_3

    #@6b
    .line 1461
    aget-object v5, v2, v1

    #@6d
    iget-object v5, v5, Lcom/android/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    #@6f
    if-eqz v5, :cond_5

    #@71
    .line 1462
    const-string/jumbo v5, "Num: "

    #@74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v5

    #@78
    aget-object v6, v2, v1

    #@7a
    iget-object v6, v6, Lcom/android/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    #@7c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    const-string/jumbo v6, " status: "

    #@83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    .line 1463
    aget-object v6, v2, v1

    #@89
    iget v6, v6, Lcom/android/ims/ImsSsInfo;->mStatus:I

    #@8b
    .line 1462
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    .line 1463
    const-string/jumbo v6, "\n"

    #@92
    .line 1462
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    .line 1460
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@97
    goto :goto_1

    #@98
    .line 1464
    :cond_5
    aget-object v5, v2, v1

    #@9a
    iget v5, v5, Lcom/android/ims/ImsSsInfo;->mStatus:I

    #@9c
    const/4 v6, 0x1

    #@9d
    if-ne v5, v6, :cond_6

    #@9f
    .line 1465
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@a1
    const v6, 0x104009d

    #@a4
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@a7
    move-result-object v5

    #@a8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@ab
    goto :goto_2

    #@ac
    .line 1468
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@ae
    invoke-virtual {v5, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@b1
    move-result-object v5

    #@b2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@b5
    goto :goto_2
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
    .line 1316
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    #@7
    move-result-object v7

    #@8
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@b
    .line 1317
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "\n"

    #@e
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 1319
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@13
    if-eqz v7, :cond_2

    #@15
    .line 1320
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@17
    iput-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@19
    .line 1322
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1b
    instance-of v7, v7, Lcom/android/ims/ImsException;

    #@1d
    if-eqz v7, :cond_1

    #@1f
    .line 1323
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@21
    check-cast v0, Lcom/android/ims/ImsException;

    #@23
    .line 1324
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    if-eqz v7, :cond_0

    #@29
    .line 1325
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 1374
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@32
    .line 1375
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@34
    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@37
    .line 1315
    return-void

    #@38
    .line 1327
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
    .line 1331
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
    .line 1336
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4a
    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    #@4c
    .line 1338
    .local v2, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v7, v2

    #@4d
    if-nez v7, :cond_4

    #@4f
    .line 1340
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@51
    const v8, 0x104009f

    #@54
    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@5b
    .line 1343
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@5d
    if-eqz v7, :cond_3

    #@5f
    .line 1344
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@61
    const/4 v8, 0x1

    #@62
    invoke-virtual {v7, v8, v10, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@65
    .line 1371
    :cond_3
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@67
    iput-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@69
    goto :goto_0

    #@6a
    .line 1348
    :cond_4
    new-instance v6, Landroid/text/SpannableStringBuilder;

    #@6c
    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@6f
    .line 1356
    .local v6, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x1

    #@70
    .line 1357
    .local v5, "serviceClassMask":I
    :goto_2
    const/16 v7, 0x80

    #@72
    .line 1356
    if-gt v5, v7, :cond_7

    #@74
    .line 1360
    const/4 v1, 0x0

    #@75
    .local v1, "i":I
    array-length v3, v2

    #@76
    .local v3, "s":I
    :goto_3
    if-ge v1, v3, :cond_6

    #@78
    .line 1361
    aget-object v7, v2, v1

    #@7a
    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@7c
    and-int/2addr v7, v5

    #@7d
    if-eqz v7, :cond_5

    #@7f
    .line 1362
    aget-object v7, v2, v1

    #@81
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@88
    .line 1364
    const-string/jumbo v7, "\n"

    #@8b
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@8e
    .line 1360
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@90
    goto :goto_3

    #@91
    .line 1358
    :cond_6
    shl-int/lit8 v5, v5, 0x1

    #@93
    goto :goto_2

    #@94
    .line 1368
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
    const v11, 0x10400c0

    #@3
    const v10, 0x10400bd

    #@6
    const/4 v9, 0x1

    #@7
    const v8, 0x104009b

    #@a
    const/4 v7, 0x0

    #@b
    .line 1480
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    #@10
    move-result-object v4

    #@11
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@14
    .line 1481
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "\n"

    #@17
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 1482
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@1c
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1e
    .line 1484
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@20
    if-eqz v4, :cond_2

    #@22
    .line 1486
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@24
    instance-of v4, v4, Lcom/android/ims/ImsException;

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 1487
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2a
    check-cast v1, Lcom/android/ims/ImsException;

    #@2c
    .line 1488
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    if-eqz v4, :cond_1

    #@32
    .line 1489
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 1569
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@3b
    .line 1570
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3d
    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@40
    .line 1479
    return-void

    #@41
    .line 1491
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
    .line 1495
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4b
    check-cast v3, Landroid/os/Bundle;

    #@4d
    .line 1496
    .local v3, "ssInfo":Landroid/os/Bundle;
    const-string/jumbo v4, "queryClir"

    #@50
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    #@53
    move-result-object v0

    #@54
    .line 1499
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
    .line 1500
    const-string/jumbo v6, " m="

    #@6c
    .line 1499
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    .line 1500
    aget v6, v0, v9

    #@72
    .line 1499
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
    .line 1503
    aget v4, v0, v9

    #@7f
    packed-switch v4, :pswitch_data_0

    #@82
    .line 1563
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@84
    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@8b
    .line 1565
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@8d
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@8f
    goto :goto_0

    #@90
    .line 1505
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@92
    .line 1506
    const v5, 0x10400c1

    #@95
    .line 1505
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@98
    move-result-object v4

    #@99
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@9c
    .line 1507
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@9e
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@a0
    goto :goto_0

    #@a1
    .line 1510
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@a3
    .line 1511
    const v5, 0x10400c2

    #@a6
    .line 1510
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@a9
    move-result-object v4

    #@aa
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@ad
    .line 1512
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@af
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@b1
    goto :goto_0

    #@b2
    .line 1516
    :pswitch_3
    aget v4, v0, v7

    #@b4
    packed-switch v4, :pswitch_data_1

    #@b7
    .line 1533
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@b9
    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@bc
    move-result-object v4

    #@bd
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@c0
    .line 1535
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@c2
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@c4
    goto/16 :goto_0

    #@c6
    .line 1518
    :pswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@c8
    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@cb
    move-result-object v4

    #@cc
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@cf
    .line 1520
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@d1
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@d3
    goto/16 :goto_0

    #@d5
    .line 1523
    :pswitch_5
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@d7
    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@da
    move-result-object v4

    #@db
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@de
    .line 1525
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@e0
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@e2
    goto/16 :goto_0

    #@e4
    .line 1528
    :pswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@e6
    .line 1529
    const v5, 0x10400be

    #@e9
    .line 1528
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@ec
    move-result-object v4

    #@ed
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@f0
    .line 1530
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@f2
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@f4
    goto/16 :goto_0

    #@f6
    .line 1540
    :pswitch_7
    aget v4, v0, v7

    #@f8
    packed-switch v4, :pswitch_data_2

    #@fb
    .line 1557
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@fd
    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@100
    move-result-object v4

    #@101
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@104
    .line 1559
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@106
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@108
    goto/16 :goto_0

    #@10a
    .line 1542
    :pswitch_8
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@10c
    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@10f
    move-result-object v4

    #@110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@113
    .line 1544
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@115
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@117
    goto/16 :goto_0

    #@119
    .line 1547
    :pswitch_9
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@11b
    .line 1548
    const v5, 0x10400bf

    #@11e
    .line 1547
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@121
    move-result-object v4

    #@122
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@125
    .line 1549
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@127
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@129
    goto/16 :goto_0

    #@12b
    .line 1552
    :pswitch_a
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@12d
    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@130
    move-result-object v4

    #@131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@134
    .line 1554
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@136
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@138
    goto/16 :goto_0

    #@13a
    .line 1503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_7
    .end packed-switch

    #@148
    .line 1516
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    #@152
    .line 1540
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
    const v7, 0x104009b

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 1575
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    #@a
    move-result-object v3

    #@b
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@e
    .line 1576
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\n"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 1578
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@16
    if-eqz v3, :cond_2

    #@18
    .line 1579
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@1a
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1c
    .line 1581
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    instance-of v3, v3, Lcom/android/ims/ImsException;

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 1582
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@24
    check-cast v0, Lcom/android/ims/ImsException;

    #@26
    .line 1583
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 1584
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 1613
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@35
    .line 1614
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@37
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@3a
    .line 1574
    return-void

    #@3b
    .line 1586
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
    .line 1589
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
    .line 1593
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4d
    check-cast v1, [I

    #@4f
    .line 1595
    .local v1, "ints":[I
    array-length v3, v1

    #@50
    if-eqz v3, :cond_6

    #@52
    .line 1596
    aget v3, v1, v5

    #@54
    if-nez v3, :cond_3

    #@56
    .line 1597
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@58
    const v4, 0x104009f

    #@5b
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@62
    .line 1610
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@64
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@66
    goto :goto_0

    #@67
    .line 1598
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
    .line 1600
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
    .line 1601
    :cond_4
    aget v3, v1, v5

    #@7e
    if-ne v3, v6, :cond_5

    #@80
    .line 1603
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@82
    const v4, 0x104009d

    #@85
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@88
    move-result-object v3

    #@89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@8c
    goto :goto_1

    #@8d
    .line 1605
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
    .line 1608
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
    const v4, 0x10400a0

    #@3
    const v5, 0x104009b

    #@6
    .line 1169
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    #@b
    move-result-object v3

    #@c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@f
    .line 1170
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\n"

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 1172
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@17
    if-eqz v3, :cond_4

    #@19
    .line 1173
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@1b
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1d
    .line 1175
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1f
    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 1176
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@25
    check-cast v0, Lcom/android/internal/telephony/CommandException;

    #@27
    .line 1177
    .local v0, "err":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@2a
    move-result-object v3

    #@2b
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@2d
    if-ne v3, v4, :cond_0

    #@2f
    .line 1178
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@31
    .line 1179
    const v4, 0x10400a2

    #@34
    .line 1178
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3b
    .line 1220
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@3d
    .line 1221
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3f
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@42
    .line 1168
    return-void

    #@43
    .line 1180
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException;
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    if-eqz v3, :cond_1

    #@49
    .line 1181
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    goto :goto_0

    #@51
    .line 1183
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@53
    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@5a
    goto :goto_0

    #@5b
    .line 1186
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException;
    :cond_2
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@5d
    check-cast v1, Lcom/android/ims/ImsException;

    #@5f
    .line 1187
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    if-eqz v3, :cond_3

    #@65
    .line 1188
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    goto :goto_0

    #@6d
    .line 1190
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@74
    goto :goto_0

    #@75
    .line 1193
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@78
    move-result v3

    #@79
    if-eqz v3, :cond_6

    #@7b
    .line 1194
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@7d
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@7f
    .line 1195
    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    #@81
    if-eqz v3, :cond_5

    #@83
    .line 1196
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@85
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@88
    move-result-object v3

    #@89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@8c
    goto :goto_0

    #@8d
    .line 1199
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@8f
    .line 1200
    const v4, 0x104009d

    #@92
    .line 1199
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@99
    goto :goto_0

    #@9a
    .line 1202
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    #@9d
    move-result v3

    #@9e
    if-eqz v3, :cond_7

    #@a0
    .line 1203
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@a2
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@a4
    .line 1204
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@a6
    .line 1205
    const v4, 0x104009f

    #@a9
    .line 1204
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@ac
    move-result-object v3

    #@ad
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@b0
    goto :goto_0

    #@b1
    .line 1206
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    #@b4
    move-result v3

    #@b5
    if-eqz v3, :cond_8

    #@b7
    .line 1207
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@b9
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@bb
    .line 1208
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@bd
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@c4
    goto/16 :goto_0

    #@c6
    .line 1210
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    #@c9
    move-result v3

    #@ca
    if-eqz v3, :cond_9

    #@cc
    .line 1211
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@ce
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@d0
    .line 1212
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@d2
    .line 1213
    const v4, 0x10400a1

    #@d5
    .line 1212
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@d8
    move-result-object v3

    #@d9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@dc
    goto/16 :goto_0

    #@de
    .line 1215
    :cond_9
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@e0
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@e2
    .line 1216
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@e4
    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@e7
    move-result-object v3

    #@e8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@eb
    goto/16 :goto_0
.end method

.method private onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const v10, 0x104009d

    #@3
    const v9, 0x104009b

    #@6
    const/4 v8, 0x1

    #@7
    const/4 v7, 0x0

    #@8
    .line 1380
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    #@d
    move-result-object v5

    #@e
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@11
    .line 1381
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\n"

    #@14
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 1383
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@19
    if-eqz v5, :cond_2

    #@1b
    .line 1384
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@1d
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1f
    .line 1386
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@21
    instance-of v5, v5, Lcom/android/ims/ImsException;

    #@23
    if-eqz v5, :cond_1

    #@25
    .line 1387
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@27
    check-cast v1, Lcom/android/ims/ImsException;

    #@29
    .line 1388
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    if-eqz v5, :cond_0

    #@2f
    .line 1389
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 1433
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@38
    .line 1434
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3a
    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@3d
    .line 1379
    return-void

    #@3e
    .line 1391
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
    .line 1394
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
    .line 1397
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@50
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@52
    .line 1398
    const/4 v3, 0x0

    #@53
    .line 1399
    .local v3, "ssInfo":Lcom/android/ims/ImsSsInfo;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@55
    instance-of v5, v5, Landroid/os/Bundle;

    #@57
    if-eqz v5, :cond_6

    #@59
    .line 1400
    const-string/jumbo v5, "ImsPhoneMmiCode"

    #@5c
    const-string/jumbo v6, "Received CLIP/COLP/COLR Response."

    #@5f
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 1402
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@64
    check-cast v4, Landroid/os/Bundle;

    #@66
    .line 1403
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
    .line 1404
    .local v3, "ssInfo":Lcom/android/ims/ImsSsInfo;
    if-eqz v3, :cond_5

    #@71
    .line 1405
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
    .line 1406
    iget v5, v3, Lcom/android/ims/ImsSsInfo;->mStatus:I

    #@8f
    if-nez v5, :cond_3

    #@91
    .line 1407
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@93
    const v6, 0x104009f

    #@96
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@9d
    .line 1408
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@9f
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@a1
    goto :goto_0

    #@a2
    .line 1409
    :cond_3
    iget v5, v3, Lcom/android/ims/ImsSsInfo;->mStatus:I

    #@a4
    if-ne v5, v8, :cond_4

    #@a6
    .line 1410
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@a8
    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@ab
    move-result-object v5

    #@ac
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@af
    .line 1411
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@b1
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@b3
    goto :goto_0

    #@b4
    .line 1413
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
    .line 1416
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
    .line 1420
    .end local v4    # "ssInfoResp":Landroid/os/Bundle;
    .local v3, "ssInfo":Lcom/android/ims/ImsSsInfo;
    :cond_6
    const-string/jumbo v5, "ImsPhoneMmiCode"

    #@cd
    const-string/jumbo v6, "Received Call Barring Response."

    #@d0
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    .line 1422
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d5
    check-cast v0, [I

    #@d7
    .line 1423
    .local v0, "cbInfos":[I
    aget v5, v0, v7

    #@d9
    if-ne v5, v8, :cond_7

    #@db
    .line 1424
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@dd
    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@e0
    move-result-object v5

    #@e1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@e4
    .line 1425
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@e6
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@e8
    goto/16 :goto_0

    #@ea
    .line 1427
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@ec
    const v6, 0x104009f

    #@ef
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@f2
    move-result-object v5

    #@f3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@f6
    .line 1428
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
    .line 1116
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    #@2
    .line 1117
    .local v1, "dialingNumber":Ljava/lang/String;
    const/4 v3, 0x0

    #@3
    .line 1119
    .local v3, "icbNum":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@5
    .line 1120
    const-string/jumbo v4, "\\$"

    #@8
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 1122
    .end local v3    # "icbNum":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->callBarAction(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    .line 1125
    .local v0, "callAction":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@12
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@14
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@17
    move-result-object v4

    #@18
    .line 1128
    const/4 v5, 0x0

    #@19
    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v5

    #@1d
    .line 1126
    const/16 v6, 0xa

    #@1f
    .line 1125
    invoke-interface {v4, v6, v0, v5, v3}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 1115
    :goto_0
    return-void

    #@23
    .line 1130
    :catch_0
    move-exception v2

    #@24
    .line 1131
    .local v2, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v4, "ImsPhoneMmiCode"

    #@27
    const-string/jumbo v5, "Could not get UT handle for updating ICB."

    #@2a
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    goto :goto_0
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 439
    if-nez p0, :cond_0

    #@2
    .line 440
    new-instance v0, Ljava/lang/RuntimeException;

    #@4
    const-string/jumbo v1, "invalid call barring sc"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 443
    :cond_0
    const-string/jumbo v0, "33"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 444
    const-string/jumbo v0, "AO"

    #@17
    return-object v0

    #@18
    .line 445
    :cond_1
    const-string/jumbo v0, "331"

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 446
    const-string/jumbo v0, "OI"

    #@24
    return-object v0

    #@25
    .line 447
    :cond_2
    const-string/jumbo v0, "332"

    #@28
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_3

    #@2e
    .line 448
    const-string/jumbo v0, "OX"

    #@31
    return-object v0

    #@32
    .line 449
    :cond_3
    const-string/jumbo v0, "35"

    #@35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_4

    #@3b
    .line 450
    const-string/jumbo v0, "AI"

    #@3e
    return-object v0

    #@3f
    .line 451
    :cond_4
    const-string/jumbo v0, "351"

    #@42
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_5

    #@48
    .line 452
    const-string/jumbo v0, "IR"

    #@4b
    return-object v0

    #@4c
    .line 453
    :cond_5
    const-string/jumbo v0, "330"

    #@4f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v0

    #@53
    if-eqz v0, :cond_6

    #@55
    .line 454
    const-string/jumbo v0, "AB"

    #@58
    return-object v0

    #@59
    .line 455
    :cond_6
    const-string/jumbo v0, "333"

    #@5c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v0

    #@60
    if-eqz v0, :cond_7

    #@62
    .line 456
    const-string/jumbo v0, "AG"

    #@65
    return-object v0

    #@66
    .line 457
    :cond_7
    const-string/jumbo v0, "353"

    #@69
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_8

    #@6f
    .line 458
    const-string/jumbo v0, "AC"

    #@72
    return-object v0

    #@73
    .line 460
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
    .line 349
    if-nez p0, :cond_0

    #@2
    .line 350
    new-instance v0, Ljava/lang/RuntimeException;

    #@4
    const-string/jumbo v1, "invalid call forward sc"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 353
    :cond_0
    const-string/jumbo v0, "002"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 354
    const/4 v0, 0x4

    #@15
    return v0

    #@16
    .line 355
    :cond_1
    const-string/jumbo v0, "21"

    #@19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 356
    const/4 v0, 0x0

    #@20
    return v0

    #@21
    .line 357
    :cond_2
    const-string/jumbo v0, "67"

    #@24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 358
    const/4 v0, 0x1

    #@2b
    return v0

    #@2c
    .line 359
    :cond_3
    const-string/jumbo v0, "62"

    #@2f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 360
    const/4 v0, 0x3

    #@36
    return v0

    #@37
    .line 361
    :cond_4
    const-string/jumbo v0, "61"

    #@3a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_5

    #@40
    .line 362
    const/4 v0, 0x2

    #@41
    return v0

    #@42
    .line 363
    :cond_5
    const-string/jumbo v0, "004"

    #@45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_6

    #@4b
    .line 364
    const/4 v0, 0x5

    #@4c
    return v0

    #@4d
    .line 366
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
    .line 1232
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1250
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 1234
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@7
    const v1, 0x10400cf

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 1236
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@11
    const v1, 0x10400d0

    #@14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 1238
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@1b
    const v1, 0x10400d1

    #@1e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 1240
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@25
    const v1, 0x10400d2

    #@28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@2b
    move-result-object v0

    #@2c
    return-object v0

    #@2d
    .line 1242
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@2f
    const v1, 0x10400d4

    #@32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 1244
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@39
    const v1, 0x10400d3

    #@3c
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@3f
    move-result-object v0

    #@40
    return-object v0

    #@41
    .line 1246
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@43
    const v1, 0x10400d5

    #@46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@49
    move-result-object v0

    #@4a
    return-object v0

    #@4b
    .line 1248
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@4d
    const v1, 0x10400d6

    #@50
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@53
    move-result-object v0

    #@54
    return-object v0

    #@55
    .line 1232
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
    .line 372
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1

    #@9
    .line 373
    :cond_0
    return v2

    #@a
    .line 376
    :cond_1
    const/16 v1, 0xa

    #@c
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@f
    move-result v0

    #@10
    .line 378
    .local v0, "serviceCode":I
    sparse-switch v0, :sswitch_data_0

    #@13
    .line 398
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
    .line 379
    :sswitch_0
    const/16 v1, 0xd

    #@2f
    return v1

    #@30
    .line 380
    :sswitch_1
    const/4 v1, 0x1

    #@31
    return v1

    #@32
    .line 381
    :sswitch_2
    const/16 v1, 0xc

    #@34
    return v1

    #@35
    .line 382
    :sswitch_3
    const/4 v1, 0x4

    #@36
    return v1

    #@37
    .line 384
    :sswitch_4
    const/16 v1, 0x8

    #@39
    return v1

    #@3a
    .line 386
    :sswitch_5
    const/4 v1, 0x5

    #@3b
    return v1

    #@3c
    .line 388
    :sswitch_6
    const/16 v1, 0x30

    #@3e
    return v1

    #@3f
    .line 390
    :sswitch_7
    const/16 v1, 0xa0

    #@41
    return v1

    #@42
    .line 391
    :sswitch_8
    const/16 v1, 0x50

    #@44
    return v1

    #@45
    .line 392
    :sswitch_9
    const/16 v1, 0x10

    #@47
    return v1

    #@48
    .line 393
    :sswitch_a
    const/16 v1, 0x20

    #@4a
    return v1

    #@4b
    .line 394
    :sswitch_b
    const/16 v1, 0x11

    #@4d
    return v1

    #@4e
    .line 395
    :sswitch_c
    const/16 v1, 0x40

    #@50
    return v1

    #@51
    .line 378
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
    .line 405
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 406
    :cond_0
    return v1

    #@a
    .line 409
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
.method public callBarAction(Ljava/lang/String;)I
    .locals 2
    .param p1, "dialingNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 726
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 727
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 728
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 729
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_3

    #@16
    .line 730
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_2

    #@1c
    .line 731
    const/4 v0, 0x3

    #@1d
    return v0

    #@1e
    .line 733
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    #@20
    const-string/jumbo v1, "invalid action"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 735
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_4

    #@2d
    .line 736
    const/4 v0, 0x4

    #@2e
    return v0

    #@2f
    .line 738
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    #@31
    const-string/jumbo v1, "invalid action"

    #@34
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0
.end method

.method public cancel()V
    .locals 2

    #@0
    .prologue
    .line 497
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
    .line 498
    :cond_0
    return-void

    #@d
    .line 501
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@11
    .line 503
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@17
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->cancelUSSD()V

    #@1a
    .line 495
    :goto_0
    return-void

    #@1b
    .line 506
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
    .line 641
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
    .line 642
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 643
    const/4 v0, 0x2

    #@16
    return v0

    #@17
    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 645
    const/4 v0, 0x1

    #@1e
    return v0

    #@1f
    .line 649
    :cond_1
    const/4 v0, 0x0

    #@20
    return v0
.end method

.method getDialingNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    #@0
    .prologue
    .line 480
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
    .line 1037
    iget v2, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v2, :pswitch_data_0

    #@6
    .line 1034
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@7
    .line 1039
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Landroid/os/AsyncResult;

    #@b
    .line 1041
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    #@e
    goto :goto_0

    #@f
    .line 1045
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11
    check-cast v0, Landroid/os/AsyncResult;

    #@13
    .line 1051
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@15
    if-nez v2, :cond_1

    #@17
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@19
    if-ne v2, v4, :cond_1

    #@1b
    .line 1052
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@1d
    if-ne v2, v4, :cond_2

    #@1f
    const/4 v1, 0x1

    #@20
    .line 1053
    .local v1, "cffEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 1054
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@26
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@28
    invoke-virtual {v2, v4, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@2b
    .line 1058
    .end local v1    # "cffEnabled":Z
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    #@2e
    goto :goto_0

    #@2f
    .line 1052
    :cond_2
    const/4 v1, 0x0

    #@30
    .restart local v1    # "cffEnabled":Z
    goto :goto_1

    #@31
    .line 1062
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cffEnabled":Z
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33
    check-cast v0, Landroid/os/AsyncResult;

    #@35
    .line 1063
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    #@38
    goto :goto_0

    #@39
    .line 1067
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3b
    check-cast v0, Landroid/os/AsyncResult;

    #@3d
    .line 1068
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    #@40
    goto :goto_0

    #@41
    .line 1072
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@43
    check-cast v0, Landroid/os/AsyncResult;

    #@45
    .line 1074
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@47
    if-eqz v2, :cond_0

    #@49
    .line 1075
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@4b
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@4d
    .line 1076
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@50
    move-result-object v2

    #@51
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@53
    .line 1078
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@55
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@58
    goto :goto_0

    #@59
    .line 1089
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@5b
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@5e
    goto :goto_0

    #@5f
    .line 1093
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@61
    check-cast v0, Landroid/os/AsyncResult;

    #@63
    .line 1094
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V

    #@66
    goto :goto_0

    #@67
    .line 1098
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@69
    check-cast v0, Landroid/os/AsyncResult;

    #@6b
    .line 1099
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onIcbQueryComplete(Landroid/os/AsyncResult;)V

    #@6e
    goto :goto_0

    #@6f
    .line 1103
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@71
    check-cast v0, Landroid/os/AsyncResult;

    #@73
    .line 1104
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryClirComplete(Landroid/os/AsyncResult;)V

    #@76
    goto :goto_0

    #@77
    .line 1037
    nop

    #@78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method isActivate()Z
    .locals 2

    #@0
    .prologue
    .line 653
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
    .line 514
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    #@2
    return v0
.end method

.method isDeactivate()Z
    .locals 2

    #@0
    .prologue
    .line 657
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
    .line 669
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
    .line 661
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
    .line 526
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
    .line 677
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    #@2
    return v0
.end method

.method public isPinPukCommand()Z
    .locals 2

    #@0
    .prologue
    .line 618
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
    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@1c
    const-string/jumbo v1, "05"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    .line 618
    if-nez v0, :cond_0

    #@25
    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@27
    const-string/jumbo v1, "052"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    .line 618
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
    .line 665
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
    .line 532
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 533
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
    .line 532
    :cond_0
    return v0
.end method

.method isSupportedOverImsPhone()Z
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 687
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    return v4

    #@9
    .line 688
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@b
    if-eqz v2, :cond_1

    #@d
    return v5

    #@e
    .line 689
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@10
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_8

    #@16
    .line 690
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@18
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    #@1b
    move-result v2

    #@1c
    .line 689
    if-nez v2, :cond_8

    #@1e
    .line 691
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@20
    if-eqz v2, :cond_2

    #@22
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@24
    const-string/jumbo v3, "43"

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    .line 689
    if-nez v2, :cond_8

    #@2d
    .line 692
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@2f
    if-eqz v2, :cond_3

    #@31
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@33
    const-string/jumbo v3, "31"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v2

    #@3a
    .line 689
    if-nez v2, :cond_8

    #@3c
    .line 693
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@3e
    if-eqz v2, :cond_4

    #@40
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@42
    const-string/jumbo v3, "30"

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v2

    #@49
    .line 689
    if-nez v2, :cond_8

    #@4b
    .line 694
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@4d
    if-eqz v2, :cond_5

    #@4f
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@51
    const-string/jumbo v3, "77"

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v2

    #@58
    .line 689
    if-nez v2, :cond_8

    #@5a
    .line 695
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@5c
    if-eqz v2, :cond_6

    #@5e
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@60
    const-string/jumbo v3, "76"

    #@63
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v2

    #@67
    .line 689
    if-nez v2, :cond_8

    #@69
    .line 696
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@6b
    if-eqz v2, :cond_7

    #@6d
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@6f
    const-string/jumbo v3, "156"

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v2

    #@76
    .line 689
    if-nez v2, :cond_8

    #@78
    .line 697
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@7a
    if-eqz v2, :cond_b

    #@7c
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@7e
    const-string/jumbo v3, "157"

    #@81
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v2

    #@85
    .line 689
    if-eqz v2, :cond_b

    #@87
    .line 700
    :cond_8
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    #@89
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@8c
    move-result v1

    #@8d
    .line 701
    .local v1, "serviceClass":I
    if-eqz v1, :cond_9

    #@8f
    .line 702
    if-eq v1, v4, :cond_9

    #@91
    .line 703
    return v5

    #@92
    .line 705
    :cond_9
    return v4

    #@93
    .line 706
    .end local v1    # "serviceClass":I
    :catch_0
    move-exception v0

    #@94
    .line 707
    .local v0, "exc":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "ImsPhoneMmiCode"

    #@97
    new-instance v3, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v4, "Invalid service class "

    #@9f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v3

    #@a7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v3

    #@ab
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ae
    .line 715
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    :cond_a
    return v5

    #@af
    .line 709
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPinPukCommand()Z

    #@b2
    move-result v2

    #@b3
    if-nez v2, :cond_c

    #@b5
    .line 710
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@b7
    if-eqz v2, :cond_d

    #@b9
    .line 711
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@bb
    const-string/jumbo v3, "03"

    #@be
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result v2

    #@c2
    if-nez v2, :cond_c

    #@c4
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@c6
    const-string/jumbo v3, "30"

    #@c9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cc
    move-result v2

    #@cd
    if-nez v2, :cond_c

    #@cf
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@d1
    const-string/jumbo v3, "31"

    #@d4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result v2

    #@d8
    .line 709
    if-eqz v2, :cond_d

    #@da
    .line 712
    :cond_c
    return v5

    #@db
    .line 713
    :cond_d
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    #@dd
    if-eqz v2, :cond_a

    #@df
    return v4
.end method

.method isTemporaryModeCLIR()Z
    .locals 2

    #@0
    .prologue
    .line 631
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
    .line 632
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
    .line 631
    :goto_0
    return v0

    #@1e
    .line 632
    :cond_0
    const/4 v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 631
    :cond_1
    const/4 v0, 0x0

    #@21
    goto :goto_0
.end method

.method public isUssdRequest()Z
    .locals 1

    #@0
    .prologue
    .line 682
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
    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@4
    if-ne v0, v1, :cond_1

    #@6
    .line 987
    if-nez p1, :cond_2

    #@8
    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@a
    const v1, 0x10400a3

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@13
    .line 992
    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    #@15
    .line 994
    if-nez p2, :cond_0

    #@17
    .line 995
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1b
    .line 998
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1d
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@20
    .line 985
    :cond_1
    return-void

    #@21
    .line 990
    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@23
    goto :goto_0
.end method

.method onUssdFinishedError()V
    .locals 2

    #@0
    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1011
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@a
    .line 1012
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@c
    const v1, 0x104009b

    #@f
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@15
    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@17
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@1a
    .line 1009
    :cond_0
    return-void
.end method

.method public processCode()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 746
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 747
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@9
    const-string/jumbo v9, "isShortCode"

    #@c
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 750
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@12
    new-instance v9, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v17, "Sending short code \'"

    #@1a
    move-object/from16 v0, v17

    #@1c
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v9

    #@20
    .line 751
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@24
    move-object/from16 v17, v0

    #@26
    .line 750
    move-object/from16 v0, v17

    #@28
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v9

    #@2c
    .line 751
    const-string/jumbo v17, "\' over CS pipe."

    #@2f
    .line 750
    move-object/from16 v0, v17

    #@31
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v9

    #@35
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v9

    #@39
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 752
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@3e
    const-string/jumbo v9, "cs_fallback"

    #@41
    invoke-direct {v3, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@44
    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 968
    :catch_0
    move-exception v12

    #@46
    .line 969
    .local v12, "exc":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@48
    move-object/from16 v0, p0

    #@4a
    iput-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@4c
    .line 970
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    #@50
    const v9, 0x104009b

    #@53
    invoke-virtual {v3, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@56
    move-result-object v3

    #@57
    move-object/from16 v0, p0

    #@59
    iput-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@5b
    .line 971
    move-object/from16 v0, p0

    #@5d
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@5f
    move-object/from16 v0, p0

    #@61
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@64
    .line 744
    .end local v12    # "exc":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    #@65
    .line 753
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@67
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@69
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    #@6c
    move-result v3

    #@6d
    if-eqz v3, :cond_b

    #@6f
    .line 754
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@72
    const-string/jumbo v9, "is CF"

    #@75
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 756
    move-object/from16 v0, p0

    #@7a
    iget-object v6, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    #@7c
    .line 757
    .local v6, "dialingNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7e
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@80
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    #@83
    move-result v5

    #@84
    .line 758
    .local v5, "reason":I
    move-object/from16 v0, p0

    #@86
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    #@88
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    #@8b
    move-result v7

    #@8c
    .line 759
    .local v7, "serviceClass":I
    move-object/from16 v0, p0

    #@8e
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    #@90
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToTime(Ljava/lang/String;)I

    #@93
    move-result v8

    #@94
    .line 761
    .local v8, "time":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    #@97
    move-result v3

    #@98
    if-eqz v3, :cond_1

    #@9a
    .line 762
    move-object/from16 v0, p0

    #@9c
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@9e
    .line 763
    const/4 v9, 0x1

    #@9f
    move-object/from16 v0, p0

    #@a1
    move-object/from16 v1, p0

    #@a3
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a6
    move-result-object v9

    #@a7
    .line 762
    invoke-virtual {v3, v5, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    #@aa
    goto :goto_0

    #@ab
    .line 767
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@ae
    move-result v3

    #@af
    if-eqz v3, :cond_5

    #@b1
    .line 772
    invoke-static {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    #@b4
    move-result v3

    #@b5
    if-eqz v3, :cond_4

    #@b7
    .line 773
    const/4 v4, 0x1

    #@b8
    .line 774
    .local v4, "cfAction":I
    const/4 v3, 0x0

    #@b9
    move-object/from16 v0, p0

    #@bb
    iput-boolean v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    #@bd
    .line 790
    :goto_1
    if-eqz v5, :cond_2

    #@bf
    .line 791
    const/4 v3, 0x4

    #@c0
    if-ne v5, v3, :cond_9

    #@c2
    :cond_2
    const/4 v15, 0x1

    #@c3
    .line 794
    .local v15, "isSettingUnconditional":I
    :goto_2
    const/4 v3, 0x1

    #@c4
    if-eq v4, v3, :cond_3

    #@c6
    .line 795
    const/4 v3, 0x3

    #@c7
    if-ne v4, v3, :cond_a

    #@c9
    :cond_3
    const/4 v14, 0x1

    #@ca
    .line 797
    .local v14, "isEnableDesired":I
    :goto_3
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@cd
    const-string/jumbo v9, "is CF setCallForward"

    #@d0
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    .line 798
    move-object/from16 v0, p0

    #@d5
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@d7
    .line 800
    const/4 v9, 0x4

    #@d8
    .line 799
    move-object/from16 v0, p0

    #@da
    move-object/from16 v1, p0

    #@dc
    invoke-virtual {v0, v9, v15, v14, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@df
    move-result-object v9

    #@e0
    .line 798
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    #@e3
    goto :goto_0

    #@e4
    .line 776
    .end local v4    # "cfAction":I
    .end local v14    # "isEnableDesired":I
    .end local v15    # "isSettingUnconditional":I
    :cond_4
    const/4 v4, 0x3

    #@e5
    .line 777
    .restart local v4    # "cfAction":I
    const/4 v3, 0x1

    #@e6
    move-object/from16 v0, p0

    #@e8
    iput-boolean v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    #@ea
    goto :goto_1

    #@eb
    .line 779
    .end local v4    # "cfAction":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    #@ee
    move-result v3

    #@ef
    if-eqz v3, :cond_6

    #@f1
    .line 780
    const/4 v4, 0x0

    #@f2
    .restart local v4    # "cfAction":I
    goto :goto_1

    #@f3
    .line 781
    .end local v4    # "cfAction":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    #@f6
    move-result v3

    #@f7
    if-eqz v3, :cond_7

    #@f9
    .line 782
    const/4 v4, 0x3

    #@fa
    .restart local v4    # "cfAction":I
    goto :goto_1

    #@fb
    .line 783
    .end local v4    # "cfAction":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    #@fe
    move-result v3

    #@ff
    if-eqz v3, :cond_8

    #@101
    .line 784
    const/4 v4, 0x4

    #@102
    .restart local v4    # "cfAction":I
    goto :goto_1

    #@103
    .line 786
    .end local v4    # "cfAction":I
    :cond_8
    new-instance v3, Ljava/lang/RuntimeException;

    #@105
    const-string/jumbo v9, "invalid action"

    #@108
    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10b
    throw v3

    #@10c
    .line 791
    .restart local v4    # "cfAction":I
    :cond_9
    const/4 v15, 0x0

    #@10d
    .restart local v15    # "isSettingUnconditional":I
    goto :goto_2

    #@10e
    .line 795
    :cond_a
    const/4 v14, 0x0

    #@10f
    .restart local v14    # "isEnableDesired":I
    goto :goto_3

    #@110
    .line 804
    .end local v4    # "cfAction":I
    .end local v5    # "reason":I
    .end local v6    # "dialingNumber":Ljava/lang/String;
    .end local v7    # "serviceClass":I
    .end local v8    # "time":I
    .end local v14    # "isEnableDesired":I
    .end local v15    # "isSettingUnconditional":I
    :cond_b
    move-object/from16 v0, p0

    #@112
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@114
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    #@117
    move-result v3

    #@118
    if-eqz v3, :cond_f

    #@11a
    .line 809
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    #@11e
    move-object/from16 v16, v0

    #@120
    .line 810
    .local v16, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    #@122
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@124
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    #@127
    move-result-object v13

    #@128
    .line 812
    .local v13, "facility":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    #@12b
    move-result v3

    #@12c
    if-eqz v3, :cond_c

    #@12e
    .line 813
    move-object/from16 v0, p0

    #@130
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@132
    .line 814
    const/4 v9, 0x7

    #@133
    move-object/from16 v0, p0

    #@135
    move-object/from16 v1, p0

    #@137
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13a
    move-result-object v9

    #@13b
    .line 813
    invoke-virtual {v3, v13, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    #@13e
    goto/16 :goto_0

    #@140
    .line 815
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@143
    move-result v3

    #@144
    if-nez v3, :cond_d

    #@146
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    #@149
    move-result v3

    #@14a
    if-eqz v3, :cond_e

    #@14c
    .line 816
    :cond_d
    move-object/from16 v0, p0

    #@14e
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@150
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@153
    move-result v9

    #@154
    .line 817
    const/16 v17, 0x0

    #@156
    move-object/from16 v0, p0

    #@158
    move/from16 v1, v17

    #@15a
    move-object/from16 v2, p0

    #@15c
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@15f
    move-result-object v17

    #@160
    .line 816
    move-object/from16 v0, v16

    #@162
    move-object/from16 v1, v17

    #@164
    invoke-virtual {v3, v13, v9, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    #@167
    goto/16 :goto_0

    #@169
    .line 819
    :cond_e
    new-instance v3, Ljava/lang/RuntimeException;

    #@16b
    const-string/jumbo v9, "Invalid or Unsupported MMI Code"

    #@16e
    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@171
    throw v3

    #@172
    .line 821
    .end local v13    # "facility":Ljava/lang/String;
    .end local v16    # "password":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    #@174
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@176
    if-eqz v3, :cond_13

    #@178
    move-object/from16 v0, p0

    #@17a
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@17c
    const-string/jumbo v9, "31"

    #@17f
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@182
    move-result v3

    #@183
    if-eqz v3, :cond_13

    #@185
    .line 825
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@188
    move-result v3

    #@189
    if-eqz v3, :cond_10

    #@18b
    .line 827
    :try_start_2
    move-object/from16 v0, p0

    #@18d
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@18f
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@191
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@194
    move-result-object v3

    #@195
    .line 828
    const/4 v9, 0x0

    #@196
    move-object/from16 v0, p0

    #@198
    move-object/from16 v1, p0

    #@19a
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@19d
    move-result-object v9

    #@19e
    .line 827
    const/16 v17, 0x1

    #@1a0
    move/from16 v0, v17

    #@1a2
    invoke-interface {v3, v0, v9}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@1a5
    goto/16 :goto_0

    #@1a7
    .line 829
    :catch_1
    move-exception v11

    #@1a8
    .line 830
    .local v11, "e":Lcom/android/ims/ImsException;
    :try_start_3
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@1ab
    const-string/jumbo v9, "Could not get UT handle for updateCLIR."

    #@1ae
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b1
    goto/16 :goto_0

    #@1b3
    .line 832
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    #@1b6
    move-result v3

    #@1b7
    if-eqz v3, :cond_11

    #@1b9
    .line 834
    :try_start_4
    move-object/from16 v0, p0

    #@1bb
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1bd
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1bf
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@1c2
    move-result-object v3

    #@1c3
    .line 835
    const/4 v9, 0x0

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    move-object/from16 v1, p0

    #@1c8
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1cb
    move-result-object v9

    #@1cc
    .line 834
    const/16 v17, 0x2

    #@1ce
    move/from16 v0, v17

    #@1d0
    invoke-interface {v3, v0, v9}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    #@1d3
    goto/16 :goto_0

    #@1d5
    .line 836
    :catch_2
    move-exception v11

    #@1d6
    .line 837
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_5
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@1d9
    const-string/jumbo v9, "Could not get UT handle for updateCLIR."

    #@1dc
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1df
    goto/16 :goto_0

    #@1e1
    .line 839
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    #@1e4
    move-result v3

    #@1e5
    if-eqz v3, :cond_12

    #@1e7
    .line 841
    :try_start_6
    move-object/from16 v0, p0

    #@1e9
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1eb
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1ed
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@1f0
    move-result-object v3

    #@1f1
    .line 842
    const/4 v9, 0x6

    #@1f2
    move-object/from16 v0, p0

    #@1f4
    move-object/from16 v1, p0

    #@1f6
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1f9
    move-result-object v9

    #@1fa
    .line 841
    invoke-interface {v3, v9}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_6
    .catch Lcom/android/ims/ImsException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    #@1fd
    goto/16 :goto_0

    #@1ff
    .line 843
    :catch_3
    move-exception v11

    #@200
    .line 844
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_7
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@203
    const-string/jumbo v9, "Could not get UT handle for queryCLIR."

    #@206
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@209
    goto/16 :goto_0

    #@20b
    .line 847
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_12
    new-instance v3, Ljava/lang/RuntimeException;

    #@20d
    const-string/jumbo v9, "Invalid or Unsupported MMI Code"

    #@210
    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@213
    throw v3

    #@214
    .line 849
    :cond_13
    move-object/from16 v0, p0

    #@216
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@218
    if-eqz v3, :cond_17

    #@21a
    move-object/from16 v0, p0

    #@21c
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@21e
    const-string/jumbo v9, "30"

    #@221
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@224
    move-result v3

    #@225
    if-eqz v3, :cond_17

    #@227
    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    #@22a
    move-result v3

    #@22b
    if-eqz v3, :cond_14

    #@22d
    .line 853
    :try_start_8
    move-object/from16 v0, p0

    #@22f
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@231
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@233
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@236
    move-result-object v3

    #@237
    .line 854
    const/4 v9, 0x7

    #@238
    move-object/from16 v0, p0

    #@23a
    move-object/from16 v1, p0

    #@23c
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@23f
    move-result-object v9

    #@240
    .line 853
    invoke-interface {v3, v9}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_8
    .catch Lcom/android/ims/ImsException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    #@243
    goto/16 :goto_0

    #@245
    .line 855
    :catch_4
    move-exception v11

    #@246
    .line 856
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_9
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@249
    const-string/jumbo v9, "Could not get UT handle for queryCLIP."

    #@24c
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24f
    goto/16 :goto_0

    #@251
    .line 858
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@254
    move-result v3

    #@255
    if-nez v3, :cond_15

    #@257
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    #@25a
    move-result v3

    #@25b
    if-eqz v3, :cond_16

    #@25d
    .line 860
    :cond_15
    :try_start_a
    move-object/from16 v0, p0

    #@25f
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@261
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@263
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@266
    move-result-object v3

    #@267
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@26a
    move-result v9

    #@26b
    .line 861
    const/16 v17, 0x0

    #@26d
    move-object/from16 v0, p0

    #@26f
    move/from16 v1, v17

    #@271
    move-object/from16 v2, p0

    #@273
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@276
    move-result-object v17

    #@277
    .line 860
    move-object/from16 v0, v17

    #@279
    invoke-interface {v3, v9, v0}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_a
    .catch Lcom/android/ims/ImsException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    #@27c
    goto/16 :goto_0

    #@27e
    .line 862
    :catch_5
    move-exception v11

    #@27f
    .line 863
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_b
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@282
    const-string/jumbo v9, "Could not get UT handle for updateCLIP."

    #@285
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@288
    goto/16 :goto_0

    #@28a
    .line 866
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_16
    new-instance v3, Ljava/lang/RuntimeException;

    #@28c
    const-string/jumbo v9, "Invalid or Unsupported MMI Code"

    #@28f
    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@292
    throw v3

    #@293
    .line 868
    :cond_17
    move-object/from16 v0, p0

    #@295
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@297
    if-eqz v3, :cond_1b

    #@299
    move-object/from16 v0, p0

    #@29b
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@29d
    const-string/jumbo v9, "76"

    #@2a0
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a3
    move-result v3

    #@2a4
    if-eqz v3, :cond_1b

    #@2a6
    .line 870
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    #@2a9
    move-result v3

    #@2aa
    if-eqz v3, :cond_18

    #@2ac
    .line 872
    :try_start_c
    move-object/from16 v0, p0

    #@2ae
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2b0
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2b2
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@2b5
    move-result-object v3

    #@2b6
    .line 873
    const/4 v9, 0x7

    #@2b7
    move-object/from16 v0, p0

    #@2b9
    move-object/from16 v1, p0

    #@2bb
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2be
    move-result-object v9

    #@2bf
    .line 872
    invoke-interface {v3, v9}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_c
    .catch Lcom/android/ims/ImsException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    #@2c2
    goto/16 :goto_0

    #@2c4
    .line 874
    :catch_6
    move-exception v11

    #@2c5
    .line 875
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_d
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@2c8
    const-string/jumbo v9, "Could not get UT handle for queryCOLP."

    #@2cb
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2ce
    goto/16 :goto_0

    #@2d0
    .line 877
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@2d3
    move-result v3

    #@2d4
    if-nez v3, :cond_19

    #@2d6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    #@2d9
    move-result v3

    #@2da
    if-eqz v3, :cond_1a

    #@2dc
    .line 879
    :cond_19
    :try_start_e
    move-object/from16 v0, p0

    #@2de
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2e0
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2e2
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@2e5
    move-result-object v3

    #@2e6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@2e9
    move-result v9

    #@2ea
    .line 880
    const/16 v17, 0x0

    #@2ec
    move-object/from16 v0, p0

    #@2ee
    move/from16 v1, v17

    #@2f0
    move-object/from16 v2, p0

    #@2f2
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2f5
    move-result-object v17

    #@2f6
    .line 879
    move-object/from16 v0, v17

    #@2f8
    invoke-interface {v3, v9, v0}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V
    :try_end_e
    .catch Lcom/android/ims/ImsException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    #@2fb
    goto/16 :goto_0

    #@2fd
    .line 881
    :catch_7
    move-exception v11

    #@2fe
    .line 882
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_f
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@301
    const-string/jumbo v9, "Could not get UT handle for updateCOLP."

    #@304
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@307
    goto/16 :goto_0

    #@309
    .line 885
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_1a
    new-instance v3, Ljava/lang/RuntimeException;

    #@30b
    const-string/jumbo v9, "Invalid or Unsupported MMI Code"

    #@30e
    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@311
    throw v3

    #@312
    .line 887
    :cond_1b
    move-object/from16 v0, p0

    #@314
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@316
    if-eqz v3, :cond_1f

    #@318
    move-object/from16 v0, p0

    #@31a
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@31c
    const-string/jumbo v9, "77"

    #@31f
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@322
    move-result v3

    #@323
    if-eqz v3, :cond_1f

    #@325
    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    #@328
    move-result v3

    #@329
    if-eqz v3, :cond_1c

    #@32b
    .line 891
    :try_start_10
    move-object/from16 v0, p0

    #@32d
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@32f
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@331
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@334
    move-result-object v3

    #@335
    .line 892
    const/4 v9, 0x0

    #@336
    move-object/from16 v0, p0

    #@338
    move-object/from16 v1, p0

    #@33a
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@33d
    move-result-object v9

    #@33e
    .line 891
    const/16 v17, 0x1

    #@340
    move/from16 v0, v17

    #@342
    invoke-interface {v3, v0, v9}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_10
    .catch Lcom/android/ims/ImsException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    #@345
    goto/16 :goto_0

    #@347
    .line 893
    :catch_8
    move-exception v11

    #@348
    .line 894
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_11
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@34b
    const-string/jumbo v9, "Could not get UT handle for updateCOLR."

    #@34e
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@351
    goto/16 :goto_0

    #@353
    .line 896
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    #@356
    move-result v3

    #@357
    if-eqz v3, :cond_1d

    #@359
    .line 898
    :try_start_12
    move-object/from16 v0, p0

    #@35b
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@35d
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@35f
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@362
    move-result-object v3

    #@363
    .line 899
    const/4 v9, 0x0

    #@364
    move-object/from16 v0, p0

    #@366
    move-object/from16 v1, p0

    #@368
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@36b
    move-result-object v9

    #@36c
    .line 898
    const/16 v17, 0x0

    #@36e
    move/from16 v0, v17

    #@370
    invoke-interface {v3, v0, v9}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_12
    .catch Lcom/android/ims/ImsException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    #@373
    goto/16 :goto_0

    #@375
    .line 900
    :catch_9
    move-exception v11

    #@376
    .line 901
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_13
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@379
    const-string/jumbo v9, "Could not get UT handle for updateCOLR."

    #@37c
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@37f
    goto/16 :goto_0

    #@381
    .line 903
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0

    #@384
    move-result v3

    #@385
    if-eqz v3, :cond_1e

    #@387
    .line 905
    :try_start_14
    move-object/from16 v0, p0

    #@389
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@38b
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@38d
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@390
    move-result-object v3

    #@391
    .line 906
    const/4 v9, 0x7

    #@392
    move-object/from16 v0, p0

    #@394
    move-object/from16 v1, p0

    #@396
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@399
    move-result-object v9

    #@39a
    .line 905
    invoke-interface {v3, v9}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_14
    .catch Lcom/android/ims/ImsException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    #@39d
    goto/16 :goto_0

    #@39f
    .line 907
    :catch_a
    move-exception v11

    #@3a0
    .line 908
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_15
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@3a3
    const-string/jumbo v9, "Could not get UT handle for queryCOLR."

    #@3a6
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a9
    goto/16 :goto_0

    #@3ab
    .line 911
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_1e
    new-instance v3, Ljava/lang/RuntimeException;

    #@3ad
    const-string/jumbo v9, "Invalid or Unsupported MMI Code"

    #@3b0
    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3b3
    throw v3

    #@3b4
    .line 913
    :cond_1f
    move-object/from16 v0, p0

    #@3b6
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@3b8
    if-eqz v3, :cond_21

    #@3ba
    move-object/from16 v0, p0

    #@3bc
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@3be
    const-string/jumbo v9, "156"

    #@3c1
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    #@3c4
    move-result v3

    #@3c5
    if-eqz v3, :cond_21

    #@3c7
    .line 915
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    #@3ca
    move-result v3

    #@3cb
    if-eqz v3, :cond_20

    #@3cd
    .line 916
    move-object/from16 v0, p0

    #@3cf
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3d1
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3d3
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@3d6
    move-result-object v3

    #@3d7
    .line 918
    const/16 v9, 0xa

    #@3d9
    move-object/from16 v0, p0

    #@3db
    move-object/from16 v1, p0

    #@3dd
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3e0
    move-result-object v9

    #@3e1
    .line 917
    const/16 v17, 0xa

    #@3e3
    .line 916
    move/from16 v0, v17

    #@3e5
    invoke-interface {v3, v0, v9}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_16
    .catch Lcom/android/ims/ImsException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    #@3e8
    goto/16 :goto_0

    #@3ea
    .line 923
    :catch_b
    move-exception v11

    #@3eb
    .line 924
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_17
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@3ee
    const-string/jumbo v9, "Could not get UT handle for ICB."

    #@3f1
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    #@3f4
    goto/16 :goto_0

    #@3f6
    .line 920
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_20
    :try_start_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processIcbMmiCodeForUpdate()V
    :try_end_18
    .catch Lcom/android/ims/ImsException; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    #@3f9
    goto/16 :goto_0

    #@3fb
    .line 926
    :cond_21
    :try_start_19
    move-object/from16 v0, p0

    #@3fd
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@3ff
    if-eqz v3, :cond_25

    #@401
    move-object/from16 v0, p0

    #@403
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@405
    const-string/jumbo v9, "157"

    #@408
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0

    #@40b
    move-result v3

    #@40c
    if-eqz v3, :cond_25

    #@40e
    .line 927
    const/4 v10, 0x0

    #@40f
    .line 930
    .local v10, "callAction":I
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    #@412
    move-result v3

    #@413
    if-eqz v3, :cond_22

    #@415
    .line 931
    move-object/from16 v0, p0

    #@417
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@419
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@41b
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@41e
    move-result-object v3

    #@41f
    .line 933
    const/16 v9, 0xa

    #@421
    move-object/from16 v0, p0

    #@423
    move-object/from16 v1, p0

    #@425
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@428
    move-result-object v9

    #@429
    .line 932
    const/16 v17, 0x6

    #@42b
    .line 931
    move/from16 v0, v17

    #@42d
    invoke-interface {v3, v0, v9}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_1a
    .catch Lcom/android/ims/ImsException; {:try_start_1a .. :try_end_1a} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0

    #@430
    goto/16 :goto_0

    #@432
    .line 946
    :catch_c
    move-exception v11

    #@433
    .line 947
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_1b
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@436
    const-string/jumbo v9, "Could not get UT handle for ICBa."

    #@439
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_0

    #@43c
    goto/16 :goto_0

    #@43e
    .line 935
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_22
    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@441
    move-result v3

    #@442
    if-eqz v3, :cond_24

    #@444
    .line 936
    const/4 v10, 0x1

    #@445
    .line 940
    :cond_23
    :goto_4
    move-object/from16 v0, p0

    #@447
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@449
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@44b
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@44e
    move-result-object v3

    #@44f
    .line 943
    const/4 v9, 0x0

    #@450
    move-object/from16 v0, p0

    #@452
    move-object/from16 v1, p0

    #@454
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@457
    move-result-object v9

    #@458
    .line 941
    const/16 v17, 0x6

    #@45a
    .line 944
    const/16 v18, 0x0

    #@45c
    .line 940
    move/from16 v0, v17

    #@45e
    move-object/from16 v1, v18

    #@460
    invoke-interface {v3, v0, v10, v9, v1}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V

    #@463
    goto/16 :goto_0

    #@465
    .line 937
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_1c
    .catch Lcom/android/ims/ImsException; {:try_start_1c .. :try_end_1c} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_0

    #@468
    move-result v3

    #@469
    if-eqz v3, :cond_23

    #@46b
    .line 938
    const/4 v10, 0x0

    #@46c
    goto :goto_4

    #@46d
    .line 949
    .end local v10    # "callAction":I
    :cond_25
    :try_start_1d
    move-object/from16 v0, p0

    #@46f
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@471
    if-eqz v3, :cond_29

    #@473
    move-object/from16 v0, p0

    #@475
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    #@477
    const-string/jumbo v9, "43"

    #@47a
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47d
    move-result v3

    #@47e
    if-eqz v3, :cond_29

    #@480
    .line 951
    move-object/from16 v0, p0

    #@482
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    #@484
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    #@487
    move-result v7

    #@488
    .line 953
    .restart local v7    # "serviceClass":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@48b
    move-result v3

    #@48c
    if-nez v3, :cond_26

    #@48e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    #@491
    move-result v3

    #@492
    if-eqz v3, :cond_27

    #@494
    .line 954
    :cond_26
    move-object/from16 v0, p0

    #@496
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@498
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    #@49b
    move-result v9

    #@49c
    .line 955
    const/16 v17, 0x0

    #@49e
    move-object/from16 v0, p0

    #@4a0
    move/from16 v1, v17

    #@4a2
    move-object/from16 v2, p0

    #@4a4
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4a7
    move-result-object v17

    #@4a8
    .line 954
    move-object/from16 v0, v17

    #@4aa
    invoke-virtual {v3, v9, v7, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    #@4ad
    goto/16 :goto_0

    #@4af
    .line 956
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    #@4b2
    move-result v3

    #@4b3
    if-eqz v3, :cond_28

    #@4b5
    .line 957
    move-object/from16 v0, p0

    #@4b7
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4b9
    const/4 v9, 0x3

    #@4ba
    move-object/from16 v0, p0

    #@4bc
    move-object/from16 v1, p0

    #@4be
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4c1
    move-result-object v9

    #@4c2
    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    #@4c5
    goto/16 :goto_0

    #@4c7
    .line 959
    :cond_28
    new-instance v3, Ljava/lang/RuntimeException;

    #@4c9
    const-string/jumbo v9, "Invalid or Unsupported MMI Code"

    #@4cc
    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4cf
    throw v3

    #@4d0
    .line 961
    .end local v7    # "serviceClass":I
    :cond_29
    move-object/from16 v0, p0

    #@4d2
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    #@4d4
    if-eqz v3, :cond_2a

    #@4d6
    .line 962
    const-string/jumbo v3, "ImsPhoneMmiCode"

    #@4d9
    new-instance v9, Ljava/lang/StringBuilder;

    #@4db
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4de
    const-string/jumbo v17, "Sending pound string \'"

    #@4e1
    move-object/from16 v0, v17

    #@4e3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e6
    move-result-object v9

    #@4e7
    .line 963
    move-object/from16 v0, p0

    #@4e9
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    #@4eb
    move-object/from16 v17, v0

    #@4ed
    .line 962
    move-object/from16 v0, v17

    #@4ef
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f2
    move-result-object v9

    #@4f3
    .line 963
    const-string/jumbo v17, "\' over CS pipe."

    #@4f6
    .line 962
    move-object/from16 v0, v17

    #@4f8
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fb
    move-result-object v9

    #@4fc
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ff
    move-result-object v9

    #@500
    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@503
    .line 964
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@505
    const-string/jumbo v9, "cs_fallback"

    #@508
    invoke-direct {v3, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@50b
    throw v3

    #@50c
    .line 966
    :cond_2a
    new-instance v3, Ljava/lang/RuntimeException;

    #@50e
    const-string/jumbo v9, "Invalid or Unsupported MMI Code"

    #@511
    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@514
    throw v3
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_0
.end method

.method sendUssd(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1020
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    #@3
    .line 1027
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@5
    .line 1028
    const/4 v1, 0x2

    #@6
    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    .line 1027
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    #@d
    .line 1018
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "ImsPhoneMmiCode {"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 1645
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
    .line 1646
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
    .line 1647
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
    .line 1648
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
    .line 1649
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
    .line 1650
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
    .line 1651
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
    .line 1652
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
    .line 1653
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
    .line 1654
    :cond_7
    const-string/jumbo v1, "}"

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    .line 1655
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    return-object v1
.end method
