.class Lcom/android/internal/org/bouncycastle/cms/CMSSignedData$1;
.super Ljava/lang/Object;
.source "CMSSignedData.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

.field final synthetic blacklist val$signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData$1;->this$0:Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData$1;->val$signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getContent()Ljava/lang/Object;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData$1;->val$signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData$1;->this$0:Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    iget-object v0, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData$1;->val$signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 166
    return-void
.end method
