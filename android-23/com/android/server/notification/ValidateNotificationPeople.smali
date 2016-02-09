.class public Lcom/android/server/notification/ValidateNotificationPeople;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;,
        Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLE_PEOPLE_VALIDATOR:Z = true

.field private static final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final MAX_PEOPLE:I = 0xa

.field static final NONE:F = 0.0f

.field private static final PEOPLE_CACHE_SIZE:I = 0xc8

.field private static final SETTING_ENABLE_PEOPLE_VALIDATOR:Ljava/lang/String; = "validate_notification_people_enabled"

.field static final STARRED_CONTACT:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ValidateNoPeople"

.field static final VALID_CONTACT:F = 0.5f

.field private static final VERBOSE:Z


# instance fields
.field private mBaseContext:Landroid/content/Context;

.field protected mEnabled:Z

.field private mEvictionCount:I

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPeopleCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUserToContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/ValidateNotificationPeople;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/notification/ValidateNotificationPeople;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "handle"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 53
    const-string/jumbo v0, "ValidateNoPeople"

    #@4
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    #@a
    .line 54
    const-string/jumbo v0, "ValidateNoPeople"

    #@d
    const/4 v1, 0x3

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@11
    move-result v0

    #@12
    sput-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    #@14
    .line 59
    new-array v0, v2, [Ljava/lang/String;

    #@16
    const-string/jumbo v1, "_id"

    #@19
    const/4 v2, 0x0

    #@1a
    aput-object v1, v0, v2

    #@1c
    const-string/jumbo v1, "starred"

    #@1f
    const/4 v2, 0x1

    #@20
    aput-object v1, v0, v2

    #@22
    sput-object v0, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    #@24
    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private getCacheKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "handle"    # Ljava/lang/String;

    #@0
    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, ":"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method private getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v3

    #@6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/content/Context;

    #@10
    .line 191
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    #@12
    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    #@14
    const-string/jumbo v3, "android"

    #@17
    const/4 v4, 0x0

    #@18
    invoke-virtual {v2, v3, v4, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    #@1b
    move-result-object v0

    #@1c
    .line 194
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    #@1e
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@21
    move-result v3

    #@22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v3

    #@26
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 199
    :cond_0
    :goto_0
    return-object v0

    #@2a
    .line 195
    :catch_0
    move-exception v1

    #@2b
    .line 196
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "ValidateNoPeople"

    #@2e
    const-string/jumbo v3, "failed to create package context for lookups"

    #@31
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34
    goto :goto_0
.end method

.method public static getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 12
    .param p0, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 269
    const-string/jumbo v8, "android.people"

    #@6
    invoke-virtual {p0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v6

    #@a
    .line 270
    .local v6, "people":Ljava/lang/Object;
    instance-of v8, v6, [Ljava/lang/String;

    #@c
    if-eqz v8, :cond_0

    #@e
    .line 271
    check-cast v6, [Ljava/lang/String;

    #@10
    .end local v6    # "people":Ljava/lang/Object;
    return-object v6

    #@11
    .line 274
    .restart local v6    # "people":Ljava/lang/Object;
    :cond_0
    instance-of v8, v6, Ljava/util/ArrayList;

    #@13
    if-eqz v8, :cond_5

    #@15
    move-object v2, v6

    #@16
    .line 275
    check-cast v2, Ljava/util/ArrayList;

    #@18
    .line 277
    .local v2, "arrayList":Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@1b
    move-result v8

    #@1c
    if-eqz v8, :cond_1

    #@1e
    .line 278
    return-object v11

    #@1f
    .line 281
    :cond_1
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v8

    #@23
    instance-of v8, v8, Ljava/lang/String;

    #@25
    if-eqz v8, :cond_2

    #@27
    .line 282
    move-object v7, v2

    #@28
    .line 283
    .local v7, "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v8

    #@2c
    new-array v8, v8, [Ljava/lang/String;

    #@2e
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@31
    move-result-object v8

    #@32
    check-cast v8, [Ljava/lang/String;

    #@34
    return-object v8

    #@35
    .line 286
    .end local v7    # "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v8

    #@39
    instance-of v8, v8, Ljava/lang/CharSequence;

    #@3b
    if-eqz v8, :cond_4

    #@3d
    .line 287
    move-object v4, v2

    #@3e
    .line 288
    .local v4, "charSeqList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@41
    move-result v0

    #@42
    .line 289
    .local v0, "N":I
    new-array v1, v0, [Ljava/lang/String;

    #@44
    .line 290
    .local v1, "array":[Ljava/lang/String;
    const/4 v5, 0x0

    #@45
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_3

    #@47
    .line 291
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v8

    #@4b
    check-cast v8, Ljava/lang/CharSequence;

    #@4d
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@50
    move-result-object v8

    #@51
    aput-object v8, v1, v5

    #@53
    .line 290
    add-int/lit8 v5, v5, 0x1

    #@55
    goto :goto_0

    #@56
    .line 293
    :cond_3
    return-object v1

    #@57
    .line 296
    .end local v0    # "N":I
    .end local v1    # "array":[Ljava/lang/String;
    .end local v4    # "charSeqList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v5    # "i":I
    :cond_4
    return-object v11

    #@58
    .line 299
    .end local v2    # "arrayList":Ljava/util/ArrayList;
    :cond_5
    instance-of v8, v6, Ljava/lang/String;

    #@5a
    if-eqz v8, :cond_6

    #@5c
    .line 300
    new-array v1, v10, [Ljava/lang/String;

    #@5e
    .line 301
    .restart local v1    # "array":[Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    #@60
    .end local v6    # "people":Ljava/lang/Object;
    aput-object v6, v1, v9

    #@62
    .line 302
    return-object v1

    #@63
    .line 305
    .end local v1    # "array":[Ljava/lang/String;
    .restart local v6    # "people":Ljava/lang/Object;
    :cond_6
    instance-of v8, v6, [C

    #@65
    if-eqz v8, :cond_7

    #@67
    .line 306
    new-array v1, v10, [Ljava/lang/String;

    #@69
    .line 307
    .restart local v1    # "array":[Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    #@6b
    check-cast v6, [C

    #@6d
    .end local v6    # "people":Ljava/lang/Object;
    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([C)V

    #@70
    aput-object v8, v1, v9

    #@72
    .line 308
    return-object v1

    #@73
    .line 311
    .end local v1    # "array":[Ljava/lang/String;
    .restart local v6    # "people":Ljava/lang/Object;
    :cond_7
    instance-of v8, v6, Ljava/lang/CharSequence;

    #@75
    if-eqz v8, :cond_8

    #@77
    .line 312
    new-array v1, v10, [Ljava/lang/String;

    #@79
    .line 313
    .restart local v1    # "array":[Ljava/lang/String;
    check-cast v6, Ljava/lang/CharSequence;

    #@7b
    .end local v6    # "people":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@7e
    move-result-object v8

    #@7f
    aput-object v8, v1, v9

    #@81
    .line 314
    return-object v1

    #@82
    .line 317
    .end local v1    # "array":[Ljava/lang/String;
    .restart local v6    # "people":Ljava/lang/Object;
    :cond_8
    instance-of v8, v6, [Ljava/lang/CharSequence;

    #@84
    if-eqz v8, :cond_a

    #@86
    move-object v3, v6

    #@87
    .line 318
    check-cast v3, [Ljava/lang/CharSequence;

    #@89
    .line 319
    .local v3, "charSeqArray":[Ljava/lang/CharSequence;
    array-length v0, v3

    #@8a
    .line 320
    .restart local v0    # "N":I
    new-array v1, v0, [Ljava/lang/String;

    #@8c
    .line 321
    .restart local v1    # "array":[Ljava/lang/String;
    const/4 v5, 0x0

    #@8d
    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v0, :cond_9

    #@8f
    .line 322
    aget-object v8, v3, v5

    #@91
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@94
    move-result-object v8

    #@95
    aput-object v8, v1, v5

    #@97
    .line 321
    add-int/lit8 v5, v5, 0x1

    #@99
    goto :goto_1

    #@9a
    .line 324
    :cond_9
    return-object v1

    #@9b
    .line 327
    .end local v0    # "N":I
    .end local v1    # "array":[Ljava/lang/String;
    .end local v3    # "charSeqArray":[Ljava/lang/CharSequence;
    .end local v5    # "i":I
    :cond_a
    return-object v11
.end method

.method private resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;

    #@0
    .prologue
    .line 338
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    #@2
    .line 339
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 337
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@9
    move-result-object v0

    #@a
    .line 340
    .local v0, "numberUri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method private resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 331
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #@2
    .line 332
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 331
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@9
    move-result-object v0

    #@a
    .line 333
    .local v0, "phoneUri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method private searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 344
    new-instance v7, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@2
    invoke-direct {v7}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    #@5
    .line 345
    .local v7, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    const/4 v6, 0x0

    #@6
    .line 347
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v0

    #@a
    sget-object v2, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    #@c
    const/4 v3, 0x0

    #@d
    const/4 v4, 0x0

    #@e
    const/4 v5, 0x0

    #@f
    move-object v1, p2

    #@10
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@13
    move-result-object v6

    #@14
    .line 348
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    #@16
    .line 349
    const-string/jumbo v0, "ValidateNoPeople"

    #@19
    const-string/jumbo v1, "Null cursor from contacts query."

    #@1c
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 358
    if-eqz v6, :cond_0

    #@21
    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@24
    .line 350
    :cond_0
    return-object v7

    #@25
    .line 352
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 353
    invoke-virtual {v7, v6}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergeContact(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 355
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    #@30
    .line 356
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v0, "ValidateNoPeople"

    #@33
    const-string/jumbo v1, "Problem getting content resolver or performing contacts query."

    #@36
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    .line 358
    if-eqz v6, :cond_2

    #@3b
    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@3e
    .line 362
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-object v7

    #@3f
    .line 358
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    if-eqz v6, :cond_2

    #@41
    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@44
    goto :goto_1

    #@45
    .line 357
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    #@46
    .line 358
    if-eqz v6, :cond_4

    #@48
    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@4b
    .line 357
    :cond_4
    throw v0
.end method

.method private validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 204
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .line 205
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@9
    move-result-object v7

    #@a
    iget-object v2, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@c
    .line 206
    .local v2, "extras":Landroid/os/Bundle;
    new-array v1, v6, [F

    #@e
    .line 207
    .local v1, "affinityOut":[F
    invoke-direct {p0, p1, v3, v2, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    #@11
    move-result-object v4

    #@12
    .line 208
    .local v4, "rr":Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    aget v0, v1, v5

    #@14
    .line 209
    .local v0, "affinity":F
    invoke-virtual {p2, v0}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    #@17
    .line 210
    if-nez v4, :cond_2

    #@19
    .line 211
    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@1b
    const/4 v7, 0x0

    #@1c
    cmpl-float v7, v0, v7

    #@1e
    if-lez v7, :cond_1

    #@20
    move v7, v6

    #@21
    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    #@23
    cmpl-float v9, v0, v9

    #@25
    if-nez v9, :cond_0

    #@27
    move v5, v6

    #@28
    :cond_0
    invoke-virtual {v8, p2, v7, v5, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    #@2b
    .line 216
    :goto_1
    return-object v4

    #@2c
    :cond_1
    move v7, v5

    #@2d
    .line 211
    goto :goto_0

    #@2e
    .line 214
    :cond_2
    invoke-virtual {v4, p2}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->setRecord(Lcom/android/server/notification/NotificationRecord;)V

    #@31
    goto :goto_1
.end method

.method private validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "affinityOut"    # [F

    #@0
    .prologue
    .line 221
    const/4 v6, 0x0

    #@1
    .line 222
    .local v6, "affinity":F
    if-nez p3, :cond_0

    #@3
    .line 223
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 226
    :cond_0
    invoke-static {p3}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    #@8
    move-result-object v10

    #@9
    .line 227
    .local v10, "people":[Ljava/lang/String;
    if-eqz v10, :cond_1

    #@b
    array-length v0, v10

    #@c
    if-nez v0, :cond_2

    #@e
    .line 228
    :cond_1
    const/4 v0, 0x0

    #@f
    return-object v0

    #@10
    .line 231
    :cond_2
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    #@12
    if-eqz v0, :cond_3

    #@14
    const-string/jumbo v0, "ValidateNoPeople"

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Validating: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, " for "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    #@31
    move-result v2

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 232
    :cond_3
    new-instance v4, Ljava/util/LinkedList;

    #@3f
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    #@42
    .line 233
    .local v4, "pendingLookups":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    #@43
    .local v11, "personIdx":I
    :goto_0
    array-length v0, v10

    #@44
    if-ge v11, v0, :cond_9

    #@46
    const/16 v0, 0xa

    #@48
    if-ge v11, v0, :cond_9

    #@4a
    .line 234
    aget-object v8, v10, v11

    #@4c
    .line 235
    .local v8, "handle":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_4

    #@52
    .line 233
    :goto_1
    add-int/lit8 v11, v11, 0x1

    #@54
    goto :goto_0

    #@55
    .line 237
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    #@57
    monitor-enter v1

    #@58
    .line 238
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    #@5b
    move-result v0

    #@5c
    invoke-direct {p0, v0, v8}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    .line 239
    .local v7, "cacheKey":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    #@62
    invoke-virtual {v0, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    move-result-object v9

    #@66
    check-cast v9, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@68
    .line 240
    .local v9, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    if-eqz v9, :cond_5

    #@6a
    invoke-static {v9}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->-wrap0(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z

    #@6d
    move-result v0

    #@6e
    if-eqz v0, :cond_8

    #@70
    .line 241
    :cond_5
    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@73
    .line 245
    :cond_6
    :goto_2
    if-eqz v9, :cond_7

    #@75
    .line 246
    invoke-virtual {v9}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    #@78
    move-result v0

    #@79
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7c
    move-result v6

    #@7d
    :cond_7
    monitor-exit v1

    #@7e
    goto :goto_1

    #@7f
    .line 243
    :cond_8
    :try_start_1
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    #@81
    if-eqz v0, :cond_6

    #@83
    const-string/jumbo v0, "ValidateNoPeople"

    #@86
    const-string/jumbo v2, "using cached lookupResult"

    #@89
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    goto :goto_2

    #@8d
    .line 237
    .end local v7    # "cacheKey":Ljava/lang/String;
    .end local v9    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :catchall_0
    move-exception v0

    #@8e
    monitor-exit v1

    #@8f
    throw v0

    #@90
    .line 252
    .end local v8    # "handle":Ljava/lang/String;
    :cond_9
    const/4 v0, 0x0

    #@91
    aput v6, p4, v0

    #@93
    .line 254
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    #@96
    move-result v0

    #@97
    if-eqz v0, :cond_b

    #@99
    .line 255
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    #@9b
    if-eqz v0, :cond_a

    #@9d
    const-string/jumbo v0, "ValidateNoPeople"

    #@a0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v2, "final affinity: "

    #@a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v1

    #@b4
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b7
    .line 256
    :cond_a
    const/4 v0, 0x0

    #@b8
    return-object v0

    #@b9
    .line 259
    :cond_b
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    #@bb
    if-eqz v0, :cond_c

    #@bd
    const-string/jumbo v0, "ValidateNoPeople"

    #@c0
    new-instance v1, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v2, "Pending: future work scheduled for: "

    #@c8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v1

    #@cc
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v1

    #@d0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v1

    #@d4
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    .line 260
    :cond_c
    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    #@d9
    const/4 v5, 0x0

    #@da
    move-object v1, p0

    #@db
    move-object v2, p1

    #@dc
    move-object v3, p2

    #@dd
    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;)V

    #@e0
    return-object v0
.end method


# virtual methods
.method public getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F
    .locals 10
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "timeoutMs"    # I
    .param p4, "timeoutAffinity"    # F

    #@0
    .prologue
    .line 149
    sget-boolean v7, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    #@2
    if-eqz v7, :cond_0

    #@4
    const-string/jumbo v7, "ValidateNoPeople"

    #@7
    new-instance v8, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v9, "checking affinity for "

    #@f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v8

    #@13
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v8

    #@17
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v8

    #@1b
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 150
    :cond_0
    if-nez p2, :cond_1

    #@20
    const/4 v7, 0x0

    #@21
    return v7

    #@22
    .line 151
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@25
    move-result-wide v8

    #@26
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    .line 152
    .local v4, "key":Ljava/lang/String;
    const/4 v7, 0x1

    #@2b
    new-array v1, v7, [F

    #@2d
    .line 153
    .local v1, "affinityOut":[F
    invoke-direct {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    #@30
    move-result-object v2

    #@31
    .line 154
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_2

    #@33
    .line 155
    const/4 v7, 0x0

    #@34
    return v7

    #@35
    .line 157
    :cond_2
    invoke-direct {p0, v2, v4, p2, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    #@38
    move-result-object v5

    #@39
    .line 158
    .local v5, "prr":Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    const/4 v7, 0x0

    #@3a
    aget v0, v1, v7

    #@3c
    .line 160
    .local v0, "affinity":F
    if-eqz v5, :cond_4

    #@3e
    .line 163
    new-instance v6, Ljava/util/concurrent/Semaphore;

    #@40
    const/4 v7, 0x0

    #@41
    invoke-direct {v6, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    #@44
    .line 164
    .local v6, "s":Ljava/util/concurrent/Semaphore;
    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@46
    new-instance v8, Lcom/android/server/notification/ValidateNotificationPeople$2;

    #@48
    invoke-direct {v8, p0, v5, v6}, Lcom/android/server/notification/ValidateNotificationPeople$2;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V

    #@4b
    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@4e
    .line 173
    int-to-long v8, p3

    #@4f
    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@51
    invoke-virtual {v6, v8, v9, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    #@54
    move-result v7

    #@55
    if-nez v7, :cond_3

    #@57
    .line 174
    const-string/jumbo v7, "ValidateNoPeople"

    #@5a
    new-instance v8, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v9, "Timeout while waiting for affinity: "

    #@62
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v8

    #@66
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v8

    #@6a
    const-string/jumbo v9, ". "

    #@6d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v8

    #@71
    .line 175
    const-string/jumbo v9, "Returning timeoutAffinity="

    #@74
    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v8

    #@7c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v8

    #@80
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@83
    .line 176
    return p4

    #@84
    .line 178
    :catch_0
    move-exception v3

    #@85
    .line 179
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "ValidateNoPeople"

    #@88
    new-instance v8, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v9, "InterruptedException while waiting for affinity: "

    #@90
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v8

    #@94
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v8

    #@98
    const-string/jumbo v9, ". "

    #@9b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v8

    #@9f
    .line 180
    const-string/jumbo v9, "Returning affinity="

    #@a2
    .line 179
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v8

    #@a6
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v8

    #@aa
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v8

    #@ae
    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b1
    .line 181
    return v0

    #@b2
    .line 184
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->getContactAffinity()F

    #@b5
    move-result v7

    #@b6
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    #@b9
    move-result v0

    #@ba
    .line 186
    .end local v6    # "s":Ljava/util/concurrent/Semaphore;
    :cond_4
    return v0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 90
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "ValidateNoPeople"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Initializing  "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0}, Lcom/android/server/notification/ValidateNotificationPeople;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, "."

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 91
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    #@30
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@33
    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    #@35
    .line 92
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    #@37
    .line 93
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@39
    .line 94
    new-instance v0, Landroid/util/LruCache;

    #@3b
    const/16 v2, 0xc8

    #@3d
    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    #@40
    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    #@42
    .line 96
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    #@44
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@47
    move-result-object v0

    #@48
    const-string/jumbo v2, "validate_notification_people_enabled"

    #@4b
    .line 95
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@4e
    move-result v0

    #@4f
    if-ne v1, v0, :cond_2

    #@51
    move v0, v1

    #@52
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    #@54
    .line 97
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    #@56
    if-eqz v0, :cond_1

    #@58
    .line 98
    new-instance v0, Landroid/os/Handler;

    #@5a
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@5d
    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    #@5f
    .line 99
    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$1;

    #@61
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    #@63
    invoke-direct {v0, p0, v2}, Lcom/android/server/notification/ValidateNotificationPeople$1;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;)V

    #@66
    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    #@68
    .line 110
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    #@6a
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6d
    move-result-object v0

    #@6e
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@70
    .line 111
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    #@72
    const/4 v4, -0x1

    #@73
    .line 110
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@76
    .line 89
    :cond_1
    return-void

    #@77
    .line 95
    :cond_2
    const/4 v0, 0x0

    #@78
    goto :goto_0
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 116
    iget-boolean v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 117
    sget-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    const-string/jumbo v1, "ValidateNoPeople"

    #@c
    const-string/jumbo v2, "disabled"

    #@f
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 118
    :cond_0
    return-object v3

    #@13
    .line 120
    :cond_1
    if-eqz p1, :cond_2

    #@15
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@18
    move-result-object v1

    #@19
    if-nez v1, :cond_4

    #@1b
    .line 121
    :cond_2
    sget-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    #@1d
    if-eqz v1, :cond_3

    #@1f
    const-string/jumbo v1, "ValidateNoPeople"

    #@22
    const-string/jumbo v2, "skipping empty notification"

    #@25
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 122
    :cond_3
    return-object v3

    #@29
    .line 124
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@2c
    move-result v1

    #@2d
    const/4 v2, -0x1

    #@2e
    if-ne v1, v2, :cond_6

    #@30
    .line 125
    sget-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    #@32
    if-eqz v1, :cond_5

    #@34
    const-string/jumbo v1, "ValidateNoPeople"

    #@37
    const-string/jumbo v2, "skipping global notification"

    #@3a
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 126
    :cond_5
    return-object v3

    #@3e
    .line 128
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    #@41
    move-result-object v1

    #@42
    invoke-direct {p0, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    #@45
    move-result-object v0

    #@46
    .line 129
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_8

    #@48
    .line 130
    sget-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    #@4a
    if-eqz v1, :cond_7

    #@4c
    const-string/jumbo v1, "ValidateNoPeople"

    #@4f
    const-string/jumbo v2, "skipping notification that lacks a context"

    #@52
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 131
    :cond_7
    return-object v3

    #@56
    .line 133
    :cond_8
    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    #@59
    move-result-object v1

    #@5a
    return-object v1
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    #@0
    .prologue
    .line 137
    return-void
.end method
