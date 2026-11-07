.class public final Landroid/net/L2capNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "L2capNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/L2capNetworkSpecifier$Builder;,
        Landroid/net/L2capNetworkSpecifier$HeaderCompression;,
        Landroid/net/L2capNetworkSpecifier$Role;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/L2capNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HEADER_COMPRESSION_6LOWPAN:I = 0x2

.field public static final whitelist HEADER_COMPRESSION_ANY:I = 0x0

.field public static final whitelist HEADER_COMPRESSION_NONE:I = 0x1

.field public static final whitelist PSM_ANY:I = 0x0

.field public static final whitelist ROLE_ANY:I = 0x0

.field public static final whitelist ROLE_CLIENT:I = 0x1

.field public static final whitelist ROLE_SERVER:I = 0x2


# instance fields
.field private final blacklist mHeaderCompression:I

.field private final blacklist mPsm:I

.field private final blacklist mRemoteAddress:Landroid/net/MacAddress;

.field private final blacklist mRole:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 404
    new-instance v0, Landroid/net/L2capNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/L2capNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/L2capNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/net/MacAddress;I)V
    .registers 5
    .param p1, "role"    # I
    .param p2, "headerCompression"    # I
    .param p3, "remoteAddress"    # Landroid/net/MacAddress;
    .param p4, "psm"    # I

    .line 137
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 138
    iput p1, p0, Landroid/net/L2capNetworkSpecifier;->mRole:I

    .line 139
    iput p2, p0, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    .line 140
    iput-object p3, p0, Landroid/net/L2capNetworkSpecifier;->mRemoteAddress:Landroid/net/MacAddress;

    .line 141
    iput p4, p0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    .line 142
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 128
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/L2capNetworkSpecifier;->mRole:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/L2capNetworkSpecifier;->mRemoteAddress:Landroid/net/MacAddress;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    .line 133
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/L2capNetworkSpecifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/L2capNetworkSpecifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 6
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .line 299
    instance-of v0, p1, Landroid/net/L2capNetworkSpecifier;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 300
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/L2capNetworkSpecifier;

    .line 303
    .local v0, "rhs":Landroid/net/L2capNetworkSpecifier;
    iget v2, p0, Landroid/net/L2capNetworkSpecifier;->mRole:I

    iget v3, v0, Landroid/net/L2capNetworkSpecifier;->mRole:I

    if-eq v2, v3, :cond_18

    iget v2, p0, Landroid/net/L2capNetworkSpecifier;->mRole:I

    if-eqz v2, :cond_18

    iget v2, v0, Landroid/net/L2capNetworkSpecifier;->mRole:I

    if-eqz v2, :cond_18

    .line 304
    return v1

    .line 307
    :cond_18
    iget v2, p0, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    iget v3, v0, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    if-eq v2, v3, :cond_27

    iget v2, p0, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    if-eqz v2, :cond_27

    iget v2, v0, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    if-eqz v2, :cond_27

    .line 310
    return v1

    .line 313
    :cond_27
    iget-object v2, p0, Landroid/net/L2capNetworkSpecifier;->mRemoteAddress:Landroid/net/MacAddress;

    iget-object v3, v0, Landroid/net/L2capNetworkSpecifier;->mRemoteAddress:Landroid/net/MacAddress;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object v2, p0, Landroid/net/L2capNetworkSpecifier;->mRemoteAddress:Landroid/net/MacAddress;

    if-eqz v2, :cond_3a

    iget-object v2, v0, Landroid/net/L2capNetworkSpecifier;->mRemoteAddress:Landroid/net/MacAddress;

    if-eqz v2, :cond_3a

    .line 315
    return v1

    .line 318
    :cond_3a
    iget v2, p0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    iget v3, v0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    if-eq v2, v3, :cond_49

    iget v2, p0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    if-eqz v2, :cond_49

    iget v2, v0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    if-eqz v2, :cond_49

    .line 319
    return v1

    .line 321
    :cond_49
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 346
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 347
    :cond_4
    instance-of v1, p1, Landroid/net/L2capNetworkSpecifier;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 349
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/L2capNetworkSpecifier;

    .line 350
    .local v1, "rhs":Landroid/net/L2capNetworkSpecifier;
    iget v3, p0, Landroid/net/L2capNetworkSpecifier;->mRole:I

    iget v4, v1, Landroid/net/L2capNetworkSpecifier;->mRole:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    iget v4, v1, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Landroid/net/L2capNetworkSpecifier;->mRemoteAddress:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/net/L2capNetworkSpecifier;->mRemoteAddress:Landroid/net/MacAddress;

    .line 352
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget v3, p0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    iget v4, v1, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    if-ne v3, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 350
    :goto_2b
    return v0
.end method

.method public whitelist getHeaderCompression()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    return v0
.end method

.method public whitelist getPsm()I
    .registers 2

    .line 170
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    return v0
.end method

