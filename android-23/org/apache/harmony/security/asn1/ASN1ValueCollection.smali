.class public abstract Lorg/apache/harmony/security/asn1/ASN1ValueCollection;
.super Lorg/apache/harmony/security/asn1/ASN1Constructed;
.source "ASN1ValueCollection.java"


# instance fields
.field public final type:Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .param p1, "tagNumber"    # I
    .param p2, "type"    # Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Constructed;-><init>(I)V

    #@3
    .line 46
    iput-object p2, p0, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    .line 44
    return-void
.end method


# virtual methods
.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    check-cast p1, Ljava/util/Collection;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    return-object p1
.end method
