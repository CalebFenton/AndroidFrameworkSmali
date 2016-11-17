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
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/SocketAdaptor;


# direct methods
.method constructor <init>(Lsun/nio/ch/SocketAdaptor;)V
    .locals 0
    .param p1, "this$0"    # Lsun/nio/ch/SocketAdaptor;

    #@0
    .prologue
    .line 275
    iput-object p1, p0, Lsun/nio/ch/SocketAdaptor$1;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    new-instance v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;

    #@2
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor$1;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lsun/nio/ch/SocketAdaptor$SocketInputStream;-><init>(Lsun/nio/ch/SocketAdaptor;Lsun/nio/ch/SocketAdaptor$SocketInputStream;)V

    #@8
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 276
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor$1;->run()Ljava/io/InputStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
