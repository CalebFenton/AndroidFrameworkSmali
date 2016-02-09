.class public Ljavax/security/cert/CertificateException;
.super Ljava/lang/Exception;
.source "CertificateException.java"


# static fields
.field private static final serialVersionUID:J = -0x4fe5bb0f873bab0aL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 43
    return-void
.end method
