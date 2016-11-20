.class Ljava/net/URLClassLoader$2;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/URLClassLoader;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljava/net/URLClassLoader;
    .param p2, "val$name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 547
    iput-object p1, p0, Ljava/net/URLClassLoader$2;->this$0:Ljava/net/URLClassLoader;

    #@2
    iput-object p2, p0, Ljava/net/URLClassLoader$2;->val$name:Ljava/lang/String;

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
    .line 548
    invoke-virtual {p0}, Ljava/net/URLClassLoader$2;->run()Ljava/net/URL;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/net/URL;
    .locals 3

    #@0
    .prologue
    .line 549
    iget-object v0, p0, Ljava/net/URLClassLoader$2;->this$0:Ljava/net/URLClassLoader;

    #@2
    invoke-static {v0}, Ljava/net/URLClassLoader;->-get1(Ljava/net/URLClassLoader;)Lsun/misc/URLClassPath;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/net/URLClassLoader$2;->val$name:Ljava/lang/String;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v0, v1, v2}, Lsun/misc/URLClassPath;->findResource(Ljava/lang/String;Z)Ljava/net/URL;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method
