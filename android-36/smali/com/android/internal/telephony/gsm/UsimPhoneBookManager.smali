.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;
    }
.end annotation


# instance fields
.field private blacklist mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field private blacklist mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist mEmailsForAdnRec:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-r mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private blacklist mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist mIsPbrPresent:Ljava/lang/Boolean;

.field private greylist mLock:Ljava/lang/Object;

.field private blacklist mPbrRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRefreshCache:Z

.field private blacklist mSfiEfidTable:Landroid/util/SparseIntArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .registers 4

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 123
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 124
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 125
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    .line 126
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    return-void
.end method

.method private blacklist buildType1EmailList(I)V
    .registers 10

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_d8

    .line 297
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmMainFileRecordNum(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)I

    move-result v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Building type 1 email list. recId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", numRecs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_33
    if-ge v1, v0, :cond_d8

    .line 304
    :try_start_35
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_3d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_35 .. :try_end_3d} :catch_d1

    .line 319
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, v2, v3

    .line 320
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-byte v2, v2, v4

    .line 322
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_cd

    .line 324
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    goto/16 :goto_cd

    :cond_57
    const/4 v5, -0x1

    if-eq v3, v5, :cond_6a

    .line 330
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-nez v5, :cond_63

    goto :goto_6a

    .line 340
    :cond_63
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    goto :goto_85

    .line 334
    :cond_6a
    :goto_6a
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v3

    const/16 v5, 0xc0

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    if-nez v3, :cond_81

    goto :goto_cd

    .line 337
    :cond_81
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    move-result v3

    :goto_85
    const v5, 0xffff

    and-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v2, v2, -0x1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    .line 347
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_9f

    .line 349
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 351
    :cond_9f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding email #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " list to index 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 351
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_cd
    :goto_cd
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_33

    .line 306
    :catch_d1
    const-string p0, "UsimPhoneBookManager"

    const-string p1, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d8
    :goto_d8
    return-void
.end method

.method private blacklist buildType2EmailList(I)Z
    .registers 11

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 364
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmMainFileRecordNum(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)I

    move-result v0

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Building type 2 email list. recId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", numRecs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2

    const/16 v3, 0xc0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    .line 378
    const-string v3, "UsimPhoneBookManager"

    if-nez v2, :cond_50

    .line 379
    const-string p0, "Error: Improper ICC card: EF_ADN does not exist in PBR files"

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 382
    :cond_50
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    move-result v2

    :goto_54
    const/4 v4, 0x1

    if-ge v1, v0, :cond_cf

    .line 388
    :try_start_57
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 389
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 390
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v6

    const/16 v7, 0xca

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getIndex()I

    move-result v6

    aget-byte v5, v5, v6
    :try_end_79
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_57 .. :try_end_79} :catch_c7

    sub-int/2addr v5, v4

    .line 396
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_cc

    .line 397
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cc

    const v5, 0xffff

    and-int/2addr v5, v2

    shl-int/lit8 v5, v5, 0x8

    and-int/lit16 v6, v1, 0xff

    or-int/2addr v5, v6

    .line 400
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_a0

    .line 402
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 404
    :cond_a0
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding email list to index 0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 405
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 407
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_cc

    .line 392
    :catch_c7
    const-string v4, "Error: Improper ICC card: Corrupted EF_IAP"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    :goto_cc
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_cf
    return v4
.end method

