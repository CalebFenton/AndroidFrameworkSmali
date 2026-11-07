.class public Lsun/security/x509/OCSPNoCheckExtension;
.super Lsun/security/x509/Extension;
.source "OCSPNoCheckExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.extensions.OCSPNoCheck"

.field public static final blacklist NAME:Ljava/lang/String; = "OCSPNoCheck"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 72
    sget-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/OCSPNoCheckExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/OCSPNoCheckExtension;->critical:Z

    .line 74
    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/x509/OCSPNoCheckExtension;->extensionValue:[B

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 4
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 87
    sget-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/OCSPNoCheckExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/OCSPNoCheckExtension;->critical:Z

    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/x509/OCSPNoCheckExtension;->extensionValue:[B

    .line 92
    return-void
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No attribute is allowed by CertAttrSet:OCSPNoCheckExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No attribute is allowed by CertAttrSet:OCSPNoCheckExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getElements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 130
    const-string v0, "OCSPNoCheck"

    return-object v0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No attribute is allowed by CertAttrSet:OCSPNoCheckExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
