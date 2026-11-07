.class Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;
.super Ljava/lang/Object;
.source "JcaContentSignerBuilder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/operator/ContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist stream:Ljava/io/OutputStream;

.field final synthetic blacklist val$sig:Ljava/security/Signature;

.field final synthetic blacklist val$signatureAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->val$sig:Ljava/security/Signature;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->val$signatureAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->val$sig:Ljava/security/Signature;

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->stream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->val$signatureAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->stream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public blacklist getSignature()[B
    .registers 5

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->val$sig:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0
    :try_end_6
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 177
    :catch_7
    move-exception v0

    .line 179
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception obtaining signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
