.class public Lsun/security/x509/OCSPNoCheckExtension;
.super Lsun/security/x509/Extension;
.source "OCSPNoCheckExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.OCSPNoCheck"

.field public static final NAME:Ljava/lang/String; = "OCSPNoCheck"


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 71
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@4
    .line 72
    sget-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    #@6
    iput-object v0, p0, Lsun/security/x509/OCSPNoCheckExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@8
    .line 73
    iput-boolean v1, p0, Lsun/security/x509/OCSPNoCheckExtension;->critical:Z

    #@a
    .line 74
    new-array v0, v1, [B

    #@c
    iput-object v0, p0, Lsun/security/x509/OCSPNoCheckExtension;->extensionValue:[B

    #@e
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 1
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 87
    sget-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v0, p0, Lsun/security/x509/OCSPNoCheckExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 88
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@a
    move-result v0

    #@b
    iput-boolean v0, p0, Lsun/security/x509/OCSPNoCheckExtension;->critical:Z

    #@d
    .line 91
    const/4 v0, 0x0

    #@e
    new-array v0, v0, [B

    #@10
    iput-object v0, p0, Lsun/security/x509/OCSPNoCheckExtension;->extensionValue:[B

    #@12
    .line 85
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "No attribute is allowed by CertAttrSet:OCSPNoCheckExtension."

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "No attribute is allowed by CertAttrSet:OCSPNoCheckExtension."

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 123
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 130
    const-string/jumbo v0, "OCSPNoCheck"

    #@3
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "No attribute is allowed by CertAttrSet:OCSPNoCheckExtension."

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
