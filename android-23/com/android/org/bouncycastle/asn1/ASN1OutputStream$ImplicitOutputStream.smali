.class Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;
.super Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
.source "ASN1OutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImplicitOutputStream"
.end annotation


# instance fields
.field private first:Z

.field final synthetic this$0:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "os"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    #@2
    .line 178
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    #@5
    .line 174
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->first:Z

    #@8
    .line 176
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->first:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 186
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->first:Z

    #@7
    .line 182
    :goto_0
    return-void

    #@8
    .line 190
    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@b
    goto :goto_0
.end method
