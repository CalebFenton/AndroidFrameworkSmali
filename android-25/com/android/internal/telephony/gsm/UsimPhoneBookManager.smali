.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final INVALID_BYTE:B = -0x1t

.field private static final INVALID_SFI:I = -0x1

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

.field private mEmailsForAdnRec:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
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

.field private mPbrRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;",
            ">;"
        }
    .end annotation
.end field

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

.field private mSfiEfidTable:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .locals 1
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 46
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@a
    .line 58
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    #@d
    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@f
    .line 112
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@16
    .line 113
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@19
    .line 116
    const/4 v0, 0x1

    #@1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    #@20
    .line 117
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@22
    .line 118
    new-instance v0, Landroid/util/SparseArray;

    #@24
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@27
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    #@29
    .line 119
    new-instance v0, Landroid/util/SparseIntArray;

    #@2b
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@2e
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    #@30
    .line 110
    return-void
.end method

.method private buildType1EmailList(I)V
    .locals 13
    .param p1, "recId"    # I

    #@0
    .prologue
    .line 285
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v11

    #@6
    if-nez v11, :cond_0

    #@8
    .line 286
    return-void

    #@9
    .line 288
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v11

    #@f
    check-cast v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    #@11
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-get1(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)I

    #@14
    move-result v9

    #@15
    .line 289
    .local v9, "numRecs":I
    new-instance v11, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v12, "Building type 1 email list. recId = "

    #@1d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v11

    #@21
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v11

    #@25
    .line 290
    const-string/jumbo v12, ", numRecs = "

    #@28
    .line 289
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v11

    #@2c
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v11

    #@30
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v11

    #@34
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@37
    .line 293
    const/4 v7, 0x0

    #@38
    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_2

    #@3a
    .line 295
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v5

    #@40
    check-cast v5, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 310
    .local v5, "emailRec":[B
    array-length v11, v5

    #@43
    add-int/lit8 v11, v11, -0x2

    #@45
    aget-byte v10, v5, v11

    #@47
    .line 311
    .local v10, "sfi":I
    array-length v11, v5

    #@48
    add-int/lit8 v11, v11, -0x1

    #@4a
    aget-byte v1, v5, v11

    #@4c
    .line 313
    .local v1, "adnRecId":I
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    .line 315
    .local v3, "email":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@52
    const-string/jumbo v11, ""

    #@55
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v11

    #@59
    if-eqz v11, :cond_3

    #@5b
    .line 293
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 296
    .end local v1    # "adnRecId":I
    .end local v3    # "email":Ljava/lang/String;
    .end local v5    # "emailRec":[B
    .end local v10    # "sfi":I
    :catch_0
    move-exception v2

    #@5f
    .line 297
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v11, "UsimPhoneBookManager"

    #@62
    const-string/jumbo v12, "Error: Improper ICC card: No email record for ADN, continuing"

    #@65
    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 280
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void

    #@69
    .line 320
    .restart local v1    # "adnRecId":I
    .restart local v3    # "email":Ljava/lang/String;
    .restart local v5    # "emailRec":[B
    .restart local v10    # "sfi":I
    :cond_3
    const/4 v0, 0x0

    #@6a
    .line 321
    .local v0, "adnEfid":I
    const/4 v11, -0x1

    #@6b
    if-eq v10, v11, :cond_4

    #@6d
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    #@6f
    invoke-virtual {v11, v10}, Landroid/util/SparseIntArray;->get(I)I

    #@72
    move-result v11

    #@73
    if-nez v11, :cond_6

    #@75
    .line 325
    :cond_4
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7a
    move-result-object v11

    #@7b
    check-cast v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    #@7d
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-get0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    #@80
    move-result-object v11

    #@81
    const/16 v12, 0xc0

    #@83
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@86
    move-result-object v6

    #@87
    check-cast v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    #@89
    .line 326
    .local v6, "file":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;
    if-eqz v6, :cond_1

    #@8b
    .line 328
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    #@8e
    move-result v0

    #@8f
    .line 337
    .end local v6    # "file":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;
    :goto_2
    const v11, 0xffff

    #@92
    and-int/2addr v11, v0

    #@93
    shl-int/lit8 v11, v11, 0x8

    #@95
    add-int/lit8 v12, v1, -0x1

    #@97
    and-int/lit16 v12, v12, 0xff

    #@99
    or-int v8, v11, v12

    #@9b
    .line 338
    .local v8, "index":I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    #@9d
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a0
    move-result-object v4

    #@a1
    check-cast v4, Ljava/util/ArrayList;

    #@a3
    .line 339
    .local v4, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v4, :cond_5

    #@a5
    .line 340
    new-instance v4, Ljava/util/ArrayList;

    #@a7
    .end local v4    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@aa
    .line 342
    .restart local v4    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v12, "Adding email #"

    #@b2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v11

    #@b6
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v11

    #@ba
    const-string/jumbo v12, " list to index 0x"

    #@bd
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v11

    #@c1
    .line 343
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c4
    move-result-object v12

    #@c5
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@c8
    move-result-object v12

    #@c9
    .line 342
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v11

    #@cd
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v11

    #@d1
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@d4
    .line 344
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d7
    .line 345
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    #@d9
    invoke-virtual {v11, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@dc
    goto/16 :goto_1

    #@de
    .line 331
    .end local v4    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "index":I
    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    #@e0
    invoke-virtual {v11, v10}, Landroid/util/SparseIntArray;->get(I)I

    #@e3
    move-result v0

    #@e4
    goto :goto_2
.end method

.method private buildType2EmailList(I)Z
    .locals 13
    .param p1, "recId"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 352
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v10

    #@7
    if-nez v10, :cond_0

    #@9
    .line 353
    return v12

    #@a
    .line 355
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v10

    #@10
    check-cast v10, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    #@12
    invoke-static {v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-get1(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)I

    #@15
    move-result v8

    #@16
    .line 356
    .local v8, "numRecs":I
    new-instance v10, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v11, "Building type 2 email list. recId = "

    #@1e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v10

    #@22
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v10

    #@26
    .line 357
    const-string/jumbo v11, ", numRecs = "

    #@29
    .line 356
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v10

    #@2d
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v10

    #@31
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v10

    #@35
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@38
    .line 368
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v10

    #@3e
    check-cast v10, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    #@40
    invoke-static {v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-get0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    #@43
    move-result-object v10

    #@44
    const/16 v11, 0xc0

    #@46
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v1

    #@4a
    check-cast v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    #@4c
    .line 369
    .local v1, "adnFile":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;
    if-nez v1, :cond_1

    #@4e
    .line 370
    const-string/jumbo v10, "UsimPhoneBookManager"

    #@51
    const-string/jumbo v11, "Error: Improper ICC card: EF_ADN does not exist in PBR files"

    #@54
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 371
    return v12

    #@58
    .line 373
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    #@5b
    move-result v0

    #@5c
    .line 375
    .local v0, "adnEfid":I
    const/4 v6, 0x0

    #@5d
    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_5

    #@5f
    .line 379
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    #@61
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@64
    move-result-object v9

    #@65
    check-cast v9, [B

    #@67
    .line 381
    .local v9, "record":[B
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@69
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6c
    move-result-object v10

    #@6d
    check-cast v10, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    #@6f
    invoke-static {v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-get0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    #@72
    move-result-object v10

    #@73
    const/16 v11, 0xca

    #@75
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@78
    move-result-object v10

    #@79
    check-cast v10, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    #@7b
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getIndex()I

    #@7e
    move-result v10

    #@7f
    aget-byte v5, v9, v10
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@81
    .line 387
    .local v5, "emailRecId":I
    add-int/lit8 v10, v5, -0x1

    #@83
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    #@86
    move-result-object v3

    #@87
    .line 388
    .local v3, "email":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@89
    const-string/jumbo v10, ""

    #@8c
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v10

    #@90
    if-eqz v10, :cond_3

    #@92
    .line 375
    .end local v3    # "email":Ljava/lang/String;
    .end local v5    # "emailRecId":I
    .end local v9    # "record":[B
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@94
    goto :goto_0

    #@95
    .line 382
    :catch_0
    move-exception v2

    #@96
    .line 383
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v10, "UsimPhoneBookManager"

    #@99
    const-string/jumbo v11, "Error: Improper ICC card: Corrupted EF_IAP"

    #@9c
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    goto :goto_1

    #@a0
    .line 390
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "email":Ljava/lang/String;
    .restart local v5    # "emailRecId":I
    .restart local v9    # "record":[B
    :cond_3
    const v10, 0xffff

    #@a3
    and-int/2addr v10, v0

    #@a4
    shl-int/lit8 v10, v10, 0x8

    #@a6
    and-int/lit16 v11, v6, 0xff

    #@a8
    or-int v7, v10, v11

    #@aa
    .line 391
    .local v7, "index":I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    #@ac
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@af
    move-result-object v4

    #@b0
    check-cast v4, Ljava/util/ArrayList;

    #@b2
    .line 392
    .local v4, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v4, :cond_4

    #@b4
    .line 393
    new-instance v4, Ljava/util/ArrayList;

    #@b6
    .end local v4    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@b9
    .line 395
    .restart local v4    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bc
    .line 396
    new-instance v10, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v11, "Adding email list to index 0x"

    #@c4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v10

    #@c8
    .line 397
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@cb
    move-result-object v11

    #@cc
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@cf
    move-result-object v11

    #@d0
    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v10

    #@d4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v10

    #@d8
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@db
    .line 398
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    #@dd
    invoke-virtual {v10, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@e0
    goto :goto_1

    #@e1
    .line 401
    .end local v3    # "email":Ljava/lang/String;
    .end local v4    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "emailRecId":I
    .end local v7    # "index":I
    .end local v9    # "record":[B
    :cond_5
    const/4 v10, 0x1

    #@e2
    return v10
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 11
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
    const/16 v10, 0xc0

    #@2
    const/4 v9, 0x0

    #@3
    const/4 v8, -0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 493
    if-nez p1, :cond_0

    #@7
    .line 494
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@9
    .line 495
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c
    move-result-object v5

    #@d
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    #@f
    .line 496
    return-void

    #@10
    .line 499
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    #@12
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@15
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@17
    .line 500
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v5

    #@1c
    if-ge v1, v5, :cond_2

    #@1e
    .line 503
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    check-cast v5, [B

    #@24
    aget-byte v5, v5, v9

    #@26
    if-eq v5, v8, :cond_1

    #@28
    .line 504
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@2a
    new-instance v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    #@2c
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v5

    #@30
    check-cast v5, [B

    #@32
    invoke-direct {v7, p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;[B)V

    #@35
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    .line 500
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 508
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@3d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v3

    #@41
    .local v3, "record$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_4

    #@47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v2

    #@4b
    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    #@4d
    .line 509
    .local v2, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-get0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v0

    #@55
    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    #@57
    .line 511
    .local v0, "file":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;
    if-eqz v0, :cond_3

    #@59
    .line 512
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getSfi()I

    #@5c
    move-result v4

    #@5d
    .line 513
    .local v4, "sfi":I
    if-eq v4, v8, :cond_3

    #@5f
    .line 514
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    #@61
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-get0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@68
    move-result-object v5

    #@69
    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    #@6b
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    #@6e
    move-result v5

    #@6f
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@72
    goto :goto_1

    #@73
    .line 492
    .end local v0    # "file":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;
    .end local v2    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    .end local v4    # "sfi":I
    :cond_4
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 663
    const-string/jumbo v0, "UsimPhoneBookManager"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 662
    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 7
    .param p1, "recId"    # I

    #@0
    .prologue
    const/16 v5, 0xc2

    #@2
    const/16 v6, 0xc0

    #@4
    .line 463
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v4

    #@a
    check-cast v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    #@c
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-get0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    #@f
    move-result-object v2

    #@10
    .line 464
    .local v2, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;>;"
    if-eqz v2, :cond_0

    #@12
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@15
    move-result v4

    #@16
    if-nez v4, :cond_1

    #@18
    :cond_0
    return-void

    #@19
    .line 466
    :cond_1
    const/4 v1, 0x0

    #@1a
    .line 468
    .local v1, "extEf":I
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    if-eqz v4, :cond_2

    #@20
    .line 469
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    #@26
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    #@29
    move-result v1

    #@2a
    .line 472
    :cond_2
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    if-nez v4, :cond_3

    #@30
    .line 473
    return-void

    #@31
    .line 475
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v3

    #@37
    .line 476
    .local v3, "previousSize":I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@39
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v4

    #@3d
    check-cast v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    #@3f
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    #@42
    move-result v4

    #@43
    .line 477
    const/4 v6, 0x2

    #@44
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    #@47
    move-result-object v6

    #@48
    .line 476
    invoke-virtual {v5, v4, v1, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    #@4b
    .line 479
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@4d
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 488
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v4

    #@56
    check-cast v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    #@58
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5d
    move-result v5

    #@5e
    sub-int/2addr v5, v3

    #@5f
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-set0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)I

    #@62
    .line 461
    return-void

    #@63
    .line 480
    :catch_0
    move-exception v0

    #@64
    .line 481
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v4, "UsimPhoneBookManager"

    #@67
    const-string/jumbo v5, "Interrupted Exception in readAdnFileAndWait"

    #@6a
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 11
    .param p1, "recId"    # I

    #@0
    .prologue
    const/16 v10, 0xca

    #@2
    const/16 v8, 0xc1

    #@4
    const/16 v9, 0xa9

    #@6
    .line 198
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v7

    #@c
    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    #@e
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-get0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    #@11
    move-result-object v3

    #@12
    .line 199
    .local v3, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;>;"
    if-nez v3, :cond_0

    #@14
    return-void

    #@15
    .line 201
    :cond_0
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    #@1b
    .line 202
    .local v1, "email":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;
    if-eqz v1, :cond_7

    #@1d
    .line 210
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getParentTag()I

    #@20
    move-result v7

    #@21
    if-ne v7, v9, :cond_3

    #@23
    .line 211
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v7

    #@27
    if-nez v7, :cond_1

    #@29
    .line 212
    const-string/jumbo v7, "UsimPhoneBookManager"

    #@2c
    const-string/jumbo v8, "Can\'t locate EF_IAP in EF_PBR."

    #@2f
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 213
    return-void

    #@33
    .line 216
    :cond_1
    const-string/jumbo v7, "EF_IAP exists. Loading EF_IAP to retrieve the index."

    #@36
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@39
    .line 217
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v7

    #@3d
    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    #@3f
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    #@42
    move-result v7

    #@43
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    #@46
    .line 218
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    #@48
    if-nez v7, :cond_2

    #@4a
    .line 219
    const-string/jumbo v7, "UsimPhoneBookManager"

    #@4d
    const-string/jumbo v8, "Error: IAP file is empty"

    #@50
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 220
    return-void

    #@54
    .line 223
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v8, "EF_EMAIL order in PBR record: "

    #@5c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getIndex()I

    #@63
    move-result v8

    #@64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v7

    #@68
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v7

    #@6c
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@6f
    .line 226
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    #@72
    move-result v2

    #@73
    .line 227
    .local v2, "emailEfid":I
    new-instance v7, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v8, "EF_EMAIL exists in PBR. efid = 0x"

    #@7b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v7

    #@7f
    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@82
    move-result-object v8

    #@83
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@86
    move-result-object v8

    #@87
    .line 227
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v7

    #@8b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v7

    #@8f
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@92
    .line 234
    const/4 v4, 0x0

    #@93
    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_5

    #@95
    .line 235
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@97
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9a
    move-result-object v7

    #@9b
    if-eqz v7, :cond_4

    #@9d
    .line 236
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@9f
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a2
    move-result-object v7

    #@a3
    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    #@a5
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-get0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    #@a8
    move-result-object v6

    #@a9
    .line 237
    .local v6, "previousFileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;>;"
    if-eqz v6, :cond_4

    #@ab
    .line 238
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@ae
    move-result-object v5

    #@af
    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    #@b1
    .line 239
    .local v5, "id":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;
    if-eqz v5, :cond_4

    #@b3
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    #@b6
    move-result v7

    #@b7
    if-ne v7, v2, :cond_4

    #@b9
    .line 240
    const-string/jumbo v7, "Skipped this EF_EMAIL which was loaded earlier"

    #@bc
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@bf
    .line 241
    return-void

    #@c0
    .line 234
    .end local v5    # "id":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;
    .end local v6    # "previousFileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;>;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@c2
    goto :goto_0

    #@c3
    .line 248
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@c5
    .line 249
    const/4 v8, 0x4

    #@c6
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    #@c9
    move-result-object v8

    #@ca
    .line 248
    invoke-virtual {v7, v2, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    #@cd
    .line 251
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@cf
    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@d2
    .line 256
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    #@d4
    if-nez v7, :cond_6

    #@d6
    .line 257
    const-string/jumbo v7, "UsimPhoneBookManager"

    #@d9
    const-string/jumbo v8, "Error: Email file is empty"

    #@dc
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@df
    .line 258
    return-void

    #@e0
    .line 252
    :catch_0
    move-exception v0

    #@e1
    .line 253
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "UsimPhoneBookManager"

    #@e4
    const-string/jumbo v8, "Interrupted Exception in readEmailFileAndWait"

    #@e7
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ea
    goto :goto_1

    #@eb
    .line 262
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getParentTag()I

    #@ee
    move-result v7

    #@ef
    if-ne v7, v9, :cond_8

    #@f1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    #@f3
    if-eqz v7, :cond_8

    #@f5
    .line 264
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildType2EmailList(I)Z

    #@f8
    .line 196
    .end local v2    # "emailEfid":I
    .end local v4    # "i":I
    :cond_7
    :goto_2
    return-void

    #@f9
    .line 274
    .restart local v2    # "emailEfid":I
    .restart local v4    # "i":I
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildType1EmailList(I)V

    #@fc
    goto :goto_2
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 4
    .param p1, "recId"    # I

    #@0
    .prologue
    .line 451
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 457
    .local v1, "emailRec":[B
    array-length v2, v1

    #@9
    add-int/lit8 v2, v2, -0x2

    #@b
    const/4 v3, 0x0

    #@c
    invoke-static {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 452
    .end local v1    # "emailRec":[B
    :catch_0
    move-exception v0

    #@12
    .line 453
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    #@13
    return-object v2
.end method

.method private readIapFileAndWait(I)V
    .locals 3
    .param p1, "efid"    # I

    #@0
    .prologue
    .line 406
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
    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@c
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 405
    :goto_0
    return-void

    #@10
    .line 409
    :catch_0
    move-exception v0

    #@11
    .line 410
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
    .line 187
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
    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@e
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 186
    :goto_0
    return-void

    #@12
    .line 190
    :catch_0
    move-exception v0

    #@13
    .line 191
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
    .line 171
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@2
    if-nez v2, :cond_0

    #@4
    return-void

    #@5
    .line 172
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 174
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v1

    #@10
    .line 175
    .local v1, "numRecs":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@13
    .line 176
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    #@16
    .line 175
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 170
    :cond_1
    return-void
.end method

.method private updatePhoneAdnRecord()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 416
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v7

    #@7
    .line 418
    .local v7, "numAdnRecs":I
    const/4 v5, 0x0

    #@8
    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_1

    #@a
    .line 420
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v8

    #@10
    check-cast v8, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@12
    .line 422
    .local v8, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEfid()I

    #@15
    move-result v0

    #@16
    .line 423
    .local v0, "adnEfid":I
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecId()I

    #@19
    move-result v1

    #@1a
    .line 425
    .local v1, "adnRecId":I
    const v9, 0xffff

    #@1d
    and-int/2addr v9, v0

    #@1e
    shl-int/lit8 v9, v9, 0x8

    #@20
    add-int/lit8 v10, v1, -0x1

    #@22
    and-int/lit16 v10, v10, 0xff

    #@24
    or-int v6, v9, v10

    #@26
    .line 429
    .local v6, "index":I
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 434
    .local v3, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    #@30
    .line 418
    .end local v3    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@32
    goto :goto_0

    #@33
    .line 437
    .restart local v3    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v9

    #@37
    new-array v4, v9, [Ljava/lang/String;

    #@39
    .line 438
    .local v4, "emails":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@3c
    move-result-object v9

    #@3d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v10

    #@41
    invoke-static {v9, v11, v4, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@44
    .line 439
    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    #@47
    .line 440
    new-instance v9, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v10, "Adding email list to ADN (0x"

    #@4f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v10

    #@53
    .line 441
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@58
    move-result-object v9

    #@59
    check-cast v9, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@5b
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEfid()I

    #@5e
    move-result v9

    #@5f
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@66
    move-result-object v9

    #@67
    .line 440
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v9

    #@6b
    .line 442
    const-string/jumbo v10, ") record #"

    #@6e
    .line 440
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v10

    #@72
    .line 442
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@74
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@77
    move-result-object v9

    #@78
    check-cast v9, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@7a
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecId()I

    #@7d
    move-result v9

    #@7e
    .line 440
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v9

    #@86
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@89
    .line 443
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v9, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@8e
    goto :goto_1

    #@8f
    .line 414
    .end local v0    # "adnEfid":I
    .end local v1    # "adnRecId":I
    .end local v3    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "emails":[Ljava/lang/String;
    .end local v6    # "index":I
    .end local v8    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    return-void

    #@90
    .line 430
    .restart local v0    # "adnEfid":I
    .restart local v1    # "adnRecId":I
    .restart local v6    # "index":I
    .restart local v8    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v2

    #@91
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 524
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 521
    :goto_0
    return-void

    #@6
    .line 526
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/os/AsyncResult;

    #@a
    .line 527
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c
    if-nez v1, :cond_0

    #@e
    .line 528
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@10
    check-cast v1, Ljava/util/ArrayList;

    #@12
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    #@15
    .line 530
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@17
    monitor-enter v2

    #@18
    .line 531
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
    .line 530
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1

    #@22
    .line 535
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string/jumbo v1, "Loading USIM ADN records done"

    #@25
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@28
    .line 536
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a
    check-cast v0, Landroid/os/AsyncResult;

    #@2c
    .line 537
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2e
    if-nez v1, :cond_1

    #@30
    .line 538
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@32
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@34
    check-cast v1, Ljava/util/ArrayList;

    #@36
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@39
    .line 540
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@3b
    monitor-enter v2

    #@3c
    .line 541
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@3e
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@41
    goto :goto_1

    #@42
    .line 540
    :catchall_1
    move-exception v1

    #@43
    monitor-exit v2

    #@44
    throw v1

    #@45
    .line 545
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string/jumbo v1, "Loading USIM IAP records done"

    #@48
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@4b
    .line 546
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4d
    check-cast v0, Landroid/os/AsyncResult;

    #@4f
    .line 547
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@51
    if-nez v1, :cond_2

    #@53
    .line 548
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@55
    check-cast v1, Ljava/util/ArrayList;

    #@57
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    #@59
    .line 550
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@5b
    monitor-enter v2

    #@5c
    .line 551
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@5e
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@61
    goto :goto_1

    #@62
    .line 550
    :catchall_2
    move-exception v1

    #@63
    monitor-exit v2

    #@64
    throw v1

    #@65
    .line 555
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    const-string/jumbo v1, "Loading USIM Email records done"

    #@68
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@6b
    .line 556
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6d
    check-cast v0, Landroid/os/AsyncResult;

    #@6f
    .line 557
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@71
    if-nez v1, :cond_3

    #@73
    .line 558
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@75
    check-cast v1, Ljava/util/ArrayList;

    #@77
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    #@79
    .line 561
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@7b
    monitor-enter v2

    #@7c
    .line 562
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@7e
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@81
    goto :goto_1

    #@82
    .line 561
    :catchall_3
    move-exception v1

    #@83
    monitor-exit v2

    #@84
    throw v1

    #@85
    .line 524
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
    .line 182
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    #@3
    .line 181
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
    .line 135
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 137
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 138
    const/4 v2, 0x0

    #@11
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    #@13
    .line 139
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    #@16
    .line 141
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v3

    #@19
    return-object v2

    #@1a
    .line 144
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
    .line 148
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@26
    if-nez v2, :cond_3

    #@28
    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    #@2b
    .line 152
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    if-nez v2, :cond_4

    #@2f
    monitor-exit v3

    #@30
    .line 153
    return-object v4

    #@31
    .line 155
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v1

    #@37
    .line 157
    .local v1, "numRecs":I
    const-string/jumbo v2, "loadEfFilesFromUsim: Loading adn and emails"

    #@3a
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    #@3d
    .line 158
    const/4 v0, 0x0

    #@3e
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@40
    .line 159
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    #@43
    .line 160
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    #@46
    .line 158
    add-int/lit8 v0, v0, 0x1

    #@48
    goto :goto_0

    #@49
    .line 163
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4c
    monitor-exit v3

    #@4d
    .line 166
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@4f
    return-object v2

    #@50
    .line 135
    .end local v0    # "i":I
    .end local v1    # "numRecs":I
    :catchall_0
    move-exception v2

    #@51
    monitor-exit v3

    #@52
    throw v2
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@6
    .line 124
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    #@8
    .line 125
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    #@a
    .line 126
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    #@c
    .line 127
    const/4 v0, 0x1

    #@d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    #@13
    .line 128
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    #@16
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@1b
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    #@1d
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@20
    .line 122
    return-void
.end method
