.class public final Landroid/security/keystore/recovery/KeyDerivationParams;
.super Ljava/lang/Object;
.source "KeyDerivationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/recovery/KeyDerivationParams$KeyDerivationAlgorithm;
    }
.end annotation


# static fields
.field public static final whitelist ALGORITHM_SCRYPT:I = 0x2

.field public static final whitelist ALGORITHM_SHA256:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/recovery/KeyDerivationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAlgorithm:I

.field private final greylist-max-o mMemoryDifficulty:I

.field private final greylist-max-o mSalt:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 142
    new-instance v0, Landroid/security/keystore/recovery/KeyDerivationParams$1;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyDerivationParams$1;-><init>()V

    sput-object v0, Landroid/security/keystore/recovery/KeyDerivationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(I[B)V
    .registers 4
    .param p1, "algorithm"    # I
    .param p2, "salt"    # [B

    .line 102
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore/recovery/KeyDerivationParams;-><init>(I[BI)V

    .line 103
    return-void
.end method

.method private constructor greylist-max-o <init>(I[BI)V
    .registers 5
    .param p1, "algorithm"    # I
    .param p2, "salt"    # [B
    .param p3, "memoryDifficulty"    # I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mAlgorithm:I

    .line 111
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mSalt:[B

    .line 112
    iput p3, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mMemoryDifficulty:I

    .line 113
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mAlgorithm:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mSalt:[B

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mMemoryDifficulty:I

    .line 167
    return-void
.end method

.method public static whitelist createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;
    .registers 4
    .param p0, "salt"    # [B
    .param p1, "memoryDifficulty"    # I

    .line 95
    new-instance v0, Landroid/security/keystore/recovery/KeyDerivationParams;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Landroid/security/keystore/recovery/KeyDerivationParams;-><init>(I[BI)V

    return-object v0
.end method

.method public static whitelist createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;
    .registers 3
    .param p0, "salt"    # [B

    .line 81
    new-instance v0, Landroid/security/keystore/recovery/KeyDerivationParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/security/keystore/recovery/KeyDerivationParams;-><init>(I[B)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAlgorithm()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mAlgorithm:I

    return v0
.end method

.method public whitelist getMemoryDifficulty()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mMemoryDifficulty:I

    return v0
.end method

.method public whitelist getSalt()[B
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mSalt:[B

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 155
    iget v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mAlgorithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mSalt:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 157
    iget v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mMemoryDifficulty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    return-void
.end method
