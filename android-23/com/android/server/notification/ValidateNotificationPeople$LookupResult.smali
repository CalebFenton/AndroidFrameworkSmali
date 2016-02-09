.class Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ValidateNotificationPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupResult"
.end annotation


# static fields
.field private static final CONTACT_REFRESH_MILLIS:J = 0x36ee80L


# instance fields
.field private mAffinity:F

.field private final mExpireMillis:J


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 369
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    #@6
    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v0

    #@a
    const-wide/32 v2, 0x36ee80

    #@d
    add-long/2addr v0, v2

    #@e
    iput-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    #@10
    .line 371
    return-void
.end method

.method private isExpired()Z
    .locals 4

    #@0
    .prologue
    .line 403
    iget-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    #@2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v2

    #@6
    cmp-long v0, v0, v2

    #@8
    if-gez v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private isInvalid()Z
    .locals 2

    #@0
    .prologue
    .line 407
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v0, v0, v1

    #@5
    if-eqz v0, :cond_0

    #@7
    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    #@a
    move-result v0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method


# virtual methods
.method public getAffinity()F
    .locals 1

    #@0
    .prologue
    .line 411
    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isInvalid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 412
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 414
    :cond_0
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    #@a
    return v0
.end method

.method public mergeContact(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 376
    iget v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    #@2
    const/high16 v5, 0x3f000000    # 0.5f

    #@4
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    #@7
    move-result v4

    #@8
    iput v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    #@a
    .line 380
    const-string/jumbo v4, "_id"

    #@d
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    .line 381
    .local v1, "idIdx":I
    if-ltz v1, :cond_3

    #@13
    .line 382
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    #@16
    move-result v0

    #@17
    .line 383
    .local v0, "id":I
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    const-string/jumbo v4, "ValidateNoPeople"

    #@20
    new-instance v5, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v6, "contact _ID is: "

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 390
    :cond_0
    :goto_0
    const-string/jumbo v4, "starred"

    #@3a
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3d
    move-result v3

    #@3e
    .line 391
    .local v3, "starIdx":I
    if-ltz v3, :cond_5

    #@40
    .line 392
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    #@43
    move-result v4

    #@44
    if-eqz v4, :cond_4

    #@46
    const/4 v2, 0x1

    #@47
    .line 393
    .local v2, "isStarred":Z
    :goto_1
    if-eqz v2, :cond_1

    #@49
    .line 394
    iget v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    #@4b
    const/high16 v5, 0x3f800000    # 1.0f

    #@4d
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    #@50
    move-result v4

    #@51
    iput v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    #@53
    .line 396
    :cond_1
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@56
    move-result v4

    #@57
    if-eqz v4, :cond_2

    #@59
    const-string/jumbo v4, "ValidateNoPeople"

    #@5c
    new-instance v5, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v6, "contact STARRED is: "

    #@64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 375
    .end local v2    # "isStarred":Z
    :cond_2
    :goto_2
    return-void

    #@74
    .line 385
    .end local v0    # "id":I
    .end local v3    # "starIdx":I
    :cond_3
    const/4 v0, -0x1

    #@75
    .line 386
    .restart local v0    # "id":I
    const-string/jumbo v4, "ValidateNoPeople"

    #@78
    const-string/jumbo v5, "invalid cursor: no _ID"

    #@7b
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    goto :goto_0

    #@7f
    .line 392
    .restart local v3    # "starIdx":I
    :cond_4
    const/4 v2, 0x0

    #@80
    .restart local v2    # "isStarred":Z
    goto :goto_1

    #@81
    .line 398
    .end local v2    # "isStarred":Z
    :cond_5
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@84
    move-result v4

    #@85
    if-eqz v4, :cond_2

    #@87
    const-string/jumbo v4, "ValidateNoPeople"

    #@8a
    const-string/jumbo v5, "invalid cursor: no STARRED"

    #@8d
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    goto :goto_2
.end method
