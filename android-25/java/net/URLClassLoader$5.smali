.class final Ljava/net/URLClassLoader$5;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->newInstance([Ljava/net/URL;Ljava/lang/ClassLoader;)Ljava/net/URLClassLoader;
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

.field final synthetic val$parent:Ljava/lang/ClassLoader;

.field final synthetic val$urls:[Ljava/net/URL;


# direct methods
.method constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V
    .locals 0
    .param p1, "val$urls"    # [Ljava/net/URL;
    .param p2, "val$parent"    # Ljava/lang/ClassLoader;
    .param p3, "val$acc"    # Ljava/security/AccessControlContext;

    #@0
    .prologue
    .line 716
    iput-object p1, p0, Ljava/net/URLClassLoader$5;->val$urls:[Ljava/net/URL;

    #@2
    iput-object p2, p0, Ljava/net/URLClassLoader$5;->val$parent:Ljava/lang/ClassLoader;

    #@4
    iput-object p3, p0, Ljava/net/URLClassLoader$5;->val$acc:Ljava/security/AccessControlContext;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 717
    invoke-virtual {p0}, Ljava/net/URLClassLoader$5;->run()Ljava/net/URLClassLoader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/net/URLClassLoader;
    .locals 4

    #@0
    .prologue
    .line 718
    new-instance v0, Ljava/net/FactoryURLClassLoader;

    #@2
    iget-object v1, p0, Ljava/net/URLClassLoader$5;->val$urls:[Ljava/net/URL;

    #@4
    iget-object v2, p0, Ljava/net/URLClassLoader$5;->val$parent:Ljava/lang/ClassLoader;

    #@6
    iget-object v3, p0, Ljava/net/URLClassLoader$5;->val$acc:Ljava/security/AccessControlContext;

    #@8
    invoke-direct {v0, v1, v2, v3}, Ljava/net/FactoryURLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V

    #@b
    return-object v0
.end method
