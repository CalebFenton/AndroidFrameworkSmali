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
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConference;
    .locals 13
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 134
    const-class v0, Landroid/telecom/ParcelableConference;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v12

    #@6
    .line 135
    .local v12, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v12}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    #@c
    .line 136
    .local v1, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v2

    #@10
    .line 137
    .local v2, "state":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v3

    #@14
    .line 138
    .local v3, "capabilities":I
    new-instance v5, Ljava/util/ArrayList;

    #@16
    const/4 v0, 0x2

    #@17
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@1a
    .line 139
    .local v5, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v5, v12}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    #@1d
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@20
    move-result-wide v8

    #@21
    .line 142
    .local v8, "connectTimeMillis":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@24
    move-result-object v0

    #@25
    invoke-static {v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    #@28
    move-result-object v6

    #@29
    .line 143
    .local v6, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v7

    #@2d
    .line 144
    .local v7, "videoState":I
    invoke-virtual {p1, v12}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@30
    move-result-object v10

    #@31
    check-cast v10, Landroid/telecom/StatusHints;

    #@33
    .line 145
    .local v10, "statusHints":Landroid/telecom/StatusHints;
    invoke-virtual {p1, v12}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    #@36
    move-result-object v11

    #@37
    .line 146
    .local v11, "extras":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v4

    #@3b
    .line 148
    .local v4, "properties":I
    new-instance v0, Landroid/telecom/ParcelableConference;

    #@3d
    invoke-direct/range {v0 .. v11}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJLandroid/telecom/StatusHints;Landroid/os/Bundle;)V

    #@40
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 133
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
    .line 155
    new-array v0, p1, [Landroid/telecom/ParcelableConference;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 154
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConference$1;->newArray(I)[Landroid/telecom/ParcelableConference;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
