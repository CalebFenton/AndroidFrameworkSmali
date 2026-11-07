.class public final Landroid/security/keystore/recovery/KeyChainProtectionParams;
.super Ljava/lang/Object;
.source "KeyChainProtectionParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;,
        Landroid/security/keystore/recovery/KeyChainProtectionParams$LockScreenUiFormat;,
        Landroid/security/keystore/recovery/KeyChainProtectionParams$UserSecretType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_LOCKSCREEN:I = 0x64

.field public static final whitelist UI_FORMAT_PASSWORD:I = 0x2

.field public static final whitelist UI_FORMAT_PATTERN:I = 0x3

.field public static final whitelist UI_FORMAT_PIN:I = 0x1


# instance fields
.field private greylist-max-o mKeyDerivationParams:Landroid/security/keystore/recovery/KeyDerivationParams;

.field private greylist-max-o mLockScreenUiFormat:Ljava/lang/Integer;

.field private greylist-max-o mSecret:[B

.field private greylist-max-o mUserSecretType:Ljava/lang/Integer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmKeyDerivationParams(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Landroid/security/keystore/recovery/KeyDerivationParams;
    .registers 1

    iget-object p0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mKeyDerivationParams:Landroid/security/keystore/recovery/KeyDerivationParams;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLockScreenUiFormat(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mLockScreenUiFormat:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecret(Landroid/security/keystore/recovery/KeyChainProtectionParams;)[B
    .registers 1

    iget-object p0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserSecretType(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mUserSecretType:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeyDerivationParams(Landroid/security/keystore/recovery/KeyChainProtectionParams;Landroid/security/keystore/recovery/KeyDerivationParams;)V
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mKeyDerivationParams:Landroid/security/keystore/recovery/KeyDerivationParams;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLockScreenUiFormat(Landroid/security/keystore/recovery/KeyChainProtectionParams;Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mLockScreenUiFormat:Ljava/lang/Integer;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSecret(Landroid/security/keystore/recovery/KeyChainProtectionParams;[B)V
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserSecretType(Landroid/security/keystore/recovery/KeyChainProtectionParams;Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mUserSecretType:Ljava/lang/Integer;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 238
    new-instance v0, Landroid/security/keystore/recovery/KeyChainProtectionParams$1;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$1;-><init>()V

    sput-object v0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mUserSecretType:Ljava/lang/Integer;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mLockScreenUiFormat:Ljava/lang/Integer;

    .line 263
    sget-object v0, Landroid/security/keystore/recovery/KeyDerivationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keystore/recovery/KeyDerivationParams;

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mKeyDerivationParams:Landroid/security/keystore/recovery/KeyDerivationParams;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B

    .line 265
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/keystore/recovery/KeyChainProtectionParams-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/security/keystore/recovery/KeyChainProtectionParams;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist clearSecret()V
    .registers 3

    .line 235
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 236
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getKeyDerivationParams()Landroid/security/keystore/recovery/KeyDerivationParams;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mKeyDerivationParams:Landroid/security/keystore/recovery/KeyDerivationParams;

    return-object v0
.end method

.method public whitelist getLockScreenUiFormat()I
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mLockScreenUiFormat:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getSecret()[B
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B

    return-object v0
.end method

.method public whitelist getUserSecretType()I
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mUserSecretType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 251
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mUserSecretType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mLockScreenUiFormat:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mKeyDerivationParams:Landroid/security/keystore/recovery/KeyDerivationParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 254
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 255
    return-void
.end method
