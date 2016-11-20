.class final Lsun/security/ssl/JsseJce$SunCertificates;
.super Ljava/security/Provider;
.source "JsseJce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/JsseJce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SunCertificates"
.end annotation


# direct methods
.method constructor <init>(Ljava/security/Provider;)V
    .locals 4
    .param p1, "p"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 114
    const-string/jumbo v0, "SunCertificates"

    #@3
    const-string/jumbo v1, "SunJSSE internal"

    #@6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@8
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@b
    .line 115
    new-instance v0, Lsun/security/ssl/JsseJce$SunCertificates$1;

    #@d
    invoke-direct {v0, p0, p1}, Lsun/security/ssl/JsseJce$SunCertificates$1;-><init>(Lsun/security/ssl/JsseJce$SunCertificates;Ljava/security/Provider;)V

    #@10
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@13
    .line 113
    return-void
.end method
