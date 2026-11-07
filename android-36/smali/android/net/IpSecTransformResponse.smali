.class public final Landroid/net/IpSecTransformResponse;
.super Ljava/lang/Object;
.source "IpSecTransformResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecTransformResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "IpSecTransformResponse"


# instance fields
.field public final greylist-max-o resourceId:I

.field public final greylist-max-o status:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Landroid/net/IpSecTransformResponse$1;

    invoke-direct {v0}, Landroid/net/IpSecTransformResponse$1;-><init>()V

    sput-object v0, Landroid/net/IpSecTransformResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 4
    .param p1, "inStatus"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_b

    .line 49
    iput p1, p0, Landroid/net/IpSecTransformResponse;->status:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecTransformResponse;->resourceId:I

    .line 51
    return-void

    .line 47
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid status implies other args must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "inStatus"    # I
    .param p2, "inResourceId"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Landroid/net/IpSecTransformResponse;->status:I

    .line 55
    iput p2, p0, Landroid/net/IpSecTransformResponse;->resourceId:I

    .line 56
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecTransformResponse;->status:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecTransformResponse;->resourceId:I

    .line 61
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/IpSecTransformResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/IpSecTransformResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 41
    iget v0, p0, Landroid/net/IpSecTransformResponse;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Landroid/net/IpSecTransformResponse;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    return-void
.end method
