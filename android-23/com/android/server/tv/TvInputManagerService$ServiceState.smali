.class final Lcom/android/server/tv/TvInputManagerService$ServiceState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceState"
.end annotation


# instance fields
.field private bound:Z

.field private callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

.field private final component:Landroid/content/ComponentName;

.field private final connection:Landroid/content/ServiceConnection;

.field private final inputList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final isHardware:Z

.field private reconnecting:Z

.field private service:Landroid/media/tv/ITvInputService;

.field private final sessionTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Landroid/content/ServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->inputList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)Landroid/media/tv/ITvInputService;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    #@2
    return-object p1
.end method

.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1891
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1880
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    #@c
    .line 1884
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->inputList:Ljava/util/List;

    #@13
    .line 1892
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    #@15
    .line 1893
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;

    #@17
    const/4 v1, 0x0

    #@18
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$InputServiceConnection;)V

    #@1b
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Landroid/content/ServiceConnection;

    #@1d
    .line 1894
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@24
    move-result-object v0

    #@25
    invoke-static {v0, p2}, Lcom/android/server/tv/TvInputManagerService;->-wrap3(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    #@28
    move-result v0

    #@29
    iput-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    #@2b
    .line 1891
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$ServiceState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    #@3
    return-void
.end method