.method public whitelist getRemoteAddress()Landroid/net/MacAddress;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/net/L2capNetworkSpecifier;->mRemoteAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist getRole()I
    .registers 2

    .line 147
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mRole:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 341
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mRole:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/L2capNetworkSpecifier;->mRemoteAddress:Landroid/net/MacAddress;

    iget v3, p0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValidClientRequestSpecifier()Z
    .registers 5

    .line 202
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mRole:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    return v1

    .line 205
    :cond_7
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    if-nez v0, :cond_c

    return v1

    .line 208
    :cond_c
    iget-object v0, p0, Landroid/net/L2capNetworkSpecifier;->mRemoteAddress:Landroid/net/MacAddress;

    if-nez v0, :cond_11

    return v1

    .line 212
    :cond_11
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    const/16 v3, 0x80

    if-ge v0, v3, :cond_18

    return v1

    .line 213
    :cond_18
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    const/16 v3, 0xff

    if-le v0, v3, :cond_1f

    return v1

    .line 215
    :cond_1f
    return v2
.end method

.method public blacklist isValidServerReservationSpecifier()Z
    .registers 4

    .line 181
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mRole:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    return v2

    .line 184
    :cond_7
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    if-nez v0, :cond_c

    return v2

    .line 187
    :cond_c
    iget-object v0, p0, Landroid/net/L2capNetworkSpecifier;->mRemoteAddress:Landroid/net/MacAddress;

    if-eqz v0, :cond_11

    return v2

    .line 190
    :cond_11
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    if-eqz v0, :cond_16

    return v2

    .line 192
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist redact()Landroid/net/NetworkSpecifier;
    .registers 3

    .line 328
    new-instance v0, Landroid/net/L2capNetworkSpecifier$Builder;

    invoke-direct {v0}, Landroid/net/L2capNetworkSpecifier$Builder;-><init>()V

    iget v1, p0, Landroid/net/L2capNetworkSpecifier;->mRole:I

    .line 329
    invoke-virtual {v0, v1}, Landroid/net/L2capNetworkSpecifier$Builder;->setRole(I)Landroid/net/L2capNetworkSpecifier$Builder;

    move-result-object v0

    iget v1, p0, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    .line 330
    invoke-virtual {v0, v1}, Landroid/net/L2capNetworkSpecifier$Builder;->setHeaderCompression(I)Landroid/net/L2capNetworkSpecifier$Builder;

    move-result-object v0

    .line 332
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/L2capNetworkSpecifier$Builder;->setRemoteAddress(Landroid/net/MacAddress;)Landroid/net/L2capNetworkSpecifier$Builder;

    move-result-object v0

    iget v1, p0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    .line 333
    invoke-virtual {v0, v1}, Landroid/net/L2capNetworkSpecifier$Builder;->setPsm(I)Landroid/net/L2capNetworkSpecifier$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroid/net/L2capNetworkSpecifier$Builder;->build()Landroid/net/L2capNetworkSpecifier;

    move-result-object v0

    .line 335
    .local v0, "redactedSpecifier":Landroid/net/NetworkSpecifier;
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 360
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mRole:I

    packed-switch v0, :pswitch_data_3a

    .line 368
    const-string v0, "ROLE_ANY"

    .local v0, "role":Ljava/lang/String;
    goto :goto_e

    .line 365
    .end local v0    # "role":Ljava/lang/String;
    :pswitch_8
    const-string v0, "ROLE_SERVER"

    .line 366
    .restart local v0    # "role":Ljava/lang/String;
    goto :goto_e

    .line 362
    .end local v0    # "role":Ljava/lang/String;
    :pswitch_b
    const-string v0, "ROLE_CLIENT"

    .line 363
    .restart local v0    # "role":Ljava/lang/String;
    nop

    .line 373
    :goto_e
    iget v1, p0, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    packed-switch v1, :pswitch_data_42

    .line 381
    const-string v1, "HEADER_COMPRESSION_ANY"

    .local v1, "headerCompression":Ljava/lang/String;
    goto :goto_1c

    .line 378
    .end local v1    # "headerCompression":Ljava/lang/String;
    :pswitch_16
    const-string v1, "HEADER_COMPRESSION_6LOWPAN"

    .line 379
    .restart local v1    # "headerCompression":Ljava/lang/String;
    goto :goto_1c

    .line 375
    .end local v1    # "headerCompression":Ljava/lang/String;
    :pswitch_19
    const-string v1, "HEADER_COMPRESSION_NONE"

    .line 376
    .restart local v1    # "headerCompression":Ljava/lang/String;
    nop

    .line 385
    :goto_1c
    iget v2, p0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    if-nez v2, :cond_23

    const-string v2, "PSM_ANY"

    goto :goto_29

    :cond_23
    iget v2, p0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "psm":Ljava/lang/String;
    :goto_29
    iget-object v3, p0, Landroid/net/L2capNetworkSpecifier;->mRemoteAddress:Landroid/net/MacAddress;

    .line 388
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v3, v2}, [Ljava/lang/Object;

    move-result-object v3

    .line 387
    const-string v4, "L2capNetworkSpecifier(%s, %s, RemoteAddress=%s, PSM=%s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 398
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mHeaderCompression:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-object v0, p0, Landroid/net/L2capNetworkSpecifier;->mRemoteAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 401
    iget v0, p0, Landroid/net/L2capNetworkSpecifier;->mPsm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    return-void
.end method
