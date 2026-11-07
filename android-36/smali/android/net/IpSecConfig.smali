.class public final Landroid/net/IpSecConfig;
.super Ljava/lang/Object;
.source "IpSecConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "IpSecConfig"


# instance fields
.field private greylist-max-o mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

.field private greylist-max-o mAuthentication:Landroid/net/IpSecAlgorithm;

.field private greylist-max-o mDestinationAddress:Ljava/lang/String;

.field private greylist-max-o mEncapRemotePort:I

.field private greylist-max-o mEncapSocketResourceId:I

.field private greylist-max-o mEncapType:I

.field private greylist-max-o mEncryption:Landroid/net/IpSecAlgorithm;

.field private greylist-max-o mMarkMask:I

.field private greylist-max-o mMarkValue:I

.field private greylist-max-o mMode:I

.field private greylist-max-o mNattKeepaliveInterval:I

.field private greylist-max-o mNetwork:Landroid/net/Network;

.field private greylist-max-o mSourceAddress:Ljava/lang/String;

.field private greylist-max-o mSpiResourceId:I

.field private blacklist mXfrmInterfaceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 326
    new-instance v0, Landroid/net/IpSecConfig$1;

    invoke-direct {v0}, Landroid/net/IpSecConfig$1;-><init>()V

    sput-object v0, Landroid/net/IpSecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    .line 37
    const-string v1, ""

    iput-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    .line 62
    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    .line 63
    iput v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    .line 244
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/IpSecConfig;)V
    .registers 4
    .param p1, "c"    # Landroid/net/IpSecConfig;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    .line 37
    const-string v1, ""

    iput-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    .line 62
    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    .line 63
    iput v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    .line 249
    iget v0, p1, Landroid/net/IpSecConfig;->mMode:I

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    .line 250
    iget-object v0, p1, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    .line 251
    iget-object v0, p1, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    .line 252
    iget-object v0, p1, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    .line 253
    iget v0, p1, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    .line 254
    iget-object v0, p1, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    .line 255
    iget-object v0, p1, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    .line 256
    iget-object v0, p1, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    .line 257
    iget v0, p1, Landroid/net/IpSecConfig;->mEncapType:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    .line 258
    iget v0, p1, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    .line 259
    iget v0, p1, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    .line 260
    iget v0, p1, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    iput v0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    .line 261
    iget v0, p1, Landroid/net/IpSecConfig;->mMarkValue:I

    iput v0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    .line 262
    iget v0, p1, Landroid/net/IpSecConfig;->mMarkMask:I

    iput v0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    .line 263
    iget v0, p1, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    .line 264
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    .line 37
    const-string v1, ""

    iput-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    .line 62
    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    .line 63
    iput v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    .line 270
    const-class v0, Landroid/net/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Network;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    .line 272
    const-class v0, Landroid/net/IpSecAlgorithm;

    .line 273
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    .line 274
    const-class v0, Landroid/net/IpSecAlgorithm;

    .line 275
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    .line 276
    const-class v0, Landroid/net/IpSecAlgorithm;

    .line 277
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    .line 285
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/IpSecConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/IpSecConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 339
    instance-of v0, p1, Landroid/net/IpSecConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 340
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/IpSecConfig;

    .line 341
    .local v0, "rhs":Landroid/net/IpSecConfig;
    iget v2, p0, Landroid/net/IpSecConfig;->mMode:I

    iget v3, v0, Landroid/net/IpSecConfig;->mMode:I

    if-ne v2, v3, :cond_87

    iget-object v2, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    .line 342
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    iget-object v2, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    .line 343
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    iget-object v2, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_31

    iget-object v2, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    iget-object v3, v0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    .line 344
    invoke-virtual {v2, v3}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    :cond_31
    iget-object v2, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    iget-object v3, v0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    if-ne v2, v3, :cond_87

    :cond_37
    iget v2, p0, Landroid/net/IpSecConfig;->mEncapType:I

    iget v3, v0, Landroid/net/IpSecConfig;->mEncapType:I

    if-ne v2, v3, :cond_87

    iget v2, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    iget v3, v0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    if-ne v2, v3, :cond_87

    iget v2, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    iget v3, v0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    if-ne v2, v3, :cond_87

    iget v2, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    iget v3, v0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    if-ne v2, v3, :cond_87

    iget v2, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iget v3, v0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    if-ne v2, v3, :cond_87

    iget-object v2, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    iget-object v3, v0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    .line 351
    invoke-static {v2, v3}, Landroid/net/IpSecAlgorithm;->equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z

    move-result v2

    if-eqz v2, :cond_87

    iget-object v2, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    iget-object v3, v0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    .line 352
    invoke-static {v2, v3}, Landroid/net/IpSecAlgorithm;->equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z

    move-result v2

    if-eqz v2, :cond_87

    iget-object v2, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    iget-object v3, v0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    .line 353
    invoke-static {v2, v3}, Landroid/net/IpSecAlgorithm;->equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z

    move-result v2

    if-eqz v2, :cond_87

    iget v2, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    iget v3, v0, Landroid/net/IpSecConfig;->mMarkValue:I

    if-ne v2, v3, :cond_87

    iget v2, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    iget v3, v0, Landroid/net/IpSecConfig;->mMarkMask:I

    if-ne v2, v3, :cond_87

    iget v2, p0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    iget v3, v0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    if-ne v2, v3, :cond_87

    const/4 v1, 0x1

    goto :goto_88

    :cond_87
    nop

    .line 341
    :goto_88
    return v1
