.class Lcom/android/server/ConnectivityService$NetworkRequestInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestInfo"
.end annotation


# static fields
.field private static final synthetic -com-android-server-ConnectivityService$NetworkRequestTypeSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$ConnectivityService$NetworkRequestType:[I

.field private final mBinder:Landroid/os/IBinder;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field mPendingIntentSent:Z

.field final mPid:I

.field private final mType:Lcom/android/server/ConnectivityService$NetworkRequestType;

.field final mUid:I

.field final messenger:Landroid/os/Messenger;

.field final request:Landroid/net/NetworkRequest;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private static synthetic -getcom-android-server-ConnectivityService$NetworkRequestTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->-com-android-server-ConnectivityService$NetworkRequestTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->-com-android-server-ConnectivityService$NetworkRequestTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/server/ConnectivityService$NetworkRequestType;->values()[Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/server/ConnectivityService$NetworkRequestType;->LISTEN:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@10
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkRequestType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/ConnectivityService$NetworkRequestType;->REQUEST:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@19
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkRequestType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/ConnectivityService$NetworkRequestType;->TRACK_DEFAULT:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@22
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkRequestType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->-com-android-server-ConnectivityService$NetworkRequestTypeSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;Lcom/android/server/ConnectivityService$NetworkRequestType;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "r"    # Landroid/net/NetworkRequest;
    .param p3, "pi"    # Landroid/app/PendingIntent;
    .param p4, "type"    # Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3836
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 3837
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@8
    .line 3838
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@a
    .line 3839
    iput-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    #@c
    .line 3840
    iput-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    #@e
    .line 3841
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    #@14
    .line 3842
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@17
    move-result v0

    #@18
    iput v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@1a
    .line 3843
    iput-object p4, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mType:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@1c
    .line 3844
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    #@1f
    .line 3836
    return-void
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Lcom/android/server/ConnectivityService$NetworkRequestType;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "m"    # Landroid/os/Messenger;
    .param p3, "r"    # Landroid/net/NetworkRequest;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "type"    # Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@0
    .prologue
    .line 3847
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    .line 3848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3849
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    #@7
    .line 3850
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@9
    .line 3851
    iput-object p4, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    #@b
    .line 3852
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    #@e
    move-result v1

    #@f
    iput v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    #@11
    .line 3853
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@14
    move-result v1

    #@15
    iput v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@17
    .line 3854
    iput-object p5, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mType:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@19
    .line 3855
    const/4 v1, 0x0

    #@1a
    iput-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@1c
    .line 3856
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    #@1f
    .line 3859
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    #@21
    const/4 v2, 0x0

    #@22
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 3847
    :goto_0
    return-void

    #@26
    .line 3860
    :catch_0
    move-exception v0

    #@27
    .line 3861
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->binderDied()V

    #@2a
    goto :goto_0
.end method

.method private enforceRequestCountLimit()V
    .locals 5

    #@0
    .prologue
    .line 3866
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get11(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 3867
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    #@9
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get11(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    #@c
    move-result-object v1

    #@d
    iget v3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@f
    const/4 v4, 0x0

    #@10
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    #@13
    move-result v1

    #@14
    add-int/lit8 v0, v1, 0x1

    #@16
    .line 3868
    .local v0, "networkRequests":I
    const/16 v1, 0x64

    #@18
    if-lt v0, v1, :cond_0

    #@1a
    .line 3869
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v3, "Too many NetworkRequests filed"

    #@1f
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 3866
    .end local v0    # "networkRequests":I
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1

    #@26
    .line 3871
    .restart local v0    # "networkRequests":I
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    #@28
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get11(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    #@2b
    move-result-object v1

    #@2c
    iget v3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@2e
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    monitor-exit v2

    #@32
    .line 3865
    return-void
.end method

.method private typeString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 3876
    invoke-static {}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->-getcom-android-server-ConnectivityService$NetworkRequestTypeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mType:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@6
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkRequestType;->ordinal()I

    #@9
    move-result v1

    #@a
    aget v0, v0, v1

    #@c
    packed-switch v0, :pswitch_data_0

    #@f
    .line 3881
    const-string/jumbo v0, "unknown type"

    #@12
    return-object v0

    #@13
    .line 3877
    :pswitch_0
    const-string/jumbo v0, "Listen"

    #@16
    return-object v0

    #@17
    .line 3878
    :pswitch_1
    const-string/jumbo v0, "Request"

    #@1a
    return-object v0

    #@1b
    .line 3879
    :pswitch_2
    const-string/jumbo v0, "Track default"

    #@1e
    return-object v0

    #@1f
    .line 3876
    nop

    #@20
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 3892
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ConnectivityService NetworkRequestInfo binderDied("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 3893
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@e
    .line 3892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 3893
    const-string/jumbo v1, ", "

    #@15
    .line 3892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 3893
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    #@1b
    .line 3892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 3893
    const-string/jumbo v1, ")"

    #@22
    .line 3892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@2d
    .line 3894
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    #@2f
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@31
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    #@34
    .line 3891
    return-void
.end method

.method public isRequest()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3912
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mType:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@3
    sget-object v2, Lcom/android/server/ConnectivityService$NetworkRequestType;->TRACK_DEFAULT:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 3913
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mType:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@9
    sget-object v2, Lcom/android/server/ConnectivityService$NetworkRequestType;->REQUEST:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@b
    if-ne v1, v2, :cond_1

    #@d
    .line 3912
    :cond_0
    :goto_0
    return v0

    #@e
    .line 3913
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 3917
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->typeString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    .line 3918
    const-string/jumbo v1, " from uid/pid:"

    #@10
    .line 3917
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 3918
    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@16
    .line 3917
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 3918
    const-string/jumbo v1, "/"

    #@1d
    .line 3917
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 3918
    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    #@23
    .line 3917
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 3919
    const-string/jumbo v1, " for "

    #@2a
    .line 3917
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 3919
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@30
    .line 3917
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 3920
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@36
    if-nez v0, :cond_0

    #@38
    const-string/jumbo v0, ""

    #@3b
    .line 3917
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0

    #@44
    .line 3920
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v2, " to trigger "

    #@4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    goto :goto_0
.end method

.method unlinkDeathRecipient()V
    .locals 2

    #@0
    .prologue
    .line 3886
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3887
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@a
    .line 3885
    :cond_0
    return-void
.end method
