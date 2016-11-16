.class final Ljavax/security/auth/Subject$2;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;
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
        "Ljava/security/AccessControlContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$acc:Ljava/security/AccessControlContext;

.field final synthetic val$subject:Ljavax/security/auth/Subject;


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)V
    .locals 0
    .param p1, "val$subject"    # Ljavax/security/auth/Subject;
    .param p2, "val$acc"    # Ljava/security/AccessControlContext;

    #@0
    .prologue
    .line 546
    iput-object p1, p0, Ljavax/security/auth/Subject$2;->val$subject:Ljavax/security/auth/Subject;

    #@2
    iput-object p2, p0, Ljavax/security/auth/Subject$2;->val$acc:Ljava/security/AccessControlContext;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 547
    invoke-virtual {p0}, Ljavax/security/auth/Subject$2;->run()Ljava/security/AccessControlContext;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/security/AccessControlContext;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 548
    iget-object v0, p0, Ljavax/security/auth/Subject$2;->val$subject:Ljavax/security/auth/Subject;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 549
    new-instance v0, Ljava/security/AccessControlContext;

    #@7
    iget-object v1, p0, Ljavax/security/auth/Subject$2;->val$acc:Ljava/security/AccessControlContext;

    #@9
    invoke-direct {v0, v1, v2}, Ljava/security/AccessControlContext;-><init>(Ljava/security/AccessControlContext;Ljava/security/DomainCombiner;)V

    #@c
    return-object v0

    #@d
    .line 551
    :cond_0
    new-instance v0, Ljava/security/AccessControlContext;

    #@f
    .line 552
    iget-object v1, p0, Ljavax/security/auth/Subject$2;->val$acc:Ljava/security/AccessControlContext;

    #@11
    .line 553
    new-instance v2, Ljavax/security/auth/SubjectDomainCombiner;

    #@13
    iget-object v3, p0, Ljavax/security/auth/Subject$2;->val$subject:Ljavax/security/auth/Subject;

    #@15
    invoke-direct {v2, v3}, Ljavax/security/auth/SubjectDomainCombiner;-><init>(Ljavax/security/auth/Subject;)V

    #@18
    .line 551
    invoke-direct {v0, v1, v2}, Ljava/security/AccessControlContext;-><init>(Ljava/security/AccessControlContext;Ljava/security/DomainCombiner;)V

    #@1b
    return-object v0
.end method
