.class Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$SocketFd;
.super Ljava/net/Socket;
.source "AndroidNetworkLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketFd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$SocketFd$SocketImplFd;
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    new-instance v0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$SocketFd$SocketImplFd;

    invoke-direct {v0, p1}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$SocketFd$SocketImplFd;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 646
    return-void
.end method
