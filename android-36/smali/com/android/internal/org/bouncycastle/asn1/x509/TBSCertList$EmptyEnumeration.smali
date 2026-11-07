.class Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;
.super Ljava/lang/Object;
.source "TBSCertList.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyEnumeration"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .registers 3

    .line 141
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Empty Enumeration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
