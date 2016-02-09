.class Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;
.super Ljava/lang/Object;
.source "TBSCertList.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RevokedCertificatesEnumeration"
.end annotation


# instance fields
.field private final en:Ljava/util/Enumeration;

.field final synthetic this$0:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;Ljava/util/Enumeration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
    .param p2, "en"    # Ljava/util/Enumeration;

    #@0
    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->this$0:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 111
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    #@7
    .line 109
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    #@2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    #@2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
