.class final Ljava/net/URLClassLoader$6;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->newInstance([Ljava/net/URL;)Ljava/net/URLClassLoader;
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
        "Ljava/net/URLClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$acc:Ljava/security/AccessControlContext;

.field final synthetic val$urls:[Ljava/net/URL;


# direct methods
.method constructor <init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V
    .locals 0
    .param p1, "val$urls"    # [Ljava/net/URL;
    .param p2, "val$acc"    # Ljava/security/AccessControlContext;

    #@0
    .prologue
    .line 740
    iput-object p1, p0, Ljava/net/URLClassLoader$6;->val$urls:[Ljava/net/URL;

    #@2
    iput-object p2, p0, Ljava/net/URLClassLoader$6;->val$acc:Ljava/security/AccessControlContext;

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
    .line 741
    invoke-virtual {p0}, Ljava/net/URLClassLoader$6;->run()Ljava/net/URLClassLoader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/net/URLClassLoader;
    .locals 3

    #@0
    .prologue
    .line 742
    new-instance v0, Ljava/net/FactoryURLClassLoader;

    #@2
    iget-object v1, p0, Ljava/net/URLClassLoader$6;->val$urls:[Ljava/net/URL;

    #@4
    iget-object v2, p0, Ljava/net/URLClassLoader$6;->val$acc:Ljava/security/AccessControlContext;

    #@6
    invoke-direct {v0, v1, v2}, Ljava/net/FactoryURLClassLoader;-><init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V

    #@9
    return-object v0
.end method
