.class public Ljavax/security/auth/SubjectDomainCombiner;
.super Ljava/lang/Object;
.source "SubjectDomainCombiner.java"

# interfaces
.implements Ljava/security/DomainCombiner;


# direct methods
.method public constructor whitelist test-api <init>(Ljavax/security/auth/Subject;)V
    .registers 2
    .param p1, "subject"    # Ljavax/security/auth/Subject;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api combine([Ljava/security/ProtectionDomain;[Ljava/security/ProtectionDomain;)[Ljava/security/ProtectionDomain;
    .registers 4
    .param p1, "currentDomains"    # [Ljava/security/ProtectionDomain;
    .param p2, "assignedDomains"    # [Ljava/security/ProtectionDomain;

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getSubject()Ljavax/security/auth/Subject;
    .registers 2

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method
