.class public final Landroid/security/keystore/recovery/KeyChainSnapshot;
.super Ljava/lang/Object;
.source "KeyChainSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/recovery/KeyChainSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_COUNTER_ID:J = 0x1L

.field private static final greylist-max-o DEFAULT_MAX_ATTEMPTS:I = 0xa


# instance fields
.field private greylist-max-o mCertPath:Landroid/security/keystore/recovery/RecoveryCertPath;

.field private greylist-max-o mCounterId:J

.field private greylist-max-o mEncryptedRecoveryKeyBlob:[B

.field private greylist-max-o mEntryRecoveryData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mKeyChainProtectionParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMaxAttempts:I

.field private greylist-max-o mServerParams:[B

.field private greylist-max-o mSnapshotVersion:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCertPath(Landroid/security/keystore/recovery/KeyChainSnapshot;)Landroid/security/keystore/recovery/RecoveryCertPath;
    .registers 1

    iget-object p0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCertPath:Landroid/security/keystore/recovery/RecoveryCertPath;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEncryptedRecoveryKeyBlob(Landroid/security/keystore/recovery/KeyChainSnapshot;)[B
    .registers 1

    iget-object p0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEncryptedRecoveryKeyBlob:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEntryRecoveryData(Landroid/security/keystore/recovery/KeyChainSnapshot;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEntryRecoveryData:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyChainProtectionParams(Landroid/security/keystore/recovery/KeyChainSnapshot;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mKeyChainProtectionParams:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServerParams(Landroid/security/keystore/recovery/KeyChainSnapshot;)[B
    .registers 1

    iget-object p0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mServerParams:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCertPath(Landroid/security/keystore/recovery/KeyChainSnapshot;Landroid/security/keystore/recovery/RecoveryCertPath;)V
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCertPath:Landroid/security/keystore/recovery/RecoveryCertPath;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCounterId(Landroid/security/keystore/recovery/KeyChainSnapshot;J)V
    .registers 3

    iput-wide p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCounterId:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEncryptedRecoveryKeyBlob(Landroid/security/keystore/recovery/KeyChainSnapshot;[B)V
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEncryptedRecoveryKeyBlob:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEntryRecoveryData(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEntryRecoveryData:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeyChainProtectionParams(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mKeyChainProtectionParams:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxAttempts(Landroid/security/keystore/recovery/KeyChainSnapshot;I)V
    .registers 2

    iput p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mMaxAttempts:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServerParams(Landroid/security/keystore/recovery/KeyChainSnapshot;[B)V
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mServerParams:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSnapshotVersion(Landroid/security/keystore/recovery/KeyChainSnapshot;I)V
    .registers 2

    iput p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mSnapshotVersion:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 151
    new-instance v0, Landroid/security/keystore/recovery/KeyChainSnapshot$1;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$1;-><init>()V

    sput-object v0, Landroid/security/keystore/recovery/KeyChainSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v0, 0xa

    iput v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mMaxAttempts:I

    .line 73
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCounterId:J

    .line 85
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v0, 0xa

    iput v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mMaxAttempts:I

    .line 73
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCounterId:J

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mSnapshotVersion:I

    .line 300
    sget-object v0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mKeyChainProtectionParams:Ljava/util/List;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEncryptedRecoveryKeyBlob:[B

    .line 302
    sget-object v0, Landroid/security/keystore/recovery/WrappedApplicationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEntryRecoveryData:Ljava/util/List;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mMaxAttempts:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCounterId:J

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mServerParams:[B

    .line 306
    sget-object v0, Landroid/security/keystore/recovery/RecoveryCertPath;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keystore/recovery/RecoveryCertPath;

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCertPath:Landroid/security/keystore/recovery/RecoveryCertPath;

    .line 307
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/keystore/recovery/KeyChainSnapshot-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCounterId()J
    .registers 3

    .line 106
    iget-wide v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCounterId:J

    return-wide v0
.end method

.method public whitelist getEncryptedRecoveryKeyBlob()[B
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEncryptedRecoveryKeyBlob:[B

    return-object v0
.end method

.method public whitelist getKeyChainProtectionParams()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mKeyChainProtectionParams:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMaxAttempts()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mMaxAttempts:I

    return v0
.end method

.method public whitelist getServerParams()[B
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mServerParams:[B

    return-object v0
.end method

.method public whitelist getSnapshotVersion()I
    .registers 2

    .line 92
    iget v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mSnapshotVersion:I

    return v0
.end method

.method public whitelist getTrustedHardwareCertPath()Ljava/security/cert/CertPath;
    .registers 3

    .line 121
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCertPath:Landroid/security/keystore/recovery/RecoveryCertPath;

    invoke-virtual {v0}, Landroid/security/keystore/recovery/RecoveryCertPath;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 122
    :catch_7
    move-exception v0

    .line 125
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Landroid/os/BadParcelableException;

    invoke-direct {v1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public whitelist getWrappedApplicationKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEntryRecoveryData:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 285
    iget v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mSnapshotVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mKeyChainProtectionParams:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 287
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEncryptedRecoveryKeyBlob:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 288
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEntryRecoveryData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 289
    iget v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mMaxAttempts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-wide v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCounterId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 291
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mServerParams:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 292
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCertPath:Landroid/security/keystore/recovery/RecoveryCertPath;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 293
    return-void
.end method
