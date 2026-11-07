.class Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;
.super Ljava/lang/Object;
.source "JcaContentSignerBuilder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/operator/ContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->buildComposite(Lcom/android/internal/org/bouncycastle/jcajce/CompositePrivateKey;)Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist stream:Ljava/io/OutputStream;

.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

.field final synthetic blacklist val$sigStream:Ljava/io/OutputStream;

.field final synthetic blacklist val$sigs:[Ljava/security/Signature;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;Ljava/io/OutputStream;[Ljava/security/Signature;)V
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

    .line 222
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->val$sigStream:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->val$sigs:[Ljava/security/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->val$sigStream:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->stream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->-$$Nest$fgetsigAlgId(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->stream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public blacklist getSignature()[B
    .registers 5

    .line 239
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 241
    .local v0, "sigV":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->val$sigs:[Ljava/security/Signature;

    array-length v2, v2

    if-eq v1, v2, :cond_1e

    .line 243
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->val$sigs:[Ljava/security/Signature;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 246
    .end local v1    # "i":I
    :cond_1e
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_29} :catch_48
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_29} :catch_2a

    return-object v1

    .line 252
    .end local v0    # "sigV":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :catch_2a
    move-exception v0

    .line 254
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

    .line 248
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_48
    move-exception v0

    .line 250
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception encoding signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
