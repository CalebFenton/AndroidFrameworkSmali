.class public final enum Lcom/android/org/conscrypt/HpkeSuite$KEM;
.super Ljava/lang/Enum;
.source "HpkeSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/HpkeSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KEM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/HpkeSuite$KEM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/HpkeSuite$KEM;

.field public static final enum blacklist DHKEM_X25519_HKDF_SHA256:Lcom/android/org/conscrypt/HpkeSuite$KEM;


# instance fields
.field private final blacklist id:I

.field private final blacklist nEnc:I

.field private final blacklist nPk:I

.field private final blacklist nSecret:I

.field private final blacklist nSk:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/HpkeSuite$KEM;
    .registers 1

    .line 141
    sget-object v0, Lcom/android/org/conscrypt/HpkeSuite$KEM;->DHKEM_X25519_HKDF_SHA256:Lcom/android/org/conscrypt/HpkeSuite$KEM;

    filled-new-array {v0}, [Lcom/android/org/conscrypt/HpkeSuite$KEM;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 142
    new-instance v0, Lcom/android/org/conscrypt/HpkeSuite$KEM;

    const/16 v6, 0x20

    const/16 v7, 0x20

    const-string v1, "DHKEM_X25519_HKDF_SHA256"

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/16 v4, 0x20

    const/16 v5, 0x20

    invoke-direct/range {v0 .. v7}, Lcom/android/org/conscrypt/HpkeSuite$KEM;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/org/conscrypt/HpkeSuite$KEM;->DHKEM_X25519_HKDF_SHA256:Lcom/android/org/conscrypt/HpkeSuite$KEM;

    .line 141
    invoke-static {}, Lcom/android/org/conscrypt/HpkeSuite$KEM;->$values()[Lcom/android/org/conscrypt/HpkeSuite$KEM;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/HpkeSuite$KEM;->$VALUES:[Lcom/android/org/conscrypt/HpkeSuite$KEM;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIIIII)V
    .registers 8
    .param p3, "id"    # I
    .param p4, "nSecret"    # I
    .param p5, "nEnc"    # I
    .param p6, "nPk"    # I
    .param p7, "nSk"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput p3, p0, Lcom/android/org/conscrypt/HpkeSuite$KEM;->id:I

    .line 153
    iput p4, p0, Lcom/android/org/conscrypt/HpkeSuite$KEM;->nSecret:I

    .line 154
    iput p5, p0, Lcom/android/org/conscrypt/HpkeSuite$KEM;->nEnc:I

    .line 155
    iput p6, p0, Lcom/android/org/conscrypt/HpkeSuite$KEM;->nPk:I

    .line 156
    iput p7, p0, Lcom/android/org/conscrypt/HpkeSuite$KEM;->nSk:I

    .line 157
    return-void
.end method

.method public static blacklist forId(I)Lcom/android/org/conscrypt/HpkeSuite$KEM;
    .registers 6
    .param p0, "id"    # I

    .line 207
    invoke-static {}, Lcom/android/org/conscrypt/HpkeSuite$KEM;->values()[Lcom/android/org/conscrypt/HpkeSuite$KEM;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 208
    .local v3, "kem":Lcom/android/org/conscrypt/HpkeSuite$KEM;
    invoke-virtual {v3}, Lcom/android/org/conscrypt/HpkeSuite$KEM;->getId()I

    move-result v4

    if-ne v4, p0, :cond_11

    .line 209
    return-object v3

    .line 207
    .end local v3    # "kem":Lcom/android/org/conscrypt/HpkeSuite$KEM;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 212
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown KEM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/HpkeSuite$KEM;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 141
    const-class v0, Lcom/android/org/conscrypt/HpkeSuite$KEM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/HpkeSuite$KEM;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/HpkeSuite$KEM;
    .registers 1

    .line 141
    sget-object v0, Lcom/android/org/conscrypt/HpkeSuite$KEM;->$VALUES:[Lcom/android/org/conscrypt/HpkeSuite$KEM;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/HpkeSuite$KEM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/HpkeSuite$KEM;

    return-object v0
.end method


# virtual methods
.method public blacklist getEncapsulatedLength()I
    .registers 2

    .line 179
    iget v0, p0, Lcom/android/org/conscrypt/HpkeSuite$KEM;->nEnc:I

    return v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 168
    iget v0, p0, Lcom/android/org/conscrypt/HpkeSuite$KEM;->id:I

    return v0
.end method

.method public blacklist getPrivateKeyLength()I
    .registers 2

    .line 200
    iget v0, p0, Lcom/android/org/conscrypt/HpkeSuite$KEM;->nSk:I

    return v0
.end method

.method public blacklist getPublicKeyLength()I
    .registers 2

    .line 193
    iget v0, p0, Lcom/android/org/conscrypt/HpkeSuite$KEM;->nPk:I

    return v0
.end method

.method public blacklist getSecretLength()I
    .registers 2

    .line 186
    iget v0, p0, Lcom/android/org/conscrypt/HpkeSuite$KEM;->nSecret:I

    return v0
.end method

.method public blacklist getnEnc()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite$KEM;->getEncapsulatedLength()I

    move-result v0

    return v0
.end method
