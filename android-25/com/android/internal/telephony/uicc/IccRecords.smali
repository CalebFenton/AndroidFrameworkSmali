.class public abstract Lcom/android/internal/telephony/uicc/IccRecords;
.super Landroid/os/Handler;
.source "IccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;
    }
.end annotation


# static fields
.field public static final CALL_FORWARDING_STATUS_DISABLED:I = 0x0

.field public static final CALL_FORWARDING_STATUS_ENABLED:I = 0x1

.field public static final CALL_FORWARDING_STATUS_UNKNOWN:I = -0x1

.field protected static final DBG:Z = true

.field private static final EVENT_AKA_AUTHENTICATE_DONE:I = 0x5a

.field protected static final EVENT_APP_READY:I = 0x1

.field public static final EVENT_CFI:I = 0x1

.field public static final EVENT_GET_ICC_RECORD_DONE:I = 0x64

.field public static final EVENT_MWI:I = 0x0

.field protected static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field public static final EVENT_SPN:I = 0x2

.field public static final SPN_RULE_SHOW_PLMN:I = 0x2

.field public static final SPN_RULE_SHOW_SPN:I = 0x1

.field protected static final UNINITIALIZED:I = -0x1

.field protected static final UNKNOWN:I

.field protected static final VDBG:Z


# instance fields
.field private auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

.field protected mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field protected mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field protected mFullIccId:Ljava/lang/String;

.field protected mGid1:Ljava/lang/String;

.field protected mGid2:Ljava/lang/String;

.field protected mIccId:Ljava/lang/String;

.field protected mImsi:Ljava/lang/String;

.field protected mImsiReadyRegistrants:Landroid/os/RegistrantList;

.field protected mIsVoiceMailFixed:Z

.field private final mLock:Ljava/lang/Object;

.field protected mMailboxIndex:I

.field protected mMncLength:I

.field protected mMsisdn:Ljava/lang/String;

.field protected mMsisdnTag:Ljava/lang/String;

.field protected mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

.field protected mNewMsisdn:Ljava/lang/String;

.field protected mNewMsisdnTag:Ljava/lang/String;

.field protected mNewSmsRegistrants:Landroid/os/RegistrantList;

.field protected mNewVoiceMailNum:Ljava/lang/String;

.field protected mNewVoiceMailTag:Ljava/lang/String;

.field protected mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected mPrefLang:Ljava/lang/String;

.field protected mRecordsEventsRegistrants:Landroid/os/RegistrantList;

.field protected mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected mRecordsRequested:Z

.field protected mRecordsToLoad:I

.field private mSpn:Ljava/lang/String;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mVoiceMailNum:Ljava/lang/String;

.field protected mVoiceMailTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 166
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@c
    .line 54
    new-instance v0, Landroid/os/RegistrantList;

    #@e
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@13
    .line 55
    new-instance v0, Landroid/os/RegistrantList;

    #@15
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@1a
    .line 56
    new-instance v0, Landroid/os/RegistrantList;

    #@1c
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@21
    .line 57
    new-instance v0, Landroid/os/RegistrantList;

    #@23
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@28
    .line 58
    new-instance v0, Landroid/os/RegistrantList;

    #@2a
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@2f
    .line 66
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    #@31
    .line 70
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@33
    .line 71
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@35
    .line 72
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdn:Ljava/lang/String;

    #@37
    .line 73
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdnTag:Ljava/lang/String;

    #@39
    .line 74
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    #@3b
    .line 75
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    #@3d
    .line 76
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@3f
    .line 77
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@41
    .line 78
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    #@43
    .line 82
    const/4 v0, -0x1

    #@44
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    #@46
    .line 83
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    #@48
    .line 91
    new-instance v0, Ljava/lang/Object;

    #@4a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@4d
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    #@4f
    .line 167
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    #@51
    .line 168
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@53
    .line 169
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@56
    move-result-object v0

    #@57
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@59
    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5b
    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    #@5d
    .line 172
    const-string/jumbo v1, "phone"

    #@60
    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@63
    move-result-object v0

    #@64
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@66
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@68
    .line 166
    return-void
.end method

