.class Lcom/android/ims/internal/ConferenceParticipant$1;
.super Ljava/lang/Object;
.source "ConferenceParticipant.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ConferenceParticipant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/internal/ConferenceParticipant;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/ConferenceParticipant;
    .registers 14
    .param p1, "source"    # Landroid/os/Parcel;

    .line 109
    const-class v0, Lcom/android/ims/internal/ConferenceParticipant;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 110
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/Uri;

    .line 111
    .local v3, "handle":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "displayName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/net/Uri;

    .line 113
    .local v5, "endpoint":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 114
    .local v6, "state":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 115
    .local v8, "connectTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 116
    .local v10, "elapsedRealTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 117
    .local v7, "callDirection":I
    new-instance v2, Lcom/android/ims/internal/ConferenceParticipant;

    invoke-direct/range {v2 .. v7}, Lcom/android/ims/internal/ConferenceParticipant;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 120
    .local v2, "participant":Lcom/android/ims/internal/ConferenceParticipant;
    invoke-virtual {v2, v8, v9}, Lcom/android/ims/internal/ConferenceParticipant;->setConnectTime(J)V

    .line 121
    invoke-virtual {v2, v10, v11}, Lcom/android/ims/internal/ConferenceParticipant;->setConnectElapsedTime(J)V

    .line 122
    return-object v2
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

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/ConferenceParticipant$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/ConferenceParticipant;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/ims/internal/ConferenceParticipant;
    .registers 3
    .param p1, "size"    # I

    .line 127
    new-array v0, p1, [Lcom/android/ims/internal/ConferenceParticipant;

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

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/ConferenceParticipant$1;->newArray(I)[Lcom/android/ims/internal/ConferenceParticipant;

    move-result-object p1

    return-object p1
.end method
