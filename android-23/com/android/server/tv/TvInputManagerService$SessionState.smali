.class final Lcom/android/server/tv/TvInputManagerService$SessionState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionState"
.end annotation


# instance fields
.field private final callingUid:I

.field private final client:Landroid/media/tv/ITvInputClient;

.field private hardwareSessionToken:Landroid/os/IBinder;

.field private final info:Landroid/media/tv/TvInputInfo;

.field private logUri:Landroid/net/Uri;

.field private final seq:I

.field private session:Landroid/media/tv/ITvInputSession;

.field private final sessionToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;

.field private final userId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->logUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    #@2
    return-object p1
.end method

.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Landroid/media/tv/TvInputInfo;Landroid/media/tv/ITvInputClient;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "client"    # Landroid/media/tv/ITvInputClient;
    .param p5, "seq"    # I
    .param p6, "callingUid"    # I
    .param p7, "userId"    # I

    #@0
    .prologue
    .line 1923
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1925
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    #@7
    .line 1926
    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;

    #@9
    .line 1927
    iput-object p4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    #@b
    .line 1928
    iput p5, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    #@d
    .line 1929
    iput p6, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    #@f
    .line 1930
    iput p7, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    #@11
    .line 1924
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Landroid/media/tv/TvInputInfo;Landroid/media/tv/ITvInputClient;IIILcom/android/server/tv/TvInputManagerService$SessionState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "client"    # Landroid/media/tv/ITvInputClient;
    .param p5, "seq"    # I
    .param p6, "callingUid"    # I
    .param p7, "userId"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Landroid/media/tv/TvInputInfo;Landroid/media/tv/ITvInputClient;III)V

    #@3
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 9

    #@0
    .prologue
    .line 1935
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v5

    #@6
    monitor-enter v5

    #@7
    .line 1936
    const/4 v4, 0x0

    #@8
    :try_start_0
    iput-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    #@a
    .line 1937
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 1939
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    #@10
    iget v6, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    #@12
    invoke-interface {v4, v6}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    .line 1945
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    iget v6, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    #@19
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@1c
    move-result-object v3

    #@1d
    .line 1946
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@20
    move-result-object v4

    #@21
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@24
    move-result-object v4

    #@25
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v2

    #@29
    .local v2, "sessionState$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_2

    #@2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@35
    .line 1947
    .local v1, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    #@37
    iget-object v6, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    #@39
    if-ne v4, v6, :cond_1

    #@3b
    .line 1948
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@3d
    iget-object v6, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    #@3f
    .line 1949
    iget v7, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    #@41
    .line 1948
    const/16 v8, 0x3e8

    #@43
    invoke-static {v4, v6, v8, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap13(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    .line 1951
    :try_start_3
    iget-object v4, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    #@48
    iget v6, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    #@4a
    invoke-interface {v4, v6}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4d
    goto :goto_1

    #@4e
    .line 1952
    :catch_0
    move-exception v0

    #@4f
    .line 1953
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v4, "TvInputManagerService"

    #@52
    const-string/jumbo v6, "error in onSessionReleased"

    #@55
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@58
    goto :goto_1

    #@59
    .line 1935
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v2    # "sessionState$iterator":Ljava/util/Iterator;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    #@5a
    monitor-exit v5

    #@5b
    throw v4

    #@5c
    .line 1940
    :catch_1
    move-exception v0

    #@5d
    .line 1941
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v4, "TvInputManagerService"

    #@60
    const-string/jumbo v6, "error in onSessionReleased"

    #@63
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@66
    goto :goto_0

    #@67
    .line 1957
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sessionState$iterator":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_2
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@69
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    #@6b
    iget v7, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    #@6d
    invoke-static {v4, v6, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap14(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@70
    monitor-exit v5

    #@71
    .line 1934
    return-void
.end method
