.class Ljava/net/DatagramSocket$1;
.super Ljava/lang/Object;
.source "DatagramSocket.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/DatagramSocket;->checkOldImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/net/DatagramSocket;


# direct methods
.method constructor blacklist <init>(Ljava/net/DatagramSocket;)V
    .registers 2
    .param p1, "this$0"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 331
    iput-object p1, p0, Ljava/net/DatagramSocket$1;->this$0:Ljava/net/DatagramSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Ljava/net/DatagramSocket$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 333
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 334
    .local v0, "cl":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    const-class v2, Ljava/net/DatagramPacket;

    aput-object v2, v0, v1

    .line 335
    iget-object v1, p0, Ljava/net/DatagramSocket$1;->this$0:Ljava/net/DatagramSocket;

    iget-object v1, v1, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "peekData"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 336
    const/4 v1, 0x0

    return-object v1
.end method
