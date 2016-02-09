.class final Lcom/android/server/tv/TvInputManagerService$UserState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserState"
.end annotation


# instance fields
.field private final callbackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/media/tv/ITvInputManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final clientStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/TvInputManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field private final contentRatingSystemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private inputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/tv/TvInputManagerService$TvInputState;",
            ">;"
        }
    .end annotation
.end field

.field private mainSessionToken:Landroid/os/IBinder;

.field private final packageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

.field private final serviceStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/tv/TvInputManagerService$ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/TvInputManagerService$SessionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    #@2
    return-object p1
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1813
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    #@a
    .line 1816
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    #@11
    .line 1820
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    #@18
    .line 1823
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    #@1f
    .line 1826
    new-instance v0, Ljava/util/HashMap;

    #@21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    #@26
    .line 1829
    new-instance v0, Ljava/util/HashMap;

    #@28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    #@2d
    .line 1832
    new-instance v0, Ljava/util/HashSet;

    #@2f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@32
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;

    #@34
    .line 1835
    const/4 v0, 0x0

    #@35
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    #@37
    .line 1842
    new-instance v0, Lcom/android/server/tv/PersistentDataStore;

    #@39
    invoke-direct {v0, p1, p2}, Lcom/android/server/tv/PersistentDataStore;-><init>(Landroid/content/Context;I)V

    #@3c
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    #@3e
    .line 1841
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/android/server/tv/TvInputManagerService$UserState;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Landroid/content/Context;I)V

    #@3
    return-void
.end method
