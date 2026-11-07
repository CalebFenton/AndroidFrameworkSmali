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
        "Ljava/security/PrivilegedAction<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/net/URLClassLoader$3;


# direct methods
.method constructor blacklist <init>(Ljava/net/URLClassLoader$3;)V
    .registers 2
    .param p1, "this$1"    # Ljava/net/URLClassLoader$3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 601
    iput-object p1, p0, Ljava/net/URLClassLoader$3$1;->this$1:Ljava/net/URLClassLoader$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 601
    invoke-virtual {p0}, Ljava/net/URLClassLoader$3$1;->run()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/net/URL;
    .registers 2

    .line 603
    iget-object v0, p0, Ljava/net/URLClassLoader$3$1;->this$1:Ljava/net/URLClassLoader$3;

    iget-object v0, v0, Ljava/net/URLClassLoader$3;->val$e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_c

    .line 604
    const/4 v0, 0x0

    return-object v0

    .line 605
    :cond_c
    iget-object v0, p0, Ljava/net/URLClassLoader$3$1;->this$1:Ljava/net/URLClassLoader$3;

    iget-object v0, v0, Ljava/net/URLClassLoader$3;->val$e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    return-object v0
.end method
