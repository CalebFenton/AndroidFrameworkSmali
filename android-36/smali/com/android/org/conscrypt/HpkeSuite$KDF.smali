.class public final enum Lcom/android/org/conscrypt/HpkeSuite$KDF;
.super Ljava/lang/Enum;
.source "HpkeSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/HpkeSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KDF"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/HpkeSuite$KDF;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/HpkeSuite$KDF;

.field public static final enum blacklist HKDF_SHA256:Lcom/android/org/conscrypt/HpkeSuite$KDF;


# instance fields
.field private final blacklist hLength:I

.field private final blacklist hName:Ljava/lang/String;

.field private final blacklist id:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/HpkeSuite$KDF;
    .registers 1

    .line 223
    sget-object v0, Lcom/android/org/conscrypt/HpkeSuite$KDF;->HKDF_SHA256:Lcom/android/org/conscrypt/HpkeSuite$KDF;

    filled-new-array {v0}, [Lcom/android/org/conscrypt/HpkeSuite$KDF;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 224
    new-instance v0, Lcom/android/org/conscrypt/HpkeSuite$KDF;

    const/16 v4, 0x20

    const-string v5, "HmacSHA256"

    const-string v1, "HKDF_SHA256"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/HpkeSuite$KDF;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/android/org/conscrypt/HpkeSuite$KDF;->HKDF_SHA256:Lcom/android/org/conscrypt/HpkeSuite$KDF;

    .line 223
    invoke-static {}, Lcom/android/org/conscrypt/HpkeSuite$KDF;->$values()[Lcom/android/org/conscrypt/HpkeSuite$KDF;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/HpkeSuite$KDF;->$VALUES:[Lcom/android/org/conscrypt/HpkeSuite$KDF;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6
    .param p3, "id"    # I
    .param p4, "hLength"    # I
    .param p5, "hName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 231
    iput p3, p0, Lcom/android/org/conscrypt/HpkeSuite$KDF;->id:I

    .line 232
    iput p4, p0, Lcom/android/org/conscrypt/HpkeSuite$KDF;->hLength:I

    .line 233
    iput-object p5, p0, Lcom/android/org/conscrypt/HpkeSuite$KDF;->hName:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public static blacklist forId(I)Lcom/android/org/conscrypt/HpkeSuite$KDF;
    .registers 6
    .param p0, "id"    # I

    .line 288
    invoke-static {}, Lcom/android/org/conscrypt/HpkeSuite$KDF;->values()[Lcom/android/org/conscrypt/HpkeSuite$KDF;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 289
    .local v3, "kdf":Lcom/android/org/conscrypt/HpkeSuite$KDF;
    invoke-virtual {v3}, Lcom/android/org/conscrypt/HpkeSuite$KDF;->getId()I

    move-result v4

    if-ne v4, p0, :cond_11

    .line 290
    return-object v3

    .line 288
    .end local v3    # "kdf":Lcom/android/org/conscrypt/HpkeSuite$KDF;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 293
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown KDF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/HpkeSuite$KDF;
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

    .line 223
    const-class v0, Lcom/android/org/conscrypt/HpkeSuite$KDF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/HpkeSuite$KDF;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/HpkeSuite$KDF;
    .registers 1

    .line 223
    sget-object v0, Lcom/android/org/conscrypt/HpkeSuite$KDF;->$VALUES:[Lcom/android/org/conscrypt/HpkeSuite$KDF;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/HpkeSuite$KDF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/HpkeSuite$KDF;

    return-object v0
.end method


# virtual methods
.method public blacklist getHLength()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite$KDF;->getMacLength()I

    move-result v0

    return v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 245
    iget v0, p0, Lcom/android/org/conscrypt/HpkeSuite$KDF;->id:I

    return v0
.end method

.method public blacklist getMacAlgorithmName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite$KDF;->getMacName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMacLength()I
    .registers 2

    .line 254
    iget v0, p0, Lcom/android/org/conscrypt/HpkeSuite$KDF;->hLength:I

    return v0
.end method

.method public blacklist getMacName()Ljava/lang/String;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeSuite$KDF;->hName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist maxExportLength()J
    .registers 5

    .line 268
    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite$KDF;->getMacLength()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    mul-long/2addr v0, v2

    return-wide v0
.end method
