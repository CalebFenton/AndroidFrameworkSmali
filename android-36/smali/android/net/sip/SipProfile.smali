.class public Landroid/net/sip/SipProfile;
.super Ljava/lang/Object;
.source "SipProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SipProfile$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_PORT:I = 0x13c4

.field private static final greylist-max-o TCP:Ljava/lang/String; = "TCP"

.field private static final greylist-max-o UDP:Ljava/lang/String; = "UDP"

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private greylist-max-o mAddress:Ljavax/sip/address/Address;

.field private greylist-max-o mAuthUserName:Ljava/lang/String;

.field private greylist-max-o mAutoRegistration:Z

.field private transient greylist-max-o mCallingUid:I

.field private greylist-max-o mDomain:Ljava/lang/String;

.field private greylist-max-o mPassword:Ljava/lang/String;

.field private greylist-max-o mPort:I

.field private greylist-max-o mProfileName:Ljava/lang/String;

.field private greylist-max-o mProtocol:Ljava/lang/String;

.field private greylist-max-o mProxyAddress:Ljava/lang/String;

.field private greylist-max-o mSendKeepAlive:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPort(Landroid/net/sip/SipProfile;)I
    .registers 1

    iget p0, p0, Landroid/net/sip/SipProfile;->mPort:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProtocol(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAddress(Landroid/net/sip/SipProfile;Ljavax/sip/address/Address;)V
    .registers 2

    iput-object p1, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAuthUserName(Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutoRegistration(Landroid/net/sip/SipProfile;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDomain(Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPassword(Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPort(Landroid/net/sip/SipProfile;I)V
    .registers 2

    iput p1, p0, Landroid/net/sip/SipProfile;->mPort:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProfileName(Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProtocol(Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProxyAddress(Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSendKeepAlive(Landroid/net/sip/SipProfile;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Landroid/net/sip/SipProfile$1;

    invoke-direct {v0}, Landroid/net/sip/SipProfile$1;-><init>()V

    sput-object v0, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "UDP"

    iput-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    .line 63
    const/16 v0, 0x13c4

    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    .line 66
    iput v0, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    .line 312
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/sip/SipProfile-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/sip/SipProfile;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "UDP"

    iput-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    .line 63
    const/16 v0, 0x13c4

    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    .line 66
    iput v0, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljavax/sip/address/Address;

    iput-object v2, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_41

    move v2, v0

    goto :goto_42

    :cond_41
    move v2, v1

    :goto_42
    iput-boolean v2, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    iput-boolean v0, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;

    .line 326
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/sip/SipProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/sip/SipProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/net/sip/SipProfile;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 504
    iget v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    if-nez v0, :cond_8

    const/16 v0, 0x13c4

    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    .line 505
    :cond_8
    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAuthUserName()Ljava/lang/String;
    .registers 2

    .line 409
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAutoRegistration()Z
    .registers 2

    .line 481
    iget-boolean v0, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    return v0
.end method

.method public whitelist getCallingUid()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 499
    iget v0, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    return v0
.end method

.method public whitelist getDisplayName()Ljava/lang/String;
    .registers 2

    .line 389
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    invoke-interface {v0}, Ljavax/sip/address/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPassword()Ljava/lang/String;
    .registers 2

    .line 418
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPort()I
    .registers 2

    .line 436
    iget v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    return v0
.end method

.method public whitelist getProfileName()Ljava/lang/String;
    .registers 2

    .line 463
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProtocol()Ljava/lang/String;
    .registers 2

    .line 445
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProxyAddress()Ljava/lang/String;
    .registers 2

    .line 454
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSendKeepAlive()Z
    .registers 2

    .line 472
    iget-boolean v0, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    return v0
.end method

.method public greylist-max-o getSipAddress()Ljavax/sip/address/Address;
    .registers 2

    .line 380
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    return-object v0
.end method

.method public whitelist getSipDomain()Ljava/lang/String;
    .registers 2

    .line 427
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getUri()Ljavax/sip/address/SipURI;
    .registers 2

    .line 355
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    invoke-interface {v0}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v0

    check-cast v0, Ljavax/sip/address/SipURI;

    return-object v0
.end method

.method public whitelist getUriString()Ljava/lang/String;
    .registers 3

    .line 367
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 370
    :cond_2c
    invoke-virtual {p0}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/address/SipURI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUserName()Ljava/lang/String;
    .registers 2

    .line 398
    invoke-virtual {p0}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setCallingUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 488
    iput p1, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    .line 489
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 330
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 331
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-boolean v0, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-boolean v0, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget v0, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    return-void
.end method
