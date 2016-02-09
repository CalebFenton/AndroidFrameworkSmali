.class public final Lorg/apache/harmony/security/x509/InfoAccessSyntax;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "InfoAccessSyntax.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/InfoAccessSyntax$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final accessDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/InfoAccessSyntax;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 101
    new-instance v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax$1;

    #@2
    sget-object v1, Lorg/apache/harmony/security/x509/AccessDescription;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@4
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/InfoAccessSyntax$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@7
    sput-object v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@9
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/util/List;[B)V
    .locals 2
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    .local p1, "accessDescriptions":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    #@3
    .line 51
    if-eqz p1, :cond_0

    #@5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 52
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@d
    const-string/jumbo v1, "AccessDescriptions list is null or empty"

    #@10
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 54
    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    #@16
    .line 55
    iput-object p2, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->encoding:[B

    #@18
    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/InfoAccessSyntax;)V
    .locals 0
    .param p1, "accessDescriptions"    # Ljava/util/List;
    .param p2, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;-><init>(Ljava/util/List;[B)V

    #@3
    return-void
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/InfoAccessSyntax;
    .locals 1
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    sget-object v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    #@8
    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v2

    #@4
    const-string/jumbo v3, "AccessDescriptions:\n"

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 87
    iget-object v2, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    #@c
    if-eqz v2, :cond_0

    #@e
    iget-object v2, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    #@10
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 88
    :cond_0
    const-string/jumbo v2, "NULL\n"

    #@19
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 85
    :cond_1
    return-void

    #@1d
    .line 90
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    #@1f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v1

    #@23
    .local v1, "accessDescription$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_1

    #@29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    .line 91
    .local v0, "accessDescription":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 63
    sget-object v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->encoding:[B

    #@c
    .line 65
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->encoding:[B

    #@e
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 74
    .local v2, "res":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\n---- InfoAccessSyntax:"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 75
    iget-object v3, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 76
    iget-object v3, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "accessDescription$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    .line 77
    .local v0, "accessDescription":Ljava/lang/Object;
    const/16 v3, 0xa

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    goto :goto_0

    #@28
    .line 81
    .end local v0    # "accessDescription":Ljava/lang/Object;
    .end local v1    # "accessDescription$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, "\n---- InfoAccessSyntax END\n"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    return-object v3
.end method
