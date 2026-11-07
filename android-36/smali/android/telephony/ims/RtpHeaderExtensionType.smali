.class public final Landroid/telephony/ims/RtpHeaderExtensionType;
.super Ljava/lang/Object;
.source "RtpHeaderExtensionType.java"

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
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mLocalIdentifier:I

.field private blacklist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Landroid/telephony/ims/RtpHeaderExtensionType$1;

    invoke-direct {v0}, Landroid/telephony/ims/RtpHeaderExtensionType$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RtpHeaderExtensionType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/net/Uri;)V
    .registers 5
    .param p1, "localIdentifier"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1a

    const/16 v0, 0xd

    if-gt p1, v0, :cond_1a

    .line 57
    if-eqz p2, :cond_11

    .line 60
    iput p1, p0, Landroid/telephony/ims/RtpHeaderExtensionType;->mLocalIdentifier:I

    .line 61
    iput-object p2, p0, Landroid/telephony/ims/RtpHeaderExtensionType;->mUri:Landroid/net/Uri;

    .line 62
    return-void

    .line 58
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uri is required."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "localIdentifier must be in range 1-14"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RtpHeaderExtensionType;->mLocalIdentifier:I

    .line 66
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/RtpHeaderExtensionType;->mUri:Landroid/net/Uri;

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/RtpHeaderExtensionType-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/RtpHeaderExtensionType;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 126
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 127
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/RtpHeaderExtensionType;

    .line 128
    .local v2, "that":Landroid/telephony/ims/RtpHeaderExtensionType;
    iget v3, p0, Landroid/telephony/ims/RtpHeaderExtensionType;->mLocalIdentifier:I

    iget v4, v2, Landroid/telephony/ims/RtpHeaderExtensionType;->mLocalIdentifier:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/telephony/ims/RtpHeaderExtensionType;->mUri:Landroid/net/Uri;

    iget-object v4, v2, Landroid/telephony/ims/RtpHeaderExtensionType;->mUri:Landroid/net/Uri;

    .line 129
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    .line 128
    :goto_27
    return v0

    .line 126
    .end local v2    # "that":Landroid/telephony/ims/RtpHeaderExtensionType;
    :cond_28
    :goto_28
    return v1
.end method

.method public whitelist getLocalIdentifier()I
    .registers 2

    .line 105
    iget v0, p0, Landroid/telephony/ims/RtpHeaderExtensionType;->mLocalIdentifier:I

    return v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/telephony/ims/RtpHeaderExtensionType;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 134
    iget v0, p0, Landroid/telephony/ims/RtpHeaderExtensionType;->mLocalIdentifier:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/RtpHeaderExtensionType;->mUri:Landroid/net/Uri;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "RtpHeaderExtensionType{mLocalIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget v1, p0, Landroid/telephony/ims/RtpHeaderExtensionType;->mLocalIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Landroid/telephony/ims/RtpHeaderExtensionType;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget v0, p0, Landroid/telephony/ims/RtpHeaderExtensionType;->mLocalIdentifier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Landroid/telephony/ims/RtpHeaderExtensionType;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    return-void
.end method
