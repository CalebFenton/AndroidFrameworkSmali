.class final Landroid/telecom/ParcelableCall$1;
.super Ljava/lang/Object;
.source "ParcelableCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCall;
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
        "Landroid/telecom/ParcelableCall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCall;
    .locals 28
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 267
    const-class v3, Landroid/telecom/ParcelableCall;

    #@2
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v2

    #@6
    .line 268
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 269
    .local v4, "id":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v5

    #@e
    .line 270
    .local v5, "state":I
    move-object/from16 v0, p1

    #@10
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Landroid/telecom/DisconnectCause;

    #@16
    .line 271
    .local v6, "disconnectCause":Landroid/telecom/DisconnectCause;
    new-instance v7, Ljava/util/ArrayList;

    #@18
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 272
    .local v7, "cannedSmsResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    #@1d
    invoke-virtual {v0, v7, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    #@20
    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v8

    #@24
    .line 274
    .local v8, "capabilities":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v9

    #@28
    .line 275
    .local v9, "properties":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@2b
    move-result-wide v10

    #@2c
    .line 276
    .local v10, "connectTimeMillis":J
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@31
    move-result-object v12

    #@32
    check-cast v12, Landroid/net/Uri;

    #@34
    .line 277
    .local v12, "handle":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v13

    #@38
    .line 278
    .local v13, "handlePresentation":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b
    move-result-object v14

    #@3c
    .line 279
    .local v14, "callerDisplayName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v15

    #@40
    .line 280
    .local v15, "callerDisplayNamePresentation":I
    move-object/from16 v0, p1

    #@42
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@45
    move-result-object v16

    #@46
    check-cast v16, Landroid/telecom/GatewayInfo;

    #@48
    .line 281
    .local v16, "gatewayInfo":Landroid/telecom/GatewayInfo;
    move-object/from16 v0, p1

    #@4a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@4d
    move-result-object v17

    #@4e
    check-cast v17, Landroid/telecom/PhoneAccountHandle;

    #@50
    .line 282
    .local v17, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    #@53
    move-result v3

    #@54
    const/16 v27, 0x1

    #@56
    move/from16 v0, v27

    #@58
    if-ne v3, v0, :cond_0

    #@5a
    const/16 v18, 0x1

    #@5c
    .line 284
    .local v18, "isVideoCallProviderChanged":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5f
    move-result-object v3

    #@60
    invoke-static {v3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    #@63
    move-result-object v19

    #@64
    .line 285
    .local v19, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@67
    move-result-object v20

    #@68
    .line 286
    .local v20, "parentCallId":Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    #@6a
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    #@6d
    .line 287
    .local v21, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    #@6f
    move-object/from16 v1, v21

    #@71
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    #@74
    .line 288
    move-object/from16 v0, p1

    #@76
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@79
    move-result-object v22

    #@7a
    check-cast v22, Landroid/telecom/StatusHints;

    #@7c
    .line 289
    .local v22, "statusHints":Landroid/telecom/StatusHints;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@7f
    move-result v23

    #@80
    .line 290
    .local v23, "videoState":I
    new-instance v24, Ljava/util/ArrayList;

    #@82
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    #@85
    .line 291
    .local v24, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    #@87
    move-object/from16 v1, v24

    #@89
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    #@8c
    .line 292
    move-object/from16 v0, p1

    #@8e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    #@91
    move-result-object v25

    #@92
    .line 293
    .local v25, "intentExtras":Landroid/os/Bundle;
    move-object/from16 v0, p1

    #@94
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    #@97
    move-result-object v26

    #@98
    .line 294
    .local v26, "extras":Landroid/os/Bundle;
    new-instance v3, Landroid/telecom/ParcelableCall;

    #@9a
    invoke-direct/range {v3 .. v26}, Landroid/telecom/ParcelableCall;-><init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;ZLcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@9d
    return-object v3

    #@9e
    .line 282
    .end local v18    # "isVideoCallProviderChanged":Z
    .end local v19    # "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    .end local v20    # "parentCallId":Ljava/lang/String;
    .end local v21    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "statusHints":Landroid/telecom/StatusHints;
    .end local v23    # "videoState":I
    .end local v24    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "intentExtras":Landroid/os/Bundle;
    .end local v26    # "extras":Landroid/os/Bundle;
    :cond_0
    const/16 v18, 0x0

    #@a0
    .restart local v18    # "isVideoCallProviderChanged":Z
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 266
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCall$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/ParcelableCall;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 321
    new-array v0, p1, [Landroid/telecom/ParcelableCall;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 320
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCall$1;->newArray(I)[Landroid/telecom/ParcelableCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
