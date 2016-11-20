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
    .line 165
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
    .line 166
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    #@51
    .line 167
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@53
    .line 168
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@56
    move-result-object v0

    #@57
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@59
    .line 169
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5b
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    #@5d
    .line 171
    const-string/jumbo v1, "phone"

    #@60
    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@63
    move-result-object v0

    #@64
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@66
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@68
    .line 165
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
    .line 545
    if-eqz p0, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    :cond_0
    return-object v5

    #@7
    .line 548
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
    .line 549
    new-instance v2, Ljava/lang/String;

    #@f
    const-string/jumbo v3, "ISO-8859-1"

    #@12
    invoke-direct {v2, p0, v0, v6, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@15
    .line 550
    .local v2, "lang":Ljava/lang/String;
    const/4 v1, 0x0

    #@16
    .local v1, "j":I
    :goto_1
    array-length v3, p1

    #@17
    if-ge v1, v3, :cond_3

    #@19
    .line 551
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
    .line 552
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
    .line 551
    if-eqz v3, :cond_2

    #@32
    .line 553
    return-object v2

    #@33
    .line 550
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_1

    #@36
    .line 548
    :cond_3
    add-int/lit8 v0, v0, 0x2

    #@38
    goto :goto_0

    #@39
    .line 559
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
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    const/4 v1, 0x1

    #@4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@7
    .line 179
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    .line 180
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@b
    .line 181
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@d
    .line 182
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    #@f
    .line 177
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "IccRecords: "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, " mDestroyed="

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v3, " mCi="

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v3, " mFh="

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62
    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v3, " mParentApp="

    #@6a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v2

    #@78
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b
    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v3, " recordsLoadedRegistrants: size="

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@89
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@8c
    move-result v3

    #@8d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v2

    #@95
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@98
    .line 708
    const/4 v0, 0x0

    #@99
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@9b
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@9e
    move-result v2

    #@9f
    if-ge v0, v2, :cond_0

    #@a1
    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v3, "  recordsLoadedRegistrants["

    #@a9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v2

    #@ad
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v2

    #@b1
    const-string/jumbo v3, "]="

    #@b4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v3

    #@b8
    .line 710
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@ba
    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@bd
    move-result-object v2

    #@be
    check-cast v2, Landroid/os/Registrant;

    #@c0
    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@c3
    move-result-object v2

    #@c4
    .line 709
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v2

    #@c8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v2

    #@cc
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cf
    .line 708
    add-int/lit8 v0, v0, 0x1

    #@d1
    goto :goto_0

    #@d2
    .line 712
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string/jumbo v3, " mImsiReadyRegistrants: size="

    #@da
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v2

    #@de
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@e0
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@e3
    move-result v3

    #@e4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v2

    #@e8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v2

    #@ec
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ef
    .line 713
    const/4 v0, 0x0

    #@f0
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@f2
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@f5
    move-result v2

    #@f6
    if-ge v0, v2, :cond_1

    #@f8
    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v3, "  mImsiReadyRegistrants["

    #@100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v2

    #@104
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@107
    move-result-object v2

    #@108
    const-string/jumbo v3, "]="

    #@10b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v3

    #@10f
    .line 715
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@111
    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@114
    move-result-object v2

    #@115
    check-cast v2, Landroid/os/Registrant;

    #@117
    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@11a
    move-result-object v2

    #@11b
    .line 714
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v2

    #@11f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v2

    #@123
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@126
    .line 713
    add-int/lit8 v0, v0, 0x1

    #@128
    goto :goto_1

    #@129
    .line 717
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v3, " mRecordsEventsRegistrants: size="

    #@131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v2

    #@135
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@137
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@13a
    move-result v3

    #@13b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v2

    #@13f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v2

    #@143
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@146
    .line 718
    const/4 v0, 0x0

    #@147
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@149
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@14c
    move-result v2

    #@14d
    if-ge v0, v2, :cond_2

    #@14f
    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    #@151
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@154
    const-string/jumbo v3, "  mRecordsEventsRegistrants["

    #@157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v2

    #@15b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v2

    #@15f
    const-string/jumbo v3, "]="

    #@162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v3

    #@166
    .line 720
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@168
    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@16b
    move-result-object v2

    #@16c
    check-cast v2, Landroid/os/Registrant;

    #@16e
    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@171
    move-result-object v2

    #@172
    .line 719
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v2

    #@176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@179
    move-result-object v2

    #@17a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17d
    .line 718
    add-int/lit8 v0, v0, 0x1

    #@17f
    goto :goto_2

    #@180
    .line 722
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@182
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@185
    const-string/jumbo v3, " mNewSmsRegistrants: size="

    #@188
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v2

    #@18c
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@18e
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@191
    move-result v3

    #@192
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@195
    move-result-object v2

    #@196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v2

    #@19a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19d
    .line 723
    const/4 v0, 0x0

    #@19e
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@1a0
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@1a3
    move-result v2

    #@1a4
    if-ge v0, v2, :cond_3

    #@1a6
    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1ab
    const-string/jumbo v3, "  mNewSmsRegistrants["

    #@1ae
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v2

    #@1b2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v2

    #@1b6
    const-string/jumbo v3, "]="

    #@1b9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v3

    #@1bd
    .line 725
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@1bf
    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@1c2
    move-result-object v2

    #@1c3
    check-cast v2, Landroid/os/Registrant;

    #@1c5
    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@1c8
    move-result-object v2

    #@1c9
    .line 724
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v2

    #@1cd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d0
    move-result-object v2

    #@1d1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d4
    .line 723
    add-int/lit8 v0, v0, 0x1

    #@1d6
    goto :goto_3

    #@1d7
    .line 727
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1dc
    const-string/jumbo v3, " mNetworkSelectionModeAutomaticRegistrants: size="

    #@1df
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v2

    #@1e3
    .line 728
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@1e5
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@1e8
    move-result v3

    #@1e9
    .line 727
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v2

    #@1ed
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f0
    move-result-object v2

    #@1f1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f4
    .line 729
    const/4 v0, 0x0

    #@1f5
    :goto_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@1f7
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@1fa
    move-result v2

    #@1fb
    if-ge v0, v2, :cond_4

    #@1fd
    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    #@1ff
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@202
    const-string/jumbo v3, "  mNetworkSelectionModeAutomaticRegistrants["

    #@205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v2

    #@209
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20c
    move-result-object v2

    #@20d
    const-string/jumbo v3, "]="

    #@210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v3

    #@214
    .line 731
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@216
    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@219
    move-result-object v2

    #@21a
    check-cast v2, Landroid/os/Registrant;

    #@21c
    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@21f
    move-result-object v2

    #@220
    .line 730
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@223
    move-result-object v2

    #@224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@227
    move-result-object v2

    #@228
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22b
    .line 729
    add-int/lit8 v0, v0, 0x1

    #@22d
    goto :goto_4

    #@22e
    .line 733
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    #@230
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@233
    const-string/jumbo v3, " mRecordsRequested="

    #@236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v2

    #@23a
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    #@23c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v2

    #@240
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@243
    move-result-object v2

    #@244
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@247
    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    #@249
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24c
    const-string/jumbo v3, " mRecordsToLoad="

    #@24f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@252
    move-result-object v2

    #@253
    iget v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    #@255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@258
    move-result-object v2

    #@259
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25c
    move-result-object v2

    #@25d
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@260
    .line 735
    new-instance v2, Ljava/lang/StringBuilder;

    #@262
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@265
    const-string/jumbo v3, " mRdnCache="

    #@268
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26b
    move-result-object v2

    #@26c
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@26e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@271
    move-result-object v2

    #@272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@275
    move-result-object v2

    #@276
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@279
    .line 737
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    #@27b
    invoke-static {v2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    #@27e
    move-result-object v1

    #@27f
    .line 738
    .local v1, "iccIdToPrint":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@281
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@284
    const-string/jumbo v3, " iccid="

    #@287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28a
    move-result-object v2

    #@28b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v2

    #@28f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@292
    move-result-object v2

    #@293
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@296
    .line 740
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@298
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@29b
    move-result v2

    #@29c
    if-eqz v2, :cond_5

    #@29e
    .line 741
    const-string/jumbo v2, " mMsisdn=null"

    #@2a1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a4
    .line 745
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a9
    const-string/jumbo v3, " mMsisdnTag="

    #@2ac
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2af
    move-result-object v2

    #@2b0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@2b2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b5
    move-result-object v2

    #@2b6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b9
    move-result-object v2

    #@2ba
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2bd
    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    #@2bf
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c2
    const-string/jumbo v3, " mVoiceMailNum="

    #@2c5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c8
    move-result-object v2

    #@2c9
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    #@2cb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v2

    #@2cf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d2
    move-result-object v2

    #@2d3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d6
    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2db
    const-string/jumbo v3, " mVoiceMailTag="

    #@2de
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e1
    move-result-object v2

    #@2e2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    #@2e4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e7
    move-result-object v2

    #@2e8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2eb
    move-result-object v2

    #@2ec
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ef
    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f4
    const-string/jumbo v3, " mNewVoiceMailNum="

    #@2f7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fa
    move-result-object v2

    #@2fb
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@2fd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@300
    move-result-object v2

    #@301
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@304
    move-result-object v2

    #@305
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@308
    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    #@30a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30d
    const-string/jumbo v3, " mNewVoiceMailTag="

    #@310
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@313
    move-result-object v2

    #@314
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

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
    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    #@323
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@326
    const-string/jumbo v3, " mIsVoiceMailFixed="

    #@329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32c
    move-result-object v2

    #@32d
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    #@32f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@332
    move-result-object v2

    #@333
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@336
    move-result-object v2

    #@337
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33a
    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    #@33c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33f
    const-string/jumbo v3, " mMncLength="

    #@342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@345
    move-result-object v2

    #@346
    iget v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    #@348
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34b
    move-result-object v2

    #@34c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34f
    move-result-object v2

    #@350
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@353
    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    #@355
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@358
    const-string/jumbo v3, " mMailboxIndex="

    #@35b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35e
    move-result-object v2

    #@35f
    iget v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    #@361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@364
    move-result-object v2

    #@365
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@368
    move-result-object v2

    #@369
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36c
    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    #@36e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@371
    const-string/jumbo v3, " mSpn="

    #@374
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@377
    move-result-object v2

    #@378
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    #@37a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37d
    move-result-object v2

    #@37e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@381
    move-result-object v2

    #@382
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@385
    .line 755
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@388
    .line 701
    return-void

    #@389
    .line 743
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    #@38b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38e
    const-string/jumbo v3, " mMsisdn="

    #@391
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@394
    move-result-object v2

    #@395
    const-string/jumbo v3, "XXX"

    #@398
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39b
    move-result-object v2

    #@39c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39f
    move-result-object v2

    #@3a0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a3
    goto/16 :goto_5
.end method

.method public getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .locals 1

    #@0
    .prologue
    .line 189
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
    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 311
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getGid2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 319
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 280
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 199
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
    .line 667
    const-string/jumbo v4, "getIccSimChallengeResponse:"

    #@4
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@7
    .line 670
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@a
    .line 671
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@c
    .line 672
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@e
    .line 673
    .local v3, "parentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 675
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 676
    const/16 v6, 0x5a

    #@18
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->obtainMessage(I)Landroid/os/Message;

    #@1b
    move-result-object v6

    #@1c
    .line 674
    invoke-interface {v0, p1, p2, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    .line 678
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
    .line 696
    const-string/jumbo v4, "getIccSimChallengeResponse: return auth_rsp"

    #@28
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@2b
    .line 698
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
    .line 679
    :catch_0
    move-exception v2

    #@36
    .line 680
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
    .line 682
    return-object v7

    #@3e
    .line 685
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
    .line 687
    return-object v7

    #@46
    .line 670
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
    .line 690
    :catch_1
    move-exception v1

    #@4a
    .line 691
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "getIccSimChallengeResponse: Fail while trying to request Icc Sim Auth"

    #@4d
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    #@50
    .line 693
    return-object v7
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    #@0
    .prologue
    .line 643
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNAI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 299
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 592
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
    .line 461
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    #@3
    if-nez v0, :cond_0

    #@5
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 462
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 464
    :cond_0
    return v1
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 366
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    #@2
    .line 370
    .local v3, "providerName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@4
    .line 371
    .local v2, "parentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_2

    #@6
    .line 372
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    #@9
    move-result-object v1

    #@a
    .line 373
    .local v1, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_1

    #@c
    .line 374
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 375
    .local v0, "brandOverride":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@12
    .line 376
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
    .line 377
    move-object v3, v0

    #@2a
    .line 387
    .end local v0    # "brandOverride":Ljava/lang/String;
    .end local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_0
    return-object v3

    #@2b
    .line 379
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
    .line 382
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
    .line 385
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
    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    #@0
    .prologue
    .line 647
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getVoiceCallForwardingFlag()I
    .locals 1

    #@0
    .prologue
    .line 601
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 357
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
    .line 473
    iget v4, p1, Landroid/os/Message;->what:I

    #@3
    sparse-switch v4, :sswitch_data_0

    #@6
    .line 515
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@9
    .line 470
    :goto_0
    return-void

    #@a
    .line 476
    :sswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v0, Landroid/os/AsyncResult;

    #@e
    .line 477
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@10
    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;

    #@12
    .line 478
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
    .line 480
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2f
    if-eqz v4, :cond_0

    #@31
    .line 481
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
    .line 490
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    #@4d
    goto :goto_0

    #@4e
    .line 483
    :cond_0
    :try_start_1
    invoke-interface {v3, v0}, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;->onRecordLoaded(Landroid/os/AsyncResult;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    goto :goto_1

    #@52
    .line 485
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "recordLoaded":Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;
    :catch_0
    move-exception v2

    #@53
    .line 487
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
    .line 490
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    #@6d
    goto :goto_0

    #@6e
    .line 488
    .end local v2    # "exc":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    #@6f
    .line 490
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    #@72
    .line 488
    throw v4

    #@73
    .line 495
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@75
    check-cast v0, Landroid/os/AsyncResult;

    #@77
    .line 496
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/IccRecords;->auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    #@79
    .line 497
    const-string/jumbo v4, "EVENT_AKA_AUTHENTICATE_DONE"

    #@7c
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@7f
    .line 498
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@81
    if-eqz v4, :cond_1

    #@83
    .line 499
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
    .line 508
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    #@9e
    monitor-enter v5

    #@9f
    .line 509
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
    .line 502
    :cond_1
    :try_start_4
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@a9
    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@ab
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    #@ad
    .line 503
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
    .line 504
    :catch_1
    move-exception v1

    #@c8
    .line 505
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
    .line 508
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    #@e1
    monitor-exit v5

    #@e2
    throw v4

    #@e3
    .line 473
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
    .line 582
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    #@0
    .prologue
    .line 621
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
    .line 451
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    #@5
    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@7
    .line 453
    .local v0, "parentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@9
    .line 454
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@c
    move-result-object v1

    #@d
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 456
    const/4 v1, 0x1

    #@12
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->obtainMessage(I)Landroid/os/Message;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 450
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
    .line 227
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 228
    return-void

    #@a
    .line 231
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    #@c
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@f
    .line 232
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@11
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@14
    .line 234
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 235
    new-instance v1, Landroid/os/AsyncResult;

    #@1a
    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1d
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@20
    .line 226
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
    .line 265
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 266
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 264
    return-void
.end method

.method public registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 256
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 257
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 255
    return-void
.end method

.method public registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 243
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 244
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 248
    const/4 v1, 0x0

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    #@12
    .line 249
    const/4 v1, 0x1

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    #@1a
    .line 242
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
    .line 211
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 212
    return-void

    #@a
    .line 215
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    #@c
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@f
    .line 216
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@11
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@14
    .line 218
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    #@16
    if-nez v1, :cond_1

    #@18
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 219
    new-instance v1, Landroid/os/AsyncResult;

    #@1e
    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@21
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@24
    .line 210
    :cond_1
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    #@0
    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    #@2
    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@4
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@7
    .line 287
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 340
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@2
    .line 341
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@4
    .line 343
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
    .line 346
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@2c
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@2e
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@30
    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    .line 348
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@35
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@37
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@3a
    .line 349
    const/16 v2, 0x1e

    #@3c
    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3f
    move-result-object v6

    #@40
    .line 348
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
    .line 338
    return-void
.end method

.method protected setServiceProviderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "spn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    #@2
    .line 390
    return-void
.end method

.method protected setSimLanguage([B[B)V
    .locals 4
    .param p1, "efLi"    # [B
    .param p2, "efPl"    # [B

    #@0
    .prologue
    .line 527
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
    .line 529
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
    .line 534
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;

    #@12
    if-nez v2, :cond_0

    #@14
    .line 536
    :try_start_1
    invoke-static {p2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->findBestLanguage([B[Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    #@1a
    .line 526
    :cond_0
    :goto_1
    return-void

    #@1b
    .line 530
    :catch_0
    move-exception v1

    #@1c
    .line 531
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
    .line 537
    .end local v1    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    #@39
    .line 538
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
    .line 651
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
    .line 653
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
    .line 650
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 611
    return-void
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(II)V
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    #@2
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 120
    .local v0, "iccIdToPrint":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "mDestroyed="

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 121
    const-string/jumbo v2, " mContext="

    #@1b
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 121
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    #@21
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 122
    const-string/jumbo v2, " mCi="

    #@28
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 122
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2e
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 123
    const-string/jumbo v2, " mFh="

    #@35
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 123
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@3b
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 124
    const-string/jumbo v2, " mParentApp="

    #@42
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 124
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@48
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 125
    const-string/jumbo v2, " recordsLoadedRegistrants="

    #@4f
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    .line 125
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@55
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    .line 126
    const-string/jumbo v2, " mImsiReadyRegistrants="

    #@5c
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@62
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    .line 127
    const-string/jumbo v2, " mRecordsEventsRegistrants="

    #@69
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    .line 127
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@6f
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    .line 128
    const-string/jumbo v2, " mNewSmsRegistrants="

    #@76
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    .line 128
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@7c
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    .line 129
    const-string/jumbo v2, " mNetworkSelectionModeAutomaticRegistrants="

    #@83
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    .line 130
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@89
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    .line 131
    const-string/jumbo v2, " recordsToLoad="

    #@90
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    .line 131
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    #@96
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    .line 132
    const-string/jumbo v2, " adnCache="

    #@9d
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    .line 132
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@a3
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v1

    #@a7
    .line 133
    const-string/jumbo v2, " recordsRequested="

    #@aa
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    .line 133
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    #@b0
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    .line 134
    const-string/jumbo v2, " iccid="

    #@b7
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v1

    #@bb
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v1

    #@bf
    .line 135
    const-string/jumbo v2, " msisdnTag="

    #@c2
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v1

    #@c6
    .line 135
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@c8
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v1

    #@cc
    .line 136
    const-string/jumbo v2, " voiceMailNum="

    #@cf
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v1

    #@d3
    .line 136
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    #@d5
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v1

    #@d9
    .line 137
    const-string/jumbo v2, " voiceMailTag="

    #@dc
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v1

    #@e0
    .line 137
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    #@e2
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v1

    #@e6
    .line 138
    const-string/jumbo v2, " newVoiceMailNum="

    #@e9
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v1

    #@ed
    .line 138
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@ef
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v1

    #@f3
    .line 139
    const-string/jumbo v2, " newVoiceMailTag="

    #@f6
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v1

    #@fa
    .line 139
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@fc
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v1

    #@100
    .line 140
    const-string/jumbo v2, " isVoiceMailFixed="

    #@103
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v1

    #@107
    .line 140
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    #@109
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v1

    #@10d
    .line 141
    const-string/jumbo v2, ""

    #@110
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v1

    #@114
    .line 142
    const-string/jumbo v2, " mncLength="

    #@117
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v1

    #@11b
    .line 142
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    #@11d
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@120
    move-result-object v1

    #@121
    .line 143
    const-string/jumbo v2, " mailboxIndex="

    #@124
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v1

    #@128
    .line 143
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    #@12a
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v1

    #@12e
    .line 144
    const-string/jumbo v2, " spn="

    #@131
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v1

    #@135
    .line 144
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    #@137
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v1

    #@13b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v1

    #@13f
    return-object v1
.end method

.method public unregisterForImsiReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 238
    return-void
.end method

.method public unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 268
    return-void
.end method

.method public unregisterForNewSms(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 259
    return-void
.end method

.method public unregisterForRecordsEvents(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 251
    return-void
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 222
    return-void
.end method
