.class Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;
.super Ljava/lang/Object;
.source "BouncyCastleProvider.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JcaCryptoService"
.end annotation


# instance fields
.field private final blacklist bitsOfSecurity:I

.field private final blacklist name:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitsOfSecurity"    # I

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->name:Ljava/lang/String;

    .line 677
    iput p2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->bitsOfSecurity:I

    .line 678
    return-void
.end method


# virtual methods
.method public blacklist bitsOfSecurity()I
    .registers 2

    .line 682
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->bitsOfSecurity:I

    return v0
.end method

.method public blacklist getParams()Ljava/lang/Object;
    .registers 2

    .line 697
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPurpose()Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;
    .registers 2

    .line 692
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object v0
.end method

.method public blacklist getServiceName()Ljava/lang/String;
    .registers 2

    .line 687
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->name:Ljava/lang/String;

    return-object v0
.end method
