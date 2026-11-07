.class Lsun/nio/ch/SocketAdaptor$1;
.super Ljava/lang/Object;
.source "SocketAdaptor.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/SocketAdaptor;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/nio/ch/SocketAdaptor;


# direct methods
.method constructor blacklist <init>(Lsun/nio/ch/SocketAdaptor;)V
    .registers 2
    .param p1, "this$0"    # Lsun/nio/ch/SocketAdaptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lsun/nio/ch/SocketAdaptor$1;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    new-instance v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;

    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor$1;->this$0:Lsun/nio/ch/SocketAdaptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/nio/ch/SocketAdaptor$SocketInputStream;-><init>(Lsun/nio/ch/SocketAdaptor;Lsun/nio/ch/SocketAdaptor-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor$1;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
