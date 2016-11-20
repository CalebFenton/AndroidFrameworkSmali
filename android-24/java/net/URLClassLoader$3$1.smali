.class Ljava/net/URLClassLoader$3$1;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader$3;->next()Z
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
.field final synthetic this$1:Ljava/net/URLClassLoader$3;

.field final synthetic val$e:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Ljava/net/URLClassLoader$3;Ljava/util/Enumeration;)V
    .locals 0
    .param p1, "this$1"    # Ljava/net/URLClassLoader$3;

    #@0
    .prologue
    .line 579
    .local p2, "val$e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    iput-object p1, p0, Ljava/net/URLClassLoader$3$1;->this$1:Ljava/net/URLClassLoader$3;

    #@2
    iput-object p2, p0, Ljava/net/URLClassLoader$3$1;->val$e:Ljava/util/Enumeration;

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
    .line 580
    invoke-virtual {p0}, Ljava/net/URLClassLoader$3$1;->run()Ljava/net/URL;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 581
    iget-object v0, p0, Ljava/net/URLClassLoader$3$1;->val$e:Ljava/util/Enumeration;

    #@2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 582
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 583
    :cond_0
    iget-object v0, p0, Ljava/net/URLClassLoader$3$1;->val$e:Ljava/util/Enumeration;

    #@c
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/net/URL;

    #@12
    return-object v0
.end method
