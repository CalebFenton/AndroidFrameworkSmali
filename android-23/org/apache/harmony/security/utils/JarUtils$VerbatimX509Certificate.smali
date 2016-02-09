.class Lorg/apache/harmony/security/utils/JarUtils$VerbatimX509Certificate;
.super Lorg/apache/harmony/security/utils/WrappedX509Certificate;
.source "JarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/utils/JarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VerbatimX509Certificate"
.end annotation


# instance fields
.field private encodedVerbatim:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .locals 0
    .param p1, "wrapped"    # Ljava/security/cert/X509Certificate;
    .param p2, "encodedVerbatim"    # [B

    #@0
    .prologue
    .line 282
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/utils/WrappedX509Certificate;-><init>(Ljava/security/cert/X509Certificate;)V

    #@3
    .line 283
    iput-object p2, p0, Lorg/apache/harmony/security/utils/JarUtils$VerbatimX509Certificate;->encodedVerbatim:[B

    #@5
    .line 281
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/harmony/security/utils/JarUtils$VerbatimX509Certificate;->encodedVerbatim:[B

    #@2
    return-object v0
.end method
