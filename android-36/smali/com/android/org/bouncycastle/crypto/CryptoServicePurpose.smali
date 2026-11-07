.class public final enum Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;
.super Ljava/lang/Enum;
.source "CryptoServicePurpose.java"


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum blacklist AGREEMENT:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum blacklist ANY:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum blacklist AUTHENTICATION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum blacklist DECRYPTION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum blacklist ENCRYPTION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum blacklist KEYGEN:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum blacklist PRF:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum blacklist SIGNING:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum blacklist VERIFICATION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum blacklist VERIFYING:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;
    .registers 10

    .line 7
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->AGREEMENT:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    sget-object v1, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    sget-object v2, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    sget-object v3, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    sget-object v4, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->SIGNING:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    sget-object v5, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->VERIFYING:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    sget-object v6, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->AUTHENTICATION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    sget-object v7, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->VERIFICATION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    sget-object v8, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    sget-object v9, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    filled-new-array/range {v0 .. v9}, [Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 9
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "AGREEMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->AGREEMENT:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 10
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "ENCRYPTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 11
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "DECRYPTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 12
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "KEYGEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 13
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "SIGNING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->SIGNING:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 14
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "VERIFYING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->VERIFYING:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 15
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "AUTHENTICATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->AUTHENTICATION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "VERIFICATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->VERIFICATION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "PRF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 18
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "ANY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 7
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->$values()[Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->$VALUES:[Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;
    .registers 2

    .line 7
    const-class v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;
    .registers 1

    .line 7
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->$VALUES:[Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {v0}, [Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object v0
.end method
