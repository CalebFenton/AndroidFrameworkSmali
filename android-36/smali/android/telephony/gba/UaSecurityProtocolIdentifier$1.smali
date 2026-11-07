.class Landroid/telephony/gba/UaSecurityProtocolIdentifier$1;
.super Ljava/lang/Object;
.source "UaSecurityProtocolIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gba/UaSecurityProtocolIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/gba/UaSecurityProtocolIdentifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .local v0, "org":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    .local v1, "protocol":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .local v2, "cs":I
    const/4 v3, 0x0

    if-ltz v0, :cond_33

    if-ltz v1, :cond_33

    if-gez v2, :cond_14

    goto :goto_33

    .line 257
    :cond_14
    new-instance v4, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;

    invoke-direct {v4}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;-><init>()V

    .line 259
    .local v4, "builder":Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;
    if-lez v0, :cond_21

    .line 260
    :try_start_1b
    invoke-virtual {v4, v0}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->setOrg(I)Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;

    goto :goto_21

    .line 268
    :catch_1f
    move-exception v5

    goto :goto_2c

    .line 262
    :cond_21
    :goto_21
    if-lez v1, :cond_26

    .line 263
    invoke-virtual {v4, v1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->setProtocol(I)Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;

    .line 265
    :cond_26
    if-lez v2, :cond_2d

    .line 266
    invoke-virtual {v4, v2}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->setTlsCipherSuite(I)Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_2b} :catch_1f

    goto :goto_2d

    .line 269
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :goto_2c
    return-object v3

    .line 270
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2d
    :goto_2d
    nop

    .line 271
    invoke-virtual {v4}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->build()Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    move-result-object v3

    return-object v3

    .line 255
    .end local v4    # "builder":Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;
    :cond_33
    :goto_33
    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 247
    invoke-virtual {p0, p1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .registers 3
    .param p1, "size"    # I

    .line 277
    new-array v0, p1, [Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 247
    invoke-virtual {p0, p1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$1;->newArray(I)[Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    move-result-object p1

    return-object p1
.end method
