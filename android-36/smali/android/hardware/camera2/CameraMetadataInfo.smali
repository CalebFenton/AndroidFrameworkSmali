.class public final Landroid/hardware/camera2/CameraMetadataInfo;
.super Ljava/lang/Object;
.source "CameraMetadataInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraMetadataInfo$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/CameraMetadataInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist fmqSize:I = 0x0

.field public static final blacklist metadata:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Landroid/hardware/camera2/CameraMetadataInfo$1;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraMetadataInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CameraMetadataInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .local v0, "_value":J
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/camera2/CameraMetadataInfo;->_tag:I

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/CameraMetadataInfo;->_value:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/hardware/camera2/CameraMetadataInfo;->_tag:I

    .line 31
    iput-object p2, p0, Landroid/hardware/camera2/CameraMetadataInfo;->_value:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraMetadataInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/CameraMetadataInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraMetadataInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 129
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraMetadataInfo;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 132
    return-void

    .line 130
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraMetadataInfo;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraMetadataInfo;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/CameraMetadataInfo;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 143
    iput p1, p0, Landroid/hardware/camera2/CameraMetadataInfo;->_tag:I

    .line 144
    iput-object p2, p0, Landroid/hardware/camera2/CameraMetadataInfo;->_value:Ljava/lang/Object;

    .line 145
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 135
    packed-switch p1, :pswitch_data_24

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :pswitch_1d
    const-string/jumbo v0, "metadata"

    return-object v0

    .line 136
    :pswitch_21
    const-string v0, "fmqSize"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1d
    .end packed-switch
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 122
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 123
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 125
    :cond_10
    return v0
.end method

.method public static blacklist fmqSize(J)Landroid/hardware/camera2/CameraMetadataInfo;
    .registers 5
    .param p0, "_value"    # J

    .line 41
    new-instance v0, Landroid/hardware/camera2/CameraMetadataInfo;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraMetadataInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist metadata(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/CameraMetadataInfo;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 56
    new-instance v0, Landroid/hardware/camera2/CameraMetadataInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/camera2/CameraMetadataInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraMetadataInfo;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    goto :goto_12

    .line 115
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraMetadataInfo;->getMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraMetadataInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 118
    :goto_12
    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getFmqSize()J
    .registers 3

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraMetadataInfo;->_assertTag(I)V

    .line 46
    iget-object v0, p0, Landroid/hardware/camera2/CameraMetadataInfo;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 2

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraMetadataInfo;->_assertTag(I)V

    .line 61
    iget-object v0, p0, Landroid/hardware/camera2/CameraMetadataInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 35
    iget v0, p0, Landroid/hardware/camera2/CameraMetadataInfo;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_3a

    .line 107
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :pswitch_21
    sget-object v1, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 104
    .local v1, "_aidl_value":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/CameraMetadataInfo;->_set(ILjava/lang/Object;)V

    .line 105
    return-void

    .line 98
    .end local v1    # "_aidl_value":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 99
    .local v1, "_aidl_value":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/camera2/CameraMetadataInfo;->_set(ILjava/lang/Object;)V

    .line 100
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist setFmqSize(J)V
    .registers 5
    .param p1, "_value"    # J

    .line 50
    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/CameraMetadataInfo;->_set(ILjava/lang/Object;)V

    .line 51
    return-void
.end method

.method public blacklist setMetadata(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/CameraMetadataInfo;->_set(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 81
    iget v0, p0, Landroid/hardware/camera2/CameraMetadataInfo;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Landroid/hardware/camera2/CameraMetadataInfo;->_tag:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1b

    .line 87
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraMetadataInfo;->getMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1b

    .line 84
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraMetadataInfo;->getFmqSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    nop

    .line 90
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
