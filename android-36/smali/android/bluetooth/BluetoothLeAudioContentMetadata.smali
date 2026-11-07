.class public final Landroid/bluetooth/BluetoothLeAudioContentMetadata;
.super Ljava/lang/Object;
.source "BluetoothLeAudioContentMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LANGUAGE_LENGTH:I = 0x3

.field private static final blacklist LANGUAGE_TYPE:I = 0x4

.field private static final blacklist PROGRAM_INFO_TYPE:I = 0x3


# instance fields
.field private final blacklist mLanguage:Ljava/lang/String;

.field private final blacklist mProgramInfo:Ljava/lang/String;

.field private final blacklist mRawMetadata:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 144
    new-instance v0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4
    .param p1, "programInfo"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "rawMetadata"    # [B

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mProgramInfo:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mLanguage:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mRawMetadata:[B

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[BLandroid/bluetooth/BluetoothLeAudioContentMetadata-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public static whitelist fromRawBytes([B)Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .registers 11
    .param p0, "rawBytes"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 175
    if-eqz p0, :cond_a1

    .line 178
    invoke-static {p0}, Landroid/bluetooth/BluetoothUtils;->parseLengthTypeValueBytes([B)Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothUtils$TypeValueEntry;>;"
    array-length v1, p0

    const/4 v2, 0x0

    if-lez v1, :cond_2f

    aget-byte v1, p0, v2

    if-lez v1, :cond_2f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_2f

    .line 180
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No LTV entries are found from rawBytes of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_2f
    :goto_2f
    const/4 v1, 0x0

    .line 184
    .local v1, "programInfo":Ljava/lang/String;
    const/4 v3, 0x0

    .line 185
    .local v3, "language":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 187
    .local v5, "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    const/4 v6, 0x3

    if-nez v1, :cond_57

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v7

    if-ne v7, v6, :cond_57

    .line 188
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v6

    .line 189
    .local v6, "bytes":[B
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 190
    .end local v1    # "programInfo":Ljava/lang/String;
    .end local v6    # "bytes":[B
    .local v7, "programInfo":Ljava/lang/String;
    move-object v1, v7

    goto :goto_9a

    .end local v7    # "programInfo":Ljava/lang/String;
    .restart local v1    # "programInfo":Ljava/lang/String;
    :cond_57
    if-nez v3, :cond_9a

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_9a

    .line 191
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v7

    .line 192
    .local v7, "bytes":[B
    array-length v8, v7

    if-ne v8, v6, :cond_70

    .line 201
    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v7, v2, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v3, v8

    .end local v3    # "language":Ljava/lang/String;
    .local v8, "language":Ljava/lang/String;
    goto :goto_9a

    .line 193
    .end local v8    # "language":Ljava/lang/String;
    .restart local v3    # "language":Ljava/lang/String;
    :cond_70
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Language byte size "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v8, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " is less than "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", needed for ISO 639-3"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    .end local v5    # "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    .end local v7    # "bytes":[B
    :cond_9a
    :goto_9a
    goto :goto_35

    .line 204
    :cond_9b
    new-instance v2, Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    invoke-direct {v2, v1, v3, p0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v2

    .line 176
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothUtils$TypeValueEntry;>;"
    .end local v1    # "programInfo":Ljava/lang/String;
    .end local v3    # "language":Ljava/lang/String;
    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Raw bytes cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 58
    instance-of v0, p1, Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 59
    return v1

    .line 61
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 62
    .local v0, "other":Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mProgramInfo:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getProgramInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mLanguage:Ljava/lang/String;

    .line 63
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mRawMetadata:[B

    .line 64
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getRawMetadata()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    nop

    .line 62
    :goto_30
    return v1
.end method

.method public whitelist getLanguage()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 101
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProgramInfo()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 90
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mProgramInfo:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRawMetadata()[B
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mRawMetadata:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 69
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mProgramInfo:Ljava/lang/String;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mLanguage:Ljava/lang/String;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mRawMetadata:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothLeAudioContentMetadata{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "programInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mProgramInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mRawMetadata:[B

    .line 77
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 133
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mProgramInfo:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mLanguage:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mRawMetadata:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 136
    return-void
.end method
