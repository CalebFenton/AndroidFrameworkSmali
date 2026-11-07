.class Ljava/net/Socket$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/Socket;->checkOldImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/net/Socket;


# direct methods
.method constructor blacklist <init>(Ljava/net/Socket;)V
    .registers 2
    .param p1, "this$0"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 528
    iput-object p1, p0, Ljava/net/Socket$1;->this$0:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/lang/Boolean;
    .registers 6

    .line 530
    iget-object v0, p0, Ljava/net/Socket$1;->this$0:Ljava/net/Socket;

    iget-object v0, v0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 533
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    :try_start_8
    const-string v1, "connect"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/net/SocketAddress;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 534
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1c} :catch_1d

    return-object v1

    .line 535
    :catch_1d
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 540
    const-class v2, Ljava/net/SocketImpl;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 541
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2

    .line 543
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2d
    goto :goto_8
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 528
    invoke-virtual {p0}, Ljava/net/Socket$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
