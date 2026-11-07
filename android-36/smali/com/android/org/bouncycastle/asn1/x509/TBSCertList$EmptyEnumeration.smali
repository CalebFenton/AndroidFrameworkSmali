.class Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;
.super Ljava/lang/Object;
.source "TBSCertList.java"

# interfaces
.implements Ljava/util/Enumeration;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 141
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Empty Enumeration"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
