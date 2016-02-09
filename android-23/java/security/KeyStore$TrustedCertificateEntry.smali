.class public final Ljava/security/KeyStore$TrustedCertificateEntry;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrustedCertificateEntry"
.end annotation


# instance fields
.field private final trustCertificate:Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "trustCertificate"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 1360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1361
    if-nez p1, :cond_0

    #@5
    .line 1362
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "trustCertificate == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1364
    :cond_0
    iput-object p1, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->trustCertificate:Ljava/security/cert/Certificate;

    #@10
    .line 1360
    return-void
.end method


# virtual methods
.method public getTrustedCertificate()Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    .line 1373
    iget-object v0, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->trustCertificate:Ljava/security/cert/Certificate;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Trusted certificate entry:\n"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->trustCertificate:Ljava/security/cert/Certificate;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
