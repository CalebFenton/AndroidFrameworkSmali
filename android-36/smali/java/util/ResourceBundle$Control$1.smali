.class Ljava/util/ResourceBundle$Control$1;
.super Ljava/lang/Object;
.source "ResourceBundle.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
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
.field final synthetic blacklist val$loader:Ljava/lang/ClassLoader;

.field final synthetic blacklist val$reloadFlag:Z

.field final synthetic blacklist val$resourceName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/util/ResourceBundle$Control;Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/ResourceBundle$Control;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 3259
    iput-object p2, p0, Ljava/util/ResourceBundle$Control$1;->val$loader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Ljava/util/ResourceBundle$Control$1;->val$resourceName:Ljava/lang/String;

    iput-boolean p4, p0, Ljava/util/ResourceBundle$Control$1;->val$reloadFlag:Z

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

    .line 3261
    iget-object v0, p0, Ljava/util/ResourceBundle$Control$1;->val$loader:Ljava/lang/ClassLoader;

    iget-object v1, p0, Ljava/util/ResourceBundle$Control$1;->val$resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 3262
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    .line 3264
    :cond_c
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 3265
    .local v1, "connection":Ljava/net/URLConnection;
    iget-boolean v2, p0, Ljava/util/ResourceBundle$Control$1;->val$reloadFlag:Z

    if-eqz v2, :cond_18

    .line 3268
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 3270
    :cond_18
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3259
    invoke-virtual {p0}, Ljava/util/ResourceBundle$Control$1;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
