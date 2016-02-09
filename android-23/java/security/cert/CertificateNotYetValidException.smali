.class public Ljava/security/cert/CertificateNotYetValidException;
.super Ljava/security/cert/CertificateException;
.source "CertificateNotYetValidException.java"


# static fields
.field private static final serialVersionUID:J = 0x3c7356120800b0feL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@3
    .line 35
    return-void
.end method
