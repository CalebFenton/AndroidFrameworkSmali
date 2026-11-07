.class public final Landroid/app/StatusBarManager$DisableInfo;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatusBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisableInfo"
.end annotation


# instance fields
.field private blacklist mClock:Z

.field private blacklist mNavigateHome:Z

.field private blacklist mNotificationIcons:Z

.field private blacklist mNotificationPeeking:Z

.field private blacklist mQuickSettings:Z

.field private blacklist mRecents:Z

.field private blacklist mRotationSuggestion:Z

.field private blacklist mSearch:Z

.field private blacklist mStatusBarExpansion:Z

.field private blacklist mSystemIcons:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 6
    .param p1, "flags1"    # I
    .param p2, "flags2"    # I

    .line 1405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    .line 1407
    const/high16 v0, 0x200000

    and-int/2addr v0, p1

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    .line 1408
    const/high16 v0, 0x40000

    and-int/2addr v0, p1

    if-eqz v0, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    .line 1409
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2a

    move v0, v2

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    .line 1410
    const/high16 v0, 0x2000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_34

    move v0, v2

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    .line 1411
    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    if-eqz v0, :cond_3e

    move v0, v2

    goto :goto_3f

    :cond_3e
    move v0, v1

    :goto_3f
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    .line 1412
    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-eqz v0, :cond_48

    move v0, v2

    goto :goto_49

    :cond_48
    move v0, v1

    :goto_49
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    .line 1413
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_52

    move v0, v2

    goto :goto_53

    :cond_52
    move v0, v1

    :goto_53
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    .line 1414
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_5b

    move v0, v2

    goto :goto_5c

    :cond_5b
    move v0, v1

    :goto_5c
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    .line 1415
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_63

    move v1, v2

    :cond_63
    iput-boolean v1, p0, Landroid/app/StatusBarManager$DisableInfo;->mQuickSettings:Z

    .line 1416
    return-void
.end method


# virtual methods
.method public blacklist areAllComponentsDisabled()Z
    .registers 2

    .line 1593
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mQuickSettings:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public whitelist areAllComponentsEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1568
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mQuickSettings:Z

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public blacklist areNotificationIconsDisabled()Z
    .registers 2

    .line 1530
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    return v0
.end method

.method public blacklist areSystemIconsDisabled()Z
    .registers 2

    .line 1502
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    return v0
.end method

.method public blacklist isClockDisabled()Z
    .registers 2

    .line 1516
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    return v0
.end method

.method public whitelist isNavigateToHomeDisabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1443
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    return v0
.end method

.method public whitelist isNotificationPeekingDisabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1458
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    return v0
.end method

.method public blacklist isQuickSettingsDisabled()Z
    .registers 2

    .line 1559
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mQuickSettings:Z

    return v0
.end method

.method public whitelist isRecentsDisabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1473
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    return v0
.end method

.method public blacklist isRotationSuggestionDisabled()Z
    .registers 2

    .line 1545
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    return v0
.end method

.method public whitelist isSearchDisabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1488
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    return v0
.end method

.method public whitelist isStatusBarExpansionDisabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1428
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    return v0
.end method

.method public blacklist setClockDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1521
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    .line 1522
    return-void
.end method

.method public blacklist setDisableAll()V
    .registers 2

    .line 1600
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    .line 1601
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    .line 1602
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    .line 1603
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    .line 1604
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    .line 1605
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    .line 1606
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    .line 1607
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    .line 1608
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    .line 1609
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mQuickSettings:Z

    .line 1610
    return-void
.end method

.method public blacklist setEnableAll()V
    .registers 2

    .line 1575
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    .line 1576
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    .line 1577
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    .line 1578
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    .line 1579
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    .line 1580
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    .line 1581
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    .line 1582
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    .line 1583
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    .line 1584
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mQuickSettings:Z

    .line 1585
    return-void
.end method

