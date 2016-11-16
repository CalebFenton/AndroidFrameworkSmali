.class public Ljavax/security/cert/CertificateParsingException;
.super Ljavax/security/cert/CertificateException;
.source "CertificateParsingException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljavax/security/cert/CertificateException;-><init>()V

    #@3
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@3
    .line 61
    return-void
.end method