.end method

.method public greylist-max-o getAuthenticatedEncryption()Landroid/net/IpSecAlgorithm;
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public greylist-max-o getAuthentication()Landroid/net/IpSecAlgorithm;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public greylist-max-o getDestinationAddress()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getEncapRemotePort()I
    .registers 2

    .line 198
    iget v0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    return v0
.end method

.method public greylist-max-o getEncapSocketResourceId()I
    .registers 2

    .line 194
    iget v0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    return v0
.end method

.method public greylist-max-o getEncapType()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    return v0
.end method

.method public greylist-max-o getEncryption()Landroid/net/IpSecAlgorithm;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public greylist-max-o getMarkMask()I
    .registers 2

    .line 210
    iget v0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    return v0
.end method

.method public greylist-max-o getMarkValue()I
    .registers 2

    .line 206
    iget v0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    return v0
.end method

.method public greylist-max-o getMode()I
    .registers 2

    .line 158
    iget v0, p0, Landroid/net/IpSecConfig;->mMode:I

    return v0
.end method

.method public greylist-max-o getNattKeepaliveInterval()I
    .registers 2

    .line 202
    iget v0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    return v0
.end method

.method public greylist-max-o getNetwork()Landroid/net/Network;
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public greylist-max-o getSourceAddress()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSpiResourceId()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    return v0
.end method

.method public blacklist getXfrmInterfaceId()I
    .registers 2

    .line 214
    iget v0, p0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    return v0
.end method

.method public greylist-max-o setAuthenticatedEncryption(Landroid/net/IpSecAlgorithm;)V
    .registers 2
    .param p1, "authenticatedEncryption"    # Landroid/net/IpSecAlgorithm;

    .line 108
    iput-object p1, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    .line 109
    return-void
.end method

.method public greylist-max-o setAuthentication(Landroid/net/IpSecAlgorithm;)V
    .registers 2
    .param p1, "authentication"    # Landroid/net/IpSecAlgorithm;

    .line 103
    iput-object p1, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    .line 104
    return-void
.end method

.method public greylist-max-o setDestinationAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "destinationAddress"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public greylist-max-o setEncapRemotePort(I)V
    .registers 2
    .param p1, "port"    # I

    .line 125
    iput p1, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    .line 126
    return-void
.end method

.method public greylist-max-o setEncapSocketResourceId(I)V
    .registers 2
    .param p1, "resourceId"    # I

    .line 121
    iput p1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    .line 122
    return-void
.end method

.method public greylist-max-o setEncapType(I)V
    .registers 2
    .param p1, "encapType"    # I

    .line 117
    iput p1, p0, Landroid/net/IpSecConfig;->mEncapType:I

    .line 118
    return-void
.end method

.method public greylist-max-o setEncryption(Landroid/net/IpSecAlgorithm;)V
    .registers 2
    .param p1, "encryption"    # Landroid/net/IpSecAlgorithm;

    .line 98
    iput-object p1, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    .line 99
    return-void
.end method

.method public greylist-max-o setMarkMask(I)V
    .registers 2
    .param p1, "mask"    # I

    .line 149
    iput p1, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    .line 150
    return-void
.end method

.method public greylist-max-o setMarkValue(I)V
    .registers 2
    .param p1, "mark"    # I

    .line 139
    iput p1, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    .line 140
    return-void
.end method

.method public greylist-max-o setMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 78
    iput p1, p0, Landroid/net/IpSecConfig;->mMode:I

    .line 79
    return-void
.end method

.method public greylist-max-o setNattKeepaliveInterval(I)V
    .registers 2
    .param p1, "interval"    # I

    .line 129
    iput p1, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    .line 130
    return-void
.end method

.method public greylist-max-o setNetwork(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .line 113
    iput-object p1, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    .line 114
    return-void
.end method

.method public greylist-max-o setSourceAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "sourceAddress"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public greylist-max-o setSpiResourceId(I)V
    .registers 2
    .param p1, "resourceId"    # I

    .line 93
    iput p1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    .line 94
    return-void
.end method

.method public blacklist setXfrmInterfaceId(I)V
    .registers 2
    .param p1, "xfrmInterfaceId"    # I

    .line 153
    iput p1, p0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    .line 154
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    nop

    .line 291
    const-string v1, "{mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 292
    iget v2, p0, Landroid/net/IpSecConfig;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    const-string v2, "TUNNEL"

    goto :goto_16

    :cond_14
    const-string v2, "TRANSPORT"

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 293
    const-string v2, ", mSourceAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 295
    const-string v2, ", mDestinationAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    .line 296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 297
    const-string v2, ", mNetwork="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    const-string v2, ", mEncapType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/IpSecConfig;->mEncapType:I

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    const-string v2, ", mEncapSocketResourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 303
    const-string v2, ", mEncapRemotePort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    const-string v2, ", mNattKeepaliveInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    const-string v2, "{mSpiResourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    const-string v2, ", mEncryption="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    const-string v2, ", mAuthentication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    const-string v2, ", mAuthenticatedEncryption="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    const-string v2, ", mMarkValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
    const-string v2, ", mMarkMask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 319
    const-string v2, ", mXfrmInterfaceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 226
    iget v0, p0, Landroid/net/IpSecConfig;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 230
    iget v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 232
    iget-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 233
    iget-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 234
    iget v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    return-void
.end method
