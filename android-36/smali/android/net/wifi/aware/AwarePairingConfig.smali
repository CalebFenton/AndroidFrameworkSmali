.class public final Landroid/net/wifi/aware/AwarePairingConfig;
.super Ljava/lang/Object;
.source "AwarePairingConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/AwarePairingConfig$Builder;,
        Landroid/net/wifi/aware/AwarePairingConfig$BootstrappingMethod;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/AwarePairingConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PAIRING_BOOTSTRAPPING_MAX:I = 0x200

.field public static final whitelist PAIRING_BOOTSTRAPPING_NFC_READER:I = 0x100

.field public static final whitelist PAIRING_BOOTSTRAPPING_NFC_TAG:I = 0x10

.field public static final whitelist PAIRING_BOOTSTRAPPING_OPPORTUNISTIC:I = 0x1

.field public static final whitelist PAIRING_BOOTSTRAPPING_PASSPHRASE_DISPLAY:I = 0x4

.field public static final whitelist PAIRING_BOOTSTRAPPING_PASSPHRASE_KEYPAD:I = 0x40

.field public static final whitelist PAIRING_BOOTSTRAPPING_PIN_CODE_DISPLAY:I = 0x2

.field public static final whitelist PAIRING_BOOTSTRAPPING_PIN_CODE_KEYPAD:I = 0x20

.field public static final whitelist PAIRING_BOOTSTRAPPING_QR_DISPLAY:I = 0x8

.field public static final whitelist PAIRING_BOOTSTRAPPING_QR_SCAN:I = 0x80


# instance fields
.field private final blacklist mBootstrappingMethods:I

.field private final blacklist mCipherSuites:I

.field private final blacklist mPairingCache:Z

.field private final blacklist mPairingSetup:Z

.field private final blacklist mPairingVerification:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 216
    new-instance v0, Landroid/net/wifi/aware/AwarePairingConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/AwarePairingConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/AwarePairingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingSetup:Z

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingCache:Z

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingVerification:Z

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mBootstrappingMethods:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mCipherSuites:I

    .line 200
    return-void
.end method

.method public constructor blacklist <init>(ZZZII)V
    .registers 6
    .param p1, "setup"    # Z
    .param p2, "cache"    # Z
    .param p3, "verification"    # Z
    .param p4, "method"    # I
    .param p5, "cipherSuites"    # I

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-boolean p1, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingSetup:Z

    .line 187
    iput-boolean p2, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingCache:Z

    .line 188
    iput-boolean p3, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingVerification:Z

    .line 189
    iput p4, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mBootstrappingMethods:I

    .line 190
    iput p5, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mCipherSuites:I

    .line 191
    return-void
.end method


# virtual methods
.method public blacklist assertValid(Landroid/net/wifi/aware/Characteristics;)Z
    .registers 5
    .param p1, "characteristics"    # Landroid/net/wifi/aware/Characteristics;

    .line 157
    iget v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mBootstrappingMethods:I

    const/4 v1, 0x0

    if-ltz v0, :cond_18

    iget v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mBootstrappingMethods:I

    const/16 v2, 0x200

    if-lt v0, v2, :cond_c

    goto :goto_18

    .line 160
    :cond_c
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getSupportedPairingCipherSuites()I

    move-result v0

    iget v2, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mCipherSuites:I

    and-int/2addr v0, v2

    if-nez v0, :cond_16

    .line 161
    return v1

    .line 163
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 158
    :cond_18
    :goto_18
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 168
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 169
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/aware/AwarePairingConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 170
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/aware/AwarePairingConfig;

    .line 171
    .local v1, "that":Landroid/net/wifi/aware/AwarePairingConfig;
    iget-boolean v3, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingSetup:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingSetup:Z

    if-ne v3, v4, :cond_2c

    iget-boolean v3, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingCache:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingCache:Z

    if-ne v3, v4, :cond_2c

    iget-boolean v3, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingVerification:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingVerification:Z

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mBootstrappingMethods:I

    iget v4, v1, Landroid/net/wifi/aware/AwarePairingConfig;->mBootstrappingMethods:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mCipherSuites:I

    iget v4, v1, Landroid/net/wifi/aware/AwarePairingConfig;->mCipherSuites:I

    if-ne v3, v4, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    return v0
.end method

.method public whitelist getBootstrappingMethods()I
    .registers 2

    .line 140
    iget v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mBootstrappingMethods:I

    return v0
.end method

.method public whitelist getSupportedCipherSuites()I
    .registers 2

    .line 149
    iget v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mCipherSuites:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 179
    iget-boolean v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingSetup:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingCache:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingVerification:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mBootstrappingMethods:I

    .line 180
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mCipherSuites:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 179
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isPairingCacheEnabled()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingCache:Z

    return v0
.end method

.method public whitelist isPairingSetupEnabled()Z
    .registers 2

    .line 123
    iget-boolean v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingSetup:Z

    return v0
.end method

.method public whitelist isPairingVerificationEnabled()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingVerification:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 204
    iget-boolean v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingSetup:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 205
    iget-boolean v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingCache:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 206
    iget-boolean v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mPairingVerification:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 207
    iget v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mBootstrappingMethods:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Landroid/net/wifi/aware/AwarePairingConfig;->mCipherSuites:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return-void
.end method
