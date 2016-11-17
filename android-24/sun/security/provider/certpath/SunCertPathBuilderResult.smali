.class public Lsun/security/provider/certpath/SunCertPathBuilderResult;
.super Ljava/security/cert/PKIXCertPathBuilderResult;
.source "SunCertPathBuilderResult.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private adjList:Lsun/security/provider/certpath/AdjacencyList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/SunCertPathBuilderResult;->debug:Lsun/security/util/Debug;

    #@9
    .line 50
    return-void
.end method

.method constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;Lsun/security/provider/certpath/AdjacencyList;)V
    .locals 0
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "trustAnchor"    # Ljava/security/cert/TrustAnchor;
    .param p3, "policyTree"    # Ljava/security/cert/PolicyNode;
    .param p4, "subjectPublicKey"    # Ljava/security/PublicKey;
    .param p5, "adjList"    # Lsun/security/provider/certpath/AdjacencyList;

    #@0
    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    #@3
    .line 72
    iput-object p5, p0, Lsun/security/provider/certpath/SunCertPathBuilderResult;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    #@5
    .line 69
    return-void
.end method


# virtual methods
.method public getAdjacencyList()Lsun/security/provider/certpath/AdjacencyList;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilderResult;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    #@2
    return-object v0
.end method
