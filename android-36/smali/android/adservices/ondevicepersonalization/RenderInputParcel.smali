.class public final Landroid/adservices/ondevicepersonalization/RenderInputParcel;
.super Ljava/lang/Object;
.source "RenderInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/RenderInputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHeight:I

.field blacklist mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

.field private blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/RenderInputParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IILandroid/adservices/ondevicepersonalization/RenderingConfig;)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "renderingConfig"    # Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mWidth:I

    .line 34
    iput v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mHeight:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 62
    iput p1, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mWidth:I

    .line 63
    iput p2, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mHeight:I

    .line 64
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 67
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mWidth:I

    .line 34
    iput v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mHeight:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 120
    .local v1, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 121
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .local v3, "height":I
    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_1c

    goto :goto_24

    :cond_1c
    sget-object v0, Landroid/adservices/ondevicepersonalization/RenderingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 124
    .local v0, "renderingConfig":Landroid/adservices/ondevicepersonalization/RenderingConfig;
    :goto_24
    iput v2, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mWidth:I

    .line 125
    iput v3, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mHeight:I

    .line 126
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 129
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mHeight:I

    return v0
.end method

.method public blacklist getRenderingConfig()Landroid/adservices/ondevicepersonalization/RenderingConfig;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    return-object v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mWidth:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "flg":B
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 102
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    iget v1, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v1, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 106
    :cond_1e
    return-void
.end method
