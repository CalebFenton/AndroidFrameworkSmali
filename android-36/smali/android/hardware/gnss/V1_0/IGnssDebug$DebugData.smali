.class public final Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;
.super Ljava/lang/Object;
.source "IGnssDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugData"
.end annotation


# instance fields
.field public blacklist position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

.field public blacklist satelliteDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    .line 816
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    .line 822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;",
            ">;"
        }
    .end annotation

    .line 876
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 880
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 881
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x70

    int-to-long v5, v3

    .line 882
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 881
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 885
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 886
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 887
    new-instance v5, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;

    invoke-direct {v5}, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;-><init>()V

    .line 888
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;
    mul-int/lit8 v6, v3, 0x70

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 889
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 893
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "_hidl_index_0":I
    .end local p0    # "childBlob":Landroid/os/HwBlob;
    :cond_37
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;",
            ">;)V"
        }
    .end annotation

    .line 923
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 925
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 926
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 927
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 928
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x70

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 929
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 930
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;

    mul-int/lit8 v5, v3, 0x70

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 929
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 932
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 935
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 936
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 826
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 827
    return v0

    .line 829
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 830
    return v1

    .line 832
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;

    if-eq v2, v3, :cond_11

    .line 833
    return v1

    .line 835
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;

    .line 836
    .local v2, "other":Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;
    iget-object v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    iget-object v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 837
    return v1

    .line 839
    :cond_1f
    iget-object v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    iget-object v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 840
    return v1

    .line 842
    :cond_2a
    iget-object v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 843
    return v1

    .line 845
    :cond_35
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 850
    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    .line 851
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    .line 852
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    .line 853
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 850
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 898
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, p1, p2, v4, v5}, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 899
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    const-wide/16 v4, 0x50

    add-long/2addr v4, p3

    invoke-virtual {v1, p1, p2, v4, v5}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 901
    const-wide/16 v4, 0x60

    add-long v6, p3, v4

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    invoke-virtual {p2, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 902
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v1, v8, 0x14

    int-to-long v6, v1

    .line 903
    move-wide v1, v2

    move-wide v9, v4

    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long/2addr v9, p3

    add-long/2addr v9, v1

    .line 902
    move-wide v1, v6

    const/4 v7, 0x1

    move-object v0, p1

    move-wide v5, v9

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 906
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 907
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_35
    if-ge v2, v8, :cond_4a

    .line 908
    new-instance v3, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    invoke-direct {v3}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;-><init>()V

    .line 909
    .local v3, "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;
    mul-int/lit8 v4, v2, 0x14

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 910
    iget-object v4, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    .end local v3    # "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 913
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v8    # "_hidl_vec_size":I
    :cond_4a
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 871
    const-wide/16 v0, 0x70

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 872
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 873
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    const-string v1, ".position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 862
    const-string v1, ", .time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 864
    const-string v1, ", .satelliteDataArray = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 866
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 940
    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 941
    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    const-wide/16 v3, 0x50

    add-long/2addr v3, p2

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 943
    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 944
    .local v0, "_hidl_vec_size":I
    const-wide/16 v3, 0x60

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 945
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 946
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x14

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 947
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_32
    if-ge v6, v0, :cond_45

    .line 948
    iget-object v7, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    mul-int/lit8 v8, v6, 0x14

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 947
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 950
    .end local v6    # "_hidl_index_0":I
    :cond_45
    add-long/2addr v3, p2

    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 952
    .end local v0    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 916
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 917
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssDebug$DebugData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 918
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 919
    return-void
.end method
