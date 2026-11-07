.class public Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.super Ljava/lang/Object;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    }
.end annotation


# static fields
.field protected static final greylist-max-r DBG:Z = true

.field protected static final blacklist EVENT_GET_SIZE_DONE:I = 0x1

.field protected static final blacklist EVENT_LOAD_DONE:I = 0x2

.field protected static final blacklist EVENT_UPDATE_DONE:I = 0x3


# instance fields
.field protected greylist-max-r mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field protected greylist mBaseHandler:Landroid/os/Handler;

.field protected greylist-max-r mPhone:Lcom/android/internal/telephony/Phone;

.field protected blacklist mSimPbRecordCache:Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 125
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 127
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 130
    :cond_18
    new-instance v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;

    .line 131
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;-><init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbRecordCache:Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;

    return-void
.end method

.method private blacklist generateAdnRecordWithNewTagByContentValues(IILandroid/content/ContentValues;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .registers 13

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 175
    :cond_4
    const-string v1, "newTag"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    const-string v1, "newNumber"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 177
    const-string v1, "newEmails"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    const-string v2, "newAnrs"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 179
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    move-object v7, v0

    goto :goto_29

    .line 180
    :cond_24
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEmailStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 181
    :goto_29
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    :goto_2f
    move-object v8, v0

    goto :goto_36

    :cond_31
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAnrStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 182
    :goto_36
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method

.method private blacklist generateAdnRecordWithOldTagByContentValues(Landroid/content/ContentValues;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 160
    :cond_4
    const-string v1, "tag"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "number"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    const-string v3, "emails"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    const-string v4, "anrs"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object v3, v0

    goto :goto_28

    .line 165
    :cond_24
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEmailStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 166
    :goto_28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_33

    :cond_2f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAnrStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_33
    new-instance p0, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist getAnrStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_9

    .line 406
    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getEmailStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_9

    .line 402
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist updateEfForIccType(I)I
    .registers 3

    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_11

    .line 394
    iget-object p0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p0, v0, :cond_11

    const/16 p0, 0x4f30

    return p0

    :cond_11
    return p1
.end method

.method private blacklist usesPbCache(I)Z
    .registers 2

    .line 460
    iget-object p0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbRecordCache:Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x4f30

    if-eq p1, p0, :cond_10

    const/16 p0, 0x6f3a

    if-ne p1, p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected greylist checkThread()V
    .registers 3

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 372
    :cond_11
    const-string v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 373
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot call query on this provder from the main UI thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist dispose()V
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbRecordCache:Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->dispose()V

    return-void
.end method

.method public blacklist getAdnRecordsCapacity()Lcom/android/internal/telephony/uicc/AdnCapacity;
    .registers 5

    .line 415
    const-string v0, "getAdnRecordsCapacity"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e6

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 424
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e0

    .line 427
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 428
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v3, :cond_38

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_31

    goto :goto_38

    .line 451
    :cond_31
    const-string v0, "No UICC when getAdnRecordsCapacity."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_e5

    .line 430
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 431
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbRecordCache:Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 432
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbRecordCache:Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getAdnCapacity()Lcom/android/internal/telephony/uicc/AdnCapacity;

    move-result-object v1

    goto :goto_4b

    :cond_4a
    move-object v1, v2

    :goto_4b
    if-nez v1, :cond_53

    .line 434
    const-string v0, "Adn capacity is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    return-object v2

    .line 438
    :cond_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsCapacity on slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": max adn="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxAdnCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", used adn="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getUsedAdnCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", max email="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxEmailCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", used email="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getUsedEmailCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", max anr="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxAnrCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", used anr="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getUsedAnrCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", max name length="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxNameLength()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", max number length ="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxNumberLength()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", max email length ="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxEmailLength()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", max anr length ="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxAnrLength()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    return-object v1

    .line 454
    :cond_e0
    const-string v0, "sim state is not ready when getAdnRecordsCapacity."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    :goto_e5
    return-object v2

    .line 419
    :cond_e6
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAdnRecordsInEf(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_74

    .line 340
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdnRecordsInEF: efid=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 347
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager-IA;)V

    .line 348
    monitor-enter v0

    .line 349
    :try_start_3a
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 350
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usesPbCache(I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 351
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbRecordCache:Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->requestLoadAllPbRecords(Landroid/os/Message;)V

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 353
    iget-object p0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_55
    move-exception p0

    goto :goto_72

    .line 355
    :cond_57
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v3, :cond_6b

    .line 357
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v1

    .line 356
    invoke-virtual {v3, p1, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 359
    iget-object p0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    .line 361
    :cond_6b
    const-string p1, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 362
    monitor-exit v0

    return-object v1

    .line 365
    :goto_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3a .. :try_end_73} :catchall_55

    throw p0

    .line 336
    :cond_74
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAdnRecordsSize(I)[I
    .registers 5

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdnRecordsSize: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 307
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager-IA;)V

    .line 308
    monitor-enter v0

    .line 310
    :try_start_1e
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 311
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 313
    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 314
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_42

    .line 316
    :cond_36
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_34

    .line 318
    iget-object p0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    if-nez p0, :cond_3f

    const/4 p0, 0x3

    new-array p0, p0, [I

    return-object p0

    :cond_3f
    check-cast p0, [I

    return-object p0

    .line 316
    :goto_42
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_34

    throw p0
.end method

.method protected greylist logd(Ljava/lang/String;)V
    .registers 3

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[IccPbInterfaceManager] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IccPhoneBookIM"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected greylist loge(Ljava/lang/String;)V
    .registers 3

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[IccPbInterfaceManager] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IccPhoneBookIM"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist updateAdnRecordsInEfByIndex(ILandroid/content/ContentValues;ILjava/lang/String;)Z
    .registers 14

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_91

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", values = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 271
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager-IA;)V

    .line 272
    monitor-enter v1

    .line 273
    :try_start_44
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 274
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usesPbCache(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/16 p1, 0x6f3a

    .line 276
    invoke-direct {p0, p1, p3, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->generateAdnRecordWithNewTagByContentValues(IILandroid/content/ContentValues;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object p1

    .line 278
    iget-object p2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbRecordCache:Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;

    invoke-virtual {p2, p3, p1, v8}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->updateSimPbAdnByRecordId(ILcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V

    .line 279
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 280
    iget-object p0, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_69
    move-exception v0

    move-object p0, v0

    goto :goto_8f

    .line 282
    :cond_6c
    invoke-direct {p0, p1, p3, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->generateAdnRecordWithNewTagByContentValues(IILandroid/content/ContentValues;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v5

    .line 283
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v3, :cond_87

    move v4, p1

    move v6, p3

    move-object v7, p4

    .line 284
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 285
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 286
    iget-object p0, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v1

    return p0

    .line 288
    :cond_87
    const-string p1, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 289
    monitor-exit v1

    return p0

    .line 292
    :goto_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_44 .. :try_end_90} :catchall_69

    throw p0

    .line 262
    :cond_91
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist updateAdnRecordsInEfBySearchForSubscriber(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 12

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8f

    .line 207
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v2

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateAdnRecordsWithContentValuesInEfBySearch: efid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", values = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pin2="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 215
    new-instance p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager-IA;)V

    .line 216
    monitor-enter p1

    .line 217
    :try_start_40
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 218
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->generateAdnRecordWithOldTagByContentValues(Landroid/content/ContentValues;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v3

    .line 219
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usesPbCache(I)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_6d

    const/16 p3, 0x6f3a

    .line 221
    invoke-direct {p0, p3, v7, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->generateAdnRecordWithNewTagByContentValues(IILandroid/content/ContentValues;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object p2

    .line 222
    iget-object p3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbRecordCache:Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;

    invoke-virtual {p3, v3, p2, v6}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->updateSimPbAdnBySearch(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 224
    iget-object p0, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit p1

    return p0

    :catchall_6a
    move-exception v0

    move-object p0, v0

    goto :goto_8d

    .line 226
    :cond_6d
    invoke-direct {p0, v2, v7, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->generateAdnRecordWithNewTagByContentValues(IILandroid/content/ContentValues;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v4

    .line 227
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v1, :cond_86

    move-object v5, p3

    .line 228
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 230
    iget-object p0, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit p1

    return p0

    .line 232
    :cond_86
    const-string p2, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 233
    monitor-exit p1

    return v7

    .line 236
    :goto_8d
    monitor-exit p1
    :try_end_8e
    .catchall {:try_start_40 .. :try_end_8e} :catchall_6a

    throw p0

    .line 204
    :cond_8f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .registers 2

    if-eqz p1, :cond_9

    .line 140
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    return-void

    :cond_9
    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    return-void
.end method

.method protected blacklist waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V
    .registers 3

    .line 379
    monitor-enter p1

    .line 380
    :goto_1
    :try_start_1
    iget-object v0, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_d

    if-nez v0, :cond_15

    .line 382
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_f
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_1

    :catchall_d
    move-exception p0

    goto :goto_17

    .line 384
    :catch_f
    :try_start_f
    const-string v0, "interrupted while trying to update by search"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 387
    :cond_15
    monitor-exit p1

    return-void

    :goto_17
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_d

    throw p0
.end method
