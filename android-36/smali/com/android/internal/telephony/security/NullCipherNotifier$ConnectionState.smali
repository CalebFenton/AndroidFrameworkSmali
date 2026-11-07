.class final Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;
.super Ljava/lang/Object;
.source "NullCipherNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/security/NullCipherNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectionState"
.end annotation


# static fields
.field private static final blacklist UNKNOWN:Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;


# instance fields
.field private final blacklist mEncryption:I

.field private final blacklist mIntegrity:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetEncryption(Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->getEncryption()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetIntegrity(Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->getIntegrity()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasNullCipher(Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->hasNullCipher()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetUNKNOWN()Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->UNKNOWN:Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 335
    new-instance v0, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;

    const/16 v1, 0x71

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->UNKNOWN:Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;

    return-void
.end method

.method private constructor blacklist <init>(II)V
    .registers 3

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput p1, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->mEncryption:I

    .line 344
    iput p2, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->mIntegrity:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IILcom/android/internal/telephony/security/NullCipherNotifier-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;-><init>(II)V

    return-void
.end method

.method private blacklist getEncryption()I
    .registers 1

    .line 348
    iget p0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->mEncryption:I

    return p0
.end method

.method private blacklist getIntegrity()I
    .registers 1

    .line 352
    iget p0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->mIntegrity:I

    return p0
.end method

.method private blacklist hasNullCipher()Z
    .registers 2

    .line 356
    iget v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->mEncryption:I

    invoke-static {v0}, Lcom/android/internal/telephony/security/NullCipherNotifier;->-$$Nest$smisNullCipher(I)Z

    move-result v0

    if-nez v0, :cond_13

    iget p0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->mIntegrity:I

    invoke-static {p0}, Lcom/android/internal/telephony/security/NullCipherNotifier;->-$$Nest$smisNullCipher(I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method
