.class public final Landroid/hardware/contexthub/HubServiceInfo;
.super Ljava/lang/Object;
.source "HubServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/HubServiceInfo$Builder;,
        Landroid/hardware/contexthub/HubServiceInfo$ServiceFormat;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FORMAT_AIDL:I = 0x1

.field public static final whitelist FORMAT_CUSTOM:I = 0x0

.field public static final whitelist FORMAT_PW_RPC_PROTOBUF:I = 0x2


# instance fields
.field private final blacklist mFormat:I

.field private final blacklist mMajorVersion:I

.field private final blacklist mMinorVersion:I

.field private final blacklist mServiceDescriptor:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 237
    new-instance v0, Landroid/hardware/contexthub/HubServiceInfo$1;

    invoke-direct {v0}, Landroid/hardware/contexthub/HubServiceInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/contexthub/HubServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/contexthub/Service;)V
    .registers 3
    .param p1, "service"    # Landroid/hardware/contexthub/Service;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iget-object v0, p1, Landroid/hardware/contexthub/Service;->serviceDescriptor:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mServiceDescriptor:Ljava/lang/String;

    .line 80
    iget v0, p1, Landroid/hardware/contexthub/Service;->format:I

    iput v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mFormat:I

    .line 81
    iget v0, p1, Landroid/hardware/contexthub/Service;->majorVersion:I

    iput v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMajorVersion:I

    .line 82
    iget v0, p1, Landroid/hardware/contexthub/Service;->minorVersion:I

    iput v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMinorVersion:I

    .line 83
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mServiceDescriptor:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mFormat:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMajorVersion:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMinorVersion:I

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/contexthub/HubServiceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;III)V
    .registers 5
    .param p1, "serviceDescriptor"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "majorVersion"    # I
    .param p4, "minorVersion"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/hardware/contexthub/HubServiceInfo;->mServiceDescriptor:Ljava/lang/String;

    .line 98
    iput p2, p0, Landroid/hardware/contexthub/HubServiceInfo;->mFormat:I

    .line 99
    iput p3, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMajorVersion:I

    .line 100
    iput p4, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMinorVersion:I

    .line 101
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFormat()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mFormat:I

    return v0
.end method

.method public whitelist getMajorVersion()I
    .registers 2

    .line 122
    iget v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMajorVersion:I

    return v0
.end method

.method public whitelist getMinorVersion()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMinorVersion:I

    return v0
.end method

.method public whitelist getServiceDescriptor()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mServiceDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, "out":Ljava/lang/StringBuilder;
    const-string v1, "Service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "descriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Landroid/hardware/contexthub/HubServiceInfo;->mServiceDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget v1, p0, Landroid/hardware/contexthub/HubServiceInfo;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v1, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMajorVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget v1, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMinorVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 154
    iget-object v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mServiceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMajorVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMinorVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    return-void
.end method
