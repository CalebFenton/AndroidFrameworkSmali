.class Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
.super Ljava/lang/Object;
.source "CertStatus.java"


# static fields
.field public static final blacklist UNDETERMINED:I = 0xc

.field public static final blacklist UNREVOKED:I = 0xb


# instance fields
.field blacklist certStatus:I

.field blacklist revocationDate:Ljava/util/Date;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->certStatus:I

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public blacklist getCertStatus()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->certStatus:I

    return v0
.end method

.method public blacklist getRevocationDate()Ljava/util/Date;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    return-object v0
.end method

.method public blacklist setCertStatus(I)V
    .registers 2
    .param p1, "certStatus"    # I

    .line 45
    iput p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->certStatus:I

    .line 46
    return-void
.end method

.method public blacklist setRevocationDate(Ljava/util/Date;)V
    .registers 2
    .param p1, "revocationDate"    # Ljava/util/Date;

    .line 29
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    .line 30
    return-void
.end method
