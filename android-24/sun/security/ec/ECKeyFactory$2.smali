.class final Lsun/security/ec/ECKeyFactory$2;
.super Ljava/lang/Object;
.source "ECKeyFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ec/ECKeyFactory;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$p:Ljava/security/Provider;


# direct methods
.method constructor <init>(Ljava/security/Provider;)V
    .locals 0
    .param p1, "val$p"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 66
    iput-object p1, p0, Lsun/security/ec/ECKeyFactory$2;->val$p:Ljava/security/Provider;

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
    .line 67
    invoke-virtual {p0}, Lsun/security/ec/ECKeyFactory$2;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lsun/security/ec/ECKeyFactory$2;->val$p:Ljava/security/Provider;

    #@2
    const-string/jumbo v1, "KeyFactory.EC"

    #@5
    const-class v2, Lsun/security/ec/ECKeyFactory;

    #@7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 72
    iget-object v0, p0, Lsun/security/ec/ECKeyFactory$2;->val$p:Ljava/security/Provider;

    #@10
    const-string/jumbo v1, "AlgorithmParameters.EC"

    #@13
    const-class v2, Lsun/security/ec/ECParameters;

    #@15
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 73
    iget-object v0, p0, Lsun/security/ec/ECKeyFactory$2;->val$p:Ljava/security/Provider;

    #@1e
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters.1.2.840.10045.2.1"

    #@21
    const-string/jumbo v2, "EC"

    #@24
    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 74
    const/4 v0, 0x0

    #@28
    return-object v0
.end method
