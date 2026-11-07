.class public Lcom/android/internal/org/bouncycastle/cms/CMSAbsentContent;
.super Ljava/lang/Object;
.source "CMSAbsentContent.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;
.implements Lcom/android/internal/org/bouncycastle/cms/CMSReadable;


# instance fields
.field private final blacklist type:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 22
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSAbsentContent;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 2
    .param p1, "type"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSAbsentContent;->type:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist getContent()Ljava/lang/Object;
    .registers 2

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSAbsentContent;->type:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist write(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "zOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 40
    return-void
.end method
