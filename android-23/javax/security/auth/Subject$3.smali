.class final Ljavax/security/auth/Subject$3;
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
        "Ljava/security/DomainCombiner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Ljava/security/AccessControlContext;


# direct methods
.method constructor <init>(Ljava/security/AccessControlContext;)V
    .locals 0
    .param p1, "val$context"    # Ljava/security/AccessControlContext;

    #@0
    .prologue
    .line 476
    iput-object p1, p0, Ljavax/security/auth/Subject$3;->val$context:Ljava/security/AccessControlContext;

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
    .line 477
    invoke-virtual {p0}, Ljavax/security/auth/Subject$3;->run()Ljava/security/DomainCombiner;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/security/DomainCombiner;
    .locals 1

    #@0
    .prologue
    .line 478
    iget-object v0, p0, Ljavax/security/auth/Subject$3;->val$context:Ljava/security/AccessControlContext;

    #@2
    invoke-virtual {v0}, Ljava/security/AccessControlContext;->getDomainCombiner()Ljava/security/DomainCombiner;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
