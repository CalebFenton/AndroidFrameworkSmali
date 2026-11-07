.class public final Landroid/net/apf/ApfCapabilities;
.super Ljava/lang/Object;
.source "ApfCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/apf/ApfCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final whitelist apfPacketFormat:I

.field public final whitelist apfVersionSupported:I

.field public final whitelist maximumApfProgramSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Landroid/net/apf/ApfCapabilities$1;

    invoke-direct {v0}, Landroid/net/apf/ApfCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/apf/ApfCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 4
    .param p1, "apfVersionSupported"    # I
    .param p2, "maximumApfProgramSize"    # I
    .param p3, "apfPacketFormat"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    .line 57
    iput p2, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    .line 58
    iput p3, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    .line 59
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/apf/ApfCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/apf/ApfCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist getApfDrop8023Frames()Z
    .registers 1

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist getApfEtherTypeBlackList()[I
    .registers 5

    .line 140
    const v0, 0x88cd

    const v1, 0x88e3

    const v2, 0x88a2

    const v3, 0x88a4

    const v4, 0x88b8

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 100
    instance-of v0, p1, Landroid/net/apf/ApfCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 101
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/apf/ApfCapabilities;

    .line 102
    .local v0, "other":Landroid/net/apf/ApfCapabilities;
    iget v2, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    iget v3, v0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    iget v3, v0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    iget v3, v0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    if-ne v2, v3, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public whitelist hasDataAccess()Z
    .registers 3

    .line 122
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 111
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 94
    const-string v1, "%s{version: %d, maxSize: %d, format: %d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
