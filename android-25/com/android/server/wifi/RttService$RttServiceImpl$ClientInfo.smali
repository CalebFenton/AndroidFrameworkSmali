.class Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
.super Ljava/lang/Object;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mMessenger:Landroid/os/Messenger;

.field mRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;",
            ">;"
        }
    .end annotation
.end field

.field mResponderRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/wifi/RttService$RttServiceImpl;
    .param p2, "c"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "m"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 174
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Ljava/util/HashMap;

    #@c
    .line 177
    new-instance v0, Ljava/util/HashSet;

    #@e
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mResponderRequests:Ljava/util/Set;

    #@13
    .line 180
    iput-object p2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@15
    .line 181
    iput-object p3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    #@17
    .line 179
    return-void
.end method


# virtual methods
.method addResponderRequest(I)V
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mResponderRequests:Ljava/util/Set;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9
    .line 184
    return-void
.end method

.method addRttRequest(ILandroid/net/wifi/RttManager$ParcelableRttParams;)Z
    .locals 4
    .param p1, "key"    # I
    .param p2, "parcelableParams"    # Landroid/net/wifi/RttManager$ParcelableRttParams;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 193
    if-nez p2, :cond_0

    #@3
    .line 194
    const/4 v2, 0x0

    #@4
    return v2

    #@5
    .line 197
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    #@7
    .line 199
    .local v0, "params":[Landroid/net/wifi/RttManager$RttParams;
    new-instance v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@9
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@b
    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;)V

    #@e
    .line 200
    .local v1, "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v2

    #@12
    iput-object v2, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@14
    .line 201
    iput-object p0, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@16
    .line 202
    iput-object v0, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->params:[Landroid/net/wifi/RttManager$RttParams;

    #@18
    .line 203
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Ljava/util/HashMap;

    #@1a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 204
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@23
    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    #@26
    move-result-object v2

    #@27
    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@2a
    .line 205
    const/4 v2, 0x1

    #@2b
    return v2
.end method

.method cleanup()V
    .locals 2

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 249
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@7
    invoke-static {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    #@e
    .line 252
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mResponderRequests:Ljava/util/Set;

    #@10
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@13
    .line 253
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@15
    invoke-static {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get3(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@18
    move-result-object v0

    #@19
    const v1, 0x27206

    #@1c
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    #@1f
    .line 247
    return-void
.end method

.method removeResponderRequest(I)V
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mResponderRequests:Ljava/util/Set;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@9
    .line 188
    return-void
.end method

.method removeRttRequest(I)V
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 208
    return-void
.end method

.method reportAborted(I)V
    .locals 3
    .param p1, "key"    # I

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    const v1, 0x27204

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@9
    .line 244
    invoke-virtual {p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->cleanup()V

    #@c
    .line 241
    return-void
.end method

.method reportFailed(IILjava/lang/String;)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 235
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 236
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "android.net.wifi.RttManager.Description"

    #@8
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 237
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@d
    const v2, 0x27202

    #@10
    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@13
    .line 238
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Ljava/util/HashMap;

    #@15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 234
    return-void
.end method

.method reportFailed(Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;ILjava/lang/String;)V
    .locals 1
    .param p1, "request"    # Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 231
    iget-object v0, p1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportFailed(IILjava/lang/String;)V

    #@9
    .line 230
    return-void
.end method

.method reportResponderEnableFailed(II)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    const v1, 0x27208

    #@5
    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@8
    .line 218
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mResponderRequests:Ljava/util/Set;

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@11
    .line 216
    return-void
.end method

.method reportResponderEnableSucceed(ILandroid/net/wifi/RttManager$ResponderConfig;)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "config"    # Landroid/net/wifi/RttManager$ResponderConfig;

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    const v1, 0x27207

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@9
    .line 212
    return-void
.end method

.method reportResult(Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;[Landroid/net/wifi/RttManager$RttResult;)V
    .locals 5
    .param p1, "request"    # Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    .param p2, "results"    # [Landroid/net/wifi/RttManager$RttResult;

    #@0
    .prologue
    .line 223
    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttResults;

    #@2
    invoke-direct {v0, p2}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    #@5
    .line 225
    .local v0, "parcelableResults":Landroid/net/wifi/RttManager$ParcelableRttResults;
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@7
    .line 226
    iget-object v2, p1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@c
    move-result v2

    #@d
    .line 225
    const v3, 0x27203

    #@10
    .line 226
    const/4 v4, 0x0

    #@11
    .line 225
    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@14
    .line 227
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Ljava/util/HashMap;

    #@16
    iget-object v2, p1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@18
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 221
    return-void
.end method
