.class public Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
.super Ljava/lang/Object;
.source "HubEndpointInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/HubEndpointInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HubEndpointIdentifier"
.end annotation


# instance fields
.field private final blacklist mEndpointId:J

.field private final blacklist mHubId:J


# direct methods
.method public constructor blacklist <init>(JJ)V
    .registers 5
    .param p1, "hubId"    # J
    .param p3, "endpointId"    # J

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p3, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mEndpointId:J

    .line 66
    iput-wide p1, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mHubId:J

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/contexthub/EndpointId;)V
    .registers 4
    .param p1, "halEndpointId"    # Landroid/hardware/contexthub/EndpointId;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iget-wide v0, p1, Landroid/hardware/contexthub/EndpointId;->id:J

    iput-wide v0, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mEndpointId:J

    .line 72
    iget-wide v0, p1, Landroid/hardware/contexthub/EndpointId;->hubId:J

    iput-wide v0, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mHubId:J

    .line 73
    return-void
.end method

.method public static blacklist invalid()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    .registers 3

    .line 92
    new-instance v0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 104
    instance-of v0, p1, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    .line 107
    .local v0, "other":Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    iget-wide v2, v0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mHubId:J

    iget-wide v4, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mHubId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    .line 108
    return v1

    .line 110
    :cond_11
    iget-wide v2, v0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mEndpointId:J

    iget-wide v4, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mEndpointId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 105
    .end local v0    # "other":Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    :cond_1b
    return v1
.end method

.method public whitelist getEndpoint()J
    .registers 3

    .line 77
    iget-wide v0, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mEndpointId:J

    return-wide v0
.end method

.method public whitelist getHub()J
    .registers 3

    .line 82
    iget-wide v0, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mHubId:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 99
    iget-wide v0, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mEndpointId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mHubId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
