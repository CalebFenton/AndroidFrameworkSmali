.class public final Lcom/android/mediadrm/signer/MediaDrmSigner$CertificateRequest;
.super Ljava/lang/Object;
.source "MediaDrmSigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mediadrm/signer/MediaDrmSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CertificateRequest"
.end annotation


# instance fields
.field private final mCertRequest:Landroid/media/MediaDrm$CertificateRequest;


# direct methods
.method constructor <init>(Landroid/media/MediaDrm$CertificateRequest;)V
    .locals 0
    .param p1, "certRequest"    # Landroid/media/MediaDrm$CertificateRequest;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Lcom/android/mediadrm/signer/MediaDrmSigner$CertificateRequest;->mCertRequest:Landroid/media/MediaDrm$CertificateRequest;

    #@5
    .line 41
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mediadrm/signer/MediaDrmSigner$CertificateRequest;->mCertRequest:Landroid/media/MediaDrm$CertificateRequest;

    #@2
    invoke-virtual {v0}, Landroid/media/MediaDrm$CertificateRequest;->getData()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mediadrm/signer/MediaDrmSigner$CertificateRequest;->mCertRequest:Landroid/media/MediaDrm$CertificateRequest;

    #@2
    invoke-virtual {v0}, Landroid/media/MediaDrm$CertificateRequest;->getDefaultUrl()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
