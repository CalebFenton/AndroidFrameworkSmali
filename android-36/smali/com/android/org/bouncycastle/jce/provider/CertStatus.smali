.class Lcom/android/org/bouncycastle/jce/provider/CertStatus;
.super Ljava/lang/Object;
.source "CertStatus.java"


# instance fields
.field blacklist certStatus:I

.field blacklist revocationDate:Ljava/util/Date;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    .line 12
    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->certStatus:I

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public blacklist getCertStatus()I
    .registers 1

    .line 37
    iget p0, p0, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->certStatus:I

    return p0
.end method

.method public blacklist getRevocationDate()Ljava/util/Date;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    return-object p0
.end method

.method public blacklist setCertStatus(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->certStatus:I

    return-void
.end method

.method public blacklist setRevocationDate(Ljava/util/Date;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    return-void
.end method
