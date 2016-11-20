.class Ljava/net/ServerSocket$1;
.super Ljava/lang/Object;
.source "ServerSocket.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/ServerSocket;->checkOldImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/ServerSocket;


# direct methods
.method constructor <init>(Ljava/net/ServerSocket;)V
    .locals 0
    .param p1, "this$0"    # Ljava/net/ServerSocket;

    #@0
    .prologue
    .line 269
    iput-object p1, p0, Ljava/net/ServerSocket$1;->this$0:Ljava/net/ServerSocket;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 270
    invoke-virtual {p0}, Ljava/net/ServerSocket$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .prologue
    .line 271
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [Ljava/lang/Class;

    #@3
    .line 272
    .local v0, "cl":[Ljava/lang/Class;
    const-class v1, Ljava/net/SocketAddress;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    .line 273
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    .line 274
    iget-object v1, p0, Ljava/net/ServerSocket$1;->this$0:Ljava/net/ServerSocket;

    #@f
    invoke-static {v1}, Ljava/net/ServerSocket;->-get0(Ljava/net/ServerSocket;)Ljava/net/SocketImpl;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "connect"

    #@1a
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1d
    .line 275
    const/4 v1, 0x0

    #@1e
    return-object v1
.end method
