.class final Landroid/location/GeocoderParams$1;
.super Ljava/lang/Object;
.source "GeocoderParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GeocoderParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/location/GeocoderParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GeocoderParams;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 70
    new-instance v1, Landroid/location/GeocoderParams;

    #@2
    const/4 v4, 0x0

    #@3
    invoke-direct {v1, v4}, Landroid/location/GeocoderParams;-><init>(Landroid/location/GeocoderParams;)V

    #@6
    .line 71
    .local v1, "gp":Landroid/location/GeocoderParams;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 72
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 73
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 74
    .local v3, "variant":Ljava/lang/String;
    new-instance v4, Ljava/util/Locale;

    #@14
    invoke-direct {v4, v2, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@17
    invoke-static {v1, v4}, Landroid/location/GeocoderParams;->-set0(Landroid/location/GeocoderParams;Ljava/util/Locale;)Ljava/util/Locale;

    #@1a
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v1, v4}, Landroid/location/GeocoderParams;->-set1(Landroid/location/GeocoderParams;Ljava/lang/String;)Ljava/lang/String;

    #@21
    .line 76
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 69
    invoke-virtual {p0, p1}, Landroid/location/GeocoderParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GeocoderParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/GeocoderParams;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 80
    new-array v0, p1, [Landroid/location/GeocoderParams;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/location/GeocoderParams$1;->newArray(I)[Landroid/location/GeocoderParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
