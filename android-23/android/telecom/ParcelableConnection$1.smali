.class final Landroid/telecom/ParcelableConnection$1;
.super Ljava/lang/Object;
.source "ParcelableConnection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableConnection;
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
        "Landroid/telecom/ParcelableConnection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConnection;
    .locals 22
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 172
    const-class v2, Landroid/telecom/ParcelableConnection;

    #@2
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v20

    #@6
    .line 174
    .local v20, "classLoader":Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    #@8
    move-object/from16 v1, v20

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    #@10
    .line 175
    .local v3, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v4

    #@14
    .line 176
    .local v4, "state":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v5

    #@18
    .line 177
    .local v5, "capabilities":I
    move-object/from16 v0, p1

    #@1a
    move-object/from16 v1, v20

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1f
    move-result-object v6

    #@20
    check-cast v6, Landroid/net/Uri;

    #@22
    .line 178
    .local v6, "address":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v7

    #@26
    .line 179
    .local v7, "addressPresentation":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29
    move-result-object v8

    #@2a
    .line 180
    .local v8, "callerDisplayName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v9

    #@2e
    .line 182
    .local v9, "callerDisplayNamePresentation":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@31
    move-result-object v2

    #@32
    invoke-static {v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    #@35
    move-result-object v10

    #@36
    .line 183
    .local v10, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v11

    #@3a
    .line 184
    .local v11, "videoState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    #@3d
    move-result v2

    #@3e
    const/16 v21, 0x1

    #@40
    move/from16 v0, v21

    #@42
    if-ne v2, v0, :cond_0

    #@44
    const/4 v12, 0x1

    #@45
    .line 185
    .local v12, "ringbackRequested":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    #@48
    move-result v2

    #@49
    const/16 v21, 0x1

    #@4b
    move/from16 v0, v21

    #@4d
    if-ne v2, v0, :cond_1

    #@4f
    const/4 v13, 0x1

    #@50
    .line 186
    .local v13, "audioModeIsVoip":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@53
    move-result-wide v14

    #@54
    .line 187
    .local v14, "connectTimeMillis":J
    move-object/from16 v0, p1

    #@56
    move-object/from16 v1, v20

    #@58
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@5b
    move-result-object v16

    #@5c
    check-cast v16, Landroid/telecom/StatusHints;

    #@5e
    .line 188
    .local v16, "statusHints":Landroid/telecom/StatusHints;
    move-object/from16 v0, p1

    #@60
    move-object/from16 v1, v20

    #@62
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@65
    move-result-object v17

    #@66
    check-cast v17, Landroid/telecom/DisconnectCause;

    #@68
    .line 189
    .local v17, "disconnectCause":Landroid/telecom/DisconnectCause;
    new-instance v18, Ljava/util/ArrayList;

    #@6a
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@6d
    .line 190
    .local v18, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    #@6f
    move-object/from16 v1, v18

    #@71
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    #@74
    .line 191
    move-object/from16 v0, p1

    #@76
    move-object/from16 v1, v20

    #@78
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    #@7b
    move-result-object v19

    #@7c
    .line 193
    .local v19, "extras":Landroid/os/Bundle;
    new-instance v2, Landroid/telecom/ParcelableConnection;

    #@7e
    invoke-direct/range {v2 .. v19}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    #@81
    return-object v2

    #@82
    .line 184
    .end local v12    # "ringbackRequested":Z
    .end local v13    # "audioModeIsVoip":Z
    .end local v14    # "connectTimeMillis":J
    .end local v16    # "statusHints":Landroid/telecom/StatusHints;
    .end local v17    # "disconnectCause":Landroid/telecom/DisconnectCause;
    .end local v18    # "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "extras":Landroid/os/Bundle;
    :cond_0
    const/4 v12, 0x0

    #@83
    .restart local v12    # "ringbackRequested":Z
    goto :goto_0

    #@84
    .line 185
    :cond_1
    const/4 v13, 0x0

    #@85
    .restart local v13    # "audioModeIsVoip":Z
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 171
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConnection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConnection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/ParcelableConnection;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 214
    new-array v0, p1, [Landroid/telecom/ParcelableConnection;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 213
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConnection$1;->newArray(I)[Landroid/telecom/ParcelableConnection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
