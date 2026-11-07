.class public Landroid/content/pm/SigningDetails$Builder;
.super Ljava/lang/Object;
.source "SigningDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/SigningDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mPastSigningCertificates:[Landroid/content/pm/Signature;

.field private blacklist mSignatureSchemeVersion:I

.field private blacklist mSignatures:[Landroid/content/pm/Signature;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/SigningDetails$Builder;->mSignatureSchemeVersion:I

    .line 903
    return-void
.end method

.method private blacklist checkInvariants()V
    .registers 3

    .line 927
    iget-object v0, p0, Landroid/content/pm/SigningDetails$Builder;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_5

    .line 931
    return-void

    .line 928
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SigningDetails requires the current signing certificates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/content/pm/SigningDetails;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 935
    invoke-direct {p0}, Landroid/content/pm/SigningDetails$Builder;->checkInvariants()V

    .line 936
    new-instance v0, Landroid/content/pm/SigningDetails;

    iget-object v1, p0, Landroid/content/pm/SigningDetails$Builder;->mSignatures:[Landroid/content/pm/Signature;

    iget v2, p0, Landroid/content/pm/SigningDetails$Builder;->mSignatureSchemeVersion:I

    iget-object v3, p0, Landroid/content/pm/SigningDetails$Builder;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    return-object v0
.end method

.method public blacklist setPastSigningCertificates([Landroid/content/pm/Signature;)Landroid/content/pm/SigningDetails$Builder;
    .registers 2
    .param p1, "pastSigningCertificates"    # [Landroid/content/pm/Signature;

    .line 921
    iput-object p1, p0, Landroid/content/pm/SigningDetails$Builder;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 922
    return-object p0
.end method

.method public blacklist setSignatureSchemeVersion(I)Landroid/content/pm/SigningDetails$Builder;
    .registers 2
    .param p1, "signatureSchemeVersion"    # I

    .line 914
    iput p1, p0, Landroid/content/pm/SigningDetails$Builder;->mSignatureSchemeVersion:I

    .line 915
    return-object p0
.end method

.method public blacklist setSignatures([Landroid/content/pm/Signature;)Landroid/content/pm/SigningDetails$Builder;
    .registers 2
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .line 907
    iput-object p1, p0, Landroid/content/pm/SigningDetails$Builder;->mSignatures:[Landroid/content/pm/Signature;

    .line 908
    return-object p0
.end method
