.class public Lcom/android/server/connectivity/NetworkAgentInfo;
.super Ljava/lang/Object;
.source "NetworkAgentInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/connectivity/NetworkAgentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAXIMUM_NETWORK_SCORE:I = 0x64

.field private static final UNVALIDATED_SCORE_PENALTY:I = 0x28


# instance fields
.field public final asyncChannel:Lcom/android/internal/util/AsyncChannel;

.field public clatd:Lcom/android/server/connectivity/Nat464Xlat;

.field public created:Z

.field private currentScore:I

.field public everCaptivePortalDetected:Z

.field public everValidated:Z

.field public lastCaptivePortalDetected:Z

.field public lastValidated:Z

.field public lingering:Z

.field public linkProperties:Landroid/net/LinkProperties;

.field public final messenger:Landroid/os/Messenger;

.field public final network:Landroid/net/Network;

.field public networkCapabilities:Landroid/net/NetworkCapabilities;

.field public networkInfo:Landroid/net/NetworkInfo;

.field public final networkLingered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final networkMisc:Landroid/net/NetworkMisc;

.field public final networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

.field public final networkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService;)V
    .locals 1
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "ac"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "net"    # Landroid/net/Network;
    .param p4, "info"    # Landroid/net/NetworkInfo;
    .param p5, "lp"    # Landroid/net/LinkProperties;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "score"    # I
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "handler"    # Landroid/os/Handler;
    .param p10, "misc"    # Landroid/net/NetworkMisc;
    .param p11, "defaultRequest"    # Landroid/net/NetworkRequest;
    .param p12, "connService"    # Lcom/android/server/ConnectivityService;

    #@0
    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 154
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@a
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    #@11
    .line 169
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    #@13
    .line 170
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@15
    .line 171
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@17
    .line 172
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@19
    .line 173
    iput-object p5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@1b
    .line 174
    iput-object p6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@1d
    .line 175
    iput p7, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    #@1f
    .line 176
    invoke-virtual {p12, p8, p9, p0, p11}, Lcom/android/server/ConnectivityService;->createNetworkMonitor(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)Lcom/android/server/connectivity/NetworkMonitor;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@25
    .line 177
    iput-object p10, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@27
    .line 168
    return-void
.end method

.method private getCurrentScore(Z)I
    .locals 3
    .param p1, "pretendValidated"    # Z

    #@0
    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@2
    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@4
    if-eqz v1, :cond_1

    #@6
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@8
    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@a
    if-nez v1, :cond_0

    #@c
    if-eqz p1, :cond_1

    #@e
    .line 214
    :cond_0
    const/16 v1, 0x64

    #@10
    return v1

    #@11
    .line 217
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    #@13
    .line 221
    .local v0, "score":I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@15
    const/16 v2, 0x10

    #@17
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_2

    #@1d
    if-eqz p1, :cond_4

    #@1f
    .line 224
    :cond_2
    :goto_0
    if-gez v0, :cond_3

    #@21
    const/4 v0, 0x0

    #@22
    .line 225
    :cond_3
    return v0

    #@23
    .line 222
    :cond_4
    add-int/lit8 v0, v0, -0x28

    #@25
    goto :goto_0
.end method


# virtual methods
.method public addRequest(Landroid/net/NetworkRequest;)Z
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@2
    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    #@4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p1, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@e
    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    #@10
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@13
    .line 189
    const/4 v0, 0x1

    #@14
    return v0
.end method

.method public compareTo(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 2
    .param p1, "other"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 266
    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->compareTo(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCurrentScore()I
    .locals 1

    #@0
    .prologue
    .line 231
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getCurrentScoreAsValidated()I
    .locals 1

    #@0
    .prologue
    .line 237
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isVPN()Z
    .locals 2

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NetworkAgentInfo ["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@e
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, " ("

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 260
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@1f
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 260
    const-string/jumbo v1, ") - "

    #@2a
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 261
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@30
    if-nez v0, :cond_0

    #@32
    const-string/jumbo v0, "null"

    #@35
    .line 259
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 261
    const-string/jumbo v1, "]"

    #@3c
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0

    #@45
    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@47
    invoke-virtual {v0}, Landroid/net/Network;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    goto :goto_0
.end method

.method public satisfies(Landroid/net/NetworkRequest;)Z
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 195
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@6
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@8
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@b
    move-result v0

    #@c
    .line 194
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public setCurrentScore(I)V
    .locals 0
    .param p1, "newScore"    # I

    #@0
    .prologue
    .line 241
    iput p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    #@2
    .line 240
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NetworkAgentInfo{ ni{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "}  network{"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 246
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@1b
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 246
    const-string/jumbo v1, "}  lp{"

    #@22
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 247
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@28
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 247
    const-string/jumbo v1, "}  nc{"

    #@2f
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 248
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@35
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 248
    const-string/jumbo v1, "}  Score{"

    #@3c
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 248
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@43
    move-result v1

    #@44
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 248
    const-string/jumbo v1, "}  "

    #@4b
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    .line 249
    const-string/jumbo v1, "everValidated{"

    #@52
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    .line 249
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@58
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    .line 249
    const-string/jumbo v1, "}  lastValidated{"

    #@5f
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    .line 249
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@65
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    .line 249
    const-string/jumbo v1, "}  "

    #@6c
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    .line 250
    const-string/jumbo v1, "created{"

    #@73
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    .line 250
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@79
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    .line 250
    const-string/jumbo v1, "} lingering{"

    #@80
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    .line 250
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    #@86
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    .line 250
    const-string/jumbo v1, "} "

    #@8d
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    .line 251
    const-string/jumbo v1, "explicitlySelected{"

    #@94
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    .line 251
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@9a
    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@9c
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v0

    #@a0
    .line 251
    const-string/jumbo v1, "} "

    #@a3
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v0

    #@a7
    .line 252
    const-string/jumbo v1, "acceptUnvalidated{"

    #@aa
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v0

    #@ae
    .line 252
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@b0
    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@b2
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v0

    #@b6
    .line 252
    const-string/jumbo v1, "} "

    #@b9
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v0

    #@bd
    .line 253
    const-string/jumbo v1, "everCaptivePortalDetected{"

    #@c0
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    .line 253
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    #@c6
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v0

    #@ca
    .line 253
    const-string/jumbo v1, "} "

    #@cd
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v0

    #@d1
    .line 254
    const-string/jumbo v1, "lastCaptivePortalDetected{"

    #@d4
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v0

    #@d8
    .line 254
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    #@da
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v0

    #@de
    .line 254
    const-string/jumbo v1, "} "

    #@e1
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v0

    #@e5
    .line 255
    const-string/jumbo v1, "}"

    #@e8
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v0

    #@ec
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v0

    #@f0
    return-object v0
.end method
