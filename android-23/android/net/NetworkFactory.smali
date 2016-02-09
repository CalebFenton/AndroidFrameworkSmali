.class public Landroid/net/NetworkFactory;
.super Landroid/os/Handler;
.source "NetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkFactory$NetworkRequestInfo;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x83000

.field public static final CMD_CANCEL_REQUEST:I = 0x83001

.field public static final CMD_REQUEST_NETWORK:I = 0x83000

.field private static final CMD_SET_FILTER:I = 0x83003

.field private static final CMD_SET_SCORE:I = 0x83002

.field private static final DBG:Z = true

.field private static final VDBG:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mCapabilityFilter:Landroid/net/NetworkCapabilities;

.field private final mContext:Landroid/content/Context;

.field private mMessenger:Landroid/os/Messenger;

.field private final mNetworkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkFactory$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRefCount:I

.field private mScore:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "filter"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    .line 101
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    .line 100
    iput-object v0, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    #@a
    .line 106
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    #@d
    .line 107
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    #@10
    .line 112
    iput-object p3, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    #@12
    .line 113
    iput-object p2, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    #@14
    .line 114
    iput-object p4, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    #@16
    .line 110
    return-void
.end method

.method private evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;)V
    .locals 2
    .param p1, "n"    # Landroid/net/NetworkFactory$NetworkRequestInfo;

    #@0
    .prologue
    .line 230
    iget-boolean v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    #@6
    iget v1, p0, Landroid/net/NetworkFactory;->mScore:I

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 231
    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@c
    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@e
    .line 232
    iget-object v1, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    #@10
    .line 231
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@13
    move-result v0

    #@14
    .line 230
    if-eqz v0, :cond_1

    #@16
    .line 232
    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@18
    iget v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    #@1a
    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;I)Z

    #@1d
    move-result v0

    #@1e
    .line 230
    if-eqz v0, :cond_1

    #@20
    .line 234
    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@22
    iget v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    #@24
    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;I)V

    #@27
    .line 235
    const/4 v0, 0x1

    #@28
    iput-boolean v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    #@2a
    .line 228
    :cond_0
    :goto_0
    return-void

    #@2b
    .line 236
    :cond_1
    iget-boolean v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    #@2d
    if-eqz v0, :cond_0

    #@2f
    .line 237
    iget v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    #@31
    iget v1, p0, Landroid/net/NetworkFactory;->mScore:I

    #@33
    if-gt v0, v1, :cond_2

    #@35
    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@37
    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@39
    .line 238
    iget-object v1, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    #@3b
    .line 237
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@3e
    move-result v0

    #@3f
    if-nez v0, :cond_3

    #@41
    .line 240
    :cond_2
    :goto_1
    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@43
    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    #@46
    .line 241
    const/4 v0, 0x0

    #@47
    iput-boolean v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    #@49
    goto :goto_0

    #@4a
    .line 238
    :cond_3
    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@4c
    iget v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    #@4e
    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;I)Z

    #@51
    move-result v0

    #@52
    if-nez v0, :cond_0

    #@54
    goto :goto_1
.end method

.method private evalRequests()V
    .locals 3

    #@0
    .prologue
    .line 248
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_0

    #@9
    .line 249
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/net/NetworkFactory$NetworkRequestInfo;

    #@11
    .line 251
    .local v1, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    invoke-direct {p0, v1}, Landroid/net/NetworkFactory;->evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;)V

    #@14
    .line 248
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 247
    .end local v1    # "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    :cond_0
    return-void
.end method

.method private handleAddRequest(Landroid/net/NetworkRequest;I)V
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    #@0
    .prologue
    .line 173
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    #@2
    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    #@4
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/net/NetworkFactory$NetworkRequestInfo;

    #@a
    .line 174
    .local v0, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    if-nez v0, :cond_0

    #@c
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "got request "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, " with score "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    #@2e
    .line 176
    new-instance v0, Landroid/net/NetworkFactory$NetworkRequestInfo;

    #@30
    .end local v0    # "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    invoke-direct {v0, p0, p1, p2}, Landroid/net/NetworkFactory$NetworkRequestInfo;-><init>(Landroid/net/NetworkFactory;Landroid/net/NetworkRequest;I)V

    #@33
    .line 177
    .restart local v0    # "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    #@35
    iget-object v2, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@37
    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    #@39
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3c
    .line 184
    :goto_0
    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;)V

    #@3f
    .line 172
    return-void

    #@40
    .line 180
    :cond_0
    iput p2, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    #@42
    goto :goto_0
.end method

