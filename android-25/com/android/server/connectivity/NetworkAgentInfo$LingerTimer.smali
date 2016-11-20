.class public Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
.super Ljava/lang/Object;
.source "NetworkAgentInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkAgentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LingerTimer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;",
        ">;"
    }
.end annotation


# instance fields
.field public final expiryMs:J

.field public final request:Landroid/net/NetworkRequest;


# direct methods
.method public constructor <init>(Landroid/net/NetworkRequest;J)V
    .locals 0
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "expiryMs"    # J

    #@0
    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 168
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    #@5
    .line 169
    iput-wide p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    #@7
    .line 167
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;)I
    .locals 4
    .param p1, "other"    # Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    #@0
    .prologue
    .line 180
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    #@2
    iget-wide v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 181
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    #@a
    iget-wide v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    #@c
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    #@f
    move-result v0

    #@10
    .line 180
    :goto_0
    return v0

    #@11
    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    #@13
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@15
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    #@17
    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    #@19
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    #@1c
    move-result v0

    #@1d
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 179
    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->compareTo(Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 172
    instance-of v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 173
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    #@9
    .line 174
    .local v0, "other":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    #@b
    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    #@d
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    #@f
    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    #@11
    if-ne v2, v3, :cond_1

    #@13
    iget-wide v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    #@15
    iget-wide v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    #@17
    cmp-long v2, v2, v4

    #@19
    if-nez v2, :cond_1

    #@1b
    const/4 v1, 0x1

    #@1c
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 177
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    #@5
    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    #@7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    iget-wide v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    #@10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 185
    const-string/jumbo v0, "%s, expires %dms"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    #@8
    invoke-virtual {v2}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    .line 186
    iget-wide v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    #@11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@14
    move-result-wide v4

    #@15
    sub-long/2addr v2, v4

    #@16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v2

    #@1a
    const/4 v3, 0x1

    #@1b
    aput-object v2, v1, v3

    #@1d
    .line 185
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method
