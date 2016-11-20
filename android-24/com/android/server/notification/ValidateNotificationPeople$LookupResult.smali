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
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 376
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    #@6
    .line 379
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
    .line 378
    return-void
.end method

.method private isExpired()Z
    .locals 4

    #@0
    .prologue
    .line 410
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
    .line 414
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
    .line 418
    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isInvalid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 419
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 421
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
    const/4 v2, 0x0

    #@1
    .line 383
    iget v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    #@3
    const/high16 v5, 0x3f000000    # 0.5f

    #@5
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    #@8
    move-result v4

    #@9
    iput v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    #@b
    .line 387
    const-string/jumbo v4, "_id"

    #@e
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@11
    move-result v1

    #@12
    .line 388
    .local v1, "idIdx":I
    if-ltz v1, :cond_4

    #@14
    .line 389
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    #@17
    move-result v0

    #@18
    .line 390
    .local v0, "id":I
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    const-string/jumbo v4, "ValidateNoPeople"

    #@21
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v6, "contact _ID is: "

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 397
    :cond_0
    :goto_0
    const-string/jumbo v4, "starred"

    #@3b
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3e
    move-result v3

    #@3f
    .line 398
    .local v3, "starIdx":I
    if-ltz v3, :cond_5

    #@41
    .line 399
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_1

    #@47
    const/4 v2, 0x1

    #@48
    .line 400
    .local v2, "isStarred":Z
    :cond_1
    if-eqz v2, :cond_2

    #@4a
    .line 401
    iget v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    #@4c
    const/high16 v5, 0x3f800000    # 1.0f

    #@4e
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    #@51
    move-result v4

    #@52
    iput v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    #@54
    .line 403
    :cond_2
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@57
    move-result v4

    #@58
    if-eqz v4, :cond_3

    #@5a
    const-string/jumbo v4, "ValidateNoPeople"

    #@5d
    new-instance v5, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v6, "contact STARRED is: "

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 382
    .end local v2    # "isStarred":Z
    :cond_3
    :goto_1
    return-void

    #@75
    .line 392
    .end local v0    # "id":I
    .end local v3    # "starIdx":I
    :cond_4
    const/4 v0, -0x1

    #@76
    .line 393
    .restart local v0    # "id":I
    const-string/jumbo v4, "ValidateNoPeople"

    #@79
    const-string/jumbo v5, "invalid cursor: no _ID"

    #@7c
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    goto :goto_0

    #@80
    .line 405
    .restart local v3    # "starIdx":I
    :cond_5
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@83
    move-result v4

    #@84
    if-eqz v4, :cond_3

    #@86
    const-string/jumbo v4, "ValidateNoPeople"

    #@89
    const-string/jumbo v5, "invalid cursor: no STARRED"

    #@8c
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    goto :goto_1
.end method
