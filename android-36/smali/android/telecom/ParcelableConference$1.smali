.class Landroid/telecom/ParcelableConference$1;
.super Ljava/lang/Object;
.source "ParcelableConference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableConference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/ParcelableConference;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConference;
    .registers 27
    .param p1, "source"    # Landroid/os/Parcel;

    .line 302
    move-object/from16 v0, p1

    const-class v1, Landroid/telecom/ParcelableConference;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 303
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-class v2, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 304
    .local v4, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 305
    .local v5, "state":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 306
    .local v6, "capabilities":I
    new-instance v8, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    .local v8, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 309
    .local v11, "connectTimeMillis":J
    nop

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v9

    .line 311
    .local v9, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 312
    .local v10, "videoState":I
    const-class v2, Landroid/telecom/StatusHints;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/telecom/StatusHints;

    .line 313
    .local v15, "statusHints":Landroid/telecom/StatusHints;
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v16

    .line 314
    .local v16, "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 315
    .local v7, "properties":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 316
    .local v13, "connectElapsedTimeMillis":J
    const-class v2, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/net/Uri;

    .line 317
    .local v17, "address":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 318
    .local v18, "addressPresentation":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 319
    .local v19, "callerDisplayName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 320
    .local v20, "callerDisplayNamePresentation":I
    const-class v2, Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/telecom/DisconnectCause;

    .line 321
    .local v21, "disconnectCause":Landroid/telecom/DisconnectCause;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_72

    goto :goto_73

    :cond_72
    const/4 v3, 0x0

    :goto_73
    move/from16 v22, v3

    .line 322
    .local v22, "isRingbackRequested":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 324
    .local v23, "callDirection":I
    new-instance v3, Landroid/telecom/ParcelableConference;

    const/16 v24, 0x0

    invoke-direct/range {v3 .. v24}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJJLandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/DisconnectCause;ZILandroid/telecom/ParcelableConference-IA;)V

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

    .line 299
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConference$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConference;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/ParcelableConference;
    .registers 3
    .param p1, "size"    # I

    .line 333
    new-array v0, p1, [Landroid/telecom/ParcelableConference;

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

    .line 299
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConference$1;->newArray(I)[Landroid/telecom/ParcelableConference;

    move-result-object p1

    return-object p1
.end method
