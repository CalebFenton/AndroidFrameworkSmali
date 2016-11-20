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
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConnection;
    .locals 23
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 192
    const-class v3, Landroid/telecom/ParcelableConnection;

    #@2
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v2

    #@6
    .line 194
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@b
    move-result-object v4

    #@c
    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    #@e
    .line 195
    .local v4, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v5

    #@12
    .line 196
    .local v5, "state":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v6

    #@16
    .line 197
    .local v6, "capabilities":I
    move-object/from16 v0, p1

    #@18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1b
    move-result-object v8

    #@1c
    check-cast v8, Landroid/net/Uri;

    #@1e
    .line 198
    .local v8, "address":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v9

    #@22
    .line 199
    .local v9, "addressPresentation":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v10

    #@26
    .line 200
    .local v10, "callerDisplayName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v11

    #@2a
    .line 202
    .local v11, "callerDisplayNamePresentation":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d
    move-result-object v3

    #@2e
    invoke-static {v3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    #@31
    move-result-object v12

    #@32
    .line 203
    .local v12, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v13

    #@36
    .line 204
    .local v13, "videoState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    #@39
    move-result v3

    #@3a
    const/16 v22, 0x1

    #@3c
    move/from16 v0, v22

    #@3e
    if-ne v3, v0, :cond_0

    #@40
    const/4 v14, 0x1

    #@41
    .line 205
    .local v14, "ringbackRequested":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    #@44
    move-result v3

    #@45
    const/16 v22, 0x1

    #@47
    move/from16 v0, v22

    #@49
    if-ne v3, v0, :cond_1

    #@4b
    const/4 v15, 0x1

    #@4c
    .line 206
    .local v15, "audioModeIsVoip":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@4f
    move-result-wide v16

    #@50
    .line 207
    .local v16, "connectTimeMillis":J
    move-object/from16 v0, p1

    #@52
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@55
    move-result-object v18

    #@56
    check-cast v18, Landroid/telecom/StatusHints;

    #@58
    .line 208
    .local v18, "statusHints":Landroid/telecom/StatusHints;
    move-object/from16 v0, p1

    #@5a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@5d
    move-result-object v19

    #@5e
    check-cast v19, Landroid/telecom/DisconnectCause;

    #@60
    .line 209
    .local v19, "disconnectCause":Landroid/telecom/DisconnectCause;
    new-instance v20, Ljava/util/ArrayList;

    #@62
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    #@65
    .line 210
    .local v20, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    #@67
    move-object/from16 v1, v20

    #@69
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    #@6c
    .line 211
    move-object/from16 v0, p1

    #@6e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    #@71
    move-result-object v3

    #@72
    const/16 v22, 0x1

    #@74
    move/from16 v0, v22

    #@76
    invoke-static {v3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@79
    move-result-object v21

    #@7a
    .line 212
    .local v21, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@7d
    move-result v7

    #@7e
    .line 214
    .local v7, "properties":I
    new-instance v3, Landroid/telecom/ParcelableConnection;

    #@80
    invoke-direct/range {v3 .. v21}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    #@83
    return-object v3

    #@84
    .line 204
    .end local v7    # "properties":I
    .end local v14    # "ringbackRequested":Z
    .end local v15    # "audioModeIsVoip":Z
    .end local v16    # "connectTimeMillis":J
    .end local v18    # "statusHints":Landroid/telecom/StatusHints;
    .end local v19    # "disconnectCause":Landroid/telecom/DisconnectCause;
    .end local v20    # "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "extras":Landroid/os/Bundle;
    :cond_0
    const/4 v14, 0x0

    #@85
    .restart local v14    # "ringbackRequested":Z
    goto :goto_0

    #@86
    .line 205
    :cond_1
    const/4 v15, 0x0

    #@87
    .restart local v15    # "audioModeIsVoip":Z
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 191
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
    .line 236
    new-array v0, p1, [Landroid/telecom/ParcelableConnection;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 235
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConnection$1;->newArray(I)[Landroid/telecom/ParcelableConnection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
