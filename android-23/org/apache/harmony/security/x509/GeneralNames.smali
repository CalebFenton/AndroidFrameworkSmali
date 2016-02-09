.class public final Lorg/apache/harmony/security/x509/GeneralNames;
.super Ljava/lang/Object;
.source "GeneralNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/GeneralNames$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private generalNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/GeneralNames;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 135
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralNames$1;

    #@2
    sget-object v1, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@4
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralNames$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@7
    sput-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@9
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    #@a
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    .local p1, "generalNames":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    #@5
    .line 59
    return-void
.end method

.method private constructor <init>(Ljava/util/List;[B)V
    .locals 0
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;[B)V"
        }
    .end annotation

    #@0
    .prologue
    .line 63
    .local p1, "generalNames":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    #@5
    .line 65
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    #@7
    .line 63
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/GeneralNames;)V
    .locals 0
    .param p1, "generalNames"    # Ljava/util/List;
    .param p2, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralNames;-><init>(Ljava/util/List;[B)V

    #@3
    return-void
.end method


# virtual methods
.method public addName(Lorg/apache/harmony/security/x509/GeneralName;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/harmony/security/x509/GeneralName;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 104
    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    #@3
    .line 105
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    #@e
    .line 108
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 103
    return-void
.end method

.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 122
    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 123
    return-void

    #@5
    .line 125
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "generalName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@17
    .line 126
    .local v0, "generalName":Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    .line 128
    const/16 v2, 0xa

    #@1f
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    goto :goto_0

    #@23
    .line 121
    .end local v0    # "generalName":Lorg/apache/harmony/security/x509/GeneralName;
    :cond_1
    return-void
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 116
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    #@c
    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    #@e
    return-object v0
.end method

.method public getNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 73
    :cond_0
    return-object v1

    #@e
    .line 75
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    #@10
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    #@12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@15
    return-object v0
.end method

.method public getPairsList()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 82
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 83
    .local v4, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    iget-object v5, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    #@7
    if-nez v5, :cond_0

    #@9
    .line 84
    return-object v4

    #@a
    .line 86
    :cond_0
    iget-object v5, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    #@c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .local v2, "generalName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_1

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lorg/apache/harmony/security/x509/GeneralName;

    #@1c
    .line 93
    .local v1, "generalName":Lorg/apache/harmony/security/x509/GeneralName;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralName;->getAsList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v0

    #@20
    .line 98
    .local v0, "genNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_0

    #@24
    .line 94
    .end local v0    # "genNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v3

    #@25
    .local v3, "ignored":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@26
    .line 100
    .end local v1    # "generalName":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v3    # "ignored":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v4
.end method
