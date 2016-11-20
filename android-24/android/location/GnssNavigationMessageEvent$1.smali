.class final Landroid/location/GnssNavigationMessageEvent$1;
.super Ljava/lang/Object;
.source "GnssNavigationMessageEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssNavigationMessageEvent;
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
        "Landroid/location/GnssNavigationMessageEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssNavigationMessageEvent;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 98
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/location/GnssNavigationMessage;

    #@e
    .line 99
    .local v1, "navigationMessage":Landroid/location/GnssNavigationMessage;
    new-instance v2, Landroid/location/GnssNavigationMessageEvent;

    #@10
    invoke-direct {v2, v1}, Landroid/location/GnssNavigationMessageEvent;-><init>(Landroid/location/GnssNavigationMessage;)V

    #@13
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/location/GnssNavigationMessageEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssNavigationMessageEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/GnssNavigationMessageEvent;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 104
    new-array v0, p1, [Landroid/location/GnssNavigationMessageEvent;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/location/GnssNavigationMessageEvent$1;->newArray(I)[Landroid/location/GnssNavigationMessageEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
