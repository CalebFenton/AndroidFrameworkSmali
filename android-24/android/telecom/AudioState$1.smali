.class final Landroid/telecom/AudioState$1;
.super Ljava/lang/Object;
.source "AudioState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/AudioState;
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
        "Landroid/telecom/AudioState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/AudioState;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    .line 138
    .local v0, "isMuted":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v1

    #@b
    .line 139
    .local v1, "route":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v2

    #@f
    .line 140
    .local v2, "supportedRouteMask":I
    new-instance v3, Landroid/telecom/AudioState;

    #@11
    invoke-direct {v3, v0, v1, v2}, Landroid/telecom/AudioState;-><init>(ZII)V

    #@14
    return-object v3

    #@15
    .line 137
    .end local v0    # "isMuted":Z
    .end local v1    # "route":I
    .end local v2    # "supportedRouteMask":I
    :cond_0
    const/4 v0, 0x1

    #@16
    .restart local v0    # "isMuted":Z
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 136
    invoke-virtual {p0, p1}, Landroid/telecom/AudioState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/AudioState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/AudioState;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 145
    new-array v0, p1, [Landroid/telecom/AudioState;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/telecom/AudioState$1;->newArray(I)[Landroid/telecom/AudioState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
