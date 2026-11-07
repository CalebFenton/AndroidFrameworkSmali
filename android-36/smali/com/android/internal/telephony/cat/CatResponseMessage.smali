.class public Lcom/android/internal/telephony/cat/CatResponseMessage;
.super Ljava/lang/Object;
.source "CatResponseMessage.java"


# instance fields
.field blacklist mAddedInfo:[B

.field blacklist mAdditionalInfo:I

.field blacklist mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field blacklist mEventValue:I

.field blacklist mIncludeAdditionalInfo:Z

.field blacklist mResCode:Lcom/android/internal/telephony/cat/ResultCode;

.field blacklist mUsersConfirm:Z

.field blacklist mUsersInput:Ljava/lang/String;

.field blacklist mUsersMenuSelection:I

.field blacklist mUsersYesNoSelection:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 23
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 25
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 27
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 29
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    .line 31
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    .line 34
    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-void
.end method


# virtual methods
.method blacklist getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-object p0
.end method

.method public blacklist setAdditionalInfo(I)V
    .registers 3

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 65
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    return-void
.end method

.method public blacklist setConfirmation(Z)V
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    return-void
.end method

.method public greylist setEventDownload(I[B)V
    .registers 3

    .line 51
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    .line 52
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    return-void
.end method

.method public blacklist setInput(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    return-void
.end method

.method public blacklist setMenuSelection(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    return-void
.end method

.method public blacklist setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    return-void
.end method

.method public blacklist setYesNo(Z)V
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    return-void
.end method
