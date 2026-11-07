.class public Lcom/android/org/conscrypt/ct/LogInfo$Builder;
.super Ljava/lang/Object;
.source "LogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/LogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist description:Ljava/lang/String;

.field private blacklist logId:[B

.field private blacklist operator:Ljava/lang/String;

.field private blacklist publicKey:Ljava/security/PublicKey;

.field private blacklist state:I

.field private blacklist stateTimestamp:J

.field private blacklist type:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdescription(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlogId(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->logId:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetoperator(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->operator:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpublicKey(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)Ljava/security/PublicKey;
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->publicKey:Ljava/security/PublicKey;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstate(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->state:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstateTimestamp(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->stateTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettype(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->type:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/org/conscrypt/ct/LogInfo;
    .registers 3

    .line 130
    new-instance v0, Lcom/android/org/conscrypt/ct/LogInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/ct/LogInfo;-><init>(Lcom/android/org/conscrypt/ct/LogInfo$Builder;Lcom/android/org/conscrypt/ct/LogInfo-IA;)V

    return-object v0
.end method

.method public blacklist setDescription(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/LogInfo$Builder;
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->description:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public blacklist setOperator(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/LogInfo$Builder;
    .registers 2
    .param p1, "operator"    # Ljava/lang/String;

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->operator:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public blacklist setPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/ct/LogInfo$Builder;
    .registers 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;

    .line 89
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->publicKey:Ljava/security/PublicKey;

    .line 92
    :try_start_5
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->logId:[B
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_15} :catch_17

    .line 96
    nop

    .line 97
    return-object p0

    .line 93
    :catch_17
    move-exception v0

    .line 95
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setState(IJ)Lcom/android/org/conscrypt/ct/LogInfo$Builder;
    .registers 6
    .param p1, "state"    # I
    .param p2, "timestamp"    # J

    .line 101
    if-ltz p1, :cond_a

    const/4 v0, 0x6

    if-gt p1, v0, :cond_a

    .line 104
    iput p1, p0, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->state:I

    .line 105
    iput-wide p2, p0, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->stateTimestamp:J

    .line 106
    return-object p0

    .line 102
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid state value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setType(I)Lcom/android/org/conscrypt/ct/LogInfo$Builder;
    .registers 4
    .param p1, "type"    # I

    .line 122
    if-ltz p1, :cond_8

    const/4 v0, 0x2

    if-gt p1, v0, :cond_8

    .line 125
    iput p1, p0, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->type:I

    .line 126
    return-object p0

    .line 123
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
