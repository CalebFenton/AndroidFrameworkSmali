.class Lsun/net/www/protocol/http/HttpURLConnection$6;
.super Ljava/lang/Object;
.source "HttpURLConnection.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/protocol/http/HttpURLConnection;->getChainedException(Ljava/io/IOException;)Ljava/io/IOException;
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
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/www/protocol/http/HttpURLConnection;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$rememberedException:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/IOException;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .param p2, "val$rememberedException"    # Ljava/io/IOException;
    .param p3, "val$args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1674
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$6;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    #@2
    iput-object p2, p0, Lsun/net/www/protocol/http/HttpURLConnection$6;->val$rememberedException:Ljava/io/IOException;

    #@4
    iput-object p3, p0, Lsun/net/www/protocol/http/HttpURLConnection$6;->val$args:[Ljava/lang/Object;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()Ljava/io/IOException;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1677
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$6;->val$rememberedException:Ljava/io/IOException;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    .line 1678
    const/4 v1, 0x1

    #@7
    new-array v1, v1, [Ljava/lang/Class;

    #@9
    const-class v2, Ljava/lang/String;

    #@b
    const/4 v3, 0x0

    #@c
    aput-object v2, v1, v3

    #@e
    .line 1677
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@11
    move-result-object v0

    #@12
    .line 1679
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$6;->val$args:[Ljava/lang/Object;

    #@14
    .line 1677
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/io/IOException;

    #@1a
    .line 1676
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
    .line 1675
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection$6;->run()Ljava/io/IOException;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
