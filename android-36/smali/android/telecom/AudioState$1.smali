.class Landroid/telecom/AudioState$1;
.super Ljava/lang/Object;
.source "AudioState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/AudioState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/AudioState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/AudioState;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    .line 146
    .local v0, "isMuted":Z
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .local v1, "route":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .local v2, "supportedRouteMask":I
    new-instance v3, Landroid/telecom/AudioState;

    invoke-direct {v3, v0, v1, v2}, Landroid/telecom/AudioState;-><init>(ZII)V

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

    .line 141
    invoke-virtual {p0, p1}, Landroid/telecom/AudioState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/AudioState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/AudioState;
    .registers 3
    .param p1, "size"    # I

    .line 153
    new-array v0, p1, [Landroid/telecom/AudioState;

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

    .line 141
    invoke-virtual {p0, p1}, Landroid/telecom/AudioState$1;->newArray(I)[Landroid/telecom/AudioState;

    move-result-object p1

    return-object p1
.end method
