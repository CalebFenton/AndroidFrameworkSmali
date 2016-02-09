.class final Landroid/telecom/ParcelableConference$1;
.super Ljava/lang/Object;
.source "ParcelableConference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableConference;
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
        "Landroid/telecom/ParcelableConference;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConference;
    .locals 12
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 125
    const-class v1, Landroid/telecom/ParcelableConference;

    #@2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    .line 126
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    #@c
    .line 127
    .local v2, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v3

    #@10
    .line 128
    .local v3, "state":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v4

    #@14
    .line 129
    .local v4, "capabilities":I
    new-instance v5, Ljava/util/ArrayList;

    #@16
    const/4 v1, 0x2

    #@17
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1a
    .line 130
    .local v5, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v5, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    #@1d
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@20
    move-result-wide v8

    #@21
    .line 133
    .local v8, "connectTimeMillis":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@24
    move-result-object v1

    #@25
    invoke-static {v1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    #@28
    move-result-object v6

    #@29
    .line 134
    .local v6, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v7

    #@2d
    .line 135
    .local v7, "videoState":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@30
    move-result-object v10

    #@31
    check-cast v10, Landroid/telecom/StatusHints;

    #@33
    .line 136
    .local v10, "statusHints":Landroid/telecom/StatusHints;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    #@36
    move-result-object v11

    #@37
    .line 138
    .local v11, "extras":Landroid/os/Bundle;
    new-instance v1, Landroid/telecom/ParcelableConference;

    #@39
    invoke-direct/range {v1 .. v11}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJLandroid/telecom/StatusHints;Landroid/os/Bundle;)V

    #@3c
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 124
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConference$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConference;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/ParcelableConference;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 144
    new-array v0, p1, [Landroid/telecom/ParcelableConference;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 143
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConference$1;->newArray(I)[Landroid/telecom/ParcelableConference;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
