.class Ljavax/security/auth/Subject$1;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject;->getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljavax/security/auth/Subject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$acc:Ljava/security/AccessControlContext;


# direct methods
.method constructor blacklist <init>(Ljava/security/AccessControlContext;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Ljavax/security/auth/Subject$1;->val$acc:Ljava/security/AccessControlContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 297
    invoke-virtual {p0}, Ljavax/security/auth/Subject$1;->run()Ljavax/security/auth/Subject;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljavax/security/auth/Subject;
    .registers 4

    .line 299
    iget-object v0, p0, Ljavax/security/auth/Subject$1;->val$acc:Ljava/security/AccessControlContext;

    invoke-virtual {v0}, Ljava/security/AccessControlContext;->getDomainCombiner()Ljava/security/DomainCombiner;

    move-result-object v0

    .line 300
    .local v0, "dc":Ljava/security/DomainCombiner;
    instance-of v1, v0, Ljavax/security/auth/SubjectDomainCombiner;

    if-nez v1, :cond_c

    .line 301
    const/4 v1, 0x0

    return-object v1

    .line 302
    :cond_c
    move-object v1, v0

    check-cast v1, Ljavax/security/auth/SubjectDomainCombiner;

    .line 303
    .local v1, "sdc":Ljavax/security/auth/SubjectDomainCombiner;
    invoke-virtual {v1}, Ljavax/security/auth/SubjectDomainCombiner;->getSubject()Ljavax/security/auth/Subject;

    move-result-object v2

    return-object v2
.end method
