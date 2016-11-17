.class Lcom/android/location/provider/GeocodeProvider$1;
.super Landroid/location/IGeocodeProvider$Stub;
.source "GeocodeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/GeocodeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/GeocodeProvider;


# direct methods
.method constructor <init>(Lcom/android/location/provider/GeocodeProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/location/provider/GeocodeProvider;

    #@0
    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/location/provider/GeocodeProvider$1;->this$0:Lcom/android/location/provider/GeocodeProvider;

    #@2
    invoke-direct {p0}, Landroid/location/IGeocodeProvider$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 42
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v1, p0, Lcom/android/location/provider/GeocodeProvider$1;->this$0:Lcom/android/location/provider/GeocodeProvider;

    #@2
    move-wide v2, p1

    #@3
    move-wide v4, p3

    #@4
    move v6, p5

    #@5
    move-object v7, p6

    #@6
    move-object/from16 v8, p7

    #@8
    invoke-virtual/range {v1 .. v8}, Lcom/android/location/provider/GeocodeProvider;->onGetFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 50
    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/location/provider/GeocodeProvider$1;->this$0:Lcom/android/location/provider/GeocodeProvider;

    #@2
    move-object v1, p1

    #@3
    move-wide/from16 v2, p2

    #@5
    move-wide/from16 v4, p4

    #@7
    move-wide/from16 v6, p6

    #@9
    move-wide/from16 v8, p8

    #@b
    move/from16 v10, p10

    #@d
    move-object/from16 v11, p11

    #@f
    move-object/from16 v12, p12

    #@11
    invoke-virtual/range {v0 .. v12}, Lcom/android/location/provider/GeocodeProvider;->onGetFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method
