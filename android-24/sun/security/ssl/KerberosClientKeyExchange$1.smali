.class final Lsun/security/ssl/KerberosClientKeyExchange$1;
.super Ljava/lang/Object;
.source "KerberosClientKeyExchange.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/KerberosClientKeyExchange;
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
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 49
    :try_start_0
    const-string/jumbo v1, "sun.security.ssl.krb5.KerberosClientKeyExchangeImpl"

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 50
    :catch_0
    move-exception v0

    #@c
    .line 51
    .local v0, "cnf":Ljava/lang/ClassNotFoundException;
    return-object v4
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-virtual {p0}, Lsun/security/ssl/KerberosClientKeyExchange$1;->run()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