.method private blacklist createPbrFile(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    const/4 p1, 0x0

    .line 504
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 505
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    return-void

    .line 509
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    .line 510
    :goto_13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_37

    .line 513
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aget-byte v2, v2, v0

    if-eq v2, v3, :cond_34

    .line 514
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;[B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 518
    :cond_37
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_3d
    :goto_3d
    if-ge v0, v1, :cond_6f

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    .line 519
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v4

    const/16 v5, 0xc0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    if-eqz v4, :cond_3d

    .line 522
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getSfi()I

    move-result v4

    if-eq v4, v3, :cond_3d

    .line 524
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    move-result v2

    invoke-virtual {v6, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3d

    :cond_6f
    return-void
.end method

.method private greylist log(Ljava/lang/String;)V
    .registers 2

    .line 675
    const-string p0, "UsimPhoneBookManager"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist readAdnFileAndWait(I)V
    .registers 7

    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 474
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_6b

    :cond_15
    const/16 v1, 0xc2

    .line 478
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 479
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    move-result v1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    const/16 v2, 0xc0

    .line 482
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_32

    goto :goto_6b

    .line 485
    :cond_32
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 486
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    move-result v0

    const/4 v2, 0x2

    .line 487
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 486
    invoke-virtual {v4, v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 489
    :try_start_4c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_51} :catch_52

    goto :goto_59

    .line 491
    :catch_52
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_59
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-$$Nest$fputmMainFileRecordNum(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method private blacklist readEmailFileAndWait(I)V
    .registers 10

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_10

    goto/16 :goto_e8

    :cond_10
    const/16 v1, 0xca

    .line 210
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    if-eqz v2, :cond_e8

    .line 219
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    const/16 v4, 0xa9

    const-string v5, "UsimPhoneBookManager"

    if-ne v3, v4, :cond_66

    const/16 v3, 0xc1

    .line 220
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_32

    .line 221
    const-string p0, "Can\'t locate EF_IAP in EF_PBR."

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 225
    :cond_32
    const-string v6, "EF_IAP exists. Loading EF_IAP to retrieve the index."

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_4e

    .line 228
    const-string p0, "Error: IAP file is empty"

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 232
    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_EMAIL order in PBR record: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 235
    :cond_66
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    move-result v0

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_EMAIL exists in PBR. efid = 0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_89
    if-ge v3, p1, :cond_b8

    .line 244
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b5

    .line 245
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v6

    if-eqz v6, :cond_b5

    .line 247
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    if-eqz v6, :cond_b5

    .line 248
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getEfid()I

    move-result v6

    if-ne v6, v0, :cond_b5

    .line 249
    const-string p1, "Skipped this EF_EMAIL which was loaded earlier"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void

    :cond_b5
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 257
    :cond_b8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v3, 0x4

    .line 258
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 257
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 260
    :try_start_c2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c7
    .catch Ljava/lang/InterruptedException; {:try_start_c2 .. :try_end_c7} :catch_c8

    goto :goto_cd

    .line 262
    :catch_c8
    const-string v0, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_cd
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_d7

    .line 266
    const-string p0, "Error: Email file is empty"

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 271
    :cond_d7
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->getParentTag()I

    move-result v0

    if-ne v0, v4, :cond_e5

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_e5

    .line 273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildType2EmailList(I)Z

    goto :goto_e8

    .line 283
    :cond_e5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildType1EmailList(I)V

    :cond_e8
    :goto_e8
    return-void
.end method

.method private blacklist readEmailRecord(I)Ljava/lang/String;
    .registers 3

    .line 461
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_11

    .line 467
    array-length p1, p0

    add-int/lit8 p1, p1, -0x2

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist readIapFileAndWait(I)V
    .registers 4

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 417
    :try_start_a
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    .line 419
    :catch_10
    const-string p0, "UsimPhoneBookManager"

    const-string p1, "Interrupted Exception in readIapFileAndWait"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist readPbrFileAndWait()V
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x4f30

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 198
    :try_start_c
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12

    return-void

    .line 200
    :catch_12
    const-string p0, "UsimPhoneBookManager"

    const-string v0, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist refreshCache()V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    goto :goto_19

    .line 181
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_19

    .line 185
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_19
    :goto_19
    return-void
.end method

.method private blacklist updatePhoneAdnRecord()V
    .registers 8

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_8b

    .line 429
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 431
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEfid()I

    move-result v4

    .line 432
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecId()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v5, -0x1

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 438
    :try_start_25
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;
    :try_end_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_25 .. :try_end_2d} :catch_87

    if-nez v4, :cond_30

    goto :goto_87

    .line 446
    :cond_30
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 447
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v6, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding email list to ADN (0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 450
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEfid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 451
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") record #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 452
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 453
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :catch_87
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_8b
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 534
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_72

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    return-void

    .line 566
    :cond_f
    const-string v0, "Loading USIM Email records done"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 567
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 568
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_22

    .line 569
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 572
    :cond_22
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_25
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 574
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2c

    throw p0

    .line 556
    :cond_2f
    const-string v0, "Loading USIM IAP records done"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 557
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 558
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_42

    .line 559
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 561
    :cond_42
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_45
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 563
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4c

    throw p0

    .line 546
    :cond_4f
    const-string v0, "Loading USIM ADN records done"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 547
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 548
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_65

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 551
    :cond_65
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_68
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 553
    monitor-exit v0

    return-void

    :catchall_6f
    move-exception p0

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_6f

    throw p0

    .line 536
    :cond_72
    const-string v0, "Loading PBR records done"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 537
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 538
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_86

    .line 539
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 541
    :cond_86
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 542
    :try_start_89
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 543
    monitor-exit p1

    return-void

    :catchall_90
    move-exception p0

    monitor-exit p1
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_90

    throw p0
.end method

.method public blacklist invalidateCache()V
    .registers 2

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    return-void
.end method

.method public greylist loadEfFilesFromUsim()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 146
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v1, :cond_18

    .line 147
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_4f

    .line 150
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    .line 153
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_27

    monitor-exit v0

    return-object v3

    .line 157
    :cond_27
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-nez v1, :cond_2e

    .line 158
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 161
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-nez v1, :cond_34

    .line 162
    monitor-exit v0

    return-object v3

    .line 164
    :cond_34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 166
    const-string v3, "loadEfFilesFromUsim: Loading adn and emails"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    :goto_3d
    if-ge v2, v1, :cond_48

    .line 168
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 169
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 172
    :cond_48
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord()V

    .line 174
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_16

    .line 175
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object p0

    .line 174
    :goto_4f
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_16

    throw p0
.end method

.method public greylist reset()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 133
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 134
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 135
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 138
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