.method protected static findBestLanguage([B[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "languages"    # [B
    .param p1, "locales"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x0

    #@2
    .line 546
    if-eqz p0, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    :cond_0
    return-object v5

    #@7
    .line 549
    :cond_1
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    add-int/lit8 v3, v0, 0x1

    #@a
    array-length v4, p0

    #@b
    if-ge v3, v4, :cond_4

    #@d
    .line 550
    new-instance v2, Ljava/lang/String;

    #@f
    const-string/jumbo v3, "ISO-8859-1"

    #@12
    invoke-direct {v2, p0, v0, v6, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@15
    .line 551
    .local v2, "lang":Ljava/lang/String;
    const/4 v1, 0x0

    #@16
    .local v1, "j":I
    :goto_1
    array-length v3, p1

    #@17
    if-ge v1, v3, :cond_3

    #@19
    .line 552
    aget-object v3, p1, v1

    #@1b
    if-eqz v3, :cond_2

    #@1d
    aget-object v3, p1, v1

    #@1f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@22
    move-result v3

    #@23
    if-lt v3, v6, :cond_2

    #@25
    .line 553
    aget-object v3, p1, v1

    #@27
    const/4 v4, 0x0

    #@28
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2f
    move-result v3

    #@30
    .line 552
    if-eqz v3, :cond_2

    #@32
    .line 554
    return-object v2

    #@33
    .line 551
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_1

    #@36
    .line 549
    :cond_3
    add-int/lit8 v0, v0, 0x2

    #@38
    goto :goto_0

    #@39
    .line 560
    .end local v1    # "j":I
    .end local v2    # "lang":Ljava/lang/String;
    :cond_4
    return-object v5
.end method


# virtual methods
.method public dispose()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    const/4 v1, 0x1

    #@4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@7
    .line 180
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    .line 181
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@b
    .line 182
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@d
    .line 183
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    #@f
    .line 178
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x6

    #@1
    const/4 v5, 0x0

    #@2
    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "IccRecords: "

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, " mDestroyed="

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, " mCi="

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v3, " mFh="

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64
    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v3, " mParentApp="

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v3, " recordsLoadedRegistrants: size="

    #@85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@8b
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@8e
    move-result v3

    #@8f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9a
    .line 709
    const/4 v0, 0x0

    #@9b
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@9d
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@a0
    move-result v2

    #@a1
    if-ge v0, v2, :cond_0

    #@a3
    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v3, "  recordsLoadedRegistrants["

    #@ab
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v2

    #@b3
    const-string/jumbo v3, "]="

    #@b6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    .line 711
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@bc
    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@bf
    move-result-object v2

    #@c0
    check-cast v2, Landroid/os/Registrant;

    #@c2
    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@c5
    move-result-object v2

    #@c6
    .line 710
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v2

    #@ca
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v2

    #@ce
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d1
    .line 709
    add-int/lit8 v0, v0, 0x1

    #@d3
    goto :goto_0

    #@d4
    .line 713
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v3, " mImsiReadyRegistrants: size="

    #@dc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v2

    #@e0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@e2
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@e5
    move-result v3

    #@e6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v2

    #@ea
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v2

    #@ee
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f1
    .line 714
    const/4 v0, 0x0

    #@f2
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@f4
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@f7
    move-result v2

    #@f8
    if-ge v0, v2, :cond_1

    #@fa
    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v3, "  mImsiReadyRegistrants["

    #@102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v2

    #@106
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@109
    move-result-object v2

    #@10a
    const-string/jumbo v3, "]="

    #@10d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v3

    #@111
    .line 716
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@113
    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@116
    move-result-object v2

    #@117
    check-cast v2, Landroid/os/Registrant;

    #@119
    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@11c
    move-result-object v2

    #@11d
    .line 715
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v2

    #@121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v2

    #@125
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@128
    .line 714
    add-int/lit8 v0, v0, 0x1

    #@12a
    goto :goto_1

    #@12b
    .line 718
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@12d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@130
    const-string/jumbo v3, " mRecordsEventsRegistrants: size="

    #@133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v2

    #@137
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@139
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@13c
    move-result v3

    #@13d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@140
    move-result-object v2

    #@141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@144
    move-result-object v2

    #@145
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@148
    .line 719
    const/4 v0, 0x0

    #@149
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@14b
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@14e
    move-result v2

    #@14f
    if-ge v0, v2, :cond_2

    #@151
    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    #@153
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@156
    const-string/jumbo v3, "  mRecordsEventsRegistrants["

    #@159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v2

    #@15d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@160
    move-result-object v2

    #@161
    const-string/jumbo v3, "]="

    #@164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v3

    #@168
    .line 721
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@16a
    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@16d
    move-result-object v2

    #@16e
    check-cast v2, Landroid/os/Registrant;

    #@170
    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@173
    move-result-object v2

    #@174
    .line 720
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v2

    #@178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17b
    move-result-object v2

    #@17c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17f
    .line 719
    add-int/lit8 v0, v0, 0x1

    #@181
    goto :goto_2

    #@182
    .line 723
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@184
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@187
    const-string/jumbo v3, " mNewSmsRegistrants: size="

    #@18a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v2

    #@18e
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@190
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@193
    move-result v3

    #@194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@197
    move-result-object v2

    #@198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19b
    move-result-object v2

    #@19c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19f
    .line 724
    const/4 v0, 0x0

    #@1a0
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@1a2
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@1a5
    move-result v2

    #@1a6
    if-ge v0, v2, :cond_3

    #@1a8
    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    #@1aa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1ad
    const-string/jumbo v3, "  mNewSmsRegistrants["

    #@1b0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v2

    #@1b4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v2

    #@1b8
    const-string/jumbo v3, "]="

    #@1bb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v3

    #@1bf
    .line 726
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@1c1
    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@1c4
    move-result-object v2

    #@1c5
    check-cast v2, Landroid/os/Registrant;

    #@1c7
    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@1ca
    move-result-object v2

    #@1cb
    .line 725
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v2

    #@1cf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d2
    move-result-object v2

    #@1d3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d6
    .line 724
    add-int/lit8 v0, v0, 0x1

    #@1d8
    goto :goto_3

    #@1d9
    .line 728
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@1db
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1de
    const-string/jumbo v3, " mNetworkSelectionModeAutomaticRegistrants: size="

    #@1e1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v2

    #@1e5
    .line 729
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@1e7
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@1ea
    move-result v3

    #@1eb
    .line 728
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v2

    #@1ef
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f2
    move-result-object v2

    #@1f3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f6
    .line 730
    const/4 v0, 0x0

    #@1f7
    :goto_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@1f9
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@1fc
    move-result v2

    #@1fd
    if-ge v0, v2, :cond_4

    #@1ff
    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    #@201
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@204
    const-string/jumbo v3, "  mNetworkSelectionModeAutomaticRegistrants["

    #@207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v2

    #@20b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v2

    #@20f
    const-string/jumbo v3, "]="

    #@212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@215
    move-result-object v3

    #@216
    .line 732
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@218
    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@21b
    move-result-object v2

    #@21c
    check-cast v2, Landroid/os/Registrant;

    #@21e
    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@221
    move-result-object v2

    #@222
    .line 731
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v2

    #@226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@229
    move-result-object v2

    #@22a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22d
    .line 730
    add-int/lit8 v0, v0, 0x1

    #@22f
    goto :goto_4

    #@230
    .line 734
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    #@232
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@235
    const-string/jumbo v3, " mRecordsRequested="

    #@238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v2

    #@23c
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    #@23e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@241
    move-result-object v2

    #@242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@245
    move-result-object v2

    #@246
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@249
    .line 735
    new-instance v2, Ljava/lang/StringBuilder;

    #@24b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24e
    const-string/jumbo v3, " mRecordsToLoad="

    #@251
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@254
    move-result-object v2

    #@255
    iget v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    #@257
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v2

    #@25b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25e
    move-result-object v2

    #@25f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@262
    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    #@264
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@267
    const-string/jumbo v3, " mRdnCache="

    #@26a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v2

    #@26e
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@270
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@273
    move-result-object v2

    #@274
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@277
    move-result-object v2

    #@278
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@27b
    .line 738
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    #@27d
    invoke-static {v2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    #@280
    move-result-object v1

    #@281
    .line 739
    .local v1, "iccIdToPrint":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@283
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@286
    const-string/jumbo v3, " iccid="

    #@289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28c
    move-result-object v2

    #@28d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v2

    #@291
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@294
    move-result-object v2

    #@295
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@298
    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    #@29a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29d
    const-string/jumbo v3, " mMsisdn="

    #@2a0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v2

    #@2a4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@2a6
    invoke-static {v5, v3}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    #@2a9
    move-result-object v3

    #@2aa
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v2

    #@2ae
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b1
    move-result-object v2

    #@2b2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b5
    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2ba
    const-string/jumbo v3, " mMsisdnTag="

    #@2bd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v2

    #@2c1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@2c3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c6
    move-result-object v2

    #@2c7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ca
    move-result-object v2

    #@2cb
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ce
    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d3
    const-string/jumbo v3, " mVoiceMailNum="

    #@2d6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d9
    move-result-object v2

    #@2da
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    #@2dc
    invoke-static {v5, v3}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    #@2df
    move-result-object v3

    #@2e0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e3
    move-result-object v2

    #@2e4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e7
    move-result-object v2

    #@2e8
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2eb
    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    #@2ed
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f0
    const-string/jumbo v3, " mVoiceMailTag="

    #@2f3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f6
    move-result-object v2

    #@2f7
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    #@2f9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fc
    move-result-object v2

    #@2fd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@300
    move-result-object v2

    #@301
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@304
    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    #@306
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@309
    const-string/jumbo v3, " mNewVoiceMailNum="

    #@30c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30f
    move-result-object v2

    #@310
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@312
    invoke-static {v5, v3}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    #@315
    move-result-object v3

    #@316
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@319
    move-result-object v2

    #@31a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31d
    move-result-object v2

    #@31e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@321
    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    #@323
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@326
    const-string/jumbo v3, " mNewVoiceMailTag="

    #@329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32c
    move-result-object v2

    #@32d
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@32f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@332
    move-result-object v2

    #@333
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@336
    move-result-object v2

    #@337
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33a
    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    #@33c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33f
    const-string/jumbo v3, " mIsVoiceMailFixed="

    #@342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@345
    move-result-object v2

    #@346
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    #@348
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@34b
    move-result-object v2

    #@34c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34f
    move-result-object v2

    #@350
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@353
    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    #@355
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@358
    const-string/jumbo v3, " mImsi="

    #@35b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35e
    move-result-object v3

    #@35f
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    #@361
    if-eqz v2, :cond_5

    #@363
    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    #@365
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@368
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    #@36a
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@36d
    move-result-object v4

    #@36e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@371
    move-result-object v2

    #@372
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    #@374
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@377
    move-result-object v4

    #@378
    invoke-static {v5, v4}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    #@37b
    move-result-object v4

    #@37c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37f
    move-result-object v2

    #@380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@383
    move-result-object v2

    #@384
    .line 747
    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@387
    move-result-object v2

    #@388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38b
    move-result-object v2

    #@38c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38f
    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    #@391
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@394
    const-string/jumbo v3, " mMncLength="

    #@397
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39a
    move-result-object v2

    #@39b
    iget v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    #@39d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a0
    move-result-object v2

    #@3a1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a4
    move-result-object v2

    #@3a5
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a8
    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    #@3aa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3ad
    const-string/jumbo v3, " mMailboxIndex="

    #@3b0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b3
    move-result-object v2

    #@3b4
    iget v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    #@3b6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b9
    move-result-object v2

    #@3ba
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3bd
    move-result-object v2

    #@3be
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c1
    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c6
    const-string/jumbo v3, " mSpn="

    #@3c9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cc
    move-result-object v2

    #@3cd
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    #@3cf
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d2
    move-result-object v2

    #@3d3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d6
    move-result-object v2

    #@3d7
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3da
    .line 752
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@3dd
    .line 702
    return-void

    #@3de
    .line 748
    :cond_5
    const-string/jumbo v2, "null"

    #@3e1
    goto :goto_5
.end method

.method public getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@2
    return-object v0
.end method

.method public abstract getDisplayRule(Ljava/lang/String;)I
.end method

.method public getFullIccId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 312
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getGid2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 320
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 281
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIccId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 668
    const-string/jumbo v4, "getIccSimChallengeResponse:"

    #@4
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@7
    .line 671
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@a
    .line 672
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@c
    .line 673
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@e
    .line 674
    .local v3, "parentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 676
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 677
    const/16 v6, 0x5a

    #@18
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->obtainMessage(I)Landroid/os/Message;

    #@1b
    move-result-object v6

    #@1c
    .line 675
    invoke-interface {v0, p1, p2, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    .line 679
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    #@21
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@25
    .line 697
    const-string/jumbo v4, "getIccSimChallengeResponse: return auth_rsp"

    #@28
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@2b
    .line 699
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    #@2d
    iget-object v4, v4, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@2f
    const/4 v5, 0x2

    #@30
    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    return-object v4

    #@35
    .line 680
    :catch_0
    move-exception v2

    #@36
    .line 681
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v4, "getIccSimChallengeResponse: Fail, interrupted while trying to request Icc Sim Auth"

    #@39
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3c
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    #@3d
    .line 683
    return-object v7

    #@3e
    .line 686
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_6
    const-string/jumbo v4, "getIccSimChallengeResponse: Fail, ci or parentApp is null"

    #@41
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@44
    :try_start_7
    monitor-exit v5

    #@45
    .line 688
    return-object v7

    #@46
    .line 671
    .end local v0    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    .end local v3    # "parentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v4

    #@47
    monitor-exit v5

    #@48
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    #@49
    .line 691
    :catch_1
    move-exception v1

    #@4a
    .line 692
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "getIccSimChallengeResponse: Fail while trying to request Icc Sim Auth"

    #@4d
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    #@50
    .line 694
    return-object v7
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    #@0
    .prologue
    .line 644
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNAI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 300
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 593
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getRecordsLoaded()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 462
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    #@3
    if-nez v0, :cond_0

    #@5
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 463
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 465
    :cond_0
    return v1
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 367
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    #@2
    .line 371
    .local v3, "providerName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@4
    .line 372
    .local v2, "parentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_2

    #@6
    .line 373
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    #@9
    move-result-object v1

    #@a
    .line 374
    .local v1, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_1

    #@c
    .line 375
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 376
    .local v0, "brandOverride":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@12
    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "getServiceProviderName: override, providerName="

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@29
    .line 378
    move-object v3, v0

    #@2a
    .line 388
    .end local v0    # "brandOverride":Ljava/lang/String;
    .end local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_0
    return-object v3

    #@2b
    .line 380
    .restart local v0    # "brandOverride":Ljava/lang/String;
    .restart local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "getServiceProviderName: no brandOverride, providerName="

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@42
    goto :goto_0

    #@43
    .line 383
    .end local v0    # "brandOverride":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v5, "getServiceProviderName: card is null, providerName="

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@5a
    goto :goto_0

    #@5b
    .line 386
    .end local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v5, "getServiceProviderName: mParentApp is null, providerName="

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@72
    goto :goto_0
.end method

.method public getSimLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    #@0
    .prologue
    .line 648
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getVoiceCallForwardingFlag()I
    .locals 1

    #@0
    .prologue
    .line 602
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract getVoiceMessageCount()I
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 474
    iget v4, p1, Landroid/os/Message;->what:I

    #@3
    sparse-switch v4, :sswitch_data_0

    #@6
    .line 516
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@9
    .line 471
    :goto_0
    return-void

    #@a
    .line 477
    :sswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v0, Landroid/os/AsyncResult;

    #@e
    .line 478
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@10
    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;

    #@12
    .line 479
    .local v3, "recordLoaded":Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-interface {v3}, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;->getEfName()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    const-string/jumbo v5, " LOADED"

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@2d
    .line 481
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2f
    if-eqz v4, :cond_0

    #@31
    .line 482
    new-instance v4, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v5, "Record Load Exception: "

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    .line 491
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    #@4d
    goto :goto_0

    #@4e
    .line 484
    :cond_0
    :try_start_1
    invoke-interface {v3, v0}, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;->onRecordLoaded(Landroid/os/AsyncResult;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    goto :goto_1

    #@52
    .line 486
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "recordLoaded":Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;
    :catch_0
    move-exception v2

    #@53
    .line 488
    .local v2, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v5, "Exception parsing SIM record: "

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6a
    .line 491
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    #@6d
    goto :goto_0

    #@6e
    .line 489
    .end local v2    # "exc":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    #@6f
    .line 491
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    #@72
    .line 489
    throw v4

    #@73
    .line 496
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@75
    check-cast v0, Landroid/os/AsyncResult;

    #@77
    .line 497
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/IccRecords;->auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    #@79
    .line 498
    const-string/jumbo v4, "EVENT_AKA_AUTHENTICATE_DONE"

    #@7c
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@7f
    .line 499
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@81
    if-eqz v4, :cond_1

    #@83
    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v5, "Exception ICC SIM AKA: "

    #@8b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v4

    #@8f
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v4

    #@99
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    #@9c
    .line 509
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    #@9e
    monitor-enter v5

    #@9f
    .line 510
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    #@a1
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@a4
    monitor-exit v5

    #@a5
    goto/16 :goto_0

    #@a7
    .line 503
    :cond_1
    :try_start_4
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@a9
    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@ab
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    #@ad
    .line 504
    new-instance v4, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v5, "ICC SIM AKA: auth_rsp = "

    #@b5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v4

    #@b9
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccRecords;->auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    #@bb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v4

    #@bf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v4

    #@c3
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    #@c6
    goto :goto_2

    #@c7
    .line 505
    :catch_1
    move-exception v1

    #@c8
    .line 506
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v5, "Failed to parse ICC SIM AKA contents: "

    #@d0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v4

    #@d4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v4

    #@d8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v4

    #@dc
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    #@df
    goto :goto_2

    #@e0
    .line 509
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    #@e1
    monitor-exit v5

    #@e2
    throw v4

    #@e3
    .line 474
    nop

    #@e4
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 583
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    #@0
    .prologue
    .line 622
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected abstract onAllRecordsLoaded()V
.end method

.method protected onIccRefreshInit()V
    .locals 3

    #@0
    .prologue
    .line 452
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    #@5
    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@7
    .line 454
    .local v0, "parentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@9
    .line 455
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@c
    move-result-object v1

    #@d
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 457
    const/4 v1, 0x1

    #@12
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->obtainMessage(I)Landroid/os/Message;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 451
    :cond_0
    return-void
.end method

.method public abstract onReady()V
.end method

.method protected abstract onRecordLoaded()V
.end method

.method public abstract onRefresh(Z[I)V
.end method

.method public registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 228
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 229
    return-void

    #@a
    .line 232
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    #@c
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@f
    .line 233
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@11
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@14
    .line 235
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 236
    new-instance v1, Landroid/os/AsyncResult;

    #@1a
    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1d
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@20
    .line 227
    :cond_1
    return-void
.end method

.method public registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 266
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 267
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 265
    return-void
.end method

.method public registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 257
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 258
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 256
    return-void
.end method

.method public registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 244
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 245
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 249
    const/4 v1, 0x0

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    #@12
    .line 250
    const/4 v1, 0x1

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    #@1a
    .line 243
    return-void
.end method

.method public registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 213
    return-void

    #@a
    .line 216
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    #@c
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@f
    .line 217
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@11
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@14
    .line 219
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    #@16
    if-nez v1, :cond_1

    #@18
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 220
    new-instance v1, Landroid/os/AsyncResult;

    #@1e
    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@21
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@24
    .line 211
    :cond_1
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    #@0
    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    #@2
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@4
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@7
    .line 288
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 341
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@2
    .line 342
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@4
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Set MSISDN: "

    #@c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v2, " "

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@2a
    .line 347
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@2c
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@2e
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@30
    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    .line 349
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@35
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@37
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@3a
    .line 350
    const/16 v2, 0x1e

    #@3c
    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3f
    move-result-object v6

    #@40
    .line 349
    const/16 v2, 0x6f40

    #@42
    const/16 v3, 0x6f4a

    #@44
    const/4 v4, 0x1

    #@45
    const/4 v5, 0x0

    #@46
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@49
    .line 339
    return-void
.end method

.method protected setServiceProviderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "spn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    #@2
    .line 391
    return-void
.end method

.method protected setSimLanguage([B[B)V
    .locals 4
    .param p1, "efLi"    # [B
    .param p2, "efPl"    # [B

    #@0
    .prologue
    .line 528
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 530
    .local v0, "locales":[Ljava/lang/String;
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->findBestLanguage([B[Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 535
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;

    #@12
    if-nez v2, :cond_0

    #@14
    .line 537
    :try_start_1
    invoke-static {p2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->findBestLanguage([B[Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    #@1a
    .line 527
    :cond_0
    :goto_1
    return-void

    #@1b
    .line 531
    :catch_0
    move-exception v1

    #@1c
    .line 532
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Unable to parse EF-LI: "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@37
    goto :goto_0

    #@38
    .line 538
    .end local v1    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    #@39
    .line 539
    .restart local v1    # "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "Unable to parse EF-PL: "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@54
    goto :goto_1
.end method

.method protected setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 652
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@8
    move-result v0

    #@9
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@c
    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "[key, value]="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, ", "

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@2e
    .line 651
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 612
    return-void
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(II)V
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x6

    #@1
    const/4 v4, 0x0

    #@2
    .line 119
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    #@4
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 120
    .local v0, "iccIdToPrint":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "mDestroyed="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 121
    const-string/jumbo v2, " mContext="

    #@1d
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 121
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    #@23
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 122
    const-string/jumbo v2, " mCi="

    #@2a
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 122
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@30
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 123
    const-string/jumbo v2, " mFh="

    #@37
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 123
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@3d
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 124
    const-string/jumbo v2, " mParentApp="

    #@44
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    .line 124
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@4a
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 125
    const-string/jumbo v2, " recordsLoadedRegistrants="

    #@51
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    .line 125
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@57
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    .line 126
    const-string/jumbo v2, " mImsiReadyRegistrants="

    #@5e
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@64
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    .line 127
    const-string/jumbo v2, " mRecordsEventsRegistrants="

    #@6b
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 127
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@71
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    .line 128
    const-string/jumbo v2, " mNewSmsRegistrants="

    #@78
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    .line 128
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@7e
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    .line 129
    const-string/jumbo v2, " mNetworkSelectionModeAutomaticRegistrants="

    #@85
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    .line 130
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@8b
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    .line 131
    const-string/jumbo v2, " recordsToLoad="

    #@92
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    .line 131
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    #@98
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    .line 132
    const-string/jumbo v2, " adnCache="

    #@9f
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    .line 132
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@a5
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    .line 133
    const-string/jumbo v2, " recordsRequested="

    #@ac
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    .line 133
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    #@b2
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v1

    #@b6
    .line 134
    const-string/jumbo v2, " iccid="

    #@b9
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v1

    #@bd
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v1

    #@c1
    .line 135
    const-string/jumbo v2, " msisdnTag="

    #@c4
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v1

    #@c8
    .line 135
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@ca
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v1

    #@ce
    .line 136
    const-string/jumbo v2, " voiceMailNum="

    #@d1
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v1

    #@d5
    .line 136
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    #@d7
    invoke-static {v4, v2}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    #@da
    move-result-object v2

    #@db
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v1

    #@df
    .line 137
    const-string/jumbo v2, " voiceMailTag="

    #@e2
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v1

    #@e6
    .line 137
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    #@e8
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v1

    #@ec
    .line 138
    const-string/jumbo v2, " voiceMailNum="

    #@ef
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v1

    #@f3
    .line 138
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@f5
    invoke-static {v4, v2}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    #@f8
    move-result-object v2

    #@f9
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v1

    #@fd
    .line 139
    const-string/jumbo v2, " newVoiceMailTag="

    #@100
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v1

    #@104
    .line 139
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@106
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v1

    #@10a
    .line 140
    const-string/jumbo v2, " isVoiceMailFixed="

    #@10d
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v1

    #@111
    .line 140
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    #@113
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@116
    move-result-object v1

    #@117
    .line 141
    const-string/jumbo v2, " mImsi="

    #@11a
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v2

    #@11e
    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    #@120
    if-eqz v1, :cond_0

    #@122
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    #@129
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@12c
    move-result-object v3

    #@12d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v1

    #@131
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    #@133
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@136
    move-result-object v3

    #@137
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    #@13a
    move-result-object v3

    #@13b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v1

    #@13f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v1

    #@143
    .line 120
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v1

    #@147
    .line 143
    const-string/jumbo v2, " mncLength="

    #@14a
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v1

    #@14e
    .line 143
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    #@150
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@153
    move-result-object v1

    #@154
    .line 144
    const-string/jumbo v2, " mailboxIndex="

    #@157
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v1

    #@15b
    .line 144
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    #@15d
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@160
    move-result-object v1

    #@161
    .line 145
    const-string/jumbo v2, " spn="

    #@164
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v1

    #@168
    .line 145
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    #@16a
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v1

    #@16e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v1

    #@172
    return-object v1

    #@173
    .line 142
    :cond_0
    const-string/jumbo v1, "null"

    #@176
    goto :goto_0
.end method

.method public unregisterForImsiReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 239
    return-void
.end method

.method public unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 269
    return-void
.end method

.method public unregisterForNewSms(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 260
    return-void
.end method

.method public unregisterForRecordsEvents(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 252
    return-void
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 223
    return-void
.end method
