.class Lsun/security/x509/OIDMap$OIDInfo;
.super Ljava/lang/Object;
.source "OIDMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/x509/OIDMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OIDInfo"
.end annotation


# instance fields
.field private volatile greylist clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final blacklist name:Ljava/lang/String;

.field final blacklist oid:Lsun/security/util/ObjectIdentifier;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "oid"    # Lsun/security/util/ObjectIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 192
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lsun/security/x509/OIDMap$OIDInfo;->name:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Lsun/security/x509/OIDMap$OIDInfo;->oid:Lsun/security/util/ObjectIdentifier;

    .line 195
    iput-object p3, p0, Lsun/security/x509/OIDMap$OIDInfo;->clazz:Ljava/lang/Class;

    .line 196
    return-void
.end method


# virtual methods
.method blacklist getClazz()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lsun/security/x509/OIDMap$OIDInfo;->clazz:Ljava/lang/Class;

    return-object v0
.end method
