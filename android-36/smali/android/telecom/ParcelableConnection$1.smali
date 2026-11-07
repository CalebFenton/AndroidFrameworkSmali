.class Landroid/telecom/ParcelableConnection$1;
.super Ljava/lang/Object;
.source "ParcelableConnection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/ParcelableConnection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConnection;
    .registers 30
    .param p1, "source"    # Landroid/os/Parcel;

    .line 262
    move-object/from16 v0, p1

    const-class v1, Landroid/telecom/ParcelableConnection;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 264
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-class v2, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 265
    .local v4, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 266
    .local v5, "state":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 267
    .local v6, "capabilities":I
    const-class v2, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/net/Uri;

    .line 268
    .local v9, "address":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 269
    .local v10, "addressPresentation":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 270
    .local v11, "callerDisplayName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 271
    .local v12, "callerDisplayNamePresentation":I
    nop

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v13

    .line 273
    .local v13, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 274
    .local v14, "videoState":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x0

    const/4 v7, 0x1

    if-ne v2, v7, :cond_45

    move v15, v7

    goto :goto_46

    :cond_45
    move v15, v3

    .line 275
    .local v15, "ringbackRequested":Z
    :goto_46
    invoke-virtual {v0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v7, :cond_4f

    move/from16 v16, v7

    goto :goto_51

    :cond_4f
    move/from16 v16, v3

    .line 276
    .local v16, "audioModeIsVoip":Z
    :goto_51
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 277
    .local v17, "connectTimeMillis":J
    const-class v2, Landroid/telecom/StatusHints;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/telecom/StatusHints;

    .line 278
    .local v21, "statusHints":Landroid/telecom/StatusHints;
    const-class v2, Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/telecom/DisconnectCause;

    .line 279
    .local v22, "disconnectCause":Landroid/telecom/DisconnectCause;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, v23

    .line 280
    .local v2, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 281
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3, v7}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v24

    .line 282
    .local v24, "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 283
    .local v7, "properties":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 284
    .local v8, "supportedAudioRoutes":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 285
    .local v25, "parentCallId":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 286
    .local v19, "connectElapsedTimeMillis":J
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 287
    .local v26, "callDirection":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 289
    .local v27, "callerNumberVerificationStatus":I
    new-instance v3, Landroid/telecom/ParcelableConnection;

    .end local v2    # "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v23, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v3 .. v27}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;II)V

    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 259
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConnection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConnection;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/ParcelableConnection;
    .registers 3
    .param p1, "size"    # I

    .line 316
    new-array v0, p1, [Landroid/telecom/ParcelableConnection;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 259
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConnection$1;->newArray(I)[Landroid/telecom/ParcelableConnection;

    move-result-object p1

    return-object p1
.end method
