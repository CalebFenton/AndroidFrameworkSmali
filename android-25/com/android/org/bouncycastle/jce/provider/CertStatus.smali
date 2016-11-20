.class Lcom/android/org/bouncycastle/jce/provider/CertStatus;
.super Ljava/lang/Object;
.source "CertStatus.java"


# static fields
.field public static final UNDETERMINED:I = 0xc

.field public static final UNREVOKED:I = 0xb


# instance fields
.field certStatus:I

.field revocationDate:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 11
    const/16 v0, 0xb

    #@5
    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->certStatus:I

    #@7
    .line 13
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    #@a
    .line 5
    return-void
.end method


# virtual methods
.method public getCertStatus()I
    .locals 1

    #@0
    .prologue
    .line 36
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->certStatus:I

    #@2
    return v0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public setCertStatus(I)V
    .locals 0
    .param p1, "certStatus"    # I

    #@0
    .prologue
    .line 44
    iput p1, p0, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->certStatus:I

    #@2
    .line 42
    return-void
.end method

.method public setRevocationDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "revocationDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    #@2
    .line 26
    return-void
.end method
