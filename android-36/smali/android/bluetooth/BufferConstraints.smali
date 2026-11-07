.class public final Landroid/bluetooth/BufferConstraints;
.super Ljava/lang/Object;
.source "BufferConstraints.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist BUFFER_CODEC_MAX_NUM:I = 0x20

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BufferConstraints;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mBufferConstraintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BufferConstraint;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBufferConstraints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BufferConstraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const-class v0, Landroid/bluetooth/BufferConstraints;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BufferConstraints;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/bluetooth/BufferConstraints$1;

    invoke-direct {v0}, Landroid/bluetooth/BufferConstraints$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BufferConstraints;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraints:Ljava/util/Map;

    .line 55
    sget-object v0, Landroid/bluetooth/BufferConstraint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraintList:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraintList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 57
    iget-object v1, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraints:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraintList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BufferConstraint;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 59
    .end local v0    # "i":I
    :cond_2f
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BufferConstraint;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "bufferConstraintList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BufferConstraint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraintList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraints:Ljava/util/Map;

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    const/16 v1, 0x20

    if-ge v0, v1, :cond_28

    .line 49
    iget-object v1, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraints:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BufferConstraint;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 51
    .end local v0    # "i":I
    :cond_28
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist forCodec(I)Landroid/bluetooth/BufferConstraint;
    .registers 4
    .param p1, "codec"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 91
    iget-object v0, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BufferConstraint;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget-object v0, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraintList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 75
    return-void
.end method
