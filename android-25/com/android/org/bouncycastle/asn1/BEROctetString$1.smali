.class Lcom/android/org/bouncycastle/asn1/BEROctetString$1;
.super Ljava/lang/Object;
.source "BEROctetString.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field counter:I

.field final synthetic this$0:Lcom/android/org/bouncycastle/asn1/BEROctetString;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/BEROctetString;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@0
    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;->this$0:Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 78
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;->counter:I

    #@8
    .line 76
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    #@0
    .prologue
    .line 82
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;->counter:I

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;->this$0:Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@4
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->-get0(Lcom/android/org/bouncycastle/asn1/BEROctetString;)[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@7
    move-result-object v1

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;->this$0:Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->-get0(Lcom/android/org/bouncycastle/asn1/BEROctetString;)[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;->counter:I

    #@8
    add-int/lit8 v2, v1, 0x1

    #@a
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;->counter:I

    #@c
    aget-object v0, v0, v1

    #@e
    return-object v0
.end method
