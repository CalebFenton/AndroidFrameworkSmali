.class final Lsun/net/www/protocol/http/HttpURLConnection$4;
.super Ljava/lang/Object;
.source "HttpURLConnection.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/protocol/http/HttpURLConnection;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
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
.field final synthetic val$h1:Ljava/lang/String;

.field final synthetic val$h2:Ljava/lang/String;

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 0
    .param p1, "val$h1"    # Ljava/lang/String;
    .param p2, "val$h2"    # Ljava/lang/String;
    .param p3, "val$result"    # [Z

    #@0
    .prologue
    .line 832
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$4;->val$h1:Ljava/lang/String;

    #@2
    iput-object p2, p0, Lsun/net/www/protocol/http/HttpURLConnection$4;->val$h2:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lsun/net/www/protocol/http/HttpURLConnection$4;->val$result:[Z

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 833
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection$4;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 7

    #@0
    .prologue
    .line 835
    :try_start_0
    iget-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$4;->val$h1:Ljava/lang/String;

    #@2
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    .line 836
    .local v0, "a1":Ljava/net/InetAddress;
    iget-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$4;->val$h2:Ljava/lang/String;

    #@8
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@b
    move-result-object v1

    #@c
    .line 837
    .local v1, "a2":Ljava/net/InetAddress;
    iget-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$4;->val$result:[Z

    #@e
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v5

    #@12
    const/4 v6, 0x0

    #@13
    aput-boolean v5, v4, v6
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    #@15
    .line 841
    .end local v0    # "a1":Ljava/net/InetAddress;
    .end local v1    # "a2":Ljava/net/InetAddress;
    :goto_0
    const/4 v4, 0x0

    #@16
    return-object v4

    #@17
    .line 838
    :catch_0
    move-exception v3

    #@18
    .local v3, "e":Ljava/net/UnknownHostException;
    goto :goto_0

    #@19
    .line 839
    .end local v3    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v2

    #@1a
    .local v2, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method
