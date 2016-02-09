.class abstract Lcom/android/server/pm/PackageManagerService$HandlerParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandlerParams"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x4


# instance fields
.field private mRetries:I

.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 10197
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 10192
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    #@8
    .line 10198
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    #@a
    .line 10197
    return-void
.end method


# virtual methods
.method getUser()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 10202
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    #@2
    return-object v0
.end method

.method abstract handleReturnCode()V
.end method

.method abstract handleServiceError()V
.end method

.method abstract handleStartCopy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method final serviceError()V
    .locals 0

    #@0
    .prologue
    .line 10230
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleServiceError()V

    #@3
    .line 10231
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleReturnCode()V

    #@6
    .line 10228
    return-void
.end method

.method final startCopy()Z
    .locals 4

    #@0
    .prologue
    .line 10210
    :try_start_0
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    #@2
    add-int/lit8 v2, v2, 0x1

    #@4
    iput v2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    #@6
    const/4 v3, 0x4

    #@7
    if-le v2, v3, :cond_0

    #@9
    .line 10211
    const-string/jumbo v2, "PackageManager"

    #@c
    const-string/jumbo v3, "Failed to invoke remote methods on default container service. Giving up"

    #@f
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 10212
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@14
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@16
    const/16 v3, 0xb

    #@18
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    #@1b
    .line 10213
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleServiceError()V

    #@1e
    .line 10214
    const/4 v2, 0x0

    #@1f
    return v2

    #@20
    .line 10216
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleStartCopy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 10217
    const/4 v1, 0x1

    #@24
    .line 10224
    .local v1, "res":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleReturnCode()V

    #@27
    .line 10225
    return v1

    #@28
    .line 10219
    .end local v1    # "res":Z
    :catch_0
    move-exception v0

    #@29
    .line 10221
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2b
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@2d
    const/16 v3, 0xa

    #@2f
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    #@32
    .line 10222
    const/4 v1, 0x0

    #@33
    .restart local v1    # "res":Z
    goto :goto_0
.end method
