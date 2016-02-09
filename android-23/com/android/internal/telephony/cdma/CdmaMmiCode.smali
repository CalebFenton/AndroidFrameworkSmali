.class public final Lcom/android/internal/telephony/cdma/CdmaMmiCode;
.super Landroid/os/Handler;
.source "CdmaMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "CdmaMmiCode"

.field static final MATCH_GROUP_ACTION:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static final MATCH_GROUP_SIA:I = 0x5

.field static final MATCH_GROUP_SIB:I = 0x7

.field static final MATCH_GROUP_SIC:I = 0x9

.field static final SC_PIN:Ljava/lang/String; = "04"

.field static final SC_PIN2:Ljava/lang/String; = "042"

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static final SC_PUK2:Ljava/lang/String; = "052"

.field static sPatternSuppService:Ljava/util/regex/Pattern;


# instance fields
.field mAction:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDialingNumber:Ljava/lang/String;

.field mMessage:Ljava/lang/CharSequence;

.field mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field mPoundString:Ljava/lang/String;

.field mPwd:Ljava/lang/String;

.field mSc:Ljava/lang/String;

.field mSia:Ljava/lang/String;

.field mSib:Ljava/lang/String;

.field mSic:Ljava/lang/String;

.field mState:Lcom/android/internal/telephony/MmiCode$State;

.field mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    #@3
    .line 77
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    #@9
    .line 41
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@0
    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@b
    .line 72
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@f
    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@11
    .line 148
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@17
    .line 149
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@19
    .line 145
    return-void
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 294
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinPukCommand()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@c
    const v1, 0x1040095

    #@f
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 299
    :cond_0
    const-string/jumbo v0, ""

    #@17
    return-object v0
.end method

.method private handlePasswordError(I)V
    .locals 2
    .param p1, "res"    # I

    #@0
    .prologue
    .line 270
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@4
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getScString()Ljava/lang/CharSequence;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@d
    .line 272
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\n"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 273
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@15
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1c
    .line 274
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@1e
    .line 275
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@20
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    #@23
    .line 269
    return-void
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 138
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
    .line 140
    :cond_0
    return-object p0
.end method

.method public static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    .locals 3
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@0
    .prologue
    .line 110
    const/4 v1, 0x0

    #@1
    .line 112
    .local v1, "ret":Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    #@3
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6
    move-result-object v0

    #@7
    .line 115
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 116
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    #@f
    .end local v1    # "ret":Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    #@12
    .line 117
    .local v1, "ret":Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    const/4 v2, 0x1

    #@13
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPoundString:Ljava/lang/String;

    #@1d
    .line 118
    const/4 v2, 0x2

    #@1e
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mAction:Ljava/lang/String;

    #@28
    .line 119
    const/4 v2, 0x3

    #@29
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@33
    .line 120
    const/4 v2, 0x5

    #@34
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSia:Ljava/lang/String;

    #@3e
    .line 121
    const/4 v2, 0x7

    #@3f
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSib:Ljava/lang/String;

    #@49
    .line 122
    const/16 v2, 0x9

    #@4b
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSic:Ljava/lang/String;

    #@55
    .line 123
    const/16 v2, 0xb

    #@57
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPwd:Ljava/lang/String;

    #@61
    .line 124
    const/16 v2, 0xc

    #@63
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mDialingNumber:Ljava/lang/String;

    #@6d
    .line 128
    .end local v1    # "ret":Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    :cond_0
    return-object v1
.end method

