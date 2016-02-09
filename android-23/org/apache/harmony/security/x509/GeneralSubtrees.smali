.class public final Lorg/apache/harmony/security/x509/GeneralSubtrees;
.super Ljava/lang/Object;
.source "GeneralSubtrees.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/GeneralSubtrees$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private generalSubtrees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/GeneralSubtrees;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 78
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralSubtrees$1;

    #@2
    sget-object v1, Lorg/apache/harmony/security/x509/GeneralSubtree;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@4
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralSubtrees$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@7
    sput-object v0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@9
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralSubtree;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 53
    .local p1, "generalSubtrees":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralSubtree;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    #@5
    .line 53
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 70
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    #@c
    .line 72
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    #@e
    return-object v0
.end method

.method public getSubtrees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    #@2
    return-object v0
.end method
