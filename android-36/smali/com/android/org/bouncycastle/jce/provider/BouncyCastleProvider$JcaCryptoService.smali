.class Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;
.super Ljava/lang/Object;
.source "BouncyCastleProvider.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;


# instance fields
.field private final blacklist bitsOfSecurity:I

.field private final blacklist name:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->name:Ljava/lang/String;

    .line 678
    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->bitsOfSecurity:I

    return-void
.end method


# virtual methods
.method public blacklist getServiceName()Ljava/lang/String;
    .registers 1

    .line 688
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->name:Ljava/lang/String;

    return-object p0
.end method
