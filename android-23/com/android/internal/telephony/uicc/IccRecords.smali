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
    .line 157
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@c
    .line 52
    new-instance v0, Landroid/os/RegistrantList;

    #@e
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@13
    .line 53
    new-instance v0, Landroid/os/RegistrantList;

    #@15
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@1a
    .line 54
    new-instance v0, Landroid/os/RegistrantList;

    #@1c
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@21
    .line 55
    new-instance v0, Landroid/os/RegistrantList;

    #@23
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@28
    .line 56
    new-instance v0, Landroid/os/RegistrantList;

    #@2a
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@2f
    .line 64
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    #@31
    .line 67
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@33
    .line 68
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@35
    .line 69
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdn:Ljava/lang/String;

    #@37
    .line 70
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdnTag:Ljava/lang/String;

    #@39
    .line 71
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    #@3b
    .line 72
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    #@3d
    .line 73
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@3f
    .line 74
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@41
    .line 75
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    #@43
    .line 79
    const/4 v0, -0x1

    #@44
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    #@46
    .line 80
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    #@48
    .line 88
    new-instance v0, Ljava/lang/Object;

    #@4a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@4d
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    #@4f
    .line 158
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    #@51
    .line 159
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@53
    .line 160
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@56
    move-result-object v0

    #@57
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@59
    .line 161
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5b
    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    #@5d
    .line 163
    const-string/jumbo v1, "phone"

    #@60
    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@63
    move-result-object v0

    #@64
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@66
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@68
    .line 157
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
    .line 524
    if-eqz p0, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    :cond_0
    return-object v5

    #@7
    .line 527
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
    .line 528
    new-instance v2, Ljava/lang/String;

    #@f
    const-string/jumbo v3, "ISO-8859-1"

    #@12
    invoke-direct {v2, p0, v0, v6, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@15
    .line 529
    .local v2, "lang":Ljava/lang/String;
    const/4 v1, 0x0

    #@16
    .local v1, "j":I
    :goto_1
    array-length v3, p1

    #@17
    if-ge v1, v3, :cond_3

    #@19
    .line 530
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
    .line 531
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
    .line 530
    if-eqz v3, :cond_2

    #@32
    .line 532
    return-object v2

    #@33
    .line 529
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_1

    #@36
    .line 527
    :cond_3
    add-int/lit8 v0, v0, 0x2

    #@38
    goto :goto_0

    #@39
    .line 538
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
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    const/4 v1, 0x1

    #@4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@7
    .line 171
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    .line 172
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@b
    .line 173
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@d
    .line 174
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    #@f
    .line 169
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "IccRecords: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, " mDestroyed="

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, " mCi="

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, " mFh="

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62
    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v2, " mParentApp="

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b
    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v2, " recordsLoadedRegistrants: size="

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@89
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@8c
    move-result v2

    #@8d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@98
    .line 687
    const/4 v0, 0x0

    #@99
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@9b
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@9e
    move-result v1

    #@9f
    if-ge v0, v1, :cond_0

    #@a1
    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v2, "  recordsLoadedRegistrants["

    #@a9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v1

    #@ad
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v1

    #@b1
    const-string/jumbo v2, "]="

    #@b4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v2

    #@b8
    .line 689
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@ba
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@bd
    move-result-object v1

    #@be
    check-cast v1, Landroid/os/Registrant;

    #@c0
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@c3
    move-result-object v1

    #@c4
    .line 688
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v1

    #@c8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v1

    #@cc
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cf
    .line 687
    add-int/lit8 v0, v0, 0x1

    #@d1
    goto :goto_0

    #@d2
    .line 691
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string/jumbo v2, " mImsiReadyRegistrants: size="

    #@da
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v1

    #@de
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@e0
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@e3
    move-result v2

    #@e4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v1

    #@e8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v1

    #@ec
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ef
    .line 692
    const/4 v0, 0x0

    #@f0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@f2
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@f5
    move-result v1

    #@f6
    if-ge v0, v1, :cond_1

    #@f8
    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v2, "  mImsiReadyRegistrants["

    #@100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v1

    #@104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@107
    move-result-object v1

    #@108
    const-string/jumbo v2, "]="

    #@10b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v2

    #@10f
    .line 694
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@111
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@114
    move-result-object v1

    #@115
    check-cast v1, Landroid/os/Registrant;

    #@117
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@11a
    move-result-object v1

    #@11b
    .line 693
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v1

    #@11f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v1

    #@123
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@126
    .line 692
    add-int/lit8 v0, v0, 0x1

    #@128
    goto :goto_1

    #@129
    .line 696
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v2, " mRecordsEventsRegistrants: size="

    #@131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v1

    #@135
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@137
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@13a
    move-result v2

    #@13b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v1

    #@13f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v1

    #@143
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@146
    .line 697
    const/4 v0, 0x0

    #@147
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@149
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@14c
    move-result v1

    #@14d
    if-ge v0, v1, :cond_2

    #@14f
    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    #@151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@154
    const-string/jumbo v2, "  mRecordsEventsRegistrants["

    #@157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v1

    #@15b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v1

    #@15f
    const-string/jumbo v2, "]="

    #@162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v2

    #@166
    .line 699
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@168
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@16b
    move-result-object v1

    #@16c
    check-cast v1, Landroid/os/Registrant;

    #@16e
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@171
    move-result-object v1

    #@172
    .line 698
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v1

    #@176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@179
    move-result-object v1

    #@17a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17d
    .line 697
    add-int/lit8 v0, v0, 0x1

    #@17f
    goto :goto_2

    #@180
    .line 701
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@185
    const-string/jumbo v2, " mNewSmsRegistrants: size="

    #@188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v1

    #@18c
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@18e
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@191
    move-result v2

    #@192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@195
    move-result-object v1

    #@196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v1

    #@19a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19d
    .line 702
    const/4 v0, 0x0

    #@19e
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@1a0
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@1a3
    move-result v1

    #@1a4
    if-ge v0, v1, :cond_3

    #@1a6
    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ab
    const-string/jumbo v2, "  mNewSmsRegistrants["

    #@1ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v1

    #@1b2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v1

    #@1b6
    const-string/jumbo v2, "]="

    #@1b9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v2

    #@1bd
    .line 704
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@1bf
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@1c2
    move-result-object v1

    #@1c3
    check-cast v1, Landroid/os/Registrant;

    #@1c5
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@1c8
    move-result-object v1

    #@1c9
    .line 703
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v1

    #@1cd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d0
    move-result-object v1

    #@1d1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d4
    .line 702
    add-int/lit8 v0, v0, 0x1

    #@1d6
    goto :goto_3

    #@1d7
    .line 706
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1dc
    const-string/jumbo v2, " mNetworkSelectionModeAutomaticRegistrants: size="

    #@1df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v1

    #@1e3
    .line 707
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@1e5
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@1e8
    move-result v2

    #@1e9
    .line 706
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v1

    #@1ed
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f0
    move-result-object v1

    #@1f1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f4
    .line 708
    const/4 v0, 0x0

    #@1f5
    :goto_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@1f7
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@1fa
    move-result v1

    #@1fb
    if-ge v0, v1, :cond_4

    #@1fd
    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    #@1ff
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@202
    const-string/jumbo v2, "  mNetworkSelectionModeAutomaticRegistrants["

    #@205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v1

    #@209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20c
    move-result-object v1

    #@20d
    const-string/jumbo v2, "]="

    #@210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v2

    #@214
    .line 710
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@216
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@219
    move-result-object v1

    #@21a
    check-cast v1, Landroid/os/Registrant;

    #@21c
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@21f
    move-result-object v1

    #@220
    .line 709
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@223
    move-result-object v1

    #@224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@227
    move-result-object v1

    #@228
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22b
    .line 708
    add-int/lit8 v0, v0, 0x1

    #@22d
    goto :goto_4

    #@22e
    .line 712
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    #@230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@233
    const-string/jumbo v2, " mRecordsRequested="

    #@236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v1

    #@23a
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    #@23c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v1

    #@240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@243
    move-result-object v1

    #@244
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@247
    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    #@249
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24c
    const-string/jumbo v2, " mRecordsToLoad="

    #@24f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@252
    move-result-object v1

    #@253
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    #@255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@258
    move-result-object v1

    #@259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25c
    move-result-object v1

    #@25d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@260
    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    #@262
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@265
    const-string/jumbo v2, " mRdnCache="

    #@268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26b
    move-result-object v1

    #@26c
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@26e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@271
    move-result-object v1

    #@272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@275
    move-result-object v1

    #@276
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@279
    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    #@27b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27e
    const-string/jumbo v2, " iccid="

    #@281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@284
    move-result-object v1

    #@285
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIccId:Ljava/lang/String;

    #@287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28a
    move-result-object v1

    #@28b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28e
    move-result-object v1

    #@28f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@292
    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    #@294
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@297
    const-string/jumbo v2, " mMsisdn="

    #@29a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29d
    move-result-object v1

    #@29e
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@2a0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v1

    #@2a4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a7
    move-result-object v1

    #@2a8
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ab
    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    #@2ad
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b0
    const-string/jumbo v2, " mMsisdnTag="

    #@2b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b6
    move-result-object v1

    #@2b7
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@2b9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bc
    move-result-object v1

    #@2bd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c0
    move-result-object v1

    #@2c1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c4
    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c9
    const-string/jumbo v2, " mVoiceMailNum="

    #@2cc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v1

    #@2d0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    #@2d2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v1

    #@2d6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d9
    move-result-object v1

    #@2da
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2dd
    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    #@2df
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e2
    const-string/jumbo v2, " mVoiceMailTag="

    #@2e5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v1

    #@2e9
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    #@2eb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v1

    #@2ef
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f2
    move-result-object v1

    #@2f3
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f6
    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2fb
    const-string/jumbo v2, " mNewVoiceMailNum="

    #@2fe
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@301
    move-result-object v1

    #@302
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@307
    move-result-object v1

    #@308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30b
    move-result-object v1

    #@30c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30f
    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    #@311
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@314
    const-string/jumbo v2, " mNewVoiceMailTag="

    #@317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31a
    move-result-object v1

    #@31b
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@31d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@320
    move-result-object v1

    #@321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@324
    move-result-object v1

    #@325
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@328
    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    #@32a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32d
    const-string/jumbo v2, " mIsVoiceMailFixed="

    #@330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@333
    move-result-object v1

    #@334
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    #@336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@339
    move-result-object v1

    #@33a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33d
    move-result-object v1

    #@33e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@341
    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    #@343
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@346
    const-string/jumbo v2, " mMncLength="

    #@349
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34c
    move-result-object v1

    #@34d
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    #@34f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@352
    move-result-object v1

    #@353
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@356
    move-result-object v1

    #@357
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35a
    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    #@35c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35f
    const-string/jumbo v2, " mMailboxIndex="

    #@362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@365
    move-result-object v1

    #@366
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    #@368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36b
    move-result-object v1

    #@36c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36f
    move-result-object v1

    #@370
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@373
    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    #@375
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@378
    const-string/jumbo v2, " mSpn="

    #@37b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37e
    move-result-object v1

    #@37f
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    #@381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@384
    move-result-object v1

    #@385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@388
    move-result-object v1

    #@389
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38c
    .line 727
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@38f
    .line 680
    return-void
.end method

.method public getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@2
    return-object v0
.end method

.method public abstract getDisplayRule(Ljava/lang/String;)I
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 289
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getGid2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 297
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 258
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 185
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
    .line 646
    const-string/jumbo v4, "getIccSimChallengeResponse:"

    #@4
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@7
    .line 649
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@a
    .line 650
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@c
    .line 651
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@e
    .line 652
    .local v3, "parentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 654
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 655
    const/16 v6, 0x5a

    #@18
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->obtainMessage(I)Landroid/os/Message;

    #@1b
    move-result-object v6

    #@1c
    .line 653
    invoke-interface {v0, p1, p2, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    .line 657
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
    .line 675
    const-string/jumbo v4, "getIccSimChallengeResponse: return auth_rsp"

    #@28
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@2b
    .line 677
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
    .line 658
    :catch_0
    move-exception v2

    #@36
    .line 659
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
    .line 661
    return-object v7

    #@3e
    .line 664
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
    .line 666
    return-object v7

    #@46
    .line 649
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
    .line 669
    :catch_1
    move-exception v1

    #@4a
    .line 670
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "getIccSimChallengeResponse: Fail while trying to request Icc Sim Auth"

    #@4d
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    #@50
    .line 672
    return-object v7
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    #@0
    .prologue
    .line 622
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNAI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 277
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 571
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
    .line 440
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    #@3
    if-nez v0, :cond_0

    #@5
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 441
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 443
    :cond_0
    return v1
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 344
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    #@2
    .line 348
    .local v3, "providerName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@4
    .line 349
    .local v2, "parentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_2

    #@6
    .line 350
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    #@9
    move-result-object v1

    #@a
    .line 351
    .local v1, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_1

    #@c
    .line 352
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 353
    .local v0, "brandOverride":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@12
    .line 354
    const-string/jumbo v4, "getServiceProviderName: override"

    #@15
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@18
    .line 355
    move-object v3, v0

    #@19
    .line 365
    .end local v0    # "brandOverride":Ljava/lang/String;
    .end local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "getServiceProviderName: providerName="

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@30
    .line 366
    return-object v3

    #@31
    .line 357
    .restart local v0    # "brandOverride":Ljava/lang/String;
    .restart local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    const-string/jumbo v4, "getServiceProviderName: no brandOverride"

    #@34
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@37
    goto :goto_0

    #@38
    .line 360
    .end local v0    # "brandOverride":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "getServiceProviderName: card is null"

    #@3b
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@3e
    goto :goto_0

    #@3f
    .line 363
    .end local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_2
    const-string/jumbo v4, "getServiceProviderName: mParentApp is null"

    #@42
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@45
    goto :goto_0
.end method

.method public getSimLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    #@0
    .prologue
    .line 626
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    #@0
    .prologue
    .line 580
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 335
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
    .line 452
    iget v4, p1, Landroid/os/Message;->what:I

    #@3
    sparse-switch v4, :sswitch_data_0

    #@6
    .line 494
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@9
    .line 449
    :goto_0
    return-void

    #@a
    .line 455
    :sswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v0, Landroid/os/AsyncResult;

    #@e
    .line 456
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@10
    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;

    #@12
    .line 457
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
    .line 459
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2f
    if-eqz v4, :cond_0

    #@31
    .line 460
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
    .line 469
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    #@4d
    goto :goto_0

    #@4e
    .line 462
    :cond_0
    :try_start_1
    invoke-interface {v3, v0}, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;->onRecordLoaded(Landroid/os/AsyncResult;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    goto :goto_1

    #@52
    .line 464
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "recordLoaded":Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;
    :catch_0
    move-exception v2

    #@53
    .line 466
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
    .line 469
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    #@6d
    goto :goto_0

    #@6e
    .line 467
    .end local v2    # "exc":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    #@6f
    .line 469
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    #@72
    .line 467
    throw v4

    #@73
    .line 474
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@75
    check-cast v0, Landroid/os/AsyncResult;

    #@77
    .line 475
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/IccRecords;->auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    #@79
    .line 476
    const-string/jumbo v4, "EVENT_AKA_AUTHENTICATE_DONE"

    #@7c
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    #@7f
    .line 477
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@81
    if-eqz v4, :cond_1

    #@83
    .line 478
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
    .line 487
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    #@9e
    monitor-enter v5

    #@9f
    .line 488
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
    .line 481
    :cond_1
    :try_start_4
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@a9
    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@ab
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    #@ad
    .line 482
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
    .line 483
    :catch_1
    move-exception v1

    #@c8
    .line 484
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
    .line 487
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    #@e1
    monitor-exit v5

    #@e2
    throw v4

    #@e3
    .line 452
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
    .line 561
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    #@0
    .prologue
    .line 600
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
    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    #@5
    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@7
    .line 432
    .local v0, "parentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@9
    .line 433
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@c
    move-result-object v1

    #@d
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 435
    const/4 v1, 0x1

    #@12
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->obtainMessage(I)Landroid/os/Message;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 429
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
    .line 205
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 206
    return-void

    #@a
    .line 209
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    #@c
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@f
    .line 210
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@11
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@14
    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 213
    new-instance v1, Landroid/os/AsyncResult;

    #@1a
    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1d
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@20
    .line 204
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
    .line 243
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 244
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 242
    return-void
.end method

.method public registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 234
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 235
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 233
    return-void
.end method

.method public registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 221
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 222
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 226
    const/4 v1, 0x0

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    #@12
    .line 227
    const/4 v1, 0x1

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    #@1a
    .line 220
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
    .line 189
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 190
    return-void

    #@a
    .line 193
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    #@c
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@f
    .line 194
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@11
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@14
    .line 196
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    #@16
    if-nez v1, :cond_1

    #@18
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 197
    new-instance v1, Landroid/os/AsyncResult;

    #@1e
    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@21
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@24
    .line 188
    :cond_1
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    #@0
    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    #@2
    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@4
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@7
    .line 265
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 318
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@2
    .line 319
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@4
    .line 321
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
    .line 324
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@2c
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@2e
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    #@30
    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    .line 326
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@35
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@37
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@3a
    .line 327
    const/16 v2, 0x1e

    #@3c
    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3f
    move-result-object v6

    #@40
    .line 326
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
    .line 316
    return-void
.end method

.method protected setServiceProviderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "spn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    #@2
    .line 369
    return-void
.end method

.method protected setSimLanguage([B[B)V
    .locals 4
    .param p1, "efLi"    # [B
    .param p2, "efPl"    # [B

    #@0
    .prologue
    .line 506
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
    .line 508
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
    .line 513
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;

    #@12
    if-nez v2, :cond_0

    #@14
    .line 515
    :try_start_1
    invoke-static {p2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->findBestLanguage([B[Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    #@1a
    .line 505
    :cond_0
    :goto_1
    return-void

    #@1b
    .line 509
    :catch_0
    move-exception v1

    #@1c
    .line 510
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
    .line 516
    .end local v1    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    #@39
    .line 517
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
    .line 630
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
    .line 632
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
    .line 629
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 590
    return-void
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(II)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mDestroyed="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 113
    const-string/jumbo v1, " mContext="

    #@15
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 113
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    #@1b
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 114
    const-string/jumbo v1, " mCi="

    #@22
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 114
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@28
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 115
    const-string/jumbo v1, " mFh="

    #@2f
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@35
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 116
    const-string/jumbo v1, " mParentApp="

    #@3c
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 116
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@42
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 117
    const-string/jumbo v1, " recordsLoadedRegistrants="

    #@49
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 117
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@4f
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 118
    const-string/jumbo v1, " mImsiReadyRegistrants="

    #@56
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 118
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@5c
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 119
    const-string/jumbo v1, " mRecordsEventsRegistrants="

    #@63
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 119
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@69
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 120
    const-string/jumbo v1, " mNewSmsRegistrants="

    #@70
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 120
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@76
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 121
    const-string/jumbo v1, " mNetworkSelectionModeAutomaticRegistrants="

    #@7d
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 122
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@83
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v0

    #@87
    .line 123
    const-string/jumbo v1, " recordsToLoad="

    #@8a
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    .line 123
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    #@90
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v0

    #@94
    .line 124
    const-string/jumbo v1, " adnCache="

    #@97
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    .line 124
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@9d
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    .line 125
    const-string/jumbo v1, " recordsRequested="

    #@a4
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    .line 125
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    #@aa
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v0

    #@ae
    .line 126
    const-string/jumbo v1, " iccid="

    #@b1
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v0

    #@b5
    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIccId:Ljava/lang/String;

    #@b7
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v0

    #@bb
    .line 127
    const-string/jumbo v1, " msisdnTag="

    #@be
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v0

    #@c2
    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    #@c4
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v0

    #@c8
    .line 128
    const-string/jumbo v1, " voiceMailNum="

    #@cb
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v0

    #@cf
    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    #@d1
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v0

    #@d5
    .line 129
    const-string/jumbo v1, " voiceMailTag="

    #@d8
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v0

    #@dc
    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    #@de
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v0

    #@e2
    .line 130
    const-string/jumbo v1, " newVoiceMailNum="

    #@e5
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v0

    #@e9
    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@eb
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v0

    #@ef
    .line 131
    const-string/jumbo v1, " newVoiceMailTag="

    #@f2
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v0

    #@f6
    .line 131
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@f8
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v0

    #@fc
    .line 132
    const-string/jumbo v1, " isVoiceMailFixed="

    #@ff
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v0

    #@103
    .line 132
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    #@105
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@108
    move-result-object v0

    #@109
    .line 133
    const-string/jumbo v1, ""

    #@10c
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v0

    #@110
    .line 134
    const-string/jumbo v1, " mncLength="

    #@113
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v0

    #@117
    .line 134
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    #@119
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v0

    #@11d
    .line 135
    const-string/jumbo v1, " mailboxIndex="

    #@120
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v0

    #@124
    .line 135
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    #@126
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@129
    move-result-object v0

    #@12a
    .line 136
    const-string/jumbo v1, " spn="

    #@12d
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v0

    #@131
    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    #@133
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v0

    #@137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v0

    #@13b
    return-object v0
.end method

.method public unregisterForImsiReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 216
    return-void
.end method

.method public unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 246
    return-void
.end method

.method public unregisterForNewSms(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 237
    return-void
.end method

.method public unregisterForRecordsEvents(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 229
    return-void
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 200
    return-void
.end method
