.class public final Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ObjectDescriptor.java"


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field private final blacklist baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 12
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V
    .registers 4
    .param p1, "baseGraphicString"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    .line 80
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 81
    if-eqz p1, :cond_8

    .line 86
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    .line 87
    return-void

    .line 83
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'baseGraphicString\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
    .registers 3
    .param p0, "contents"    # [B

    .line 143
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 74
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 36
    if-eqz p0, :cond_6a

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    if-eqz v0, :cond_7

    goto :goto_6a

    .line 40
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1b

    .line 42
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 43
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    if-eqz v1, :cond_1a

    .line 45
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    return-object v1

    .line 47
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1a
    goto :goto_49

    .line 48
    :cond_1b
    instance-of v0, p0, [B

    if-eqz v0, :cond_49

    .line 52
    :try_start_1f
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2a} :catch_2b

    return-object v0

    .line 54
    :catch_2b
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct object descriptor from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :cond_49
    :goto_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_6a
    :goto_6a
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    return-object v0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 5
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 126
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    if-nez v0, :cond_6

    .line 128
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    .line 133
    .local v0, "that":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    return v1
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 108
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->encodedLength(Z)I

    move-result v0

    return v0
.end method

.method public blacklist getBaseGraphicString()Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    .line 114
    .local v0, "der":Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    if-ne v0, v1, :cond_e

    move-object v1, p0

    goto :goto_13

    :cond_e
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V

    :goto_13
    return-object v1
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    .line 121
    .local v0, "dl":Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    if-ne v0, v1, :cond_e

    move-object v1, p0

    goto :goto_13

    :cond_e
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V

    :goto_13
    return-object v1
.end method
