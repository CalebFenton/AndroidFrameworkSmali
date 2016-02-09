.class Lcom/android/org/bouncycastle/asn1/ASN1Set$1;
.super Ljava/lang/Object;
.source "ASN1Set.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1SetParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field private final max:I

.field final synthetic this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field final synthetic val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p2, "val$outer"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@0
    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 318
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@9
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->max:I

    #@f
    .line 316
    return-void
.end method


# virtual methods
.method public getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 324
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->index:I

    #@2
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->max:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 326
    const/4 v1, 0x0

    #@7
    return-object v1

    #@8
    .line 329
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@a
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->index:I

    #@c
    add-int/lit8 v3, v2, 0x1

    #@e
    iput v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->index:I

    #@10
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@13
    move-result-object v0

    #@14
    .line 330
    .local v0, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 332
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@1a
    .end local v0    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;

    #@1d
    move-result-object v1

    #@1e
    return-object v1

    #@1f
    .line 334
    .restart local v0    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 336
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@25
    .end local v0    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    #@28
    move-result-object v1

    #@29
    return-object v1

    #@2a
    .line 339
    .restart local v0    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method
