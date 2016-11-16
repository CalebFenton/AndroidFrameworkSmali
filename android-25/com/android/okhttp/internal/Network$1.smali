.class final Lcom/android/okhttp/internal/Network$1;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lcom/android/okhttp/internal/Network;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public resolveInetAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 28
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/net/UnknownHostException;

    #@4
    const-string/jumbo v1, "host == null"

    #@7
    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 29
    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method
