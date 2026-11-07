.class Ljava/net/URLClassLoader$3;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/net/URLClassLoader;

.field private blacklist url:Ljava/net/URL;

.field final synthetic blacklist val$e:Ljava/util/Enumeration;


# direct methods
.method constructor blacklist <init>(Ljava/net/URLClassLoader;Ljava/util/Enumeration;)V
    .registers 3
    .param p1, "this$0"    # Ljava/net/URLClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 592
    iput-object p1, p0, Ljava/net/URLClassLoader$3;->this$0:Ljava/net/URLClassLoader;

    iput-object p2, p0, Ljava/net/URLClassLoader$3;->val$e:Ljava/util/Enumeration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    const/4 p2, 0x0

    iput-object p2, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    return-void
.end method

.method private blacklist next()Z
    .registers 4

    .line 596
    iget-object v0, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 597
    return v1

    .line 600
    :cond_6
    new-instance v0, Ljava/net/URLClassLoader$3$1;

    invoke-direct {v0, p0}, Ljava/net/URLClassLoader$3$1;-><init>(Ljava/net/URLClassLoader$3;)V

    iget-object v2, p0, Ljava/net/URLClassLoader$3;->this$0:Ljava/net/URLClassLoader;

    invoke-static {v2}, Ljava/net/URLClassLoader;->-$$Nest$fgetacc(Ljava/net/URLClassLoader;)Ljava/security/AccessControlContext;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 608
    .local v0, "u":Ljava/net/URL;
    if-nez v0, :cond_1a

    .line 609
    goto :goto_2a

    .line 610
    :cond_1a
    iget-object v2, p0, Ljava/net/URLClassLoader$3;->this$0:Ljava/net/URLClassLoader;

    invoke-static {v2}, Ljava/net/URLClassLoader;->-$$Nest$fgetucp(Ljava/net/URLClassLoader;)Lsun/misc/URLClassPath;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsun/misc/URLClassPath;->checkURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    .line 611
    .end local v0    # "u":Ljava/net/URL;
    iget-object v0, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    if-eqz v0, :cond_6

    .line 612
    :goto_2a
    iget-object v0, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    if-eqz v0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 625
    invoke-direct {p0}, Ljava/net/URLClassLoader$3;->next()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 592
    invoke-virtual {p0}, Ljava/net/URLClassLoader$3;->nextElement()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextElement()Ljava/net/URL;
    .registers 3

    .line 616
    invoke-direct {p0}, Ljava/net/URLClassLoader$3;->next()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 619
    iget-object v0, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    .line 620
    .local v0, "u":Ljava/net/URL;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    .line 621
    return-object v0

    .line 617
    .end local v0    # "u":Ljava/net/URL;
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
