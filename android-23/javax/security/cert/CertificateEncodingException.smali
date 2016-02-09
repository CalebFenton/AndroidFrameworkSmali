.class public Ljavax/security/cert/CertificateEncodingException;
.super Ljavax/security/cert/CertificateException;
.source "CertificateEncodingException.java"


# static fields
.field private static final serialVersionUID:J = -0x71a059ad371cb20eL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljavax/security/cert/CertificateException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@3
    .line 45
    return-void
.end method
