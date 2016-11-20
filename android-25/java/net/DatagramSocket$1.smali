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
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Ljava/net/DatagramSocket;)V
    .locals 0
    .param p1, "this$0"    # Ljava/net/DatagramSocket;

    #@0
    .prologue
    .line 305
    iput-object p1, p0, Ljava/net/DatagramSocket$1;->this$0:Ljava/net/DatagramSocket;

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
    .line 306
    invoke-virtual {p0}, Ljava/net/DatagramSocket$1;->run()Ljava/lang/Void;

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
    .line 307
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [Ljava/lang/Class;

    #@3
    .line 308
    .local v0, "cl":[Ljava/lang/Class;
    const-class v1, Ljava/net/DatagramPacket;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    .line 309
    iget-object v1, p0, Ljava/net/DatagramSocket$1;->this$0:Ljava/net/DatagramSocket;

    #@a
    iget-object v1, v1, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@c
    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "peekData"

    #@13
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@16
    .line 310
    const/4 v1, 0x0

    #@17
    return-object v1
.end method
