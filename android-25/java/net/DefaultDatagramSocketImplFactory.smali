.class Ljava/net/DefaultDatagramSocketImplFactory;
.super Ljava/lang/Object;
.source "DefaultDatagramSocketImplFactory.java"


# static fields
.field static prefixImplClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 38
    sput-object v3, Ljava/net/DefaultDatagramSocketImplFactory;->prefixImplClass:Ljava/lang/Class;

    #@3
    .line 41
    const/4 v2, 0x0

    #@4
    .line 44
    .local v2, "prefix":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lsun/security/action/GetPropertyAction;

    #@6
    const-string/jumbo v4, "impl.prefix"

    #@9
    const/4 v5, 0x0

    #@a
    invoke-direct {v3, v4, v5}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 43
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    move-object v0, v3

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    move-object v2, v0

    #@15
    .line 45
    .local v2, "prefix":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@17
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "java.net."

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, "DatagramSocketImpl"

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@35
    move-result-object v3

    #@36
    sput-object v3, Ljava/net/DefaultDatagramSocketImplFactory;->prefixImplClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 37
    :cond_0
    :goto_0
    return-void

    #@39
    .line 47
    :catch_0
    move-exception v1

    #@3a
    .line 48
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3c
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "Can\'t find class: java.net."

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    .line 50
    const-string/jumbo v5, "DatagramSocketImpl: check impl.prefix property"

    #@4f
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5a
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static createDatagramSocketImpl(Z)Ljava/net/DatagramSocketImpl;
    .locals 3
    .param p0, "isMulticast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    sget-object v1, Ljava/net/DefaultDatagramSocketImplFactory;->prefixImplClass:Ljava/lang/Class;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 65
    :try_start_0
    sget-object v1, Ljava/net/DefaultDatagramSocketImplFactory;->prefixImplClass:Ljava/lang/Class;

    #@6
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/net/DatagramSocketImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    return-object v1

    #@d
    .line 66
    :catch_0
    move-exception v0

    #@e
    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/net/SocketException;

    #@10
    const-string/jumbo v2, "can\'t instantiate DatagramSocketImpl"

    #@13
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    #@19
    invoke-direct {v1}, Ljava/net/PlainDatagramSocketImpl;-><init>()V

    #@1c
    return-object v1
.end method
