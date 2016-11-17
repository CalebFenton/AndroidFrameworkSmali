.class public Lsun/security/provider/certpath/SunCertPathBuilderException;
.super Ljava/security/cert/CertPathBuilderException;
.source "SunCertPathBuilderException.java"


# static fields
.field private static final serialVersionUID:J = -0x6c71ede928a01845L


# instance fields
.field private transient adjList:Lsun/security/provider/certpath/AdjacencyList;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderException;-><init>()V

    #@3
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    #@3
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 92
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lsun/security/provider/certpath/AdjacencyList;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "adjList"    # Lsun/security/provider/certpath/AdjacencyList;

    #@0
    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 120
    iput-object p3, p0, Lsun/security/provider/certpath/SunCertPathBuilderException;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    #@5
    .line 117
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lsun/security/provider/certpath/AdjacencyList;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "adjList"    # Lsun/security/provider/certpath/AdjacencyList;

    #@0
    .prologue
    .line 104
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;)V

    #@3
    .line 105
    iput-object p2, p0, Lsun/security/provider/certpath/SunCertPathBuilderException;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    #@5
    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 82
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 81
    return-void
.end method


# virtual methods
.method public getAdjacencyList()Lsun/security/provider/certpath/AdjacencyList;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilderException;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    #@2
    return-object v0
.end method
