.class public Ljavax/security/auth/SubjectDomainCombiner;
.super Ljava/lang/Object;
.source "SubjectDomainCombiner.java"

# interfaces
.implements Ljava/security/DomainCombiner;


# direct methods
.method public constructor <init>(Ljavax/security/auth/Subject;)V
    .locals 0
    .param p1, "subject"    # Ljavax/security/auth/Subject;

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public combine([Ljava/security/ProtectionDomain;[Ljava/security/ProtectionDomain;)[Ljava/security/ProtectionDomain;
    .locals 1
    .param p1, "currentDomains"    # [Ljava/security/ProtectionDomain;
    .param p2, "assignedDomains"    # [Ljava/security/ProtectionDomain;

    #@0
    .prologue
    .line 31
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSubject()Ljavax/security/auth/Subject;
    .locals 1

    #@0
    .prologue
    .line 29
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
