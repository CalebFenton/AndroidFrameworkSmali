.class Landroid/media/audiopolicy/AudioProductStrategy$1;
.super Ljava/lang/Object;
.source "AudioProductStrategy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioProductStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audiopolicy/AudioProductStrategy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioProductStrategy;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 386
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 387
    .local v2, "nbAttributesGroups":I
    new-array v3, v2, [Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    .line 388
    .local v3, "aag":[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_f
    if-ge v4, v2, :cond_1e

    .line 389
    sget-object v5, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    aput-object v5, v3, v4

    .line 388
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 391
    .end local v4    # "index":I
    :cond_1e
    new-instance v4, Landroid/media/audiopolicy/AudioProductStrategy;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v3, v5}, Landroid/media/audiopolicy/AudioProductStrategy;-><init>(Ljava/lang/String;I[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;Landroid/media/audiopolicy/AudioProductStrategy-IA;)V

    return-object v4
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

    .line 381
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/audiopolicy/AudioProductStrategy;
    .registers 3
    .param p1, "size"    # I

    .line 396
    new-array v0, p1, [Landroid/media/audiopolicy/AudioProductStrategy;

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

    .line 381
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy$1;->newArray(I)[Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object p1

    return-object p1
.end method
