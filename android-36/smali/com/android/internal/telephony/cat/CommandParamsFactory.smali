.class public Lcom/android/internal/telephony/cat/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# static fields
.field public static final blacklist NPE_WHEN_CALLED_SEND_CMD_PARAMS_ERROR_MSG:Ljava/lang/String; = "mCaller[RilMessageDecoder] is Null when called SendCmdParams"

.field public static final blacklist NPE_WHEN_CALLED_SEND_CMD_PARAMS_UUID:Ljava/util/UUID;

.field private static blacklist sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;


# instance fields
.field private blacklist mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private blacklist mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

.field private blacklist mIconLoadState:I

.field private greylist-max-r mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

.field private blacklist mNoAlphaUsrCnf:Z

.field private blacklist mRequestedLanguage:Ljava/lang/String;

.field private blacklist mSavedLanguage:Ljava/lang/String;

.field private blacklist mStkSmsSendViaTelephony:Z

.field private blacklist mloadIcon:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 94
    const-string v0, "c2b85688-516e-11ee-be56-0242ac120002"

    .line 95
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->NPE_WHEN_CALLED_SEND_CMD_PARAMS_UUID:Ljava/util/UUID;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V
    .registers 5

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 55
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mNoAlphaUsrCnf:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mStkSmsSendViaTelephony:Z

    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 119
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 121
    :try_start_17
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110255

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mNoAlphaUsrCnf:Z
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_24} :catch_25

    goto :goto_27

    .line 124
    :catch_25
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mNoAlphaUsrCnf:Z

    .line 127
    :goto_27
    :try_start_27
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110256

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mStkSmsSendViaTelephony:Z
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_34} :catch_35

    goto :goto_37

    .line 130
    :catch_35
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mStkSmsSendViaTelephony:Z

    :goto_37
    return-void
.end method

.method public static declared-synchronized blacklist getInstance(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)Lcom/android/internal/telephony/cat/CommandParamsFactory;
    .registers 5

    const-class v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    monitor-enter v0

    .line 108
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_12

    if-eqz v1, :cond_9

    .line 109
    monitor-exit v0

    return-object v1

    :cond_9
    if-eqz p1, :cond_14

    .line 112
    :try_start_b
    new-instance v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    goto :goto_17

    .line 114
    :cond_14
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_17
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_12

    throw p0
.end method

.method private blacklist processBIPClient(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 1167
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 1168
    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    :cond_20
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1179
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4f

    .line 1181
    iget-boolean v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alpha TLV text="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v3

    goto :goto_50

    :cond_4f
    move v1, v2

    .line 1187
    :goto_50
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_61

    .line 1189
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object p2

    .line 1190
    iget-boolean v4, p2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    goto :goto_62

    :cond_61
    const/4 p2, 0x0

    .line 1193
    :goto_62
    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 1194
    new-instance v4, Lcom/android/internal/telephony/cat/BIPClientParams;

    invoke-direct {v4, p1, v0, v1}, Lcom/android/internal/telephony/cat/BIPClientParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Z)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz p2, :cond_7b

    .line 1197
    iput v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1198
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget p2, p2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return v3

    :cond_7b
    return v2
.end method

