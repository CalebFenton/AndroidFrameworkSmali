.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UsimPhoneBookManager"

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z


# direct methods
.method static synthetic -set0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    #@2
    return p1
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .locals 2
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@4
    .line 47
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@b
    .line 49
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    #@d
    .line 50
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    #@f
    .line 54
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    #@11
    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@13
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@1a
    .line 80
    const/4 v0, 0x0

    #@1b
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    #@1d
    .line 83
    const/4 v0, 0x1

    #@1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    #@24
    .line 84
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@26
    .line 77
    return-void
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v0, 0x0

    #@1
    .line 325
    if-nez p1, :cond_0

    #@3
    .line 326
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    #@5
    .line 327
    const/4 v0, 0x0

    #@6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    #@c
    .line 328
    return-void

    #@d
    .line 330
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    #@f
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    #@14
    .line 324
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 450
    const-string/jumbo v0, "UsimPhoneBookManager"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 449
    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 6
    .param p1, "recNum"    # I

    #@0
    .prologue
    const/16 v5, 0xc2

    #@2
    .line 305
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    #@4
    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/util/Map;

    #@10
    .line 306
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    #@12
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    :cond_0
    return-void

    #@19
    .line 309
    :cond_1
    const/4 v1, 0x0

    #@1a
    .line 311
    .local v1, "extEf":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_2

    #@24
    .line 312
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v3

    #@28
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Ljava/lang/Integer;

    #@2e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@31
    move-result v1

    #@32
    .line 315
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@34
    const/16 v3, 0xc0

    #@36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v3

    #@3a
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object v3

    #@3e
    check-cast v3, Ljava/lang/Integer;

    #@40
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@43
    move-result v3

    #@44
    .line 316
    const/4 v5, 0x2

    #@45
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    #@48
    move-result-object v5

    #@49
    .line 315
    invoke-virtual {v4, v3, v1, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    #@4c
    .line 318
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@4e
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    .line 303
    :goto_0
    return-void

    #@52
    .line 319
    :catch_0
    move-exception v0

    #@53
    .line 320
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    #@56
    const-string/jumbo v4, "Interrupted Exception in readAdnFileAndWait"

    #@59
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 6
    .param p1, "recNum"    # I

    #@0
    .prologue
    const/16 v5, 0xca

    #@2
    .line 151
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    #@4
    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/util/Map;

    #@10
    .line 152
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_0

    #@12
    return-void

    #@13
    .line 154
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v3

    #@17
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_3

    #@1d
    .line 155
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v3

    #@21
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Ljava/lang/Integer;

    #@27
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@2a
    move-result v1

    #@2b
    .line 160
    .local v1, "efid":I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    #@2d
    if-eqz v3, :cond_1

    #@2f
    .line 161
    const/16 v3, 0xc1

    #@31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v3

    #@35
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Ljava/lang/Integer;

    #@3b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@3e
    move-result v3

    #@3f
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    #@42
    .line 162
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    #@44
    if-nez v3, :cond_1

    #@46
    .line 163
    const-string/jumbo v3, "UsimPhoneBookManager"

    #@49
    const-string/jumbo v4, "Error: IAP file is empty"

    #@4c
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 164
    return-void

    #@50
    .line 168
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@52
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v3

    #@56
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    move-result-object v3

    #@5a
    check-cast v3, Ljava/lang/Integer;

    #@5c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@5f
    move-result v3

    #@60
    .line 169
    const/4 v5, 0x4

    #@61
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    #@64
    move-result-object v5

    #@65
    .line 168
    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    #@68
    .line 171
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@6a
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    .line 176
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    #@6f
    if-nez v3, :cond_2

    #@71
    .line 177
    const-string/jumbo v3, "UsimPhoneBookManager"

    #@74
    const-string/jumbo v4, "Error: Email file is empty"

    #@77
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 178
    return-void

    #@7b
    .line 172
    :catch_0
    move-exception v0

    #@7c
    .line 173
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    #@7f
    const-string/jumbo v4, "Interrupted Exception in readEmailFileAndWait"

    #@82
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    goto :goto_0

    #@86
    .line 180
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord()V

    #@89
    .line 149
    .end local v1    # "efid":I
    :cond_3
    return-void
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 5
    .param p1, "recNum"    # I

    #@0
    .prologue
    .line 291
    const/4 v2, 0x0

    #@1
    .line 293
    .local v2, "emailRec":[B
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    .end local v2    # "emailRec":[B
    check-cast v2, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 299
    .local v2, "emailRec":[B
    array-length v3, v2

    #@a
    add-int/lit8 v3, v3, -0x2

    #@c
    const/4 v4, 0x0

    #@d
    invoke-static {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 300
    .local v1, "email":Ljava/lang/String;
    return-object v1

    #@12
    .line 294
    .end local v1    # "email":Ljava/lang/String;
    .end local v2    # "emailRec":[B
    :catch_0
    move-exception v0

    #@13
    .line 295
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v3, 0x0

    #@14
    return-object v3
.end method

.method private readIapFileAndWait(I)V
    .locals 3
    .param p1, "efid"    # I

    #@0
    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@2
    const/4 v2, 0x3

    #@3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    #@a
    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@c
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 185
    :goto_0
    return-void

    #@10
    .line 189
    :catch_0
    move-exception v0

    #@11
    .line 190
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "UsimPhoneBookManager"

    #@14
    const-string/jumbo v2, "Interrupted Exception in readIapFileAndWait"

    #@17
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    #@0
    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v2

    #@7
    const/16 v3, 0x4f30

    #@9
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    #@c
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@e
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 140
    :goto_0
    return-void

    #@12
    .line 144
    :catch_0
    move-exception v0

    #@13
    .line 145
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "UsimPhoneBookManager"

    #@16
    const-string/jumbo v2, "Interrupted Exception in readAdnFileAndWait"

    #@19
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    goto :goto_0
.end method

.method private refreshCache()V
    .locals 3

    #@0
    .prologue
    .line 127
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    #@2
    if-nez v2, :cond_0

    #@4
    return-void

    #@5
    .line 128
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 130
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    #@c
    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    #@e
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    #@11
    move-result v1

    #@12
    .line 131
    .local v1, "numRecs":I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@15
    .line 132
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    #@18
    .line 131
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 126
    :cond_1
    return-void
.end method

.method private updatePhoneAdnRecord()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 195
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    #@3
    if-nez v9, :cond_0

    #@5
    return-void

    #@6
    .line 196
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v5

    #@c
    .line 197
    .local v5, "numAdnRecs":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    #@e
    if-eqz v9, :cond_2

    #@10
    .line 203
    const/4 v3, 0x0

    #@11
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    #@13
    .line 204
    const/4 v8, 0x0

    #@14
    .line 206
    .local v8, "record":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v8

    #@1a
    .end local v8    # "record":[B
    check-cast v8, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 211
    .local v8, "record":[B
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    #@1e
    aget-byte v7, v8, v9

    #@20
    .line 213
    .local v7, "recNum":I
    const/4 v9, -0x1

    #@21
    if-eq v7, v9, :cond_1

    #@23
    .line 214
    const/4 v9, 0x1

    #@24
    new-array v2, v9, [Ljava/lang/String;

    #@26
    .line 216
    .local v2, "emails":[Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    #@28
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    #@2b
    move-result-object v9

    #@2c
    aput-object v9, v2, v11

    #@2e
    .line 217
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v6

    #@34
    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@36
    .line 218
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v6, :cond_4

    #@38
    .line 219
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    #@3b
    .line 224
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@40
    .line 203
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_0

    #@43
    .line 207
    .end local v7    # "recNum":I
    .end local v8    # "record":[B
    :catch_0
    move-exception v0

    #@44
    .line 208
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "UsimPhoneBookManager"

    #@47
    const-string/jumbo v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    #@4a
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 233
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "i":I
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@52
    move-result v4

    #@53
    .line 236
    .local v4, "len":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    #@55
    if-nez v9, :cond_3

    #@57
    .line 237
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(I)V

    #@5a
    .line 239
    :cond_3
    const/4 v3, 0x0

    #@5b
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v5, :cond_6

    #@5d
    .line 240
    const/4 v1, 0x0

    #@5e
    .line 242
    .local v1, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    #@60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v10

    #@64
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    move-result-object v1

    #@68
    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@6a
    .line 246
    .local v1, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_5

    #@6c
    .line 239
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@6e
    goto :goto_2

    #@6f
    .line 222
    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "len":I
    .restart local v2    # "emails":[Ljava/lang/String;
    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v7    # "recNum":I
    .restart local v8    # "record":[B
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@71
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string/jumbo v9, ""

    #@74
    const-string/jumbo v10, ""

    #@77
    invoke-direct {v6, v9, v10, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@7a
    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    goto :goto_1

    #@7b
    .line 248
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v7    # "recNum":I
    .end local v8    # "record":[B
    .restart local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "len":I
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@7d
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@80
    move-result-object v6

    #@81
    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@83
    .line 250
    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@86
    move-result v9

    #@87
    new-array v2, v9, [Ljava/lang/String;

    #@89
    .line 251
    .restart local v2    # "emails":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@8c
    move-result-object v9

    #@8d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@90
    move-result v10

    #@91
    invoke-static {v9, v11, v2, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@94
    .line 252
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    #@97
    .line 253
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@99
    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@9c
    goto :goto_3

    #@9d
    .line 243
    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_1
    move-exception v0

    #@9e
    .line 194
    :cond_6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 337
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 334
    :goto_0
    return-void

    #@6
    .line 339
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/os/AsyncResult;

    #@a
    .line 340
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c
    if-nez v1, :cond_0

    #@e
    .line 341
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@10
    check-cast v1, Ljava/util/ArrayList;

    #@12
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    #@15
    .line 343
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@17
    monitor-enter v2

    #@18
    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@1a
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :goto_1
    monitor-exit v2

    #@1e
    goto :goto_0

    #@1f
    .line 343
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1

    #@22
    .line 348
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string/jumbo v1, "Loading USIM ADN records done"

    #@25
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@28
    .line 349
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a
    check-cast v0, Landroid/os/AsyncResult;

    #@2c
    .line 350
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2e
    if-nez v1, :cond_1

    #@30
    .line 351
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@32
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@34
    check-cast v1, Ljava/util/ArrayList;

    #@36
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@39
    .line 353
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@3b
    monitor-enter v2

    #@3c
    .line 354
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@3e
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@41
    goto :goto_1

    #@42
    .line 353
    :catchall_1
    move-exception v1

    #@43
    monitor-exit v2

    #@44
    throw v1

    #@45
    .line 358
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string/jumbo v1, "Loading USIM IAP records done"

    #@48
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@4b
    .line 359
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4d
    check-cast v0, Landroid/os/AsyncResult;

    #@4f
    .line 360
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@51
    if-nez v1, :cond_2

    #@53
    .line 361
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@55
    check-cast v1, Ljava/util/ArrayList;

    #@57
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    #@59
    .line 363
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@5b
    monitor-enter v2

    #@5c
    .line 364
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@5e
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@61
    goto :goto_1

    #@62
    .line 363
    :catchall_2
    move-exception v1

    #@63
    monitor-exit v2

    #@64
    throw v1

    #@65
    .line 368
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    const-string/jumbo v1, "Loading USIM Email records done"

    #@68
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@6b
    .line 369
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6d
    check-cast v0, Landroid/os/AsyncResult;

    #@6f
    .line 370
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@71
    if-nez v1, :cond_3

    #@73
    .line 371
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@75
    check-cast v1, Ljava/util/ArrayList;

    #@77
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    #@79
    .line 374
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@7b
    monitor-enter v2

    #@7c
    .line 375
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@7e
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@81
    goto :goto_1

    #@82
    .line 374
    :catchall_3
    move-exception v1

    #@83
    monitor-exit v2

    #@84
    throw v1

    #@85
    .line 337
    nop

    #@86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public invalidateCache()V
    .locals 1

    #@0
    .prologue
    .line 137
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    #@3
    .line 136
    return-void
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 97
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 99
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 100
    const/4 v2, 0x0

    #@11
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    #@13
    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    #@16
    .line 103
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v3

    #@19
    return-object v2

    #@1a
    .line 106
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    #@1c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_2

    #@22
    monitor-exit v3

    #@23
    return-object v4

    #@24
    .line 110
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    #@26
    if-nez v2, :cond_3

    #@28
    .line 111
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    #@2b
    .line 114
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    if-nez v2, :cond_4

    #@2f
    monitor-exit v3

    #@30
    return-object v4

    #@31
    .line 116
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    #@33
    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    #@35
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    #@38
    move-result v1

    #@39
    .line 117
    .local v1, "numRecs":I
    const/4 v0, 0x0

    #@3a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@3c
    .line 118
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    #@3f
    .line 119
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    .line 117
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_0

    #@45
    :cond_5
    monitor-exit v3

    #@46
    .line 123
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@48
    return-object v2

    #@49
    .line 97
    .end local v0    # "i":I
    .end local v1    # "numRecs":I
    :catchall_0
    move-exception v2

    #@4a
    monitor-exit v3

    #@4b
    throw v2
.end method

.method parseType1EmailFile(I)V
    .locals 8
    .param p1, "numRecs"    # I

    #@0
    .prologue
    .line 258
    new-instance v6, Ljava/util/HashMap;

    #@2
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@5
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    #@7
    .line 259
    const/4 v3, 0x0

    #@8
    .line 260
    .local v3, "emailRec":[B
    const/4 v4, 0x0

    #@9
    .end local v3    # "emailRec":[B
    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_1

    #@b
    .line 262
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 267
    .local v3, "emailRec":[B
    array-length v6, v3

    #@14
    add-int/lit8 v6, v6, -0x1

    #@16
    aget-byte v0, v3, v6

    #@18
    .line 269
    .local v0, "adnRecNum":I
    const/4 v6, -0x1

    #@19
    if-ne v0, v6, :cond_2

    #@1b
    .line 260
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 263
    .end local v0    # "adnRecNum":I
    .end local v3    # "emailRec":[B
    :catch_0
    move-exception v1

    #@1f
    .line 264
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v6, "UsimPhoneBookManager"

    #@22
    const-string/jumbo v7, "Error: Improper ICC card: No email record for ADN, continuing"

    #@25
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 257
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    return-void

    #@29
    .line 273
    .restart local v0    # "adnRecNum":I
    .restart local v3    # "emailRec":[B
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 275
    .local v2, "email":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@2f
    const-string/jumbo v6, ""

    #@32
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v6

    #@36
    if-nez v6, :cond_0

    #@38
    .line 280
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    #@3a
    add-int/lit8 v7, v0, -0x1

    #@3c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v7

    #@40
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v5

    #@44
    check-cast v5, Ljava/util/ArrayList;

    #@46
    .line 281
    .local v5, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_3

    #@48
    .line 282
    new-instance v5, Ljava/util/ArrayList;

    #@4a
    .end local v5    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@4d
    .line 284
    .restart local v5    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    .line 286
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    #@52
    add-int/lit8 v7, v0, -0x1

    #@54
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@57
    move-result-object v7

    #@58
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    goto :goto_1
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@6
    .line 89
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    #@8
    .line 90
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    #@a
    .line 91
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    #@c
    .line 92
    const/4 v0, 0x1

    #@d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    #@13
    .line 93
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    #@16
    .line 87
    return-void
.end method
