.class final Landroid/location/Country$1;
.super Ljava/lang/Object;
.source "Country.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Country;
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
        "Landroid/location/Country;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Country;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 138
    new-instance v1, Landroid/location/Country;

    #@2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v3

    #@a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@d
    move-result-wide v4

    #@e
    const/4 v6, 0x0

    #@f
    invoke-direct/range {v1 .. v6}, Landroid/location/Country;-><init>(Ljava/lang/String;IJLandroid/location/Country;)V

    #@12
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 137
    invoke-virtual {p0, p1}, Landroid/location/Country$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Country;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/Country;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 142
    new-array v0, p1, [Landroid/location/Country;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 141
    invoke-virtual {p0, p1}, Landroid/location/Country$1;->newArray(I)[Landroid/location/Country;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
