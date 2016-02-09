.class public Ljava/security/cert/CertificateExpiredException;
.super Ljava/security/cert/CertificateException;
.source "CertificateExpiredException.java"


# static fields
.field private static final serialVersionUID:J = 0x7de2aba8816805cbL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@3
    .line 34
    return-void
.end method