.method private handleRemoveRequest(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 188
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    #@2
    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    #@4
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/net/NetworkFactory$NetworkRequestInfo;

    #@a
    .line 189
    .local v0, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    if-eqz v0, :cond_0

    #@c
    .line 190
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    #@e
    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    #@10
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    #@13
    .line 191
    iget-boolean v1, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    #@15
    if-eqz v1, :cond_0

    #@17
    iget-object v1, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@19
    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    #@1c
    .line 187
    :cond_0
    return-void
.end method

.method private handleSetFilter(Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 201
    iput-object p1, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    #@2
    .line 202
    invoke-direct {p0}, Landroid/net/NetworkFactory;->evalRequests()V

    #@5
    .line 200
    return-void
.end method

.method private handleSetScore(I)V
    .locals 0
    .param p1, "score"    # I

    #@0
    .prologue
    .line 196
    iput p1, p0, Landroid/net/NetworkFactory;->mScore:I

    #@2
    .line 197
    invoke-direct {p0}, Landroid/net/NetworkFactory;->evalRequests()V

    #@5
    .line 195
    return-void
.end method


# virtual methods
.method public acceptRequest(Landroid/net/NetworkRequest;I)Z
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    #@0
    .prologue
    .line 225
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public addNetworkRequest(Landroid/net/NetworkRequest;I)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    #@0
    .prologue
    .line 271
    new-instance v0, Landroid/net/NetworkFactory$NetworkRequestInfo;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/net/NetworkFactory$NetworkRequestInfo;-><init>(Landroid/net/NetworkFactory;Landroid/net/NetworkRequest;I)V

    #@5
    .line 270
    const v1, 0x83000

    #@8
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkFactory;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 269
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 296
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v2, "  "

    #@5
    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8
    .line 297
    .local v1, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {p0}, Landroid/net/NetworkFactory;->toString()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@f
    .line 298
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@12
    .line 299
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@18
    move-result v2

    #@19
    if-ge v0, v2, :cond_0

    #@1b
    .line 300
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@24
    .line 299
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 302
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@2a
    .line 295
    return-void
.end method

.method protected getRequestCount()I
    .locals 1

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 134
    :goto_0
    return-void

    #@6
    .line 137
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/net/NetworkRequest;

    #@a
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@c
    invoke-direct {p0, v0, v1}, Landroid/net/NetworkFactory;->handleAddRequest(Landroid/net/NetworkRequest;I)V

    #@f
    goto :goto_0

    #@10
    .line 141
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12
    check-cast v0, Landroid/net/NetworkRequest;

    #@14
    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    #@17
    goto :goto_0

    #@18
    .line 145
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@1a
    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->handleSetScore(I)V

    #@1d
    goto :goto_0

    #@1e
    .line 149
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@20
    check-cast v0, Landroid/net/NetworkCapabilities;

    #@22
    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->handleSetFilter(Landroid/net/NetworkCapabilities;)V

    #@25
    goto :goto_0

    #@26
    .line 135
    :pswitch_data_0
    .packed-switch 0x83000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 291
    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    #@0
    .prologue
    .line 261
    iget v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    invoke-virtual {p0}, Landroid/net/NetworkFactory;->startNetwork()V

    #@c
    .line 260
    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    #@0
    .prologue
    .line 118
    const-string/jumbo v0, "Registering NetworkFactory"

    #@3
    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    #@6
    .line 119
    iget-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 120
    new-instance v0, Landroid/os/Messenger;

    #@c
    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@f
    iput-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    #@11
    .line 121
    iget-object v0, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    #@13
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    #@19
    iget-object v2, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    #@1e
    .line 117
    :cond_0
    return-void
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 265
    iget v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    #@6
    if-nez v0, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/net/NetworkFactory;->stopNetwork()V

    #@b
    .line 264
    :cond_0
    return-void
.end method

.method public removeNetworkRequest(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 275
    const v0, 0x83001

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/net/NetworkFactory;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    #@a
    .line 274
    return-void
.end method

.method public setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 283
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@2
    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@5
    const v1, 0x83003

    #@8
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkFactory;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 282
    return-void
.end method

.method public setScoreFilter(I)V
    .locals 2
    .param p1, "score"    # I

    #@0
    .prologue
    .line 279
    const v0, 0x83002

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/NetworkFactory;->obtainMessage(III)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    #@b
    .line 278
    return-void
.end method

.method protected startNetwork()V
    .locals 0

    #@0
    .prologue
    .line 256
    return-void
.end method

.method protected stopNetwork()V
    .locals 0

    #@0
    .prologue
    .line 257
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v2, "{"

    #@5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    iget-object v2, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, " - ScoreFilter="

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 308
    iget v2, p0, Landroid/net/NetworkFactory;->mScore:I

    #@17
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 308
    const-string/jumbo v2, ", Filter="

    #@1e
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 308
    iget-object v2, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    #@24
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 308
    const-string/jumbo v2, ", requests="

    #@2b
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 309
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    #@31
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@34
    move-result v2

    #@35
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 309
    const-string/jumbo v2, ", refCount="

    #@3c
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 309
    iget v2, p0, Landroid/net/NetworkFactory;->mRefCount:I

    #@42
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 310
    const-string/jumbo v2, "}"

    #@49
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 311
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    return-object v1
.end method

.method public unregister()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 126
    const-string/jumbo v0, "Unregistering NetworkFactory"

    #@4
    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    #@7
    .line 127
    iget-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 128
    iget-object v0, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    #@d
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    #@13
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    #@16
    .line 129
    iput-object v2, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    #@18
    .line 125
    :cond_0
    return-void
.end method
