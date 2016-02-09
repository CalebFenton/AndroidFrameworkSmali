.class public Ljava/security/cert/CertificateEncodingException;
.super Ljava/security/cert/CertificateException;
.source "CertificateEncodingException.java"


# static fields
.field private static final serialVersionUID:J = 0x565013cbd61205caL


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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 65
    return-void
.end method
