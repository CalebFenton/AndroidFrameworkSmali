.class public Landroid/service/notification/ZenModeConfig$EventInfo;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventInfo"
.end annotation


# static fields
.field public static final greylist-max-o REPLY_ANY_EXCEPT_NO:I = 0x0

.field public static final greylist-max-o REPLY_YES:I = 0x2

.field public static final greylist-max-o REPLY_YES_OR_MAYBE:I = 0x1


# instance fields
.field public blacklist calName:Ljava/lang/String;

.field public blacklist calendarId:Ljava/lang/Long;

.field public greylist-max-o reply:I

.field public greylist-max-o userId:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 2429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2434
    const/16 v0, -0x2710

    iput v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    return-void
.end method

.method public static greylist-max-o resolveUserId(I)I
    .registers 2
    .param p0, "userId"    # I

    .line 2464
    const/16 v0, -0x2710

    if-ne p0, v0, :cond_9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_a

    :cond_9
    move v0, p0

    :goto_a
    return v0
.end method


# virtual methods
.method public greylist-max-o copy()Landroid/service/notification/ZenModeConfig$EventInfo;
    .registers 3

    .line 2455
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 2456
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$EventInfo;
    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 2457
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 2458
    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 2459
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 2460
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 2446
    instance-of v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2447
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 2448
    .local v0, "other":Landroid/service/notification/ZenModeConfig$EventInfo;
    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 2449
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 2451
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    nop

    .line 2448
    :goto_2c
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 2441
    iget v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iget v3, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