.method public blacklist setNagivationHomeDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1448
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    .line 1449
    return-void
.end method

.method public blacklist setNotificationIconsDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1535
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    .line 1536
    return-void
.end method

.method public blacklist setNotificationPeekingDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1463
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    .line 1464
    return-void
.end method

.method public blacklist setQuickSettingsDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1552
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mQuickSettings:Z

    .line 1553
    return-void
.end method

.method public blacklist setRecentsDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1478
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    .line 1479
    return-void
.end method

.method public blacklist setSearchDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1493
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    .line 1494
    return-void
.end method

.method public blacklist setStatusBarExpansionDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1433
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    .line 1434
    return-void
.end method

.method public blacklist setSystemIconsDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1507
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    .line 1508
    return-void
.end method

.method public blacklist toFlags()Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1640
    const/4 v0, 0x0

    .line 1641
    .local v0, "disable1":I
    const/4 v1, 0x0

    .line 1643
    .local v1, "disable2":I
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    if-eqz v2, :cond_9

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 1644
    :cond_9
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    if-eqz v2, :cond_10

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    .line 1645
    :cond_10
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    if-eqz v2, :cond_17

    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    .line 1646
    :cond_17
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    if-eqz v2, :cond_1e

    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    .line 1647
    :cond_1e
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    if-eqz v2, :cond_25

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    .line 1648
    :cond_25
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    if-eqz v2, :cond_2c

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    .line 1649
    :cond_2c
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    if-eqz v2, :cond_33

    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    .line 1650
    :cond_33
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    if-eqz v2, :cond_3a

    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    .line 1651
    :cond_3a
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    if-eqz v2, :cond_40

    or-int/lit8 v1, v1, 0x10

    .line 1652
    :cond_40
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mQuickSettings:Z

    if-eqz v2, :cond_46

    or-int/lit8 v1, v1, 0x1

    .line 1654
    :cond_46
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1616
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "DisableInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    const-string v1, " mStatusBarExpansion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    const-string v3, "disabled"

    const-string v4, "enabled"

    if-eqz v2, :cond_1a

    move-object v2, v3

    goto :goto_1b

    :cond_1a
    move-object v2, v4

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    const-string v1, " mNavigateHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    if-eqz v2, :cond_2a

    move-object v2, v3

    goto :goto_2b

    :cond_2a
    move-object v2, v4

    :goto_2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    const-string v1, " mNotificationPeeking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1620
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    if-eqz v2, :cond_3a

    move-object v2, v3

    goto :goto_3b

    :cond_3a
    move-object v2, v4

    :goto_3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    const-string v1, " mRecents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    if-eqz v2, :cond_4a

    move-object v2, v3

    goto :goto_4b

    :cond_4a
    move-object v2, v4

    :goto_4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    const-string v1, " mSearch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    if-eqz v2, :cond_5a

    move-object v2, v3

    goto :goto_5b

    :cond_5a
    move-object v2, v4

    :goto_5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    const-string v1, " mSystemIcons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    if-eqz v2, :cond_6a

    move-object v2, v3

    goto :goto_6b

    :cond_6a
    move-object v2, v4

    :goto_6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    const-string v1, " mClock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    if-eqz v2, :cond_7a

    move-object v2, v3

    goto :goto_7b

    :cond_7a
    move-object v2, v4

    :goto_7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    const-string v1, " mNotificationIcons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    if-eqz v2, :cond_8a

    move-object v2, v3

    goto :goto_8b

    :cond_8a
    move-object v2, v4

    :goto_8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    const-string v1, " mRotationSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    if-eqz v2, :cond_9a

    move-object v2, v3

    goto :goto_9b

    :cond_9a
    move-object v2, v4

    :goto_9b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    const-string v1, " mQuickSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mQuickSettings:Z

    if-eqz v2, :cond_a9

    goto :goto_aa

    :cond_a9
    move-object v3, v4

    :goto_aa
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
