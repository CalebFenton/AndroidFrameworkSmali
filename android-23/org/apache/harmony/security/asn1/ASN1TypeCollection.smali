.class public abstract Lorg/apache/harmony/security/asn1/ASN1TypeCollection;
.super Lorg/apache/harmony/security/asn1/ASN1Constructed;
.source "ASN1TypeCollection.java"


# instance fields
.field public final DEFAULT:[Ljava/lang/Object;

.field public final OPTIONAL:[Z

.field public final type:[Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method protected constructor <init>(I[Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .param p1, "tagNumber"    # I
    .param p2, "type"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Constructed;-><init>(I)V

    #@3
    .line 48
    iput-object p2, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    .line 49
    array-length v0, p2

    #@6
    new-array v0, v0, [Z

    #@8
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->OPTIONAL:[Z

    #@a
    .line 50
    array-length v0, p2

    #@b
    new-array v0, v0, [Ljava/lang/Object;

    #@d
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->DEFAULT:[Ljava/lang/Object;

    #@f
    .line 46
    return-void
.end method


# virtual methods
.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "ASN.1 type is not designed to be encoded: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method protected final setDefault(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->OPTIONAL:[Z

    #@2
    const/4 v1, 0x1

    #@3
    aput-boolean v1, v0, p2

    #@5
    .line 71
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->DEFAULT:[Ljava/lang/Object;

    #@7
    aput-object p1, v0, p2

    #@9
    .line 69
    return-void
.end method

.method protected final setOptional(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->OPTIONAL:[Z

    #@2
    const/4 v1, 0x1

    #@3
    aput-boolean v1, v0, p1

    #@5
    .line 58
    return-void
.end method
