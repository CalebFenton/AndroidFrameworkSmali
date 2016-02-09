.class public Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.source "ClientPropertiesRequest.java"


# instance fields
.field private final properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .locals 3
    .param p1, "properties"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 46
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;-><init>()V

    #@4
    .line 47
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@6
    .line 48
    invoke-virtual {p1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 54
    :cond_0
    :goto_0
    return-void

    #@d
    .line 49
    :cond_1
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;->readCohortFromFlash()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 50
    .local v0, "cohort":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@13
    .line 51
    invoke-virtual {p1, v2, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    #@16
    goto :goto_0
.end method

.method private readCohortFromFlash()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    const-string/jumbo v0, "Cohort"

    #@3
    .line 85
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method


# virtual methods
.method public getRequestType()I
    .locals 1

    #@0
    .prologue
    const/16 v0, 0x3e

    #@2
    .line 57
    return v0
.end method

.method public isForeground()Z
    .locals 1

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isImmediate()Z
    .locals 1

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 4
    .param p1, "dis"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 73
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->CLIENT_PROPERTIES_RESPONSE_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@3
    invoke-static {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->readProtoBufResponse(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@6
    move-result-object v1

    #@7
    .line 75
    .local v1, "response":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 81
    :goto_0
    return v3

    #@e
    .line 76
    :cond_0
    invoke-virtual {v1, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 78
    .local v0, "newCohort":Ljava/lang/String;
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@14
    invoke-virtual {v2, v3, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    #@17
    const-string/jumbo v2, "Cohort"

    #@1a
    .line 79
    invoke-static {v2, v0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->savePreferenceAsString(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    goto :goto_0
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@2
    invoke-static {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->writeProtoBufToOutput(Ljava/io/DataOutput;Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    #@5
    .line 70
    return-void
.end method
