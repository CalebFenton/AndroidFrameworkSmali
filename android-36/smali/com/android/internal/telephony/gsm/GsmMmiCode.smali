.class public final Lcom/android/internal/telephony/gsm/GsmMmiCode;
.super Landroid/os/Handler;
.source "GsmMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field static blacklist sFac:Ljava/util/regex/Pattern;

.field static greylist sPatternSuppService:Ljava/util/regex/Pattern;

.field private static blacklist sTwoDigitNumberPattern:[Ljava/lang/String;


# instance fields
.field blacklist mAction:Ljava/lang/String;

.field private blacklist mCallbackReceiver:Landroid/os/ResultReceiver;

.field greylist-max-r mContext:Landroid/content/Context;

.field public greylist-max-r mDialingNumber:Ljava/lang/String;

.field greylist-max-r mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private blacklist mIsCallFwdReg:Z

.field private blacklist mIsNetworkInitiatedUSSD:Z

.field private blacklist mIsPendingUSSD:Z

.field private blacklist mIsSsInfo:Z

.field private blacklist mIsUssdRequest:Z

.field blacklist mMessage:Ljava/lang/CharSequence;

.field greylist-max-r mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field blacklist mPoundString:Ljava/lang/String;

.field blacklist mPwd:Ljava/lang/String;

.field greylist-max-r mSc:Ljava/lang/String;

.field greylist-max-r mSia:Ljava/lang/String;

.field greylist-max-r mSib:Ljava/lang/String;

.field greylist-max-r mSic:Ljava/lang/String;

.field blacklist mState:Lcom/android/internal/telephony/MmiCode$State;

.field blacklist mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 190
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    .line 207
    const-string v0, "^\\#\\d+\\#[^*]+\\*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sFac:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor greylist-max-r <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .registers 4

    .line 699
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 178
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsSsInfo:Z

    .line 700
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 701
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    .line 702
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p2, :cond_24

    .line 704
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    :cond_24
    return-void
.end method

.method public static blacklist cbFacilityToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .registers 3

    .line 671
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_82

    goto/16 :goto_64

    :sswitch_d
    const-string v1, "OX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_64

    :cond_16
    const/4 v0, 0x7

    goto :goto_64

    :sswitch_18
    const-string v1, "OI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_64

    :cond_21
    const/4 v0, 0x6

    goto :goto_64

    :sswitch_23
    const-string v1, "IR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_64

    :cond_2c
    const/4 v0, 0x5

    goto :goto_64

    :sswitch_2e
    const-string v1, "AO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto :goto_64

    :cond_37
    const/4 v0, 0x4

    goto :goto_64

    :sswitch_39
    const-string v1, "AI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto :goto_64

    :cond_42
    const/4 v0, 0x3

    goto :goto_64

    :sswitch_44
    const-string v1, "AG"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    goto :goto_64

    :cond_4d
    const/4 v0, 0x2

    goto :goto_64

    :sswitch_4f
    const-string v1, "AC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto :goto_64

    :cond_58
    const/4 v0, 0x1

    goto :goto_64

    :sswitch_5a
    const-string v1, "AB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    goto :goto_64

    :cond_63
    const/4 v0, 0x0

    :goto_64
    packed-switch v0, :pswitch_data_a4

    const/4 p0, 0x0

    return-object p0

    .line 677
    :pswitch_69
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0

    .line 675
    :pswitch_6c
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0

    .line 681
    :pswitch_6f
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0

    .line 673
    :pswitch_72
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0

    .line 679
    :pswitch_75
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0

    .line 685
    :pswitch_78
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0

    .line 687
    :pswitch_7b
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0

    .line 683
    :pswitch_7e
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0

    nop

    :sswitch_data_82
    .sparse-switch
        0x821 -> :sswitch_5a
        0x822 -> :sswitch_4f
        0x826 -> :sswitch_44
        0x828 -> :sswitch_39
        0x82e -> :sswitch_2e
        0x929 -> :sswitch_23
        0x9da -> :sswitch_18
        0x9e9 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
    .end packed-switch
.end method

.method public static blacklist cfActionToRequestType(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    const/4 v0, 0x4

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 561
    :cond_d
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ERASURE:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object p0

    .line 559
    :cond_10
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object p0

    .line 557
    :cond_13
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object p0

    .line 555
    :cond_16
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object p0
.end method

.method public static blacklist cfReasonToServiceType(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .registers 2

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_16

    const/4 v0, 0x5

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 546
    :cond_13
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0

    .line 544
    :cond_16
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0

    .line 542
    :cond_19
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0

    .line 540
    :cond_1c
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0

    .line 538
    :cond_1f
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0

    .line 536
    :cond_22
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0
.end method

.method public static blacklist clirModeToRequestType(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 965
    :cond_8
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object p0

    .line 967
    :cond_b
    sget-object p0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object p0
.end method

.method private static blacklist convertCdmaMmiCodesTo3gppMmiCodes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 314
    sget-object v0, Lcom/android/internal/telephony/MmiCode;->sPatternCdmaMmiCodeWhileRoaming:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 v1, 0x1

    .line 316
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 317
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 318
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    const-string v3, "67"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    if-eqz v0, :cond_42

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#31#"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 323
    :cond_42
    const-string v3, "82"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    if-eqz v0, :cond_60

    .line 325
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

.method private blacklist createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;
    .registers 6

    .line 1905
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x10409af

    .line 1906
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    :goto_f
    const/16 v2, 0x80

    if-gt v1, v2, :cond_26

    and-int v2, v1, p1

    if-eqz v2, :cond_23

    .line 1913
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_23
    shl-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_26
    return-object v0
.end method

.method private blacklist createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .registers 6

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x10409af

    .line 1889
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    :goto_f
    const/16 v2, 0x80

    if-gt v1, v2, :cond_26

    and-int v2, v1, p1

    if-eqz v2, :cond_23

    .line 1896
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_23
    shl-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_26
    return-object v0
.end method

.method private blacklist formatLtr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1791
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p0

    if-nez p1, :cond_7

    return-object p1

    .line 1792
    :cond_7
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;
    .registers 2

    .line 469
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$gsm$SsData$RequestType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_26

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/4 v0, 0x3

    if-eq p0, v0, :cond_20

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1a

    .line 482
    const-string p0, ""

    return-object p0

    .line 475
    :cond_1a
    const-string p0, "*#"

    return-object p0

    .line 479
    :cond_1d
    const-string p0, "##"

    return-object p0

    .line 477
    :cond_20
    const-string p0, "**"

    return-object p0

    .line 473
    :cond_23
    const-string p0, "#"

    return-object p0

    .line 471
    :cond_26
    const-string p0, "*"

    return-object p0
.end method

.method public static blacklist getControlStrings(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SsData$RequestType;",
            "Lcom/android/internal/telephony/gsm/SsData$ServiceType;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2e8

    if-nez p1, :cond_b

    goto/16 :goto_2e8

    .line 1959
    :cond_b
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;

    move-result-object p0

    .line 1960
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$gsm$SsData$ServiceType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const-string v1, "353"

    const-string v2, "004"

    const-string v3, "333"

    const-string v4, "002"

    const-string v5, "330"

    packed-switch p1, :pswitch_data_2ea

    goto/16 :goto_2e8

    .line 2029
    :pswitch_26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2030
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 2025
    :pswitch_4b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2026
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 2022
    :pswitch_70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 2017
    :pswitch_83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "351"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2018
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2019
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 2012
    :pswitch_bc
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "35"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2013
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2014
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 2007
    :pswitch_f5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "332"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2008
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2009
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 2002
    :pswitch_12e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "331"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2003
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2004
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1997
    :pswitch_167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "33"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1998
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1999
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1994
    :pswitch_1a0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "43"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1991
    :pswitch_1b5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "31"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1988
    :pswitch_1ca
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "30"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1984
    :pswitch_1df
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1985
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1981
    :pswitch_204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1976
    :pswitch_217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "62"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1978
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1971
    :pswitch_250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "61"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1972
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1973
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1966
    :pswitch_289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "67"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1967
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1962
    :pswitch_2c2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "21"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1963
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e8
    :goto_2e8
    return-object v0

    nop

    :pswitch_data_2ea
    .packed-switch 0x1
        :pswitch_2c2
        :pswitch_289
        :pswitch_250
        :pswitch_217
        :pswitch_204
        :pswitch_1df
        :pswitch_1ca
        :pswitch_1b5
        :pswitch_1a0
        :pswitch_167
        :pswitch_12e
        :pswitch_f5
        :pswitch_bc
        :pswitch_83
        :pswitch_70
        :pswitch_4b
        :pswitch_26
    .end packed-switch
.end method

.method public static blacklist getControlStringsForPwd(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SsData$RequestType;",
            "Lcom/android/internal/telephony/gsm/SsData$ServiceType;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_40

    if-nez p1, :cond_a

    goto :goto_40

    .line 2049
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getControlStrings(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2050
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;

    move-result-object p0

    .line 2051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2052
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_40

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 2054
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "03"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_40
    :goto_40
    return-object v0
.end method

.method private blacklist getIntCarrierConfig(Ljava/lang/String;)I
    .registers 4

    .line 1927
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_17

    .line 1931
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    if-eqz p0, :cond_1f

    .line 1934
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1937
    :cond_1f
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private greylist getScString()Ljava/lang/CharSequence;
    .registers 3

    .line 1488
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_86

    .line 1489
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1490
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x104004c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1491
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1492
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040052

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1493
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1494
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040053

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1495
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1496
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040054

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1497
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1498
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x10400cf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1499
    :cond_62
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1500
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x104005a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1501
    :cond_76
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1502
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x10400ce

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1506
    :cond_86
    const-string p0, ""

    return-object p0
.end method

.method private blacklist getScStringFromScType(Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/lang/String;
    .registers 2

    .line 428
    sget-object p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$gsm$SsData$ServiceType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_42

    .line 465
    const-string p0, ""

    return-object p0

    .line 462
    :pswitch_e
    const-string p0, "353"

    return-object p0

    .line 460
    :pswitch_11
    const-string p0, "333"

    return-object p0

    .line 458
    :pswitch_14
    const-string p0, "330"

    return-object p0

    .line 456
    :pswitch_17
    const-string p0, "351"

    return-object p0

    .line 454
    :pswitch_1a
    const-string p0, "35"

    return-object p0

    .line 452
    :pswitch_1d
    const-string p0, "332"

    return-object p0

    .line 450
    :pswitch_20
    const-string p0, "331"

    return-object p0

    .line 448
    :pswitch_23
    const-string p0, "33"

    return-object p0

    .line 446
    :pswitch_26
    const-string p0, "43"

    return-object p0

    .line 444
    :pswitch_29
    const-string p0, "31"

    return-object p0

    .line 442
    :pswitch_2c
    const-string p0, "30"

    return-object p0

    .line 440
    :pswitch_2f
    const-string p0, "004"

    return-object p0

    .line 438
    :pswitch_32
    const-string p0, "002"

    return-object p0

    .line 436
    :pswitch_35
    const-string p0, "62"

    return-object p0

    .line 434
    :pswitch_38
    const-string p0, "61"

    return-object p0

    .line 432
    :pswitch_3b
    const-string p0, "67"

    return-object p0

    .line 430
    :pswitch_3e
    const-string p0, "21"

    return-object p0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
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
    .end packed-switch
.end method

.method private static blacklist getTwoDigitNumberPattern(Landroid/content/Context;I)[Ljava/lang/String;
    .registers 4

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get two digit number pattern: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmMmiCode"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v0, "carrier_config"

    .line 818
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_32

    .line 820
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 822
    const-string p1, "Two Digit Number Pattern from carrir config"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const-string p1, "mmi_two_digit_number_pattern_string_array"

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    if-nez p0, :cond_38

    const/4 p0, 0x0

    .line 830
    new-array p0, p0, [Ljava/lang/String;

    :cond_38
    return-object p0
.end method

.method private blacklist handlePasswordError(I)V
    .registers 4

    .line 1293
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1295
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1297
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1298
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method public static blacklist isCarrierSupportCallerIdVerticalServiceCodes(Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    .line 930
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_17

    .line 935
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    if-eqz p0, :cond_21

    .line 938
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

    .line 917
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 918
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_10} :catch_11

    return p0

    :catch_11
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 506
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

.method private static blacklist isFacFormatNumber(Ljava/lang/String;)Z
    .registers 2

    .line 980
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sFac:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 981
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private blacklist isFacToDial(Ljava/lang/String;)Z
    .registers 7

    .line 991
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isFacFormatNumber(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 996
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 997
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "carrier_config"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 998
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 1000
    const-string v1, "feature_access_codes_string_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1002
    invoke-static {p1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1003
    array-length v1, p1

    move v2, v0

    :goto_30
    if-ge v2, v1, :cond_41

    aget-object v3, p1, v2

    .line 1004
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const/4 p0, 0x1

    return p0

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_41
    return v0
.end method

.method private blacklist isServiceClassVoiceorNone(I)Z
    .registers 2

    .line 0
    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_9

    if-nez p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method static greylist isServiceCodeCallBarring(Ljava/lang/String;)Z
    .registers 6

    .line 630
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_21

    const v2, 0x107002c

    .line 632
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 635
    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_21

    aget-object v4, v0, v3

    .line 636
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

.method static greylist isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_34

    .line 620
    const-string v0, "21"

    .line 621
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "67"

    .line 622
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "62"

    .line 623
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "004"

    .line 624
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

.method private static blacklist isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 850
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 854
    :cond_b
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v0

    .line 857
    :cond_12
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    .line 877
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_21

    .line 878
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_12

    return v1

    .line 882
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v2, :cond_20

    .line 883
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x31

    if-eq p0, p1, :cond_21

    :cond_20
    return v1

    :cond_21
    return v0
.end method

.method public static blacklist isTwoDigitShortCode(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 9

    .line 795
    const-string v0, "isTwoDigitShortCode"

    const-string v1, "GsmMmiCode"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_4d

    .line 797
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_12

    goto :goto_4d

    .line 799
    :cond_12
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 800
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getTwoDigitNumberPattern(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    .line 803
    :cond_1c
    sget-object p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    array-length p1, p0

    move v2, v0

    :goto_20
    if-ge v2, p1, :cond_48

    aget-object v3, p0, v2

    .line 804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Two Digit Number Pattern "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 806
    const-string p0, "Two Digit Number Pattern -true"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 810
    :cond_48
    const-string p0, "Two Digit Number Pattern -false"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_4d
    return v0
.end method

.method public static blacklist isVoiceUnconditionalForwarding(II)Z
    .registers 3

    .line 0
    if-eqz p0, :cond_5

    const/4 v0, 0x4

    if-ne p0, v0, :cond_c

    :cond_5
    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_e

    if-nez p1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .registers 11

    .line 1733
    const-string v0, "{1}"

    const-string v1, "{2}"

    const-string v2, "{0}"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 1734
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 1740
    iget v2, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_16

    move v2, v4

    goto :goto_17

    :cond_16
    move v2, v3

    .line 1743
    :goto_17
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v6, v4, :cond_31

    if-eqz v2, :cond_27

    .line 1745
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10401e2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_5a

    .line 1748
    :cond_27
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10401e1

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_5a

    :cond_31
    if-nez v6, :cond_45

    .line 1751
    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 1752
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10401e3

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_5a

    :cond_45
    if-eqz v2, :cond_51

    .line 1759
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10401e5

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_5a

    .line 1762
    :cond_51
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10401e4

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1772
    :goto_5a
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v6, p2

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v1, v3

    .line 1773
    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1774
    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1773
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->formatLtr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 1775
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 1777
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v5, :cond_8e

    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr p2, v5

    if-ne p2, v4, :cond_8e

    .line 1780
    iget p2, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne p2, v4, :cond_87

    move v3, v4

    .line 1781
    :cond_87
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object p1, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v4, v3, p1}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1784
    :cond_8e
    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static greylist makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    .line 498
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method public static greylist-max-r newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .registers 4

    const/4 v0, 0x0

    .line 239
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .registers 9

    .line 247
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 248
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->supportsConversionOfCdmaCallerIdMmiCodesWhileRoaming()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 249
    :cond_10
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 250
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCarrierSupportCallerIdVerticalServiceCodes(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 256
    :cond_1c
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->convertCdmaMmiCodesTo3gppMmiCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 259
    :cond_20
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "#"

    const/4 v3, 0x0

    if-eqz v1, :cond_ae

    .line 263
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    const/4 v4, 0x1

    .line 264
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    const/4 v4, 0x2

    .line 265
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    const/4 v4, 0x3

    .line 266
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const/4 v4, 0x5

    .line 267
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    const/4 v4, 0x7

    .line 268
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    const/16 v4, 0x9

    .line 269
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    const/16 v4, 0xb

    .line 270
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    const/16 v4, 0xc

    .line 271
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_a5

    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 275
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 281
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v3, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 282
    iput-object p0, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_d8

    .line 283
    :cond_a5
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isFacToDial(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ac

    goto :goto_d8

    :cond_ac
    move-object v3, v1

    goto :goto_d8

    .line 289
    :cond_ae
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 294
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v3, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 295
    iput-object p0, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_d8

    .line 296
    :cond_bc
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTwoDigitShortCode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cb

    goto :goto_d8

    .line 299
    :cond_cb
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 301
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v3, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 302
    iput-object p0, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    :cond_d8
    :goto_d8
    if-eqz v3, :cond_dc

    .line 306
    iput-object p3, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    :cond_dc
    return-object v3
.end method

.method public static blacklist newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .registers 4

    .line 356
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 358
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 359
    sget-object p0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    const/4 p0, 0x1

    .line 360
    iput-boolean p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    return-object v0
.end method

.method public static blacklist newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .registers 5

    .line 336
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 338
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 339
    iput-boolean p1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsUssdRequest:Z

    const/4 p0, 0x1

    .line 340
    iput-boolean p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsNetworkInitiatedUSSD:Z

    if-eqz p1, :cond_15

    .line 344
    iput-boolean p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    .line 345
    sget-object p0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0

    .line 347
    :cond_15
    sget-object p0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method private blacklist onGetClirComplete(Landroid/os/AsyncResult;)V
    .registers 8

    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1619
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1f

    .line 1622
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1623
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_c4

    .line 1627
    :cond_1f
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v1, 0x1

    .line 1630
    aget v2, p1, v1

    if-eqz v2, :cond_b4

    if-eq v2, v1, :cond_a3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_92

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v2, v4, :cond_64

    const/4 v4, 0x4

    if-eq v2, v4, :cond_36

    goto/16 :goto_c4

    .line 1672
    :cond_36
    aget p1, p1, v5

    if-eq p1, v1, :cond_53

    const v1, 0x104004d

    if-eq p1, v3, :cond_49

    .line 1675
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 1683
    :cond_49
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 1679
    :cond_53
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104004e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1688
    :goto_5f
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_c4

    .line 1652
    :cond_64
    aget p1, p1, v5

    const v2, 0x1040050

    if-eq p1, v1, :cond_84

    if-eq p1, v3, :cond_77

    .line 1655
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_8d

    .line 1663
    :cond_77
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104004f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_8d

    .line 1659
    :cond_84
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1667
    :goto_8d
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_c4

    .line 1644
    :cond_92
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040684

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1646
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_c4

    .line 1638
    :cond_a3
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040051

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1640
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_c4

    .line 1632
    :cond_b4
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10409b1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1634
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1693
    :goto_c4
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1694
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onGetClirComplete: mmi="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmMmiCode"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method private blacklist onQueryCfComplete(Landroid/os/AsyncResult;)V
    .registers 11

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1798
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1e

    .line 1801
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1802
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_68

    .line 1806
    :cond_1e
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_52

    .line 1808
    array-length v4, p1

    if-nez v4, :cond_2a

    goto :goto_52

    .line 1816
    :cond_2a
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    :goto_2f
    const/16 v5, 0x80

    if-gt v3, v5, :cond_4e

    .line 1828
    array-length v5, p1

    move v6, v2

    :goto_35
    if-ge v6, v5, :cond_4b

    .line 1829
    aget-object v7, p1, v6

    iget v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v8, v3

    if-eqz v8, :cond_48

    .line 1830
    invoke-direct {p0, v7, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1832
    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_4b
    shl-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1836
    :cond_4e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 1810
    :cond_52
    :goto_52
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10409ad

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1813
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v2, v1}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1839
    :goto_64
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1842
    :goto_68
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1843
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onQueryCfComplete: mmi="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmMmiCode"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method private blacklist onQueryComplete(Landroid/os/AsyncResult;)V
    .registers 7

    .line 1850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1851
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1e

    .line 1854
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1855
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_89

    .line 1857
    :cond_1e
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1859
    array-length v1, p1

    const v2, 0x1040684

    if-eqz v1, :cond_7c

    const/4 v1, 0x0

    .line 1860
    aget v3, p1, v1

    if-nez v3, :cond_3a

    .line 1861
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10409ad

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 1862
    :cond_3a
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4f

    .line 1864
    aget p1, p1, v4

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 1865
    :cond_4f
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 1867
    aget p1, p1, v1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 1868
    :cond_61
    aget p1, p1, v1

    if-ne p1, v4, :cond_72

    .line 1870
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10409ae

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 1872
    :cond_72
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 1875
    :cond_7c
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1877
    :goto_85
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1880
    :goto_89
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1881
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onQueryComplete: mmi="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmMmiCode"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method private blacklist onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .registers 9

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1512
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const v3, 0x1040684

    const-string v4, "GsmMmiCode"

    if-eqz v2, :cond_145

    .line 1515
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1516
    instance-of v5, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_13a

    .line 1517
    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1518
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    const v5, 0x104019c

    if-ne v2, v3, :cond_a9

    .line 1519
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    move-result p2

    if-eqz p2, :cond_9b

    .line 1522
    iget-object p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_51

    iget-object p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_47

    goto :goto_51

    .line 1526
    :cond_47
    iget-object p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 1523
    :cond_51
    :goto_51
    iget-object p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104019d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1530
    :goto_5d
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-gtz p1, :cond_6c

    .line 1532
    const-string p1, "onSetComplete: PUK locked, cancel as lock screen will handle this"

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_1da

    :cond_6c
    if-lez p1, :cond_1da

    .line 1536
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetComplete: attemptsRemaining="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    iget-object p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1539
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/high16 v2, 0x1150000

    .line 1537
    invoke-virtual {p2, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1da

    .line 1542
    :cond_9b
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p2, 0x1040707

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1da

    .line 1545
    :cond_a9
    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, p1, :cond_c7

    .line 1546
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p2, 0x1040698

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1da

    .line 1551
    :cond_c7
    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, p1, :cond_e3

    .line 1552
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string p2, "04"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1da

    .line 1553
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p2, 0x10403a6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1da

    .line 1555
    :cond_e3
    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, p1, :cond_fa

    .line 1556
    const-string p1, "FDN_CHECK_FAILURE"

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p2, 0x1040687

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1da

    .line 1558
    :cond_fa
    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->MODEM_ERR:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, p1, :cond_131

    .line 1561
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_128

    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1562
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result p1

    if-eqz p1, :cond_128

    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1563
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->supports3gppCallForwardingWhileRoaming()Z

    move-result p1

    if-nez p1, :cond_128

    .line 1564
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p2, 0x1040686

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1da

    .line 1567
    :cond_128
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1da

    .line 1570
    :cond_131
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1da

    .line 1573
    :cond_13a
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1da

    .line 1576
    :cond_145
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result p1

    const-string p2, "31"

    const v1, 0x10409b2

    if-eqz p1, :cond_17d

    .line 1577
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1578
    iget-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsCallFwdReg:Z

    if-eqz p1, :cond_162

    .line 1579
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_16e

    .line 1582
    :cond_162
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10409ae

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1586
    :goto_16e
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1da

    .line 1587
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->saveClirSetting(I)V

    goto :goto_1da

    .line 1589
    :cond_17d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result p1

    if-eqz p1, :cond_1a2

    .line 1590
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1591
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10409ad

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1594
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1da

    .line 1595
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->saveClirSetting(I)V

    goto :goto_1da

    .line 1597
    :cond_1a2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result p1

    if-eqz p1, :cond_1b6

    .line 1598
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1599
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1da

    .line 1601
    :cond_1b6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result p1

    if-eqz p1, :cond_1cd

    .line 1602
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1603
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p2, 0x10409b0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1da

    .line 1606
    :cond_1cd
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1607
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1611
    :cond_1da
    :goto_1da
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1612
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSetComplete mmi="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method static blacklist scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 645
    const-string v0, "invalid call barring sc"

    if-eqz p0, :cond_62

    .line 649
    const-string v1, "33"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 650
    const-string p0, "AO"

    return-object p0

    .line 651
    :cond_f
    const-string v1, "331"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 652
    const-string p0, "OI"

    return-object p0

    .line 653
    :cond_1a
    const-string v1, "332"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 654
    const-string p0, "OX"

    return-object p0

    .line 655
    :cond_25
    const-string v1, "35"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 656
    const-string p0, "AI"

    return-object p0

    .line 657
    :cond_30
    const-string v1, "351"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 658
    const-string p0, "IR"

    return-object p0

    .line 659
    :cond_3b
    const-string v1, "330"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 660
    const-string p0, "AB"

    return-object p0

    .line 661
    :cond_46
    const-string v1, "333"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 662
    const-string p0, "AG"

    return-object p0

    .line 663
    :cond_51
    const-string v1, "353"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5c

    .line 664
    const-string p0, "AC"

    return-object p0

    .line 666
    :cond_5c
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 646
    :cond_62
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist scToCallForwardReason(Ljava/lang/String;)I
    .registers 3

    .line 512
    const-string v0, "invalid call forward sc"

    if-eqz p0, :cond_46

    .line 516
    const-string v1, "002"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x4

    return p0

    .line 518
    :cond_e
    const-string v1, "21"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 p0, 0x0

    return p0

    .line 520
    :cond_18
    const-string v1, "67"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 p0, 0x1

    return p0

    .line 522
    :cond_22
    const-string v1, "62"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 p0, 0x3

    return p0

    .line 524
    :cond_2c
    const-string v1, "61"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 p0, 0x2

    return p0

    .line 526
    :cond_36
    const-string v1, "004"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    const/4 p0, 0x5

    return p0

    .line 529
    :cond_40
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 513
    :cond_46
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist serviceClassToCFString(I)Ljava/lang/CharSequence;
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

    .line 1722
    :cond_1f
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409a9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1720
    :cond_29
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409aa

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1718
    :cond_33
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409a6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1716
    :cond_3d
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409a7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1714
    :cond_47
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409ab

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1712
    :cond_51
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409a8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1710
    :cond_5b
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409a5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1708
    :cond_65
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x10409ac

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static greylist siToServiceClass(Ljava/lang/String;)I
    .registers 4

    if-eqz p0, :cond_59

    .line 570
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_59

    :cond_9
    const/16 v0, 0xa

    .line 574
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_56

    const/16 v2, 0x63

    if-eq v0, v2, :cond_53

    packed-switch v0, :pswitch_data_5c

    packed-switch v0, :pswitch_data_68

    packed-switch v0, :pswitch_data_74

    .line 602
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

    .line 609
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    :cond_9
    const/16 v0, 0xa

    .line 613
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 3

    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_25

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_b

    goto :goto_25

    .line 736
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 738
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    if-eqz v0, :cond_20

    .line 743
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->cancelPendingUssd(Landroid/os/Message;)V

    return-void

    .line 754
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public greylist getCLIRMode()I
    .registers 3

    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 952
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x2

    return p0

    .line 954
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

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

    .line 788
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .registers 4

    .line 1447
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_c1

    .line 1448
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 1449
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "GsmMmiCode"

    if-ne p1, v0, :cond_21

    .line 1450
    const-string p1, "FDN_CHECK_FAILURE"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x1040687

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1452
    :cond_21
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_34

    .line 1453
    const-string p1, "USSD_MODIFIED_TO_DIAL"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x1040a1d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1455
    :cond_34
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_47

    .line 1456
    const-string p1, "USSD_MODIFIED_TO_SS"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x1040a1f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1458
    :cond_47
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_5a

    .line 1459
    const-string p1, "USSD_MODIFIED_TO_USSD"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x1040a20

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1461
    :cond_5a
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_6d

    .line 1462
    const-string p1, "SS_MODIFIED_TO_DIAL"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x1040a19

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1464
    :cond_6d
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_80

    .line 1465
    const-string p1, "SS_MODIFIED_TO_USSD"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x1040a1c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1467
    :cond_80
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_93

    .line 1468
    const-string p1, "SS_MODIFIED_TO_SS"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x1040a1b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1470
    :cond_93
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_a6

    .line 1471
    const-string p1, "OEM_ERROR_1 USSD_MODIFIED_TO_DIAL_VIDEO"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x1040a1e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1473
    :cond_a6
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_ae

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_c1

    .line 1475
    :cond_ae
    const-string p1, "REQUEST_NOT_SUPPORTED/OPERATION_NOT_ALLOWED"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1040685

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1483
    :cond_c1
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const p1, 0x1040684

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMessage()Ljava/lang/CharSequence;
    .registers 1

    .line 719
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 724
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object p0
.end method

.method public blacklist getState()Lcom/android/internal/telephony/MmiCode$State;
    .registers 1

    .line 713
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object p0
.end method

.method public blacklist getUssdCallbackReceiver()Landroid/os/ResultReceiver;
    .registers 1

    .line 1942
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 1384
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_64

    goto :goto_4a

    .line 1439
    :pswitch_6
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void

    .line 1392
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1398
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_27

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    .line 1399
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_1f

    move v1, v2

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 1400
    :goto_20
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1403
    :cond_27
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    return-void

    .line 1417
    :pswitch_2b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1418
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1422
    :pswitch_33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1424
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_4a

    .line 1425
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1426
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1428
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    :cond_4a
    :goto_4a
    return-void

    .line 1412
    :pswitch_4b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1413
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1407
    :pswitch_53
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1408
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1386
    :pswitch_5b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1388
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_53
        :pswitch_4b
        :pswitch_33
        :pswitch_2b
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

.method greylist isActivate()Z
    .registers 2

    .line 1015
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

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

    .line 762
    iget-boolean p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    return p0
.end method

.method greylist isDeactivate()Z
    .registers 2

    .line 1020
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

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

.method greylist isErasure()Z
    .registers 2

    .line 1035
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

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

.method greylist isInterrogate()Z
    .registers 2

    .line 1025
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

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

    .line 767
    iget-boolean p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsNetworkInitiatedUSSD:Z

    return p0
.end method

.method public blacklist isPendingUSSD()Z
    .registers 1

    .line 1043
    iget-boolean p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    return p0
.end method

.method public blacklist isPinPukCommand()Z
    .registers 3

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_2c

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    .line 895
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v0, "052"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    :cond_2a
    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method greylist isRegister()Z
    .registers 2

    .line 1030
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

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

    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz p0, :cond_11

    .line 782
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

    .line 1052
    iget-boolean p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsSsInfo:Z

    return p0
.end method

.method public greylist isTemporaryModeCLIR()Z
    .registers 3

    .line 907
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1e

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 908
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

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

    .line 1048
    iget-boolean p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsUssdRequest:Z

    return p0
.end method

.method public blacklist onUssdFinished(Ljava/lang/String;Z)V
    .registers 6

    .line 1312
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_42

    .line 1313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "GsmMmiCode"

    if-eqz v0, :cond_1f

    .line 1314
    const-string v0, "onUssdFinished: no network provided message; using default."

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040683

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    goto :goto_21

    .line 1317
    :cond_1f
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1319
    :goto_21
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsUssdRequest:Z

    if-nez p2, :cond_29

    .line 1322
    sget-object p2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1324
    :cond_29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUssdFinished: ussdMessage="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    :cond_42
    return-void
.end method

.method public blacklist onUssdFinishedError()V
    .registers 3

    .line 1337
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_29

    .line 1338
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1339
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1340
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040684

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1342
    :cond_1d
    const-string v0, "GsmMmiCode"

    const-string v1, "onUssdFinishedError"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    :cond_29
    return-void
.end method

.method public blacklist onUssdRelease()V
    .registers 3

    .line 1358
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_19

    .line 1359
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    const/4 v0, 0x0

    .line 1360
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1361
    const-string v0, "GsmMmiCode"

    const-string v1, "onUssdRelease"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    :cond_19
    return-void
.end method

.method blacklist parseSsData(Lcom/android/internal/telephony/gsm/SsData;)V
    .registers 9

    .line 384
    iget v0, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 385
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScStringFromScType(Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    .line 386
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseSsData msc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GsmMmiCode"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$gsm$SsData$RequestType:[I

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_ac

    const/4 v5, 0x2

    if-eq v1, v5, :cond_ac

    const/4 v5, 0x3

    if-eq v1, v5, :cond_ac

    const/4 v5, 0x4

    if-eq v1, v5, :cond_ac

    const/4 v3, 0x5

    if-eq v1, v3, :cond_71

    .line 422
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invaid requestType in SSData : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 411
    :cond_71
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeClir()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 412
    const-string v1, "CLIR INTERROGATION"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v1, Landroid/os/AsyncResult;

    iget-object p1, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    invoke-direct {v1, v4, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 414
    :cond_89
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 415
    const-string v1, "CALL FORWARD INTERROGATION"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v1, Landroid/os/AsyncResult;

    iget-object p1, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, v4, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 418
    :cond_a1
    new-instance v1, Landroid/os/AsyncResult;

    iget-object p1, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    invoke-direct {v1, v4, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 394
    :cond_ac
    iget v1, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    if-nez v1, :cond_e6

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 395
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeUnConditional()Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 401
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v5, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    if-eq v1, v5, :cond_c2

    sget-object v5, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    if-ne v1, v5, :cond_cc

    :cond_c2
    iget v1, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    .line 403
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceClassVoiceorNone(I)Z

    move-result v1

    if-eqz v1, :cond_cc

    move v1, v3

    goto :goto_cd

    :cond_cc
    const/4 v1, 0x0

    .line 405
    :goto_cd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVoiceCallForwardingFlag cffEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 408
    :cond_e6
    new-instance v1, Landroid/os/AsyncResult;

    iget-object p1, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, v4, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v4, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    return-void
.end method

.method public greylist processCode()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1067
    const-string v0, "04"

    const-string v1, "GsmMmiCode"

    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCode()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1068
    const-string v0, "processCode: isShortCode"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    return-void

    :catch_15
    move-exception v0

    goto/16 :goto_368

    .line 1071
    :cond_18
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_1a} :catch_15

    const-string v3, "Invalid or Unsupported MMI Code"

    if-nez v2, :cond_362

    .line 1074
    :try_start_1e
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const/4 v4, 0x5

    if-eqz v2, :cond_48

    const-string v5, "30"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1075
    const-string v0, "processCode: is CLIP"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1077
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1078
    invoke-virtual {p0, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1077
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    return-void

    .line 1080
    :cond_42
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1082
    :cond_48
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v2, :cond_a7

    const-string v6, "31"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 1083
    const-string v0, "processCode: is CLIR"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isClirActivationAndDeactivationPrevented()Z

    move-result v0

    if-nez v0, :cond_74

    .line 1085
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1086
    invoke-virtual {p0, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1085
    invoke-interface {v0, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    return-void

    .line 1087
    :cond_74
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isClirActivationAndDeactivationPrevented()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1089
    invoke-virtual {p0, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1088
    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    return-void

    .line 1090
    :cond_8f
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1091
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1092
    invoke-virtual {p0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1091
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    return-void

    .line 1094
    :cond_a1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_a7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v2

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eqz v2, :cond_12b

    .line 1097
    const-string v0, "processCode: is CF"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    .line 1100
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v11

    .line 1101
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v10

    .line 1102
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v13

    .line 1104
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 1105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1107
    invoke-virtual {p0, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1105
    invoke-interface {v0, v10, v11, v12, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    return-void

    .line 1111
    :cond_dc
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_f1

    .line 1116
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 1118
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsCallFwdReg:Z

    move v9, v5

    goto :goto_107

    .line 1121
    :cond_ed
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsCallFwdReg:Z

    :goto_ef
    move v9, v7

    goto :goto_107

    .line 1123
    :cond_f1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_f9

    move v9, v2

    goto :goto_107

    .line 1125
    :cond_f9
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_100

    goto :goto_ef

    .line 1127
    :cond_100
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v0

    if-eqz v0, :cond_123

    move v9, v6

    :goto_107
    if-eq v9, v5, :cond_10d

    if-ne v9, v7, :cond_10c

    goto :goto_10d

    :cond_10c
    move v5, v2

    .line 1137
    :cond_10d
    :goto_10d
    const-string v0, "processCode: is CF setCallForward"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v8, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1141
    invoke-static {v10, v11}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isVoiceUnconditionalForwarding(II)Z

    move-result v0

    const/4 v2, 0x6

    .line 1139
    invoke-virtual {p0, v2, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 1138
    invoke-interface/range {v8 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    return-void

    .line 1130
    :cond_123
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "invalid action"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1144
    :cond_12b
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_176

    .line 1148
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v12

    .line 1150
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1152
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_153

    .line 1153
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1154
    invoke-virtual {p0, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1153
    invoke-interface {v0, v9, v11, v12, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return-void

    .line 1155
    :cond_153
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_166

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_160

    goto :goto_166

    .line 1159
    :cond_160
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_166
    :goto_166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v8, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v10

    .line 1157
    invoke-virtual {p0, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 1156
    invoke-interface/range {v8 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    return-void

    .line 1162
    :cond_176
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v2, :cond_1c3

    const-string v8, "03"

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c3

    .line 1168
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    .line 1169
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    .line 1170
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_199

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_193

    goto :goto_199

    .line 1188
    :cond_193
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1172
    :cond_199
    :goto_199
    const-string v3, "**"

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    .line 1174
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    if-nez v3, :cond_1a4

    .line 1176
    const-string v3, "AB"

    goto :goto_1a8

    .line 1178
    :cond_1a4
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1180
    :goto_1a8
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1bc

    .line 1181
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1182
    invoke-virtual {p0, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1181
    invoke-interface {v4, v3, v0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_1bc
    const v0, 0x1040707

    .line 1185
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    return-void

    .line 1191
    :cond_1c3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v2, :cond_239

    const-string v8, "43"

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_239

    .line 1193
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v0

    .line 1195
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v2

    const/4 v6, -0x1

    if-nez v2, :cond_20d

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v2

    if-eqz v2, :cond_1e3

    goto :goto_20d

    .line 1207
    :cond_1e3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v2

    if-eqz v2, :cond_207

    .line 1208
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getTerminalBasedCallWaitingState(Z)I

    move-result v2

    if-eq v2, v6, :cond_1fb

    .line 1210
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCallWaiting(Landroid/os/Message;)V

    return-void

    .line 1212
    :cond_1fb
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1213
    invoke-virtual {p0, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1212
    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    return-void

    .line 1216
    :cond_207
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20d
    :goto_20d
    if-eqz v0, :cond_213

    and-int/lit8 v2, v0, 0x1

    if-ne v2, v5, :cond_229

    .line 1198
    :cond_213
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getTerminalBasedCallWaitingState(Z)I

    move-result v2

    if-eq v2, v6, :cond_229

    .line 1200
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v3

    .line 1201
    invoke-virtual {p0, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1200
    invoke-virtual {v2, v3, v0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCallWaiting(ZILandroid/os/Message;)V

    return-void

    .line 1205
    :cond_229
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v3

    .line 1206
    invoke-virtual {p0, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1205
    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    return-void

    .line 1218
    :cond_239
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    move-result v2

    if-eqz v2, :cond_328

    .line 1226
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    .line 1227
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    .line 1228
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 1229
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v7

    if-eqz v7, :cond_30f

    .line 1230
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25c

    const v0, 0x104067a

    .line 1232
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    return-void

    :cond_25c
    if-lt v4, v6, :cond_308

    const/16 v6, 0x8

    if-le v4, v6, :cond_264

    goto/16 :goto_308

    .line 1236
    :cond_264
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27f

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v4, :cond_27f

    .line 1238
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v4, v6, :cond_27f

    const v0, 0x1040697

    .line 1240
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    return-void

    .line 1241
    :cond_27f
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v4, :cond_300

    .line 1242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processCode: process mmi service code using UiccApp sc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ab

    .line 1247
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1248
    invoke-virtual {p0, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1247
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 1249
    :cond_2ab
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "042"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bf

    .line 1250
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1251
    invoke-virtual {p0, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1250
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 1252
    :cond_2bf
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "05"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d3

    .line 1253
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1254
    invoke-virtual {p0, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1253
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 1255
    :cond_2d3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "052"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e7

    .line 1256
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1257
    invoke-virtual {p0, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1256
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 1259
    :cond_2e7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uicc unsupported service code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1262
    :cond_300
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "No application mUiccApplicaiton is null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_308
    :goto_308
    const v0, 0x1040524

    .line 1235
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    return-void

    .line 1265
    :cond_30f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ivalid register/action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1267
    :cond_328
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_357

    .line 1268
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_351

    .line 1270
    const-string v0, "carrier_ussd_method_int"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_349

    .line 1273
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    return-void

    .line 1275
    :cond_349
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "The USSD request is not allowed over CS"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1278
    :cond_351
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    return-void

    .line 1281
    :cond_357
    const-string v0, "processCode: Invalid or Unsupported MMI Code"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_362
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_368
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_368} :catch_15

    .line 1285
    :goto_368
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1286
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040684

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCode: RuntimeException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method public blacklist processSsData(Landroid/os/AsyncResult;)V
    .registers 4

    .line 368
    const-string v0, "In processSsData"

    const-string v1, "GsmMmiCode"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsSsInfo:Z

    .line 372
    :try_start_a
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/gsm/SsData;

    .line 373
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->parseSsData(Lcom/android/internal/telephony/gsm/SsData;)V
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_11} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    goto :goto_16

    :catch_14
    move-exception p0

    goto :goto_2b

    .line 377
    :goto_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Null Pointer Exception in parsing SS Data : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 375
    :goto_2b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Class Cast Exception in parsing SS Data : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-void
.end method

.method public blacklist sendUssd(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 1368
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    .line 1374
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    .line 1375
    invoke-virtual {p0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1374
    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 2068
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GsmMmiCode {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    :cond_39
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_53

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    :cond_53
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    const-string v2, "GsmMmiCode"

    if-eqz v1, :cond_73

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sia="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2074
    :cond_73
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    if-eqz v1, :cond_91

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sib="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    :cond_91
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    if-eqz v1, :cond_af

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sic="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2076
    :cond_af
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v1, :cond_cd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " poundString="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2077
    :cond_cd
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v1, :cond_eb

    .line 2078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dialingNumber="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    :cond_eb
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    if-eqz v1, :cond_109

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pwd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    :cond_109
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    if-eqz p0, :cond_112

    const-string p0, " hasReceiver"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    :cond_112
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2083
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
