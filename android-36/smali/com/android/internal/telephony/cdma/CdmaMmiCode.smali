.class public final Lcom/android/internal/telephony/cdma/CdmaMmiCode;
.super Landroid/os/Handler;
.source "CdmaMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field static blacklist sPatternSuppService:Ljava/util/regex/Pattern;


# instance fields
.field blacklist mAction:Ljava/lang/String;

.field blacklist mContext:Landroid/content/Context;

.field blacklist mDialingNumber:Ljava/lang/String;

.field blacklist mMessage:Ljava/lang/CharSequence;

.field blacklist mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field blacklist mPoundString:Ljava/lang/String;

.field blacklist mPwd:Ljava/lang/String;

.field greylist-max-r mSc:Ljava/lang/String;

.field blacklist mSia:Ljava/lang/String;

.field blacklist mSib:Ljava/lang/String;

.field blacklist mSic:Ljava/lang/String;

.field blacklist mState:Lcom/android/internal/telephony/MmiCode$State;

.field blacklist mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .registers 4

    .line 158
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 159
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 160
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-void
.end method

.method public static blacklist getCallForwardingPrefixAndNumber(IILjava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x3

    .line 394
    const-string v1, ""

    if-eqz p1, :cond_60

    const/4 v2, 0x1

    if-eq p1, v2, :cond_47

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2e

    if-eq p1, v0, :cond_15

    .line 428
    const-string p0, "CdmaMmiCode"

    const-string p1, "getCallForwardingPrefix not match any prefix"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_15
    if-ne p0, v0, :cond_29

    .line 421
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "*68"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    if-nez p0, :cond_79

    .line 423
    const-string p0, "*680"

    return-object p0

    :cond_2e
    if-ne p0, v0, :cond_42

    .line 413
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "*92"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    if-nez p0, :cond_79

    .line 415
    const-string p0, "*920"

    return-object p0

    :cond_47
    if-ne p0, v0, :cond_5b

    .line 405
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "*90"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5b
    if-nez p0, :cond_79

    .line 407
    const-string p0, "*900"

    return-object p0

    :cond_60
    if-ne p0, v0, :cond_74

    .line 397
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "*72"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_74
    if-nez p0, :cond_79

    .line 399
    const-string p0, "*720"

    return-object p0

    :cond_79
    return-object v1
.end method

.method public static blacklist getCallWaitingPrefix(Z)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_5

    .line 436
    const-string p0, "*74"

    return-object p0

    .line 438
    :cond_5
    const-string p0, "*740"

    return-object p0
.end method

.method private blacklist getScString()Ljava/lang/CharSequence;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinPukCommand()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 312
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x10400ce

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 316
    :cond_14
    const-string p0, ""

    return-object p0
.end method

.method private blacklist handlePasswordError(I)V
    .registers 4

    .line 287
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 289
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 291
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 292
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method private static greylist-max-r makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method public static blacklist newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    .registers 4

    .line 123
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 127
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    const/4 p1, 0x1

    .line 128
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPoundString:Ljava/lang/String;

    const/4 p1, 0x2

    .line 129
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mAction:Ljava/lang/String;

    const/4 p1, 0x3

    .line 130
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const/4 p1, 0x5

    .line 131
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSia:Ljava/lang/String;

    const/4 p1, 0x7

    .line 132
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSib:Ljava/lang/String;

    const/16 p1, 0x9

    .line 133
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSic:Ljava/lang/String;

    const/16 p1, 0xb

    .line 134
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPwd:Ljava/lang/String;

    const/16 p1, 0xc

    .line 135
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mDialingNumber:Ljava/lang/String;

    return-object v0

    :cond_6d
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .registers 8

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 322
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object p2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const v2, 0x1040684

    if-eqz p2, :cond_f5

    .line 325
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 326
    instance-of v3, p2, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_eb

    .line 327
    check-cast p2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p2

    .line 328
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    const v4, 0x104019c

    if-ne p2, v3, :cond_a9

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinPukCommand()Z

    move-result p2

    if-eqz p2, :cond_9b

    .line 332
    iget-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4f

    iget-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45

    goto :goto_4f

    .line 336
    :cond_45
    iget-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5b

    .line 333
    :cond_4f
    :goto_4f
    iget-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104019d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 340
    :goto_5b
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 341
    const-string p2, "CdmaMmiCode"

    if-gtz p1, :cond_6c

    .line 342
    const-string p1, "onSetComplete: PUK locked, cancel as lock screen will handle this"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_119

    :cond_6c
    if-lez p1, :cond_119

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetComplete: attemptsRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 349
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/high16 v2, 0x1150000

    .line 347
    invoke-virtual {p2, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_119

    .line 352
    :cond_9b
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const p2, 0x1040707

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_119

    .line 355
    :cond_a9
    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p2, p1, :cond_c6

    .line 356
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const p2, 0x1040698

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_119

    .line 361
    :cond_c6
    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p2, p1, :cond_e1

    .line 362
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string p2, "04"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_119

    .line 363
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const p2, 0x10403a6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_119

    .line 366
    :cond_e1
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_119

    .line 370
    :cond_eb
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_119

    .line 373
    :cond_f5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isRegister()Z

    move-result p1

    if-eqz p1, :cond_10c

    .line 374
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 375
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const p2, 0x10409b2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_119

    .line 378
    :cond_10c
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 379
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 383
    :cond_119
    :goto_119
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 384
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_14

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_b

    goto :goto_14

    .line 192
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public blacklist getDialString()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getMessage()Ljava/lang/CharSequence;
    .registers 1

    .line 175
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object p0
.end method

.method public blacklist getState()Lcom/android/internal/telephony/MmiCode$State;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object p0
.end method

.method public blacklist getUssdCallbackReceiver()Landroid/os/ResultReceiver;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 300
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 301
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 302
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    return-void

    .line 304
    :cond_d
    const-string p0, "CdmaMmiCode"

    const-string p1, "Unexpected reply"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist isCancelable()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isNetworkInitiatedUssd()Z
    .registers 2

    .line 444
    const-string p0, "CdmaMmiCode"

    const-string v0, "isNetworkInitiated is not implemented in CdmaMmiCode"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isPinPukCommand()Z
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_2c

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

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

.method blacklist isRegister()Z
    .registers 2

    .line 212
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mAction:Ljava/lang/String;

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

.method public blacklist isUssdRequest()Z
    .registers 2

    .line 217
    const-string p0, "CdmaMmiCode"

    const-string v0, "isUssdRequest is not implemented in CdmaMmiCode"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist processCode()V
    .registers 7

    .line 230
    const-string v0, "04"

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinPukCommand()Z

    move-result v1

    if-eqz v1, :cond_109

    .line 238
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSia:Ljava/lang/String;

    .line 239
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSib:Ljava/lang/String;

    .line 240
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 242
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const v0, 0x104067a

    .line 244
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    return-void

    :cond_25
    const/4 v4, 0x4

    if-lt v3, v4, :cond_d5

    const/16 v4, 0x8

    if-le v3, v4, :cond_2e

    goto/16 :goto_d5

    .line 248
    :cond_2e
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_49

    .line 250
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v3, v4, :cond_49

    const v0, 0x1040697

    .line 252
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    return-void

    .line 253
    :cond_49
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_cd

    .line 254
    const-string v3, "CdmaMmiCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "process mmi service code using UiccApp sc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_78

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 259
    invoke-virtual {p0, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 258
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 260
    :cond_78
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "042"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 262
    invoke-virtual {p0, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 261
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 263
    :cond_8c
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "05"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 265
    invoke-virtual {p0, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 264
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 266
    :cond_a0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "052"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 268
    invoke-virtual {p0, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 267
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 270
    :cond_b4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported service code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_cd
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No application mUiccApplicaiton is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d5
    :goto_d5
    const v0, 0x1040524

    .line 247
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    return-void

    .line 276
    :cond_dc
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ivalid register/action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_f5} :catch_f5

    .line 280
    :catch_f5
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040684

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    :cond_109
    return-void
.end method
