.class public Landroid/content/pm/PackageParser$SigningDetails$Builder;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser$SigningDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mPastSigningCertificates:[Landroid/content/pm/Signature;

.field private greylist-max-o mSignatureSchemeVersion:I

.field private greylist-max-o mSignatures:[Landroid/content/pm/Signature;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 6713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6709
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatureSchemeVersion:I

    .line 6714
    return-void
.end method

.method private greylist-max-o checkInvariants()V
    .registers 3

    .line 6739
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_5

    .line 6743
    return-void

    .line 6740
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SigningDetails requires the current signing certificates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist build()Landroid/content/pm/PackageParser$SigningDetails;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 6748
    invoke-direct {p0}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->checkInvariants()V

    .line 6749
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatures:[Landroid/content/pm/Signature;

    iget v2, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatureSchemeVersion:I

    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    return-object v0
.end method

.method public greylist-max-r setPastSigningCertificates([Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .registers 2
    .param p1, "pastSigningCertificates"    # [Landroid/content/pm/Signature;

    .line 6733
    iput-object p1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 6734
    return-object p0
.end method

.method public greylist setSignatureSchemeVersion(I)Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .registers 2
    .param p1, "signatureSchemeVersion"    # I

    .line 6726
    iput p1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatureSchemeVersion:I

    .line 6727
    return-object p0
.end method

.method public greylist setSignatures([Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .registers 2
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .line 6719
    iput-object p1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatures:[Landroid/content/pm/Signature;

    .line 6720
    return-object p0
.end method
