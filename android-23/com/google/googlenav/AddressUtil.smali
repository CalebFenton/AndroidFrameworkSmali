.class public Landroid_maps_conflict_avoidance/com/google/googlenav/AddressUtil;
.super Ljava/lang/Object;
.source "AddressUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 19
    return-void
.end method

.method public static getAddressLine(IILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .locals 1
    .param p0, "addressLineIndex"    # I
    .param p1, "number"    # I
    .param p2, "proto"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@0
    .prologue
    .line 26
    if-eqz p2, :cond_0

    #@2
    .line 29
    invoke-virtual {p2, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    #@5
    move-result v0

    #@6
    if-gt v0, p1, :cond_1

    #@8
    const-string/jumbo v0, ""

    #@b
    :goto_0
    return-object v0

    #@c
    :cond_0
    const-string/jumbo v0, ""

    #@f
    .line 27
    return-object v0

    #@10
    .line 29
    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    goto :goto_0
.end method
