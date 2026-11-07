.class public Lsun/security/provider/certpath/SunCertPathBuilderResult;
.super Ljava/security/cert/PKIXCertPathBuilderResult;
.source "SunCertPathBuilderResult.java"


# static fields
.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private blacklist adjList:Lsun/security/provider/certpath/AdjacencyList;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/SunCertPathBuilderResult;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor blacklist <init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;Lsun/security/provider/certpath/AdjacencyList;)V
    .registers 6
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "trustAnchor"    # Ljava/security/cert/TrustAnchor;
    .param p3, "policyTree"    # Ljava/security/cert/PolicyNode;
    .param p4, "subjectPublicKey"    # Ljava/security/PublicKey;
    .param p5, "adjList"    # Lsun/security/provider/certpath/AdjacencyList;

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    .line 72
    iput-object p5, p0, Lsun/security/provider/certpath/SunCertPathBuilderResult;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    .line 73
    return-void
.end method


# virtual methods
.method public blacklist getAdjacencyList()Lsun/security/provider/certpath/AdjacencyList;
    .registers 2

    .line 81
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilderResult;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    return-object v0
.end method
