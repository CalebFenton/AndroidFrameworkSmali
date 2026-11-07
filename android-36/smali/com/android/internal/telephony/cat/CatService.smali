.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# static fields
.field protected static final blacklist MSG_ID_ALPHA_NOTIFY:I = 0x9

.field protected static final blacklist MSG_ID_CALL_SETUP:I = 0x4

.field protected static final blacklist MSG_ID_EVENT_NOTIFY:I = 0x3

.field protected static final blacklist MSG_ID_ICC_CHANGED:I = 0x8

.field protected static final blacklist MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field protected static final blacklist MSG_ID_SESSION_END:I = 0x1

.field private static blacklist mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private static blacklist mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private static blacklist sCatServiceThread:Landroid/os/HandlerThread;

.field private static final greylist sFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private static greylist-max-r sInstance:[Lcom/android/internal/telephony/cat/CatService;

.field private static final greylist sInstanceLock:Ljava/lang/Object;


# instance fields
.field private blacklist mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private greylist mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private greylist mContext:Landroid/content/Context;

.field private greylist-max-r mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private greylist mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private greylist mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private greylist-max-r mSlotId:I

.field public final blacklist mSmsBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private greylist mStkAppInstalled:Z

.field private greylist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msendTerminalResponse(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccProfile;ILandroid/os/Looper;)V
    .registers 10

    .line 172
    invoke-direct {p0, p8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p8, 0x0

    .line 116
    iput-object p8, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 118
    iput-object p8, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 121
    iput-object p8, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 128
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 660
    new-instance v0, Lcom/android/internal/telephony/cat/CatService$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatService$1;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSmsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_d2

    if-eqz p2, :cond_d2

    if-eqz p3, :cond_d2

    if-eqz p4, :cond_d2

    if-eqz p5, :cond_d2

    if-eqz p6, :cond_d2

    .line 178
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 179
    iput-object p4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 180
    iput p7, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    .line 183
    invoke-static {p0, p5, p4, p7}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;I)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-nez p1, :cond_38

    .line 185
    const-string p1, "Null RilMessageDecoder instance"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 188
    :cond_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/StateMachine;->start()V

    .line 191
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p4, 0x1

    invoke-interface {p1, p0, p4, p8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 192
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p4, 0x2

    invoke-interface {p1, p0, p4, p8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 193
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p4, 0x3

    invoke-interface {p1, p0, p4, p8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 194
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p4, 0x4

    invoke-interface {p1, p0, p4, p8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 197
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p4, 0x1e

    invoke-interface {p1, p0, p4, p8}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 198
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p4, 0x9

    invoke-interface {p1, p0, p4, p8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 200
    sput-object p3, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 201
    sput-object p2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p1, 0x14

    .line 204
    invoke-virtual {p3, p0, p1, p8}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerForRecordsLoaded slotid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " instance:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 p2, 0x8

    .line 209
    invoke-virtual {p1, p0, p2, p8}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 212
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isStkAppInstalled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Running CAT service on Slotid: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". STK app installed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "com.android.internal.telephony.cat.SMS_DELIVERY_ACTION"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.android.internal.telephony.cat.SMS_SENT_ACTION"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 175
    :cond_d2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Service: Input parameters must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist broadcastAlphaMessage(Ljava/lang/String;)V
    .registers 4

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcasting CAT Alpha message from card: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.stk.alpha_notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1122
    const-string v1, "alpha_string"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    const-string p1, "SLOT_ID"

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1124
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface;->getDefaultSTKApplication()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1126
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .registers 7

    .line 1095
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.stk.icc_status_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1096
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-eqz p2, :cond_2d

    .line 1100
    const-string v2, "refresh_result"

    iget v3, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending IccResult with Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1106
    :cond_2d
    const-string p2, "card_status"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1107
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface;->getDefaultSTKApplication()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1108
    const-string p2, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1109
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Card Status: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cardPresent: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "SLOT_ID: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1112
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .registers 5

    .line 719
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.stk.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    const-string v1, "STK CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 721
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface;->getDefaultSTKApplication()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending CmdMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on slotid:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist changeLanguage(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1375
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    .line 1376
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    .line 1377
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    .line 1378
    :goto_14
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge p1, v2, :cond_24

    add-int/lit8 v2, p1, 0x1

    .line 1379
    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    aput-object p1, v1, v2

    move p1, v2

    goto :goto_14

    .line 1381
    :cond_24
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-class p1, Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-instance p1, Landroid/os/LocaleList;

    invoke-direct {p1, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->setDeviceLocales(Landroid/os/LocaleList;)V

    .line 1382
    const-string p0, "com.android.providers.settings"

    invoke-static {p0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .registers 7

    .line 823
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 825
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_46

    const/16 v1, 0x8

    if-eq v0, v1, :cond_30

    const/16 v1, 0x9

    if-eq v0, v1, :cond_30

    .line 844
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "encodeOptionalTags() Unsupported Cmd details="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 832
    :cond_30
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result p1

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result p2

    if-ne p1, p2, :cond_5a

    if-eqz p3, :cond_5a

    iget-object p1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz p1, :cond_5a

    .line 834
    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    return-void

    .line 838
    :cond_46
    iget p1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 p3, 0x4

    if-ne p1, p3, :cond_5a

    .line 839
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result p1

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result p2

    if-ne p1, p2, :cond_5a

    .line 840
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    :cond_5a
    return-void

    .line 848
    :cond_5b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "encodeOptionalTags() bad Cmd details="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist eventDownload(III[BZ)V
    .registers 9

    .line 919
    new-instance p5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0xd6

    .line 923
    invoke-virtual {p5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    .line 926
    invoke-virtual {p5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 929
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    .line 930
    invoke-virtual {p5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x1

    .line 931
    invoke-virtual {p5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 932
    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 935
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 936
    invoke-virtual {p5, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x2

    .line 937
    invoke-virtual {p5, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 938
    invoke-virtual {p5, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 939
    invoke-virtual {p5, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p2, 0x5

    if-eq p1, p2, :cond_52

    const/4 p2, 0x7

    if-eq p1, p2, :cond_3c

    goto :goto_59

    .line 958
    :cond_3c
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const-string p2, " Sending Language Selection event download to ICC"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    sget-object p1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    .line 960
    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 962
    invoke-virtual {p5, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_59

    .line 955
    :cond_52
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const-string p2, " Sending Idle Screen Available event download to ICC"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_59
    if-eqz p4, :cond_66

    .line 972
    array-length p1, p4

    :goto_5c
    if-ge v0, p1, :cond_66

    aget-byte p2, p4, v0

    .line 973
    invoke-virtual {p5, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 977
    :cond_66
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 980
    array-length p2, p1

    sub-int/2addr p2, v2

    int-to-byte p2, p2

    .line 981
    aput-byte p2, p1, v1

    .line 983
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 985
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ENVELOPE COMMAND: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 987
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .registers 3

    .line 853
    sget-object p0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result p0

    .line 855
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p0, 0x2

    .line 856
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 857
    iget-object p0, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object p0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 858
    iget-object p0, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget p0, p0, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .registers 2

    .line 998
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 999
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    .line 1000
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result v1

    .line 999
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    const/4 v1, 0x0

    .line 1002
    invoke-static {v1, v1, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;
    .registers 2

    const/4 v0, 0x0

    .line 1011
    invoke-static {v0, v0, v0, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;
    .registers 15

    .line 233
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sCatServiceThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_10

    .line 234
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CatServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sCatServiceThread:Landroid/os/HandlerThread;

    .line 235
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_28

    .line 245
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 247
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    .line 248
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    move-object v5, v3

    move-object v3, v4

    goto :goto_2b

    :cond_25
    move-object v3, v1

    :goto_26
    move-object v5, v3

    goto :goto_2b

    :cond_28
    move-object v2, v1

    move-object v3, v2

    goto :goto_26

    .line 252
    :goto_2b
    sget-object v9, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v9

    .line 253
    :try_start_2e
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-nez v4, :cond_4a

    .line 254
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v4

    .line 255
    new-array v7, v4, [Lcom/android/internal/telephony/cat/CatService;

    sput-object v7, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    :goto_3e
    if-ge v0, v4, :cond_4a

    .line 257
    sget-object v7, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aput-object v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :catchall_47
    move-exception v0

    goto/16 :goto_b3

    .line 260
    :cond_4a
    sget-object v10, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v0, v10, p3

    if-nez v0, :cond_71

    if-eqz p0, :cond_6f

    if-eqz v2, :cond_6f

    if-eqz v3, :cond_6f

    if-eqz p1, :cond_6f

    if-eqz v5, :cond_6f

    if-nez p2, :cond_5d

    goto :goto_6f

    .line 269
    :cond_5d
    new-instance v0, Lcom/android/internal/telephony/cat/CatService;

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sCatServiceThread:Landroid/os/HandlerThread;

    .line 270
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccProfile;ILandroid/os/Looper;)V

    aput-object v0, v10, p3

    goto :goto_ad

    .line 263
    :cond_6f
    :goto_6f
    monitor-exit v9

    return-object v1

    :cond_71
    if-eqz v3, :cond_ad

    .line 272
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v4, v3, :cond_ad

    if-eqz v4, :cond_7c

    .line 274
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 277
    :cond_7c
    sput-object v3, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 278
    sput-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 280
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v0, v0, p3

    const/16 v2, 0x14

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 282
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v0, v0, p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForRecordsLoaded slotid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    :cond_ad
    :goto_ad
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v0, v0, p3

    monitor-exit v9

    return-object v0

    .line 286
    :goto_b3
    monitor-exit v9
    :try_end_b4
    .catchall {:try_start_2e .. :try_end_b4} :catchall_47

    throw v0
.end method

.method private blacklist getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .registers 4

    .line 863
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 867
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 868
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 869
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 870
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_26
    return-void
.end method

.method private blacklist handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .registers 10

    .line 1184
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_21

    .line 1189
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v2

    .line 1190
    iget v0, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 1192
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_ee

    :goto_21
    return-void

    .line 1290
    :pswitch_22
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v0, v1, :cond_2e

    .line 1291
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 1292
    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-void

    :cond_2e
    :goto_2e
    :pswitch_2e
    move-object v1, p0

    :goto_2f
    move-object v6, v7

    goto/16 :goto_d2

    .line 1279
    :pswitch_32
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v0, v1, :cond_3a

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v0, v1, :cond_2e

    .line 1280
    :cond_3a
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 1281
    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-void

    :pswitch_42
    move v1, v4

    goto :goto_45

    :pswitch_44
    move v1, v3

    .line 1208
    :goto_45
    sget-object v5, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    if-eq v0, v3, :cond_de

    const/4 v5, 0x2

    if-eq v0, v5, :cond_c0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_a4

    const/16 v5, 0x11

    if-eq v0, v5, :cond_9a

    const/16 v5, 0x13

    if-eq v0, v5, :cond_9a

    packed-switch v0, :pswitch_data_114

    :goto_60
    goto :goto_2e

    .line 1218
    :pswitch_61
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v0

    .line 1219
    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v3, :cond_7b

    if-nez v1, :cond_2e

    .line 1223
    new-instance v1, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-direct {v1, v3, v4, v0}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    :goto_78
    move-object v6, v1

    move-object v1, p0

    goto :goto_d2

    .line 1227
    :cond_7b
    new-instance v1, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    goto :goto_78

    .line 1214
    :pswitch_83
    new-instance v1, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    goto :goto_78

    .line 1242
    :pswitch_8b
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v1, :cond_95

    .line 1244
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(I)V

    goto :goto_60

    .line 1246
    :cond_95
    iput-boolean v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 1247
    iput v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    goto :goto_60

    .line 1253
    :cond_9a
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean p1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    invoke-interface {v0, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 1257
    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-void

    .line 1260
    :cond_a4
    iget v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    const/4 v0, 0x5

    if-ne v0, v2, :cond_b4

    .line 1261
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x81

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    return-void

    :cond_b4
    move-object v1, p0

    .line 1264
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    const/4 v6, 0x0

    const/16 v3, 0x82

    const/16 v4, 0x81

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    return-void

    :cond_c0
    move-object v1, p0

    .line 1232
    iget-object p0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p0, v0, :cond_cc

    .line 1235
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(I)V

    goto/16 :goto_2f

    .line 1237
    :cond_cc
    iput-boolean v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 1238
    iput v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    goto/16 :goto_2f

    .line 1301
    :goto_d2
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-boolean v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    iget v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1303
    iput-object v7, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-void

    :cond_de
    move-object v1, p0

    .line 1210
    iget-object p0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p0, v0, :cond_e6

    goto :goto_e7

    :cond_e6
    move v3, v4

    .line 1211
    :goto_e7
    iget p0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    return-void

    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_44
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_32
        :pswitch_32
        :pswitch_22
        :pswitch_2e
    .end packed-switch

    :pswitch_data_114
    .packed-switch 0x6
        :pswitch_8b
        :pswitch_83
        :pswitch_61
        :pswitch_61
    .end packed-switch
.end method

.method private blacklist handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .registers 11

    .line 427
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2b

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CatService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: ProactiveCommand  cmdParams="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->addLocalLog(Ljava/lang/String;)V

    .line 437
    :cond_2b
    new-instance v6, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v6, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 438
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const v2, 0x104099d

    const-string v3, "Default Message"

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_294

    .line 622
    const-string v1, "Unsupported command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 575
    :pswitch_4b
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/BIPClientParams;

    .line 583
    :try_start_4e
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110255

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2
    :try_end_5b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4e .. :try_end_5b} :catch_5c

    goto :goto_5d

    :catch_5c
    const/4 v2, 0x0

    .line 588
    :goto_5d
    iget-object v3, v1, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_a3

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/BIPClientParams;->mHasAlphaId:Z

    if-nez v1, :cond_69

    if-eqz v2, :cond_a3

    .line 589
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with null alpha id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_94

    .line 592
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_a2

    .line 593
    :cond_94
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v1, v2, :cond_a2

    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    :cond_a2
    :goto_a2
    return-void

    .line 599
    :cond_a3
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    if-nez v1, :cond_ba

    .line 600
    const-string v1, "No STK application found."

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_ba

    .line 602
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    :cond_ba
    if-eqz p2, :cond_28e

    .line 615
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v0, v1, :cond_d4

    .line 616
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v0, v1, :cond_d4

    .line 617
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v0, v1, :cond_28e

    .line 618
    :cond_d4
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_28e

    .line 560
    :pswitch_e1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/LanguageParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LanguageParams;->mLanguage:Ljava/lang/String;

    .line 561
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-eqz v1, :cond_f6

    .line 562
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f6

    .line 564
    :try_start_f0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->changeLanguage(Ljava/lang/String;)V
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_f0 .. :try_end_f3} :catch_f4

    goto :goto_f6

    .line 566
    :catch_f4
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    .line 569
    :cond_f6
    :goto_f6
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 553
    :pswitch_100
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_28e

    .line 554
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28e

    .line 555
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x10400d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 556
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_28e

    .line 544
    :pswitch_122
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v4, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v4, :cond_28e

    .line 545
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28e

    .line 546
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 547
    iget-object v1, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_28e

    .line 502
    :pswitch_141
    instance-of v1, p1, Lcom/android/internal/telephony/cat/SendSMSParams;

    if-eqz v1, :cond_1a7

    .line 504
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/SendSMSParams;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/SendSMSParams;->mTextSmsMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v2, :cond_14f

    .line 505
    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_150

    :cond_14f
    move-object v2, v5

    .line 507
    :goto_150
    iget-object v1, v1, Lcom/android/internal/telephony/cat/SendSMSParams;->mDestAddress:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v1, :cond_156

    .line 508
    iget-object v5, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    :cond_156
    if-eqz v2, :cond_195

    if-eqz v5, :cond_195

    .line 511
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 512
    invoke-static {v1, v3}, Lcom/android/internal/telephony/ProxyController;->getInstance(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    .line 513
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v7, "telephony_subscription_service"

    .line 514
    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 516
    iget v7, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    .line 517
    invoke-virtual {v3, v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-eqz v3, :cond_183

    .line 520
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    move-object v0, v5

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendStkSms(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/cat/CommandParams;Lcom/android/internal/telephony/ProxyController;)V

    goto/16 :goto_28e

    .line 523
    :cond_183
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 525
    const-string v1, "Subscription info is null"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_28e

    .line 528
    :cond_195
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 530
    const-string v1, "Sms text or Destination Address is null"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_28e

    .line 533
    :cond_1a7
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v4, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v4, :cond_28e

    .line 534
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28e

    .line 536
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 537
    iget-object v1, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_28e

    .line 493
    :pswitch_1c6
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28e

    .line 495
    iget-object v1, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v5, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_28e

    .line 481
    :pswitch_1d9
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_28e

    .line 482
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28e

    .line 483
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x104058f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 484
    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_28e

    .line 466
    :pswitch_1fb
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_227

    const/4 v3, 0x4

    if-eq v2, v3, :cond_20f

    .line 476
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 472
    :cond_20f
    new-instance v5, Lcom/android/internal/telephony/cat/LanguageResponseData;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/LanguageResponseData;-><init>(Ljava/lang/String;)V

    .line 473
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 468
    :cond_227
    new-instance v0, Lcom/android/internal/telephony/cat/DTTZResponseData;

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;-><init>(Ljava/util/Calendar;)V

    .line 469
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 457
    :pswitch_238
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cat/CatService;->isSupportedSetupEventCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v1

    if-eqz v1, :cond_24a

    .line 458
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_28e

    .line 460
    :cond_24a
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_28e

    .line 452
    :pswitch_256
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    if-eqz v0, :cond_25e

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_25c
    move-object v2, v0

    goto :goto_261

    .line 453
    :cond_25e
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_25c

    .line 454
    :goto_261
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_28e

    .line 440
    :pswitch_26b
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v1

    if-eqz v1, :cond_278

    .line 441
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_27a

    .line 443
    :cond_278
    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 445
    :goto_27a
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    if-eqz v1, :cond_282

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_280
    move-object v2, v1

    goto :goto_285

    .line 446
    :cond_282
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_280

    .line 447
    :goto_285
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 625
    :cond_28e
    :goto_28e
    :pswitch_28e
    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 626
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cat/CatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    return-void

    :pswitch_data_294
    .packed-switch 0x1
        :pswitch_26b
        :pswitch_28e
        :pswitch_256
        :pswitch_238
        :pswitch_1fb
        :pswitch_1d9
        :pswitch_28e
        :pswitch_28e
        :pswitch_28e
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_141
        :pswitch_122
        :pswitch_122
        :pswitch_122
        :pswitch_28e
        :pswitch_100
        :pswitch_e1
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
    .end packed-switch
.end method

.method private blacklist handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .registers 16

    if-nez p1, :cond_3

    goto :goto_5c

    .line 345
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2d

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x5

    if-eq v0, v1, :cond_13

    goto :goto_5c

    .line 380
    :cond_13
    iget-object p1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz p1, :cond_5c

    .line 382
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    return-void

    .line 347
    :cond_1d
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v1, :cond_5c

    .line 348
    iget-object p1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz p1, :cond_5c

    .line 350
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    return-void

    .line 356
    :cond_2d
    :try_start_2d
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_2d .. :try_end_31} :catch_47

    if-eqz v0, :cond_5c

    .line 368
    iget-object v4, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v4, p1, :cond_3d

    .line 369
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    return-void

    .line 374
    :cond_3d
    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    :catch_47
    move-object v2, p0

    .line 359
    const-string p0, "Fail to parse proactive command"

    invoke-static {v2, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    iget-object p0, v2, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz p0, :cond_5c

    .line 362
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    move-object v2, p0

    .line 386
    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    return-void
.end method

.method private blacklist handleSessionEnd()V
    .registers 4

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SESSION END on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 740
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 742
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface;->getDefaultSTKApplication()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 744
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private greylist-max-r isStkAppInstalled()Z
    .registers 3

    .line 1308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.stk.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1309
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    .line 1311
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_18

    move p0, v0

    goto :goto_1c

    .line 1312
    :cond_18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_1c
    if-lez p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    return v0
.end method

.method private blacklist isSupportedSetupEventCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .registers 9

    .line 403
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v0, :cond_2f

    aget v4, p1, v3

    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2c

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2c

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2c

    move v1, v2

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_2f
    return v1
.end method

.method private blacklist removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .registers 5

    const/4 v0, 0x1

    .line 1157
    :try_start_1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_13

    iget-object p1, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_14

    if-nez p0, :cond_13

    return v0

    :cond_13
    return v2

    .line 1161
    :catch_14
    const-string p1, "Unable to get Menu\'s items size"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private blacklist sendMenuSelection(IZ)V
    .registers 8

    .line 876
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0xd3

    .line 880
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x0

    .line 883
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 886
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 887
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x2

    .line 888
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x1

    .line 889
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x81

    .line 890
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 893
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    .line 894
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 895
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 896
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p2, :cond_45

    .line 900
    sget-object p1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result p1

    .line 901
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 902
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 905
    :cond_45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 908
    array-length p2, p1

    sub-int/2addr p2, v2

    int-to-byte p2, p2

    .line 909
    aput-byte p2, p1, v3

    .line 911
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 913
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private greylist-max-r sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 759
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 762
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 763
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    goto :goto_13

    :cond_12
    move-object v1, v2

    .line 767
    :goto_13
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    .line 768
    iget-boolean v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v4, :cond_1f

    or-int/lit16 v3, v3, 0x80

    .line 771
    :cond_1f
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x3

    .line 772
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 773
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 774
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 775
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 784
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    .line 785
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x2

    .line 786
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x82

    .line 787
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x81

    .line 788
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 791
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 792
    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v5, :cond_58

    or-int/lit16 v4, v4, 0x80

    .line 795
    :cond_58
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p3, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v3, 0x1

    .line 797
    :goto_5f
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 798
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p3, :cond_6e

    .line 802
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_6e
    if-eqz p5, :cond_74

    .line 807
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_77

    .line 809
    :cond_74
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    .line 812
    :goto_77
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 813
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 818
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .registers 4

    .line 1144
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    if-eq v0, v1, :cond_3c

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 1145
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    if-ne v0, v1, :cond_19

    goto :goto_3c

    .line 1148
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_3a

    .line 1149
    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/cat/CommandDetails;->compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z

    move-result p1

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isResponse for last valid cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return p1

    :cond_3a
    const/4 p0, 0x0

    return p0

    .line 1146
    :cond_3c
    :goto_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmdType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget p1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public greylist dispose()V
    .registers 6

    .line 292
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_3
    const-string v1, "Disposing CatService object"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_15

    .line 298
    :try_start_d
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSmsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_14} :catch_17
    .catchall {:try_start_d .. :try_end_14} :catchall_15

    goto :goto_2c

    :catchall_15
    move-exception p0

    goto :goto_8b

    :catch_17
    move-exception v1

    .line 300
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSmsBroadcastReceiver: was not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    :goto_2c
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    .line 307
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 308
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 309
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 310
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    .line 311
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V

    .line 313
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 314
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_59

    .line 315
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 316
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 318
    :cond_59
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-eqz v1, :cond_62

    .line 319
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->dispose()V

    .line 320
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 322
    :cond_62
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 323
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_89

    .line 324
    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    if-ltz v3, :cond_73

    array-length v4, v1

    if-ge v3, v4, :cond_73

    .line 325
    aput-object v2, v1, v3

    goto :goto_89

    .line 327
    :cond_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: invaild slot id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    :cond_89
    :goto_89
    monitor-exit v0

    return-void

    :goto_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_18 .. :try_end_8c} :catchall_15

    throw p0
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 335
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_10c

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_dc

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_10e

    packed-switch v0, :pswitch_data_11e

    .line 1083
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized CAT command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 1047
    :pswitch_45
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    return-void

    .line 1070
    :pswitch_4d
    const-string v0, "Received CAT CC Alpha message from card"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1071
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_6a

    .line 1072
    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_64

    .line 1073
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_64

    .line 1074
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->broadcastAlphaMessage(Ljava/lang/String;)V

    return-void

    .line 1076
    :cond_64
    const-string p1, "CAT Alpha message: ar.result is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1079
    :cond_6a
    const-string p1, "CAT Alpha message: msg.obj is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1053
    :pswitch_70
    const-string p1, "MSG_ID_ICC_CHANGED"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatService;->updateIccAvailability()V

    return-void

    .line 1050
    :pswitch_79
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    return-void

    .line 1042
    :pswitch_81
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance p1, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p1, v0, v1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    return-void

    .line 1023
    :pswitch_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril message arrived,slotid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_b1

    .line 1026
    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_b1

    .line 1027
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_b1

    .line 1029
    :try_start_ae
    move-object v1, v0

    check-cast v1, Ljava/lang/String;
    :try_end_b1
    .catch Ljava/lang/ClassCastException; {:try_start_ae .. :try_end_b1} :catch_10c

    .line 1035
    :cond_b1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-eqz v0, :cond_c0

    .line 1036
    new-instance p0, Lcom/android/internal/telephony/cat/RilMessage;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    return-void

    .line 1038
    :cond_c0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in handleMessage ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") mMsgDecoder is NULL"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1057
    :cond_dc
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_107

    .line 1058
    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_f0

    .line 1059
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_f0

    .line 1060
    sget-object p1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    return-void

    .line 1063
    :cond_f0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Icc REFRESH with exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1066
    :cond_107
    const-string p1, "IccRefresh Message is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :catch_10c
    :cond_10c
    return-void

    nop

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_81
        :pswitch_8c
        :pswitch_79
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x8
        :pswitch_70
        :pswitch_4d
        :pswitch_45
    .end packed-switch
.end method

.method public declared-synchronized blacklist onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_5

    .line 1135
    monitor-exit p0

    return-void

    :cond_5
    const/4 v0, 0x6

    .line 1138
    :try_start_6
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1139
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_f

    .line 1140
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public blacklist sendStkSms(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/cat/CommandParams;Lcom/android/internal/telephony/ProxyController;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 640
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.cat.SMS_SENT_ACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 642
    const-string v5, "cmdDetails"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 643
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v6, 0x2000000

    .line 640
    invoke-static {v2, v4, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 645
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.internal.telephony.cat.SMS_DELIVERY_ACTION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 647
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 648
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 645
    invoke-static {v2, v4, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 650
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/ProxyController;->getSmsController()Lcom/android/internal/telephony/SmsController;

    move-result-object v7

    .line 651
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 652
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/4 v12, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v13, p1

    move-object/from16 v11, p2

    move/from16 v8, p3

    .line 651
    invoke-virtual/range {v7 .. v20}, Lcom/android/internal/telephony/SmsController;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJZZ)V

    return-void
.end method

.method public blacklist update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 6

    const/4 p1, 0x0

    if-eqz p3, :cond_11

    const/4 p2, 0x0

    .line 1326
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 1328
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p3

    goto :goto_13

    :cond_f
    move-object p3, p1

    goto :goto_13

    :cond_11
    move-object p2, p1

    move-object p3, p2

    .line 1332
    :goto_13
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_50

    .line 1333
    :try_start_18
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v1, p3, :cond_50

    if-eqz v1, :cond_24

    .line 1335
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_52

    .line 1338
    :cond_24
    :goto_24
    const-string v1, "Reinitialize the Service with SIMRecords and UiccCardApplication"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1340
    sput-object p3, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1341
    sput-object p2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p2, 0x14

    .line 1344
    invoke-virtual {p3, p0, p2, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1345
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerForRecordsLoaded slotid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " instance:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1347
    :cond_50
    monitor-exit v0

    return-void

    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_18 .. :try_end_53} :catchall_22

    throw p0
.end method

.method blacklist updateIccAvailability()V
    .registers 5

    .line 1351
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_5

    goto :goto_47

    .line 1355
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1356
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1358
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    .line 1360
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1361
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Card State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Old Card State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1363
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3e

    if-eq v1, v2, :cond_3e

    .line 1365
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    return-void

    :cond_3e
    if-eq v0, v2, :cond_47

    if-ne v1, v2, :cond_47

    .line 1369
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    :cond_47
    :goto_47
    return-void
.end method
