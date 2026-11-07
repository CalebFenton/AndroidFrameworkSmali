.class public Lsun/security/provider/certpath/SunCertPathBuilderException;
.super Ljava/security/cert/CertPathBuilderException;
.source "SunCertPathBuilderException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x6c71ede928a01845L


# instance fields
.field private transient blacklist adjList:Lsun/security/provider/certpath/AdjacencyList;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderException;-><init>()V

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;Lsun/security/provider/certpath/AdjacencyList;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "adjList"    # Lsun/security/provider/certpath/AdjacencyList;

    .line 119
    invoke-direct {p0, p1, p2}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    iput-object p3, p0, Lsun/security/provider/certpath/SunCertPathBuilderException;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    .line 121
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Lsun/security/provider/certpath/AdjacencyList;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "adjList"    # Lsun/security/provider/certpath/AdjacencyList;

    .line 104
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;)V

    .line 105
    iput-object p2, p0, Lsun/security/provider/certpath/SunCertPathBuilderException;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 82
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method


# virtual methods
.method public blacklist getAdjacencyList()Lsun/security/provider/certpath/AdjacencyList;
    .registers 2

    .line 129
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilderException;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    return-object v0
.end method
