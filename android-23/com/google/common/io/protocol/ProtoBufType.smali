.class public Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;
.super Ljava/lang/Object;
.source "ProtoBufType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;
    }
.end annotation


# static fields
.field private static final NULL_DATA_TYPEINFOS:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;


# instance fields
.field private final typeName:Ljava/lang/String;

.field private final types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/16 v4, 0xa8

    #@2
    .line 63
    new-array v4, v4, [Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    #@4
    sput-object v4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    #@6
    const/4 v1, 0x0

    #@7
    .local v1, "index":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    const/4 v4, 0x7

    #@9
    .line 68
    if-le v0, v4, :cond_0

    #@b
    .line 73
    return-void

    #@c
    :cond_0
    const/16 v3, 0x10

    #@e
    .local v3, "j":I
    move v2, v1

    #@f
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_1
    const/16 v4, 0x25

    #@11
    .line 69
    if-lt v3, v4, :cond_1

    #@13
    .line 68
    add-int/lit8 v0, v0, 0x1

    #@15
    move v1, v2

    #@16
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    #@17
    .line 70
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_1
    sget-object v4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    #@19
    add-int/lit8 v1, v2, 0x1

    #@1b
    .end local v2    # "index":I
    .restart local v1    # "index":I
    new-instance v5, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    #@1d
    shl-int/lit8 v6, v0, 0x8

    #@1f
    add-int/2addr v6, v3

    #@20
    const/4 v7, 0x0

    #@21
    invoke-direct {v5, v6, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;-><init>(ILjava/lang/Object;)V

    #@24
    aput-object v5, v4, v2

    #@26
    .line 69
    add-int/lit8 v3, v3, 0x1

    #@28
    move v2, v1

    #@29
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@5
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@a
    const/4 v0, 0x0

    #@b
    .line 116
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    #@d
    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@5
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@a
    .line 123
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    #@c
    .line 124
    return-void
.end method

.method private static getCacheTypeInfoForNullData(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;
    .locals 4
    .param p0, "optionsAndType"    # I

    #@0
    .prologue
    const v3, 0xff00

    #@3
    .line 133
    and-int/2addr v3, p0

    #@4
    shr-int/lit8 v3, v3, 0x8

    #@6
    mul-int/lit8 v0, v3, 0x15

    #@8
    .line 136
    .local v0, "higher":I
    and-int/lit16 v3, p0, 0xff

    #@a
    add-int/lit8 v2, v3, -0x10

    #@c
    .line 139
    .local v2, "lower":I
    add-int v1, v0, v2

    #@e
    .line 140
    .local v1, "index":I
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    #@10
    aget-object v3, v3, v1

    #@12
    return-object v3
.end method


# virtual methods
.method public addElement(IILjava/lang/Object;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;
    .locals 2
    .param p1, "optionsAndType"    # I
    .param p2, "tag"    # I
    .param p3, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 156
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@2
    if-eqz p3, :cond_0

    #@4
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    #@6
    invoke-direct {v0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;-><init>(ILjava/lang/Object;)V

    #@9
    :goto_0
    invoke-virtual {v1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->put(ILjava/lang/Object;)V

    #@c
    .line 159
    return-object p0

    #@d
    .line 156
    :cond_0
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getCacheTypeInfoForNullData(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    #@10
    move-result-object v0

    #@11
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 242
    if-eqz p1, :cond_0

    #@3
    .line 245
    if-eq p0, p1, :cond_1

    #@5
    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v2

    #@d
    if-ne v1, v2, :cond_2

    #@f
    move-object v0, p1

    #@10
    .line 252
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@12
    .line 254
    .local v0, "other":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@14
    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@16
    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    return v1

    #@1b
    .line 244
    .end local v0    # "other":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;
    :cond_0
    return v3

    #@1c
    .line 247
    :cond_1
    const/4 v1, 0x1

    #@1d
    return v1

    #@1e
    .line 250
    :cond_2
    return v3
.end method

.method public getData(I)Ljava/lang/Object;
    .locals 2
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 196
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@2
    invoke-virtual {v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    #@8
    .line 197
    .local v0, "typeInfo":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;
    if-eqz v0, :cond_0

    #@a
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->access$100(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .end local v0    # "typeInfo":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;
    :cond_0
    return-object v0
.end method

.method public getType(I)I
    .locals 2
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 176
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@2
    invoke-virtual {v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    #@8
    .line 177
    .local v0, "typeInfo":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;
    if-eqz v0, :cond_0

    #@a
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->access$000(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;)I

    #@d
    move-result v1

    #@e
    and-int/lit16 v1, v1, 0xff

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    const/16 v1, 0x10

    #@13
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 264
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 262
    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@b
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->hashCode()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ProtoBufType Name: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
