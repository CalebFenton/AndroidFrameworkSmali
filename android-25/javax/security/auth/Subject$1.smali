.class final Ljavax/security/auth/Subject$1;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject;->getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljavax/security/auth/Subject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$acc:Ljava/security/AccessControlContext;


# direct methods
.method constructor <init>(Ljava/security/AccessControlContext;)V
    .locals 0
    .param p1, "val$acc"    # Ljava/security/AccessControlContext;

    #@0
    .prologue
    .line 297
    iput-object p1, p0, Ljavax/security/auth/Subject$1;->val$acc:Ljava/security/AccessControlContext;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 298
    invoke-virtual {p0}, Ljavax/security/auth/Subject$1;->run()Ljavax/security/auth/Subject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljavax/security/auth/Subject;
    .locals 3

    #@0
    .prologue
    .line 299
    iget-object v2, p0, Ljavax/security/auth/Subject$1;->val$acc:Ljava/security/AccessControlContext;

    #@2
    invoke-virtual {v2}, Ljava/security/AccessControlContext;->getDomainCombiner()Ljava/security/DomainCombiner;

    #@5
    move-result-object v0

    #@6
    .line 300
    .local v0, "dc":Ljava/security/DomainCombiner;
    instance-of v2, v0, Ljavax/security/auth/SubjectDomainCombiner;

    #@8
    if-nez v2, :cond_0

    #@a
    .line 301
    const/4 v2, 0x0

    #@b
    return-object v2

    #@c
    :cond_0
    move-object v1, v0

    #@d
    .line 302
    nop

    #@e
    nop

    #@f
    .line 303
    .local v1, "sdc":Ljavax/security/auth/SubjectDomainCombiner;
    invoke-virtual {v1}, Ljavax/security/auth/SubjectDomainCombiner;->getSubject()Ljavax/security/auth/Subject;

    #@12
    move-result-object v2

    #@13
    return-object v2
.end method
