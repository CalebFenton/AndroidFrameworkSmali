.class public final Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;
.super Ljava/lang/Object;
.source "EncryptedCobaltEnvelopeParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams$Environment;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ENVIRONMENT_DEV:I = 0x1

.field public static final whitelist ENVIRONMENT_PROD:I


# instance fields
.field private final blacklist mCipherText:[B

.field private final blacklist mEnvironment:I

.field private final blacklist mKeyIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams$1;

    invoke-direct {v0}, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams$1;-><init>()V

    sput-object v0, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II[B)V
    .registers 5
    .param p1, "environment"    # I
    .param p2, "keyIndex"    # I
    .param p3, "cipherText"    # [B

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;->mEnvironment:I

    .line 71
    iput p2, p0, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;->mKeyIndex:I

    .line 72
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;->mCipherText:[B

    .line 73
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;->mEnvironment:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;->mKeyIndex:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;->mCipherText:[B

    .line 79
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCipherText()[B
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;->mCipherText:[B

    return-object v0
.end method

.method public whitelist getEnvironment()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;->mEnvironment:I

    return v0
.end method

.method public whitelist getKeyIndex()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;->mKeyIndex:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 101
    iget v0, p0, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;->mEnvironment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;->mKeyIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;->mCipherText:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 104
    return-void
.end method