.method private blacklist processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/CommandDetails;"
        }
    .end annotation

    if-eqz p1, :cond_24

    .line 139
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 143
    :try_start_a
    invoke-static {p1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object p0
    :try_end_e
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCommandDetails: Failed to procees command details e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 380
    const-string v0, "process DisplayText"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 385
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 388
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 392
    :cond_18
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_76

    .line 396
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 398
    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 401
    :cond_27
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 403
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 404
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    .line 407
    :goto_39
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_47

    .line 409
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object p2

    iput-object p2, v0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 413
    :cond_47
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, p2, 0x1

    const/4 v4, 0x1

    if-eqz v3, :cond_50

    move v3, v4

    goto :goto_51

    :cond_50
    move v3, v2

    :goto_51
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_59

    move p2, v4

    goto :goto_5a

    :cond_59
    move p2, v2

    .line 414
    :goto_5a
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 416
    new-instance p2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {p2, p1, v0}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v1, :cond_75

    .line 419
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 420
    iput v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 421
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget p2, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 422
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 421
    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return v4

    :cond_75
    return v2

    .line 393
    :cond_76
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method private blacklist processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 745
    const-string v0, "process EventNotify"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 750
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 752
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 754
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_29

    .line 756
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object p2

    .line 757
    iget-boolean v1, p2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    goto :goto_2a

    :cond_29
    const/4 p2, 0x0

    :goto_2a
    const/4 v1, 0x0

    .line 760
    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 761
    new-instance v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz p2, :cond_47

    const/4 p1, 0x1

    .line 764
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 765
    iput p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget p2, p2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 767
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 766
    invoke-virtual {v0, p2, p0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return p1

    :cond_47
    return v1
.end method

.method private blacklist processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 491
    const-string v0, "process GetInkey"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    new-instance v0, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 496
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_80

    .line 499
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 504
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 506
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 507
    iget-boolean v2, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 511
    :goto_2a
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_38

    .line 513
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object p2

    iput-object p2, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    :cond_38
    const/4 p2, 0x1

    .line 516
    iput p2, v0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 517
    iput p2, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 519
    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-nez v3, :cond_46

    move v3, p2

    goto :goto_47

    :cond_46
    move v3, v4

    :goto_47
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_4f

    move v3, p2

    goto :goto_50

    :cond_4f
    move v3, v4

    .line 520
    :goto_50
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_58

    move v3, p2

    goto :goto_59

    :cond_58
    move v3, v4

    .line 521
    :goto_59
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_61

    move v2, p2

    goto :goto_62

    :cond_61
    move v2, v4

    .line 522
    :goto_62
    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 523
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 525
    new-instance v2, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v1, :cond_7f

    .line 528
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 529
    iput p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 530
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v0, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 531
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 530
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return p2

    :cond_7f
    return v4

    .line 501
    :cond_80
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method private blacklist processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 550
    const-string v0, "process GetInput"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    new-instance v0, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 555
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_10d

    .line 558
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 563
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_105

    .line 566
    :try_start_20
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 567
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 568
    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 569
    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I
    :try_end_36
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_36} :catch_fd

    .line 577
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 579
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    .line 582
    :cond_44
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 584
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 585
    iget-boolean v2, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    .line 588
    :goto_56
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_64

    .line 590
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object p2

    iput-object p2, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 593
    :cond_64
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v2, p2, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_6d

    move v2, v3

    goto :goto_6e

    :cond_6d
    move v2, v4

    :goto_6e
    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_76

    move v2, v3

    goto :goto_77

    :cond_76
    move v2, v4

    .line 594
    :goto_77
    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    and-int/lit8 v5, p2, 0x4

    if-nez v5, :cond_7f

    move v5, v3

    goto :goto_80

    :cond_7f
    move v5, v4

    .line 595
    :goto_80
    iput-boolean v5, v0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    and-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_88

    move v5, v3

    goto :goto_89

    :cond_88
    move v5, v4

    .line 596
    :goto_89
    iput-boolean v5, v0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_91

    move p2, v3

    goto :goto_92

    :cond_91
    move p2, v4

    .line 597
    :goto_92
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 601
    const-string p2, ", truncating to "

    if-eqz v2, :cond_bd

    iget v2, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    const/16 v6, 0x76

    if-le v2, v6, :cond_bd

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UCS2: received maxLen = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    iput v6, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    goto :goto_e3

    :cond_bd
    if-nez v5, :cond_e3

    .line 605
    iget v2, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    const/16 v5, 0xef

    if-le v2, v5, :cond_e3

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GSM 7Bit Default: received maxLen = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    iput v5, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 611
    :cond_e3
    :goto_e3
    new-instance p2, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {p2, p1, v0}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v1, :cond_fc

    .line 614
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 615
    iput v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 616
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget p2, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 617
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 616
    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return v3

    :cond_fc
    return v4

    .line 571
    :catch_fd
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    .line 574
    :cond_105
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    .line 560
    :cond_10d
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method private blacklist processLanguageNotification(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 1119
    const-string v0, "process Language Notification"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1123
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x0

    if-eqz v1, :cond_88

    const/4 v3, 0x1

    if-eq v1, v3, :cond_32

    .line 1157
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LN["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] Command Not Supported"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_bf

    .line 1136
    :cond_32
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_bf

    .line 1138
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_80

    .line 1143
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 1144
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result p2

    .line 1145
    invoke-static {v1, p2, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1147
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mSavedLanguage:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_65

    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mRequestedLanguage:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_67

    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mRequestedLanguage:Ljava/lang/String;

    .line 1148
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_67

    .line 1149
    :cond_65
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mSavedLanguage:Ljava/lang/String;

    .line 1151
    :cond_67
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mRequestedLanguage:Ljava/lang/String;

    .line 1152
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Specific language notification changes the language setting to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mRequestedLanguage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_bf

    .line 1140
    :cond_80
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    .line 1125
    :cond_88
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mSavedLanguage:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b9

    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mRequestedLanguage:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b9

    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mRequestedLanguage:Ljava/lang/String;

    .line 1126
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 1127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non-specific language notification changes the language setting back to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mSavedLanguage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mSavedLanguage:Ljava/lang/String;

    goto :goto_ba

    :cond_b9
    move-object p2, v2

    .line 1132
    :goto_ba
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mSavedLanguage:Ljava/lang/String;

    .line 1133
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mRequestedLanguage:Ljava/lang/String;

    move-object v2, p2

    .line 1161
    :cond_bf
    :goto_bf
    new-instance p2, Lcom/android/internal/telephony/cat/LanguageParams;

    invoke-direct {p2, p1, v2}, Lcom/android/internal/telephony/cat/LanguageParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 892
    const-string v0, "process LaunchBrowser"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 898
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 901
    :try_start_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 902
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 903
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    if-lez v1, :cond_2e

    .line 905
    invoke-static {v3, v4, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v1
    :try_end_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_25} :catch_26

    goto :goto_2f

    .line 911
    :catch_26
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    :cond_2e
    move-object v1, v2

    .line 916
    :goto_2f
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 917
    iget-boolean v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 920
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_4d

    .line 922
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v2

    .line 923
    iget-boolean p2, v2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 928
    :cond_4d
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v3, 0x2

    if-eq p2, v3, :cond_5b

    const/4 v3, 0x3

    if-eq p2, v3, :cond_58

    .line 931
    sget-object p2, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto :goto_5d

    .line 937
    :cond_58
    sget-object p2, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto :goto_5d

    .line 934
    :cond_5b
    sget-object p2, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 941
    :goto_5d
    new-instance v3, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    invoke-direct {v3, p1, v0, v1, p2}, Lcom/android/internal/telephony/cat/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cat/LaunchBrowserMode;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v2, :cond_75

    const/4 p1, 0x1

    .line 944
    iput p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 945
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v0, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 946
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 945
    invoke-virtual {p2, v0, p0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return p1

    :cond_75
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 965
    const-string v0, "process PlayTone"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 968
    new-instance v3, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 972
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 975
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    if-lez v2, :cond_31

    .line 977
    :try_start_19
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 978
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v0

    .line 979
    aget-byte v0, v2, v0

    .line 980
    invoke-static {v0}, Lcom/android/internal/telephony/cat/Tone;->fromInt(I)Lcom/android/internal/telephony/cat/Tone;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_27} :catch_29

    move-object v4, v0

    goto :goto_32

    .line 982
    :catch_29
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    :cond_31
    move-object v4, v1

    .line 988
    :goto_32
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 990
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v0, :cond_48

    .line 994
    const-string v0, ""

    iput-object v0, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 997
    :cond_48
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 999
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v0

    move-object v5, v0

    goto :goto_57

    :cond_56
    move-object v5, v1

    .line 1002
    :goto_57
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_67

    .line 1004
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 1005
    iget-boolean p2, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean p2, v3, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    :cond_67
    move-object p2, v1

    .line 1008
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v7, 0x1

    and-int/2addr v0, v7

    const/4 v8, 0x0

    if-eqz v0, :cond_71

    move v6, v7

    goto :goto_72

    :cond_71
    move v6, v8

    .line 1010
    :goto_72
    iput-boolean v8, v3, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 1011
    new-instance v1, Lcom/android/internal/telephony/cat/PlayToneParams;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/PlayToneParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/Tone;Lcom/android/internal/telephony/cat/Duration;Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz p2, :cond_8c

    .line 1014
    iput v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1015
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget p2, p2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 1016
    invoke-virtual {p0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1015
    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return v7

    :cond_8c
    return v8
.end method

.method private blacklist processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 1086
    const-string p2, "process ProvideLocalInfo"

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v0, 0x3

    if-eq p2, v0, :cond_44

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1a

    .line 1093
    const-string p2, "PLI [LANGUAGE_SETTING]"

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1094
    new-instance p2, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    goto :goto_50

    .line 1097
    :cond_1a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PLI["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] Command Not Supported"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1098
    new-instance p2, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1099
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    .line 1089
    :cond_44
    const-string p2, "PLI [DTTZ_SETTING]"

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1090
    new-instance p2, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    :goto_50
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 636
    const-string v0, "process SelectItem"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    new-instance v0, Lcom/android/internal/telephony/cat/Menu;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Menu;-><init>()V

    .line 641
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 643
    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 644
    invoke-static {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    .line 646
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 649
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v3, v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    goto :goto_29

    .line 650
    :cond_25
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v2, v3, :cond_ea

    .line 660
    :goto_29
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 662
    iget-object v3, v0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 669
    :cond_3b
    iget-object v1, v0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_e2

    .line 673
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_53

    .line 677
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    .line 680
    :cond_53
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_67

    .line 682
    iput v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 683
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 684
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    goto :goto_68

    :cond_67
    move-object v1, v3

    .line 687
    :goto_68
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    const/4 v4, 0x2

    if-eqz p2, :cond_7b

    .line 689
    iput v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 690
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;

    move-result-object v3

    .line 691
    iget-boolean p2, v3, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    .line 694
    :cond_7b
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_8e

    and-int/lit8 v5, p2, 0x2

    if-nez v5, :cond_8a

    .line 697
    sget-object v5, Lcom/android/internal/telephony/cat/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v5, v0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    goto :goto_8e

    .line 699
    :cond_8a
    sget-object v5, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v5, v0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    :cond_8e
    :goto_8e
    and-int/lit8 v5, p2, 0x4

    const/4 v6, 0x0

    if-eqz v5, :cond_95

    move v5, v2

    goto :goto_96

    :cond_95
    move v5, v6

    .line 702
    :goto_96
    iput-boolean v5, v0, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_9e

    move p2, v2

    goto :goto_9f

    :cond_9e
    move p2, v6

    .line 703
    :goto_9f
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 705
    new-instance p2, Lcom/android/internal/telephony/cat/SelectItemParams;

    if-eqz v1, :cond_a7

    move v5, v2

    goto :goto_a8

    :cond_a7
    move v5, v6

    :goto_a8
    invoke-direct {p2, p1, v0, v5}, Lcom/android/internal/telephony/cat/SelectItemParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 708
    iget p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    if-eqz p1, :cond_e1

    if-eq p1, v2, :cond_d3

    if-eq p1, v4, :cond_b6

    goto :goto_e0

    .line 717
    :cond_b6
    iget-object p1, v3, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    if-eqz v1, :cond_c7

    .line 720
    array-length p2, p1

    add-int/2addr p2, v2

    new-array p2, p2, [I

    .line 721
    iget v0, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    aput v0, p2, v6

    .line 722
    array-length v0, p1

    invoke-static {p1, v6, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    .line 725
    :cond_c7
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 726
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 727
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 726
    invoke-virtual {p2, p1, p0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    goto :goto_e0

    .line 712
    :cond_d3
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 713
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget p2, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 714
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 713
    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    :goto_e0
    return v2

    :cond_e1
    return v6

    .line 670
    :cond_e2
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    .line 656
    :cond_ea
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method private blacklist processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .line 842
    const-string v0, "process SetUpEventList"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4b

    .line 846
    :try_start_e
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 847
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 848
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result p2

    .line 849
    new-array v3, p2, [I

    move v4, v0

    :goto_1d
    if-lez p2, :cond_3e

    .line 853
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, -0x1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_39

    const/4 v6, 0x5

    if-eq v5, v6, :cond_39

    const/4 v6, 0x7

    if-eq v5, v6, :cond_39

    const/16 v6, 0x8

    if-eq v5, v6, :cond_39

    const/16 v6, 0xf

    if-eq v5, v6, :cond_39

    goto :goto_1d

    .line 863
    :cond_39
    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 871
    :cond_3e
    new-instance p2, Lcom/android/internal/telephony/cat/SetEventListParams;

    invoke-direct {p2, p1, v3}, Lcom/android/internal/telephony/cat/SetEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_45
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_45} :catch_46

    goto :goto_4b

    .line 873
    :catch_46
    const-string p1, " IndexOutofBoundException in processSetUpEventList"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    return v0
.end method

.method private blacklist processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 441
    const-string v0, "process SetUpIdleModeText"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 446
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 449
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 452
    :cond_18
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_29

    .line 454
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object p2

    .line 455
    iget-boolean v1, p2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    goto :goto_2a

    :cond_29
    const/4 p2, 0x0

    .line 463
    :goto_2a
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_3d

    if-eqz p2, :cond_3d

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v1, :cond_35

    goto :goto_3d

    .line 464
    :cond_35
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    .line 466
    :cond_3d
    :goto_3d
    new-instance v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz p2, :cond_57

    const/4 p1, 0x1

    .line 469
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 470
    iput p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget p2, p2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 472
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 471
    invoke-virtual {v0, p2, p0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return p1

    :cond_57
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 1034
    const-string v0, "process SetupCall"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1039
    new-instance v1, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1041
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1046
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v4

    .line 1047
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1049
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_33

    .line 1051
    invoke-static {v5}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v5

    .line 1052
    iget-boolean v7, v5, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v7, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    goto :goto_34

    :cond_33
    move-object v5, v6

    .line 1056
    :goto_34
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 1058
    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1061
    :cond_42
    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_50

    .line 1063
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v6

    .line 1064
    iget-boolean p2, v6, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean p2, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1067
    :cond_50
    new-instance p2, Lcom/android/internal/telephony/cat/CallSetupParams;

    invoke-direct {p2, p1, v1, v2}, Lcom/android/internal/telephony/cat/CallSetupParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-nez v5, :cond_5e

    if-eqz v6, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 p0, 0x0

    return p0

    :cond_5e
    :goto_5e
    const/4 p1, 0x2

    .line 1070
    iput p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    const/4 p1, -0x1

    if-eqz v5, :cond_67

    .line 1073
    iget p2, v5, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    goto :goto_68

    :cond_67
    move p2, p1

    :goto_68
    if-eqz v6, :cond_6c

    .line 1074
    iget p1, v6, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 1075
    :cond_6c
    filled-new-array {p2, p1}, [I

    move-result-object p1

    .line 1077
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    const/4 v0, 0x1

    .line 1078
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1077
    invoke-virtual {p2, p1, p0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    return v0
.end method

.method private greylist-max-r searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 356
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result p0

    .line 357
    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 358
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 359
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v0

    if-ne v0, p0, :cond_4

    return-object p1

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist-max-r searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 337
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p0

    return-object p0
.end method

.method private blacklist sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-eqz v0, :cond_a

    .line 317
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V

    return-void

    .line 319
    :cond_a
    const-string p1, "mCaller[RilMessageDecoder] is NULL"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    sget-object p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->NPE_WHEN_CALLED_SEND_CMD_PARAMS_UUID:Ljava/util/UUID;

    const-string p1, "mCaller[RilMessageDecoder] is Null when called SendCmdParams"

    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_12

    .line 285
    const-string p1, "Optional Icon data is NULL"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    iput-boolean v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    .line 287
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 294
    sget-object p0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    return-object p0

    .line 296
    :cond_12
    iget v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    if-eq v2, v1, :cond_38

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    goto :goto_3f

    .line 301
    :cond_1a
    check-cast p1, [Landroid/graphics/Bitmap;

    .line 303
    array-length v2, p1

    :goto_1d
    if-ge v0, v2, :cond_3f

    aget-object v3, p1, v0

    .line 304
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    if-nez v3, :cond_35

    .line 305
    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    if-eqz v3, :cond_35

    .line 306
    const-string v3, "Optional Icon data is NULL while loading multi icons"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    iput-boolean v1, v3, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 298
    :cond_38
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 312
    :cond_3f
    :goto_3f
    sget-object p0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    return-object p0
.end method


# virtual methods
.method public greylist-max-r dispose()V
    .registers 2

    .line 1206
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/IconLoader;->dispose()V

    const/4 v0, 0x0

    .line 1207
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 1208
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1209
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 1210
    sput-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 271
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_13

    .line 273
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    if-eqz v0, :cond_13

    .line 274
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    :cond_13
    :goto_13
    return-void
.end method

.method blacklist make(Lcom/android/internal/telephony/cat/BerTlv;)V
    .registers 5

    if-nez p1, :cond_4

    goto/16 :goto_c4

    :cond_4
    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 161
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getTag()I

    move-result v0

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_18

    .line 162
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    return-void

    .line 166
    :cond_18
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v1

    if-nez v1, :cond_28

    .line 170
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    return-void

    .line 176
    :cond_28
    iget v2, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 177
    invoke-static {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    if-nez v2, :cond_3d

    .line 181
    new-instance p1, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 182
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    return-void

    .line 187
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->isLengthValid()Z

    move-result p1

    if-nez p1, :cond_50

    .line 188
    new-instance p1, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 189
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    return-void

    .line 194
    :cond_50
    :try_start_50
    sget-object p1, Lcom/android/internal/telephony/cat/CommandParamsFactory$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    packed-switch p1, :pswitch_data_e8

    .line 254
    new-instance p1, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 255
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    return-void

    :catch_68
    move-exception p1

    goto :goto_c5

    .line 250
    :pswitch_6a
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processBIPClient(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 244
    :pswitch_6f
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processLanguageNotification(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 241
    :pswitch_74
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 238
    :pswitch_79
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 235
    :pswitch_7e
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 232
    :pswitch_83
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 229
    :pswitch_88
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 225
    :pswitch_8d
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 214
    :pswitch_92
    iget-boolean p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mStkSmsSendViaTelephony:Z

    if-eqz p1, :cond_9b

    .line 215
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSMSEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 217
    :cond_9b
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 211
    :pswitch_a0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 208
    :pswitch_a5
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 205
    :pswitch_aa
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 202
    :pswitch_af
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 199
    :pswitch_b4
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_bd

    .line 196
    :pswitch_b9
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1
    :try_end_bd
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_50 .. :try_end_bd} :catch_68

    :goto_bd
    if-nez p1, :cond_c4

    .line 265
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    :cond_c4
    :goto_c4
    return-void

    .line 259
    :goto_c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "make: caught ResultException e="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 261
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    return-void

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_b4
        :pswitch_af
        :pswitch_aa
        :pswitch_a5
        :pswitch_a0
        :pswitch_92
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_88
        :pswitch_88
        :pswitch_83
        :pswitch_7e
        :pswitch_79
        :pswitch_74
        :pswitch_6f
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
    .end packed-switch
.end method

.method public blacklist processSMSEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 789
    const-string v0, "processSMSEventNotify"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 791
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 794
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 801
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 803
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 806
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 807
    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    :cond_28
    const/4 v1, 0x0

    .line 810
    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 811
    new-instance v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 812
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    .line 815
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTpduAsSmsMessage(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Landroid/telephony/SmsMessage;

    move-result-object p2

    if-eqz p2, :cond_5a

    .line 817
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 819
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 820
    new-instance v3, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 822
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getRecipientAddress()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 823
    new-instance p2, Lcom/android/internal/telephony/cat/SendSMSParams;

    invoke-direct {p2, p1, v0, v3, v2}, Lcom/android/internal/telephony/cat/SendSMSParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/DisplayTextParams;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    return v1

    :cond_5a
    const/4 p0, 0x1

    return p0
.end method
