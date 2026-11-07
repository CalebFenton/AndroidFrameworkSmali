.class public Landroid/util/apk/ApkSignatureVerifier$Result;
.super Ljava/lang/Object;
.source "ApkSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final greylist-max-o certs:[[Ljava/security/cert/Certificate;

.field public final greylist-max-o signatureSchemeVersion:I

.field public final greylist-max-o sigs:[Landroid/content/pm/Signature;


# direct methods
.method public constructor greylist-max-o <init>([[Ljava/security/cert/Certificate;[Landroid/content/pm/Signature;I)V
    .registers 4
    .param p1, "certs"    # [[Ljava/security/cert/Certificate;
    .param p2, "sigs"    # [Landroid/content/pm/Signature;
    .param p3, "signingVersion"    # I

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput-object p1, p0, Landroid/util/apk/ApkSignatureVerifier$Result;->certs:[[Ljava/security/cert/Certificate;

    .line 591
    iput-object p2, p0, Landroid/util/apk/ApkSignatureVerifier$Result;->sigs:[Landroid/content/pm/Signature;

    .line 592
    iput p3, p0, Landroid/util/apk/ApkSignatureVerifier$Result;->signatureSchemeVersion:I

    .line 593
    return-void
.end method
