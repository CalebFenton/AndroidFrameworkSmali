.class final Lcom/android/server/tv/TvInputManagerService$ClientState;
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
    name = "ClientState"
.end annotation


# instance fields
.field private clientToken:Landroid/os/IBinder;

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

.field private final userId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvInputManagerService$ClientState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    #@2
    return v0
.end method

.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "clientToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1852
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1847
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    #@c
    .line 1853
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    #@e
    .line 1854
    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    #@10
    .line 1852
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    #@0
    .prologue
    .line 1863
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 1864
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@9
    iget v4, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    #@b
    invoke-static {v2, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@e
    move-result-object v1

    #@f
    .line 1867
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@12
    move-result-object v2

    #@13
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    #@15
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ClientState;

    #@1b
    .line 1868
    .local v0, "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    if-eqz v0, :cond_0

    #@1d
    .line 1869
    :goto_0
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    #@1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@22
    move-result v2

    #@23
    if-lez v2, :cond_0

    #@25
    .line 1870
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@27
    .line 1871
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Landroid/os/IBinder;

    #@30
    iget v5, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    #@32
    const/16 v6, 0x3e8

    #@34
    .line 1870
    invoke-static {v4, v2, v6, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap13(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 1863
    .end local v0    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v2

    #@39
    monitor-exit v3

    #@3a
    throw v2

    #@3b
    .line 1874
    .restart local v0    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .restart local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_0
    const/4 v2, 0x0

    #@3c
    :try_start_1
    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    monitor-exit v3

    #@3f
    .line 1862
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 1858
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
