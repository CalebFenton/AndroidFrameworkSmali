.class Ljava/net/DefaultDatagramSocketImplFactory;
.super Ljava/lang/Object;
.source "DefaultDatagramSocketImplFactory.java"


# static fields
.field static blacklist prefixImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 38
    const/4 v0, 0x0

    sput-object v0, Ljava/net/DefaultDatagramSocketImplFactory;->prefixImplClass:Ljava/lang/Class;

    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, "prefix":Ljava/lang/String;
    :try_start_4
    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string v3, "impl.prefix"

    invoke-direct {v2, v3, v0}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 45
    if-eqz v1, :cond_33

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.net."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "DatagramSocketImpl"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/net/DefaultDatagramSocketImplFactory;->prefixImplClass:Ljava/lang/Class;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_33} :catch_34

    .line 52
    :cond_33
    goto :goto_53

    .line 47
    :catch_34
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find class: java.net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DatagramSocketImpl: check impl.prefix property"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "prefix":Ljava/lang/String;
    :goto_53
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist createDatagramSocketImpl(Z)Ljava/net/DatagramSocketImpl;
    .registers 4
    .param p0, "isMulticast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 63
    sget-object v0, Ljava/net/DefaultDatagramSocketImplFactory;->prefixImplClass:Ljava/lang/Class;

    if-eqz v0, :cond_16

    .line 65
    :try_start_4
    sget-object v0, Ljava/net/DefaultDatagramSocketImplFactory;->prefixImplClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/DatagramSocketImpl;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    .line 66
    :catch_d
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "can\'t instantiate DatagramSocketImpl"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_16
    new-instance v0, Ljava/net/PlainDatagramSocketImpl;

    invoke-direct {v0}, Ljava/net/PlainDatagramSocketImpl;-><init>()V

    return-object v0
.end method
