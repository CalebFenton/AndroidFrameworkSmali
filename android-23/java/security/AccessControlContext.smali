.class public final Ljava/security/AccessControlContext;
.super Ljava/lang/Object;
.source "AccessControlContext.java"


# direct methods
.method public constructor <init>(Ljava/security/AccessControlContext;Ljava/security/DomainCombiner;)V
    .locals 0
    .param p1, "acc"    # Ljava/security/AccessControlContext;
    .param p2, "combiner"    # Ljava/security/DomainCombiner;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>([Ljava/security/ProtectionDomain;)V
    .locals 0
    .param p1, "context"    # [Ljava/security/ProtectionDomain;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/security/Permission;)V
    .locals 0
    .param p1, "perm"    # Ljava/security/Permission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/AccessControlException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    return-void
.end method

.method public getDomainCombiner()Ljava/security/DomainCombiner;
    .locals 1

    #@0
    .prologue
    .line 46
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