.method private onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const v5, 0x1040083

    #@3
    const v4, 0x104007a

    #@6
    const/4 v6, 0x0

    #@7
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getScString()Ljava/lang/CharSequence;

    #@c
    move-result-object v3

    #@d
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@10
    .line 305
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\n"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 307
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@18
    if-eqz v3, :cond_9

    #@1a
    .line 308
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@1c
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1e
    .line 309
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@20
    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    #@22
    if-eqz v3, :cond_8

    #@24
    .line 310
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@26
    check-cast v3, Lcom/android/internal/telephony/CommandException;

    #@28
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@2b
    move-result-object v1

    #@2c
    .line 311
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@2e
    if-ne v1, v3, :cond_5

    #@30
    .line 312
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinPukCommand()Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_4

    #@36
    .line 315
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@38
    const-string/jumbo v4, "05"

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v3

    #@3f
    if-nez v3, :cond_0

    #@41
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@43
    const-string/jumbo v4, "052"

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_2

    #@4c
    .line 316
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@4e
    .line 317
    const v4, 0x1040084

    #@51
    .line 316
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@58
    .line 323
    :goto_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@5a
    .line 324
    .local v0, "attemptsRemaining":I
    if-gtz v0, :cond_3

    #@5c
    .line 325
    const-string/jumbo v3, "CdmaMmiCode"

    #@5f
    const-string/jumbo v4, "onSetComplete: PUK locked, cancel as lock screen will handle this"

    #@62
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 327
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    #@67
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@69
    .line 366
    .end local v0    # "attemptsRemaining":I
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@6b
    .line 367
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@6d
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    #@70
    .line 303
    return-void

    #@71
    .line 319
    .restart local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@73
    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@7a
    goto :goto_0

    #@7b
    .line 328
    .restart local v0    # "attemptsRemaining":I
    :cond_3
    if-lez v0, :cond_1

    #@7d
    .line 329
    const-string/jumbo v3, "CdmaMmiCode"

    #@80
    new-instance v4, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v5, "onSetComplete: attemptsRemaining="

    #@88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v4

    #@94
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 330
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@99
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9c
    move-result-object v3

    #@9d
    const/4 v4, 0x1

    #@9e
    new-array v4, v4, [Ljava/lang/Object;

    #@a0
    .line 332
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3
    move-result-object v5

    #@a4
    aput-object v5, v4, v6

    #@a6
    .line 331
    const/high16 v5, 0x1140000

    #@a8
    .line 330
    invoke-virtual {v3, v5, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@ab
    move-result-object v3

    #@ac
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    goto :goto_1

    #@b0
    .line 335
    .end local v0    # "attemptsRemaining":I
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@b2
    .line 336
    const v4, 0x1040081

    #@b5
    .line 335
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@b8
    move-result-object v3

    #@b9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@bc
    goto :goto_1

    #@bd
    .line 338
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    #@bf
    if-ne v1, v3, :cond_6

    #@c1
    .line 339
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@c3
    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@c6
    move-result-object v3

    #@c7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@ca
    .line 341
    const-string/jumbo v3, "\n"

    #@cd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    .line 342
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@d2
    .line 343
    const v4, 0x1040089

    #@d5
    .line 342
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@d8
    move-result-object v3

    #@d9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@dc
    goto :goto_1

    #@dd
    .line 344
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@df
    if-ne v1, v3, :cond_7

    #@e1
    .line 345
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@e3
    const-string/jumbo v4, "04"

    #@e6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e9
    move-result v3

    #@ea
    if-eqz v3, :cond_1

    #@ec
    .line 346
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@ee
    const v4, 0x104008a

    #@f1
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@f4
    move-result-object v3

    #@f5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@f8
    goto/16 :goto_1

    #@fa
    .line 349
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@fc
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@ff
    move-result-object v3

    #@100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@103
    goto/16 :goto_1

    #@105
    .line 353
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@107
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@10a
    move-result-object v3

    #@10b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@10e
    goto/16 :goto_1

    #@110
    .line 356
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isRegister()Z

    #@113
    move-result v3

    #@114
    if-eqz v3, :cond_a

    #@116
    .line 357
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@118
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@11a
    .line 358
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@11c
    .line 359
    const v4, 0x104007f

    #@11f
    .line 358
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@122
    move-result-object v3

    #@123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@126
    goto/16 :goto_1

    #@128
    .line 361
    :cond_a
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@12a
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@12c
    .line 362
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@12e
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@131
    move-result-object v3

    #@132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@135
    goto/16 :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@8
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 177
    :cond_0
    return-void

    #@d
    .line 180
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@11
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@13
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    #@16
    .line 174
    return-void
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@2
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 283
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    const/4 v2, 0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 284
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7
    check-cast v0, Landroid/os/AsyncResult;

    #@9
    .line 285
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    #@c
    .line 280
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_0
    return-void

    #@d
    .line 287
    :cond_0
    const-string/jumbo v1, "CdmaMmiCode"

    #@10
    const-string/jumbo v2, "Unexpected reply"

    #@13
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    goto :goto_0
.end method

.method public isCancelable()Z
    .locals 1

    #@0
    .prologue
    .line 186
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method isPinPukCommand()Z
    .locals 2

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "04"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@11
    const-string/jumbo v1, "042"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@1c
    const-string/jumbo v1, "05"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    .line 195
    if-nez v0, :cond_0

    #@25
    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@27
    const-string/jumbo v1, "052"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    .line 195
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
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mAction:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mAction:Ljava/lang/String;

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

.method public isUssdRequest()Z
    .locals 2

    #@0
    .prologue
    .line 205
    const-string/jumbo v0, "CdmaMmiCode"

    #@3
    const-string/jumbo v1, "isUssdRequest is not implemented in CdmaMmiCode"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 206
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method processCode()V
    .locals 7

    #@0
    .prologue
    .line 213
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinPukCommand()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 221
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSia:Ljava/lang/String;

    #@8
    .line 222
    .local v2, "oldPinOrPuk":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSib:Ljava/lang/String;

    #@a
    .line 223
    .local v1, "newPinOrPuk":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@d
    move-result v3

    #@e
    .line 224
    .local v3, "pinLen":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isRegister()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_a

    #@14
    .line 225
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSic:Ljava/lang/String;

    #@16
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 227
    const v4, 0x1040085

    #@1f
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    #@22
    .line 211
    .end local v1    # "newPinOrPuk":Ljava/lang/String;
    .end local v2    # "oldPinOrPuk":Ljava/lang/String;
    .end local v3    # "pinLen":I
    :cond_0
    :goto_0
    return-void

    #@23
    .line 228
    .restart local v1    # "newPinOrPuk":Ljava/lang/String;
    .restart local v2    # "oldPinOrPuk":Ljava/lang/String;
    .restart local v3    # "pinLen":I
    :cond_1
    const/4 v4, 0x4

    #@24
    if-lt v3, v4, :cond_2

    #@26
    const/16 v4, 0x8

    #@28
    if-le v3, v4, :cond_3

    #@2a
    .line 230
    :cond_2
    const v4, 0x1040086

    #@2d
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    goto :goto_0

    #@31
    .line 262
    .end local v1    # "newPinOrPuk":Ljava/lang/String;
    .end local v2    # "oldPinOrPuk":Ljava/lang/String;
    .end local v3    # "pinLen":I
    :catch_0
    move-exception v0

    #@32
    .line 263
    .local v0, "exc":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@34
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@36
    .line 264
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    #@38
    const v5, 0x104007a

    #@3b
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@3e
    move-result-object v4

    #@3f
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@41
    .line 265
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@43
    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    #@46
    goto :goto_0

    #@47
    .line 231
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    .restart local v1    # "newPinOrPuk":Ljava/lang/String;
    .restart local v2    # "oldPinOrPuk":Ljava/lang/String;
    .restart local v3    # "pinLen":I
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@49
    const-string/jumbo v5, "04"

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_4

    #@52
    .line 232
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@54
    if-eqz v4, :cond_4

    #@56
    .line 233
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@58
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@5b
    move-result-object v4

    #@5c
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@5e
    if-ne v4, v5, :cond_4

    #@60
    .line 235
    const v4, 0x1040088

    #@63
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    #@66
    goto :goto_0

    #@67
    .line 236
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@69
    if-eqz v4, :cond_9

    #@6b
    .line 237
    const-string/jumbo v4, "CdmaMmiCode"

    #@6e
    new-instance v5, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v6, "process mmi service code using UiccApp sc="

    #@76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@7c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 240
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@89
    const-string/jumbo v5, "04"

    #@8c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v4

    #@90
    if-eqz v4, :cond_5

    #@92
    .line 241
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@94
    .line 242
    const/4 v5, 0x1

    #@95
    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@98
    move-result-object v5

    #@99
    .line 241
    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@9c
    goto :goto_0

    #@9d
    .line 243
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@9f
    const-string/jumbo v5, "042"

    #@a2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a5
    move-result v4

    #@a6
    if-eqz v4, :cond_6

    #@a8
    .line 244
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@aa
    .line 245
    const/4 v5, 0x1

    #@ab
    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@ae
    move-result-object v5

    #@af
    .line 244
    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@b2
    goto/16 :goto_0

    #@b4
    .line 246
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@b6
    const-string/jumbo v5, "05"

    #@b9
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v4

    #@bd
    if-eqz v4, :cond_7

    #@bf
    .line 247
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@c1
    .line 248
    const/4 v5, 0x1

    #@c2
    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@c5
    move-result-object v5

    #@c6
    .line 247
    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@c9
    goto/16 :goto_0

    #@cb
    .line 249
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@cd
    const-string/jumbo v5, "052"

    #@d0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d3
    move-result v4

    #@d4
    if-eqz v4, :cond_8

    #@d6
    .line 250
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@d8
    .line 251
    const/4 v5, 0x1

    #@d9
    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@dc
    move-result-object v5

    #@dd
    .line 250
    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@e0
    goto/16 :goto_0

    #@e2
    .line 253
    :cond_8
    new-instance v4, Ljava/lang/RuntimeException;

    #@e4
    new-instance v5, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v6, "Unsupported service code="

    #@ec
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v5

    #@f0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    #@f2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v5

    #@f6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v5

    #@fa
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@fd
    throw v4

    #@fe
    .line 256
    :cond_9
    new-instance v4, Ljava/lang/RuntimeException;

    #@100
    const-string/jumbo v5, "No application mUiccApplicaiton is null"

    #@103
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@106
    throw v4

    #@107
    .line 259
    :cond_a
    new-instance v4, Ljava/lang/RuntimeException;

    #@109
    new-instance v5, Ljava/lang/StringBuilder;

    #@10b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10e
    const-string/jumbo v6, "Ivalid register/action="

    #@111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v5

    #@115
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mAction:Ljava/lang/String;

    #@117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v5

    #@11b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v5

    #@11f
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@122
    throw v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
.end method
