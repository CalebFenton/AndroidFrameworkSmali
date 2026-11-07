.class public final enum Lcom/android/org/conscrypt/HpkeSuite$AEAD;
.super Ljava/lang/Enum;
.source "HpkeSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/HpkeSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AEAD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/HpkeSuite$AEAD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/HpkeSuite$AEAD;

.field public static final enum blacklist AES_128_GCM:Lcom/android/org/conscrypt/HpkeSuite$AEAD;

.field public static final enum blacklist AES_256_GCM:Lcom/android/org/conscrypt/HpkeSuite$AEAD;

.field public static final enum blacklist CHACHA20POLY1305:Lcom/android/org/conscrypt/HpkeSuite$AEAD;


# instance fields
.field private final blacklist id:I

.field private final blacklist nk:I

.field private final blacklist nn:I

.field private final blacklist nt:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/HpkeSuite$AEAD;
    .registers 3

    .line 305
    sget-object v0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->AES_128_GCM:Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    sget-object v1, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->AES_256_GCM:Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    sget-object v2, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->CHACHA20POLY1305:Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    filled-new-array {v0, v1, v2}, [Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 306
    new-instance v0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    const/16 v5, 0xc

    const/16 v6, 0x10

    const-string v1, "AES_128_GCM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/HpkeSuite$AEAD;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->AES_128_GCM:Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    .line 307
    new-instance v1, Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    const/16 v6, 0xc

    const/16 v7, 0x10

    const-string v2, "AES_256_GCM"

    const/4 v4, 0x2

    const/16 v5, 0x20

    invoke-direct/range {v1 .. v7}, Lcom/android/org/conscrypt/HpkeSuite$AEAD;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->AES_256_GCM:Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    .line 308
    new-instance v2, Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    const/16 v7, 0xc

    const/16 v8, 0x10

    const-string v3, "CHACHA20POLY1305"

    const/4 v5, 0x3

    const/16 v6, 0x20

    invoke-direct/range {v2 .. v8}, Lcom/android/org/conscrypt/HpkeSuite$AEAD;-><init>(Ljava/lang/String;IIIII)V

    sput-object v2, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->CHACHA20POLY1305:Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    .line 305
    invoke-static {}, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->$values()[Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->$VALUES:[Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIIII)V
    .registers 7
    .param p3, "id"    # I
    .param p4, "nk"    # I
    .param p5, "nn"    # I
    .param p6, "nt"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 315
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 316
    iput p3, p0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->id:I

    .line 317
    iput p4, p0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->nk:I

    .line 318
    iput p5, p0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->nn:I

    .line 319
    iput p6, p0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->nt:I

    .line 320
    return-void
.end method

.method public static blacklist forId(I)Lcom/android/org/conscrypt/HpkeSuite$AEAD;
    .registers 6
    .param p0, "id"    # I

    .line 385
    invoke-static {}, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->values()[Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 386
    .local v3, "aead":Lcom/android/org/conscrypt/HpkeSuite$AEAD;
    invoke-virtual {v3}, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->getId()I

    move-result v4

    if-ne v4, p0, :cond_11

    .line 387
    return-object v3

    .line 385
    .end local v3    # "aead":Lcom/android/org/conscrypt/HpkeSuite$AEAD;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 390
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown AEAD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/HpkeSuite$AEAD;
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

    .line 305
    const-class v0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/HpkeSuite$AEAD;
    .registers 1

    .line 305
    sget-object v0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->$VALUES:[Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/HpkeSuite$AEAD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    return-object v0
.end method


# virtual methods
.method public blacklist getId()I
    .registers 2

    .line 331
    iget v0, p0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->id:I

    return v0
.end method

.method public blacklist getKeyLength()I
    .registers 2

    .line 346
    iget v0, p0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->nk:I

    return v0
.end method

.method public blacklist getNk()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->getKeyLength()I

    move-result v0

    return v0
.end method

.method public blacklist getNn()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 359
    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->getNonceLength()I

    move-result v0

    return v0
.end method

.method public blacklist getNonceLength()I
    .registers 2

    .line 362
    iget v0, p0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->nn:I

    return v0
.end method

.method public blacklist getNt()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 375
    iget v0, p0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->nt:I

    return v0
.end method

.method public blacklist getTagLength()I
    .registers 2

    .line 378
    iget v0, p0, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->nt:I

    return v0
.end method
