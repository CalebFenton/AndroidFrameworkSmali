.class public Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;
.super Ljava/lang/Object;
.source "ImsServiceFeatureQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;,
        Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;
    }
.end annotation


# instance fields
.field private final blacklist mActiveQueries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveQueries(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mActiveQueries:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;)V
    .registers 4

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mActiveQueries:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mLock:Ljava/lang/Object;

    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mContext:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    return-void
.end method


# virtual methods
.method public blacklist isQueryInProgress()Z
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mActiveQueries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 200
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public blacklist startQuery(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 6

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mActiveQueries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p0, 0x1

    .line 186
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    goto :goto_20

    .line 188
    :cond_10
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;-><init>(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mActiveQueries:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->start()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 191
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_e

    throw p0
.end method
