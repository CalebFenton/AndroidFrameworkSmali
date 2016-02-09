.class public Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;
.super Ljava/lang/Object;
.source "Placemark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$ImageResource;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$EnhancedDataSource;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$SnippetSource;
    }
.end annotation


# static fields
.field private static final EMPTY_ENHANCED_DATA_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$EnhancedDataSource;

.field private static final EMPTY_IMAGE_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$ImageResource;

.field private static final EMPTY_SNIPPET_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$SnippetSource;


# instance fields
.field private events:Ljava/util/Hashtable;

.field private geometry:Landroid_maps_conflict_avoidance/com/google/map/Geometry;

.field private iconClass:B

.field private isSelectable:Z

.field private name:Ljava/lang/String;

.field private final proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

.field private resultType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 122
    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$EnhancedDataSource;

    #@3
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->EMPTY_ENHANCED_DATA_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$EnhancedDataSource;

    #@5
    .line 124
    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$ImageResource;

    #@7
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->EMPTY_IMAGE_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$ImageResource;

    #@9
    .line 126
    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$SnippetSource;

    #@b
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->EMPTY_SNIPPET_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$SnippetSource;

    #@d
    return-void
.end method

.method protected constructor <init>(Landroid_maps_conflict_avoidance/com/google/map/Geometry;Ljava/lang/String;)V
    .locals 2
    .param p1, "geometry"    # Landroid_maps_conflict_avoidance/com/google/map/Geometry;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const-string/jumbo v0, ""

    #@7
    .line 80
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->name:Ljava/lang/String;

    #@9
    .line 95
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->events:Ljava/util/Hashtable;

    #@b
    .line 104
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->isSelectable:Z

    #@e
    .line 277
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->geometry:Landroid_maps_conflict_avoidance/com/google/map/Geometry;

    #@10
    .line 278
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->name:Ljava/lang/String;

    #@12
    .line 280
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@14
    .line 281
    const/4 v0, 0x0

    #@15
    iput-byte v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->iconClass:B

    #@17
    const/4 v0, 0x7

    #@18
    .line 282
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->resultType:I

    #@1a
    .line 283
    return-void
.end method


# virtual methods
.method public getAddressLine1()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x4

    #@1
    const/4 v1, 0x0

    #@2
    .line 518
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@4
    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/AddressUtil;->getAddressLine(IILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x4

    #@1
    const/4 v1, 0x1

    #@2
    .line 523
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@4
    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/AddressUtil;->getAddressLine(IILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getGeometry()Landroid_maps_conflict_avoidance/com/google/map/Geometry;
    .locals 1

    #@0
    .prologue
    .line 488
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->geometry:Landroid_maps_conflict_avoidance/com/google/map/Geometry;

    #@2
    return-object v0
.end method

.method public getKmlSnippet()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1093
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@2
    const/16 v1, 0x5a

    #@4
    const/16 v2, 0x5c

    #@6
    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getSubProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getKmlSupplementalDisplayLine()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1370
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getKmlSnippet()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :goto_0
    return-object v0

    #@f
    :cond_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method

.method public getLocation()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 509
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getGeometry()Landroid_maps_conflict_avoidance/com/google/map/Geometry;

    #@4
    move-result-object v0

    #@5
    .line 510
    .local v0, "location":Landroid_maps_conflict_avoidance/com/google/map/Geometry;
    if-eqz v0, :cond_0

    #@7
    .line 513
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/map/Geometry;->getDefiningPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 511
    :cond_0
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 754
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->name:Ljava/lang/String;

    #@2
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 758
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->isKml()Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_1

    #@e
    .line 765
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 766
    .local v0, "addressLine1":Ljava/lang/String;
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine2()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 767
    .local v1, "addressLine2":Ljava/lang/String;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->isChinaVersion()Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_2

    #@1c
    const-string/jumbo v2, ""

    #@1f
    .line 771
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_4

    #@25
    .end local v1    # "addressLine2":Ljava/lang/String;
    :goto_0
    return-object v1

    #@26
    .line 755
    .end local v0    # "addressLine1":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->name:Ljava/lang/String;

    #@28
    return-object v2

    #@29
    .line 760
    :cond_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getKmlSupplementalDisplayLine()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    return-object v2

    #@2e
    .restart local v0    # "addressLine1":Ljava/lang/String;
    .restart local v1    # "addressLine2":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, ""

    #@31
    .line 768
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_3

    #@37
    .end local v0    # "addressLine1":Ljava/lang/String;
    :goto_1
    return-object v0

    #@38
    .restart local v0    # "addressLine1":Ljava/lang/String;
    :cond_3
    move-object v0, v1

    #@39
    goto :goto_1

    #@3a
    :cond_4
    move-object v1, v0

    #@3b
    .line 771
    goto :goto_0
.end method

.method public isKml()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 728
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->isKmlPlacemark()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->isKmlResult()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    goto :goto_0
.end method

.method public isKmlPlacemark()Z
    .locals 2

    #@0
    .prologue
    .line 723
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->resultType:I

    #@2
    const/4 v1, 0x5

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method public isKmlResult()Z
    .locals 2

    #@0
    .prologue
    .line 718
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->resultType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 880
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 881
    .local v1, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getLocation()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@8
    move-result-object v0

    #@9
    .line 882
    .local v0, "geometry":Landroid_maps_conflict_avoidance/com/google/map/Geometry;
    if-nez v0, :cond_0

    #@b
    :goto_0
    const-string/jumbo v2, ":"

    #@e
    .line 885
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    .line 886
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getTitle()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    const-string/jumbo v2, ":"

    #@1b
    .line 887
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    .line 888
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    if-nez v2, :cond_1

    #@24
    :goto_1
    const-string/jumbo v2, ":"

    #@27
    .line 891
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    .line 892
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    if-nez v2, :cond_2

    #@30
    .line 896
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    return-object v2

    #@35
    .line 883
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    goto :goto_0

    #@3d
    .line 889
    :cond_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@44
    goto :goto_1

    #@45
    .line 893
    :cond_2
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine2()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c
    goto :goto_2
.end method
