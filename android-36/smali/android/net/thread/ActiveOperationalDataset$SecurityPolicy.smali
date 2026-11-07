.class public final Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;
.super Ljava/lang/Object;
.source "ActiveOperationalDataset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/thread/ActiveOperationalDataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecurityPolicy"
.end annotation


# static fields
.field public static final whitelist DEFAULT_ROTATION_TIME_HOURS:I = 0x2a0

.field public static final whitelist LENGTH_MIN_SECURITY_POLICY_FLAGS:I = 0x1

.field private static final blacklist LENGTH_SECURITY_POLICY_ROTATION_TIME:I = 0x2


# instance fields
.field private final blacklist mFlags:[B

.field private final blacklist mRotationTimeHours:I


# direct methods
.method public constructor whitelist <init>(I[B)V
    .registers 8
    .param p1, "rotationTimeHours"    # I
    .param p2, "flags"    # [B

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    const-string v0, "flags cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1023
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_13

    const v2, 0xffff

    if-gt p1, v2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    move v2, v0

    .line 1027
    :goto_14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1023
    const-string v4, "Rotation time exceeds allowed range (rotationTimeHours = %d, allowedRange = [0x1, 0xffff])"

    invoke-static {v2, v4, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    array-length v2, p2

    if-lt v2, v1, :cond_25

    move v0, v1

    :cond_25
    array-length v2, p2

    .line 1031
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1032
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1028
    const-string v2, "Invalid security policy flags length (length = %d, minimumLength = %d)"

    invoke-static {v0, v2, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1033
    iput p1, p0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mRotationTimeHours:I

    .line 1034
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mFlags:[B

    .line 1035
    return-void
.end method

.method public static blacklist fromTlvValue([B)Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;
    .registers 6
    .param p0, "encodedSecurityPolicy"    # [B

    .line 1045
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    array-length v4, p0

    .line 1050
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1051
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1045
    const-string v4, "Invalid Security Policy TLV length (length = %d, minimumLength = %d)"

    invoke-static {v0, v4, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1053
    new-instance v0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    array-length v2, p0

    .line 1055
    const/4 v3, 0x2

    invoke-static {p0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;-><init>(I[B)V

    .line 1053
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 1091
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1092
    return v0

    .line 1093
    :cond_4
    instance-of v1, p1, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1094
    return v2

    .line 1096
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    .line 1097
    .local v1, "otherSecurityPolicy":Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;
    iget v3, p0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mRotationTimeHours:I

    iget v4, v1, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mRotationTimeHours:I

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mFlags:[B

    iget-object v4, v1, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mFlags:[B

    .line 1098
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    .line 1097
    :goto_1f
    return v0
.end method

.method public whitelist getFlags()[B
    .registers 2

    .line 1086
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mFlags:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getRotationTimeHours()I
    .registers 2

    .line 1079
    iget v0, p0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mRotationTimeHours:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1104
    iget v0, p0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mRotationTimeHours:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mFlags:[B

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$smdeepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1110
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mRotationTimeHours:I

    .line 1111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1112
    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mFlags:[B

    .line 1113
    invoke-static {v2}, Landroid/net/connectivity/com/android/net/module/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1114
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toTlvValue()[B
    .registers 5

    .line 1069
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1070
    .local v0, "result":Ljava/io/ByteArrayOutputStream;
    iget v1, p0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mRotationTimeHours:I

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1071
    iget v1, p0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mRotationTimeHours:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1072
    iget-object v1, p0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mFlags:[B

    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->mFlags:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1073
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
