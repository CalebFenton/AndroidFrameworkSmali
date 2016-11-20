.class public final Lcom/android/server/location/LocationBlacklist;
.super Landroid/database/ContentObserver;
.source "LocationBlacklist.java"


# static fields
.field private static final BLACKLIST_CONFIG_NAME:Ljava/lang/String; = "locationPackagePrefixBlacklist"

.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "LocationBlacklist"

.field private static final WHITELIST_CONFIG_NAME:Ljava/lang/String; = "locationPackagePrefixWhitelist"


# instance fields
.field private mBlacklist:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mLock:Ljava/lang/Object;

.field private mWhitelist:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    #@2
    sput-boolean v0, Lcom/android/server/location/LocationBlacklist;->D:Z

    #@4
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 56
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@4
    .line 47
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    #@b
    .line 50
    new-array v0, v1, [Ljava/lang/String;

    #@d
    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    #@f
    .line 51
    new-array v0, v1, [Ljava/lang/String;

    #@11
    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    #@13
    .line 53
    iput v1, p0, Lcom/android/server/location/LocationBlacklist;->mCurrentUserId:I

    #@15
    .line 57
    iput-object p1, p0, Lcom/android/server/location/LocationBlacklist;->mContext:Landroid/content/Context;

    #@17
    .line 55
    return-void
.end method

.method private getStringArrayLocked(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 128
    iget-object v5, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 129
    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/LocationBlacklist;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v6

    #@a
    .line 130
    iget v7, p0, Lcom/android/server/location/LocationBlacklist;->mCurrentUserId:I

    #@c
    .line 129
    invoke-static {v6, p1, v7}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v0

    #@10
    .local v0, "flatString":Ljava/lang/String;
    monitor-exit v5

    #@11
    .line 132
    if-nez v0, :cond_0

    #@13
    .line 133
    new-array v4, v4, [Ljava/lang/String;

    #@15
    return-object v4

    #@16
    .line 128
    .end local v0    # "flatString":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@17
    monitor-exit v5

    #@18
    throw v4

    #@19
    .line 135
    .restart local v0    # "flatString":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, ","

    #@1c
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 136
    .local v3, "splitStrings":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    #@22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 137
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v5, v3

    #@26
    :goto_0
    if-ge v4, v5, :cond_2

    #@28
    aget-object v1, v3, v4

    #@2a
    .line 138
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_1

    #@34
    .line 137
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@36
    goto :goto_0

    #@37
    .line 142
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_1

    #@3b
    .line 144
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v4

    #@3f
    new-array v4, v4, [Ljava/lang/String;

    #@41
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@44
    move-result-object v4

    #@45
    check-cast v4, [Ljava/lang/String;

    #@47
    return-object v4
.end method

.method private inWhitelist(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 106
    iget-object v3, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 107
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    #@6
    array-length v5, v4

    #@7
    move v1, v2

    #@8
    :goto_0
    if-ge v1, v5, :cond_1

    #@a
    aget-object v0, v4, v1

    #@c
    .line 108
    .local v0, "white":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    monitor-exit v3

    #@14
    return v1

    #@15
    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .end local v0    # "white":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    #@19
    .line 111
    return v2

    #@1a
    .line 106
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v3

    #@1c
    throw v1
.end method

.method private reloadBlacklist()V
    .locals 2

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/LocationBlacklist;->reloadBlacklistLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 75
    return-void

    #@8
    .line 76
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private reloadBlacklistLocked()V
    .locals 3

    #@0
    .prologue
    .line 69
    const-string/jumbo v0, "locationPackagePrefixWhitelist"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/location/LocationBlacklist;->getStringArrayLocked(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    #@9
    .line 70
    sget-boolean v0, Lcom/android/server/location/LocationBlacklist;->D:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    const-string/jumbo v0, "LocationBlacklist"

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "whitelist: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    #@1e
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 71
    :cond_0
    const-string/jumbo v0, "locationPackagePrefixBlacklist"

    #@30
    invoke-direct {p0, v0}, Lcom/android/server/location/LocationBlacklist;->getStringArrayLocked(Ljava/lang/String;)[Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    #@36
    .line 72
    sget-boolean v0, Lcom/android/server/location/LocationBlacklist;->D:Z

    #@38
    if-eqz v0, :cond_1

    #@3a
    const-string/jumbo v0, "LocationBlacklist"

    #@3d
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v2, "blacklist: "

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    iget-object v2, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    #@4b
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mWhitelist="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    #@e
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, " mBlacklist="

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 149
    iget-object v1, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    #@1f
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 147
    return-void
.end method

.method public init()V
    .locals 4

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 62
    const-string/jumbo v1, "locationPackagePrefixBlacklist"

    #@9
    .line 61
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v1

    #@d
    .line 62
    const/4 v2, 0x0

    #@e
    const/4 v3, -0x1

    #@f
    .line 61
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@12
    .line 65
    invoke-direct {p0}, Lcom/android/server/location/LocationBlacklist;->reloadBlacklist()V

    #@15
    .line 60
    return-void
.end method

.method public isBlacklisted(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 86
    iget-object v3, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 87
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    #@6
    array-length v5, v4

    #@7
    move v1, v2

    #@8
    :goto_0
    if-ge v1, v5, :cond_3

    #@a
    aget-object v0, v4, v1

    #@c
    .line 88
    .local v0, "black":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_0

    #@12
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationBlacklist;->inWhitelist(Ljava/lang/String;)Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_1

    #@18
    .line 87
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 92
    :cond_1
    sget-boolean v1, Lcom/android/server/location/LocationBlacklist;->D:Z

    #@1d
    if-eqz v1, :cond_2

    #@1f
    const-string/jumbo v1, "LocationBlacklist"

    #@22
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "dropping location (blacklisted): "

    #@2a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 93
    const-string/jumbo v4, " matches "

    #@35
    .line 92
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 94
    :cond_2
    const/4 v1, 0x1

    #@45
    monitor-exit v3

    #@46
    return v1

    #@47
    .end local v0    # "black":Ljava/lang/String;
    :cond_3
    monitor-exit v3

    #@48
    .line 99
    return v2

    #@49
    .line 86
    :catchall_0
    move-exception v1

    #@4a
    monitor-exit v3

    #@4b
    throw v1
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/location/LocationBlacklist;->reloadBlacklist()V

    #@3
    .line 115
    return-void
.end method

.method public switchUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 121
    :try_start_0
    iput p1, p0, Lcom/android/server/location/LocationBlacklist;->mCurrentUserId:I

    #@5
    .line 122
    invoke-direct {p0}, Lcom/android/server/location/LocationBlacklist;->reloadBlacklistLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 119
    return-void

    #@a
    .line 120
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method
