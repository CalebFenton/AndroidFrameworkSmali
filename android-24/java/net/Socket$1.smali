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
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .locals 0
    .param p1, "this$0"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 465
    iput-object p1, p0, Ljava/net/Socket$1;->this$0:Ljava/net/Socket;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 5

    #@0
    .prologue
    .line 467
    const/4 v3, 0x2

    #@1
    new-array v0, v3, [Ljava/lang/Class;

    #@3
    .line 468
    .local v0, "cl":[Ljava/lang/Class;
    const-class v3, Ljava/net/SocketAddress;

    #@5
    const/4 v4, 0x0

    #@6
    aput-object v3, v0, v4

    #@8
    .line 469
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@a
    const/4 v4, 0x1

    #@b
    aput-object v3, v0, v4

    #@d
    .line 470
    iget-object v3, p0, Ljava/net/Socket$1;->this$0:Ljava/net/Socket;

    #@f
    iget-object v3, v3, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@11
    invoke-virtual {v3}, Ljava/net/SocketImpl;->getClass()Ljava/lang/Class;

    #@14
    move-result-object v1

    #@15
    .line 473
    .local v1, "clazz":Ljava/lang/Class;
    :cond_0
    :try_start_0
    const-string/jumbo v3, "connect"

    #@18
    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1b
    .line 474
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    return-object v3

    #@1e
    .line 475
    :catch_0
    move-exception v2

    #@1f
    .line 476
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@22
    move-result-object v1

    #@23
    .line 480
    const-class v3, Ljava/net/SocketImpl;

    #@25
    invoke-virtual {v1, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_0

    #@2b
    .line 481
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@2d
    return-object v3
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 466
    invoke-virtual {p0}, Ljava/net/Socket$1;->run()Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
