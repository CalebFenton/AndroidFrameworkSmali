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
        Landroid/net/sip/SipProfile$Builder;,
        Landroid/net/sip/SipProfile$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PORT:I = 0x13c4

.field private static final TCP:Ljava/lang/String; = "TCP"

.field private static final UDP:Ljava/lang/String; = "UDP"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAddress:Ljavax/sip/address/Address;

.field private mAuthUserName:Ljava/lang/String;

.field private mAutoRegistration:Z

.field private transient mCallingUid:I

.field private mDomain:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mProfileName:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mProxyAddress:Ljava/lang/String;

.field private mSendKeepAlive:Z


# direct methods
.method static synthetic -get0(Landroid/net/sip/SipProfile;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/sip/SipProfile;Ljavax/sip/address/Address;)Ljavax/sip/address/Address;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/net/sip/SipProfile;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Landroid/net/sip/SipProfile;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/net/sip/SipProfile;->mPort:I

    #@2
    return p1
.end method

.method static synthetic -set6(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set7(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set8(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set9(Landroid/net/sip/SipProfile;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 66
    new-instance v0, Landroid/net/sip/SipProfile$1;

    #@2
    invoke-direct {v0}, Landroid/net/sip/SipProfile$1;-><init>()V

    #@5
    .line 65
    sput-object v0, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    const-string/jumbo v0, "UDP"

    #@7
    iput-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    #@9
    .line 60
    const/16 v0, 0x13c4

    #@b
    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    #@d
    .line 61
    iput-boolean v1, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    #@f
    .line 62
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    #@12
    .line 63
    iput v1, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    #@14
    .line 308
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/sip/SipProfile;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/net/sip/SipProfile;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 57
    const-string/jumbo v0, "UDP"

    #@8
    iput-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    #@a
    .line 60
    const/16 v0, 0x13c4

    #@c
    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    #@e
    .line 61
    iput-boolean v1, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    #@10
    .line 62
    iput-boolean v2, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    #@12
    .line 63
    iput v1, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    #@14
    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljavax/sip/address/Address;

    #@1a
    iput-object v0, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    #@1c
    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    #@22
    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;

    #@28
    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    #@2e
    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    #@34
    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;

    #@3a
    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v0

    #@3e
    if-nez v0, :cond_0

    #@40
    move v0, v1

    #@41
    :goto_0
    iput-boolean v0, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    #@43
    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_1

    #@49
    :goto_1
    iput-boolean v1, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    #@4b
    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4e
    move-result v0

    #@4f
    iput v0, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    #@51
    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@54
    move-result v0

    #@55
    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    #@57
    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    iput-object v0, p0, Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;

    #@5d
    .line 311
    return-void

    #@5e
    :cond_0
    move v0, v2

    #@5f
    .line 318
    goto :goto_0

    #@60
    :cond_1
    move v1, v2

    #@61
    .line 319
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/sip/SipProfile;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 499
    iget v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    #@2
    if-nez v0, :cond_0

    #@4
    const/16 v0, 0x13c4

    #@6
    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    #@8
    .line 500
    :cond_0
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 342
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAuthUserName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAutoRegistration()Z
    .locals 1

    #@0
    .prologue
    .line 478
    iget-boolean v0, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    #@2
    return v0
.end method

.method public getCallingUid()I
    .locals 1

    #@0
    .prologue
    .line 494
    iget v0, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    #@2
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 386
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    #@2
    invoke-interface {v0}, Ljavax/sip/address/Address;->getDisplayName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 415
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 433
    iget v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    #@2
    return v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 460
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 442
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 451
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSendKeepAlive()Z
    .locals 1

    #@0
    .prologue
    .line 469
    iget-boolean v0, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    #@2
    return v0
.end method

.method public getSipAddress()Ljavax/sip/address/Address;
    .locals 1

    #@0
    .prologue
    .line 377
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    #@2
    return-object v0
.end method

.method public getSipDomain()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUri()Ljavax/sip/address/SipURI;
    .locals 1

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    #@2
    invoke-interface {v0}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/sip/address/SipURI;

    #@8
    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "sip:"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, "@"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget-object v1, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0

    #@2e
    .line 367
    :cond_0
    invoke-virtual {p0}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    #@31
    move-result-object v0

    #@32
    invoke-interface {v0}, Ljavax/sip/address/SipURI;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 395
    invoke-virtual {p0}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setCallingUid(I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 486
    iput p1, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    #@2
    .line 485
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 327
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    #@7
    .line 328
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 329
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 330
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 331
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 332
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 333
    iget-boolean v0, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    #@22
    if-eqz v0, :cond_0

    #@24
    move v0, v1

    #@25
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 334
    iget-boolean v0, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    #@2a
    if-eqz v0, :cond_1

    #@2c
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 335
    iget v0, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    #@31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 336
    iget v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    #@36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 337
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;

    #@3b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3e
    .line 326
    return-void

    #@3f
    :cond_0
    move v0, v2

    #@40
    .line 333
    goto :goto_0

    #@41
    :cond_1
    move v1, v2

    #@42
    .line 334
    goto :goto_1
.end method
