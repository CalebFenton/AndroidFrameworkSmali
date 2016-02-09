.class Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;
.super Ljava/lang/Object;
.source "ProtoBufType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypeInfo"
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private type:I


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "t"    # I
    .param p2, "d"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    #@5
    .line 85
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    #@7
    .line 86
    return-void
.end method

.method static synthetic access$000(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    #@0
    .prologue
    .line 80
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    #@2
    return v0
.end method

.method static synthetic access$100(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    #@2
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 93
    if-eq p0, p1, :cond_1

    #@4
    .line 96
    if-nez p1, :cond_2

    #@6
    .line 97
    :cond_0
    return v2

    #@7
    .line 94
    :cond_1
    return v1

    #@8
    .line 96
    :cond_2
    instance-of v3, p1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    #@a
    if-eqz v3, :cond_0

    #@c
    move-object v0, p1

    #@d
    .line 99
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    #@f
    .line 100
    .local v0, "peerTypeInfo":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    #@11
    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    #@13
    if-eq v3, v4, :cond_5

    #@15
    :cond_3
    :goto_0
    move v1, v2

    #@16
    :cond_4
    return v1

    #@17
    :cond_5
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    #@19
    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    #@1b
    if-eq v3, v4, :cond_4

    #@1d
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    #@1f
    if-eqz v3, :cond_3

    #@21
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    #@23
    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    if-nez v3, :cond_4

    #@2b
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 89
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "TypeInfo{type="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", data="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "}"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method
