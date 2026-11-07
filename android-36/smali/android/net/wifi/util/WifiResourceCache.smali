.class public Landroid/net/wifi/util/WifiResourceCache;
.super Ljava/lang/Object;
.source "WifiResourceCache.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WifiResourceCache"


# instance fields
.field private final blacklist mBooleanResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIntArrayResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mIntegerResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mResourceNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStringArrayResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStringResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTempId:I

.field private final blacklist mValueMapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$8mae3sFbJxqNfTKwR7B25lrTHVE(Landroid/net/wifi/util/WifiResourceCache;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/util/WifiResourceCache;->lambda$overrideBooleanValue$5(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ArJByoxeTG-2uJoFGHzMLMnuSlY(Landroid/net/wifi/util/WifiResourceCache;ILjava/lang/Integer;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/util/WifiResourceCache;->lambda$getBoolean$0(ILjava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$JJWhfGJfz1JjsVwG7f1_scwA9T0(Landroid/net/wifi/util/WifiResourceCache;ILjava/lang/Integer;)[Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/util/WifiResourceCache;->lambda$getStringArray$3(ILjava/lang/Integer;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$RDuxA0WOmmQ96dCjkppg4TrlX4I(Landroid/net/wifi/util/WifiResourceCache;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/util/WifiResourceCache;->lambda$overrideIntegerValue$6(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$WFhAWNe8cNB88b5avk-Kv63i9uU(Landroid/net/wifi/util/WifiResourceCache;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/util/WifiResourceCache;->lambda$overrideStringArrayValue$8(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$_o7NTAm5G2Y7mtb5M0XigKaFWMI(Landroid/net/wifi/util/WifiResourceCache;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/util/WifiResourceCache;->lambda$overrideIntArrayValue$9(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$gbBA-1oV9Kcq5kzEAF4ledP3xUY(Landroid/net/wifi/util/WifiResourceCache;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/util/WifiResourceCache;->lambda$overrideStringValue$7(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$h36rDFUbgx6OrhsoScuFjNbZ158(Landroid/net/wifi/util/WifiResourceCache;ILjava/lang/Integer;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/util/WifiResourceCache;->lambda$getString$2(ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$hafyixE-M5wDgpdZJrQKc9Q78Tw(Landroid/net/wifi/util/WifiResourceCache;ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/util/WifiResourceCache;->lambda$getInteger$1(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$hiE_MKF3aDrGOA221jgphT5qL1Y(Landroid/net/wifi/util/WifiResourceCache;ILjava/lang/Integer;)[I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/util/WifiResourceCache;->lambda$getIntArray$4(ILjava/lang/Integer;)[I

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mTempId:I

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Landroid/net/wifi/util/WifiResourceCache;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mBooleanResourceMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntegerResourceMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringArrayResourceMap:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntArrayResourceMap:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringResourceMap:Ljava/util/Map;

    .line 53
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mBooleanResourceMap:Ljava/util/Map;

    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntegerResourceMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntArrayResourceMap:Ljava/util/Map;

    iget-object v3, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringArrayResourceMap:Ljava/util/Map;

    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringResourceMap:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mValueMapList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    .line 56
    return-void
.end method

.method private synthetic blacklist lambda$getBoolean$0(ILjava/lang/Integer;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "resourceId"    # I
    .param p2, "v"    # Ljava/lang/Integer;

    .line 80
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getIntArray$4(ILjava/lang/Integer;)[I
    .registers 4
    .param p1, "resourceId"    # I
    .param p2, "v"    # Ljava/lang/Integer;

    .line 184
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getInteger$1(ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 4
    .param p1, "resourceId"    # I
    .param p2, "v"    # Ljava/lang/Integer;

    .line 106
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getString$2(ILjava/lang/Integer;)Ljava/lang/String;
    .registers 4
    .param p1, "resourceId"    # I
    .param p2, "v"    # Ljava/lang/Integer;

    .line 132
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getStringArray$3(ILjava/lang/Integer;)[Ljava/lang/String;
    .registers 4
    .param p1, "resourceId"    # I
    .param p2, "v"    # Ljava/lang/Integer;

    .line 158
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$overrideBooleanValue$5(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p1, "v"    # Ljava/lang/String;

    .line 196
    iget v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mTempId:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mTempId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$overrideIntArrayValue$9(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p1, "v"    # Ljava/lang/String;

    .line 280
    iget v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mTempId:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mTempId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$overrideIntegerValue$6(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p1, "v"    # Ljava/lang/String;

    .line 217
    iget v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mTempId:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mTempId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$overrideStringArrayValue$8(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p1, "v"    # Ljava/lang/String;

    .line 259
    iget v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mTempId:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mTempId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$overrideStringValue$7(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p1, "v"    # Ljava/lang/String;

    .line 238
    iget v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mTempId:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mTempId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private blacklist valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "input"    # Ljava/lang/Object;

    .line 315
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 316
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 318
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 298
    const-string v0, "Dump of WifiResourceCache"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    const-string v0, "WifiResourceCache - resource value Begin ----"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_d
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 302
    .local v2, "resourceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/net/wifi/util/WifiResourceCache;->mValueMapList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 303
    .local v4, "m":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource Name: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 305
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/util/WifiResourceCache;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    goto :goto_73

    .line 308
    .end local v4    # "m":Ljava/util/Map;
    :cond_72
    goto :goto_29

    .line 309
    .end local v2    # "resourceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_73
    :goto_73
    goto :goto_17

    .line 310
    :cond_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_d .. :try_end_75} :catchall_7b

    .line 311
    const-string v0, "WifiResourceCache - resource value End ----"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    return-void

    .line 310
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method public blacklist getBoolean(I)Z
    .registers 9
    .param p1, "resourceId"    # I

    .line 62
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mBooleanResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 64
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mBooleanResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 67
    :cond_21
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "resourceName":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 69
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 70
    .local v2, "tempId":I
    iget-object v3, p0, Landroid/net/wifi/util/WifiResourceCache;->mBooleanResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 71
    iget-object v3, p0, Landroid/net/wifi/util/WifiResourceCache;->mBooleanResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 72
    .local v3, "value":Z
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mBooleanResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mBooleanResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    monitor-exit v0

    return v3

    .line 78
    .end local v2    # "tempId":I
    .end local v3    # "value":Z
    :cond_7c
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mBooleanResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p1}, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda5;-><init>(Landroid/net/wifi/util/WifiResourceCache;I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 81
    .end local v1    # "resourceName":Ljava/lang/String;
    :catchall_9c
    move-exception v1

    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_3 .. :try_end_9e} :catchall_9c

    throw v1
.end method

.method public blacklist getIntArray(I)[I
    .registers 8
    .param p1, "resourceId"    # I

    .line 166
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntArrayResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 168
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntArrayResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    monitor-exit v0

    return-object v1

    .line 171
    :cond_1d
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "resourceName":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 173
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 174
    .local v2, "tempId":I
    iget-object v3, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntArrayResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 175
    iget-object v3, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntArrayResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 176
    .local v3, "value":[I
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntArrayResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntArrayResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    monitor-exit v0

    return-object v3

    .line 182
    .end local v2    # "tempId":I
    .end local v3    # "value":[I
    :cond_70
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntArrayResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1}, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda6;-><init>(Landroid/net/wifi/util/WifiResourceCache;I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    monitor-exit v0

    return-object v2

    .line 185
    .end local v1    # "resourceName":Ljava/lang/String;
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method public blacklist getInteger(I)I
    .registers 9
    .param p1, "resourceId"    # I

    .line 88
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntegerResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 90
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntegerResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 93
    :cond_21
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "resourceName":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 95
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    .local v2, "tempId":I
    iget-object v3, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntegerResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 97
    iget-object v3, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntegerResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 98
    .local v3, "value":I
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntegerResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntegerResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit v0

    return v3

    .line 104
    .end local v2    # "tempId":I
    .end local v3    # "value":I
    :cond_7c
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntegerResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/util/WifiResourceCache;I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    .line 107
    .end local v1    # "resourceName":Ljava/lang/String;
    :catchall_9c
    move-exception v1

    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_3 .. :try_end_9e} :catchall_9c

    throw v1
.end method

.method public blacklist getString(I)Ljava/lang/String;
    .registers 8
    .param p1, "resourceId"    # I

    .line 114
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 116
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 119
    :cond_1d
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "resourceName":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 121
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 122
    .local v2, "tempId":I
    iget-object v3, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 123
    iget-object v3, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    monitor-exit v0

    return-object v3

    .line 130
    .end local v2    # "tempId":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_70
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, p1}, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda9;-><init>(Landroid/net/wifi/util/WifiResourceCache;I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 133
    .end local v1    # "resourceName":Ljava/lang/String;
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method public blacklist getStringArray(I)[Ljava/lang/String;
    .registers 8
    .param p1, "resourceId"    # I

    .line 140
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringArrayResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 142
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringArrayResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 145
    :cond_1d
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "resourceName":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 147
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 148
    .local v2, "tempId":I
    iget-object v3, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringArrayResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 149
    iget-object v3, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringArrayResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 150
    .local v3, "value":[Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringArrayResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringArrayResourceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v4, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit v0

    return-object v3

    .line 156
    .end local v2    # "tempId":I
    .end local v3    # "value":[Ljava/lang/String;
    :cond_70
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringArrayResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1}, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/util/WifiResourceCache;I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 159
    .end local v1    # "resourceName":Ljava/lang/String;
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method public blacklist handleLocaleChange()V
    .registers 2

    .line 337
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringResourceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 338
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringArrayResourceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 339
    return-void
.end method

.method public blacklist overrideBooleanValue(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 195
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    new-instance v2, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/util/WifiResourceCache;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 197
    .local v1, "resourceId":I
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mBooleanResourceMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    nop

    .end local v1    # "resourceId":I
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist overrideIntArrayValue(Ljava/lang/String;[I)V
    .registers 7
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .line 279
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    new-instance v2, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/util/WifiResourceCache;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 281
    .local v1, "resourceId":I
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntArrayResourceMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    nop

    .end local v1    # "resourceId":I
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public blacklist overrideIntegerValue(Ljava/lang/String;I)V
    .registers 8
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 216
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    new-instance v2, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda7;-><init>(Landroid/net/wifi/util/WifiResourceCache;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 218
    .local v1, "resourceId":I
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntegerResourceMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    nop

    .end local v1    # "resourceId":I
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist overrideStringArrayValue(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .line 258
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    new-instance v2, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/util/WifiResourceCache;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 260
    .local v1, "resourceId":I
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringArrayResourceMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    nop

    .end local v1    # "resourceId":I
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public blacklist overrideStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 237
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    new-instance v2, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda8;-><init>(Landroid/net/wifi/util/WifiResourceCache;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 239
    .local v1, "resourceId":I
    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringResourceMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    nop

    .end local v1    # "resourceId":I
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public blacklist reset()V
    .registers 4

    .line 325
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mValueMapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 327
    .local v2, "m":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 328
    .end local v2    # "m":Ljava/util/Map;
    goto :goto_9

    .line 329
    :cond_19
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 330
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public blacklist restoreBooleanValue(Ljava/lang/String;)V
    .registers 5
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mBooleanResourceMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist restoreIntArrayValue(Ljava/lang/String;)V
    .registers 5
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 289
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntArrayResourceMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist restoreIntegerValue(Ljava/lang/String;)V
    .registers 5
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 226
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mIntegerResourceMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist restoreStringArrayValue(Ljava/lang/String;)V
    .registers 5
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 268
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringArrayResourceMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist restoreStringValue(Ljava/lang/String;)V
    .registers 5
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/util/WifiResourceCache;->mStringResourceMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/net/wifi/util/WifiResourceCache;->mResourceNameMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method
