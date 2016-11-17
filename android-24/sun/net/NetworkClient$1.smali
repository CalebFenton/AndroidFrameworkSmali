.class final Lsun/net/NetworkClient$1;
.super Ljava/lang/Object;
.source "NetworkClient.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/NetworkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$encs:[Ljava/lang/String;

.field final synthetic val$vals:[I


# direct methods
.method constructor <init>([I[Ljava/lang/String;)V
    .locals 0
    .param p1, "val$vals"    # [I
    .param p2, "val$encs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 72
    iput-object p1, p0, Lsun/net/NetworkClient$1;->val$vals:[I

    #@2
    iput-object p2, p0, Lsun/net/NetworkClient$1;->val$encs:[Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 73
    invoke-virtual {p0}, Lsun/net/NetworkClient$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 74
    iget-object v0, p0, Lsun/net/NetworkClient$1;->val$vals:[I

    #@3
    const-string/jumbo v1, "sun.net.client.defaultReadTimeout"

    #@6
    invoke-static {v1, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v1

    #@e
    aput v1, v0, v3

    #@10
    .line 75
    iget-object v0, p0, Lsun/net/NetworkClient$1;->val$vals:[I

    #@12
    const-string/jumbo v1, "sun.net.client.defaultConnectTimeout"

    #@15
    invoke-static {v1, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x1

    #@1e
    aput v1, v0, v2

    #@20
    .line 76
    iget-object v0, p0, Lsun/net/NetworkClient$1;->val$encs:[Ljava/lang/String;

    #@22
    const-string/jumbo v1, "file.encoding"

    #@25
    const-string/jumbo v2, "ISO8859_1"

    #@28
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    aput-object v1, v0, v3

    #@2e
    .line 77
    const/4 v0, 0x0

    #@2f
    return-object v0
.end method
