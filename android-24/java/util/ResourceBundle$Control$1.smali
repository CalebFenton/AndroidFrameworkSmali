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
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/ResourceBundle$Control;

.field final synthetic val$classLoader:Ljava/lang/ClassLoader;

.field final synthetic val$reloadFlag:Z

.field final synthetic val$resourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/ResourceBundle$Control;ZLjava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/ResourceBundle$Control;
    .param p2, "val$reloadFlag"    # Z
    .param p3, "val$classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "val$resourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2588
    iput-object p1, p0, Ljava/util/ResourceBundle$Control$1;->this$1:Ljava/util/ResourceBundle$Control;

    #@2
    iput-boolean p2, p0, Ljava/util/ResourceBundle$Control$1;->val$reloadFlag:Z

    #@4
    iput-object p3, p0, Ljava/util/ResourceBundle$Control$1;->val$classLoader:Ljava/lang/ClassLoader;

    #@6
    iput-object p4, p0, Ljava/util/ResourceBundle$Control$1;->val$resourceName:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2590
    const/4 v1, 0x0

    #@1
    .line 2591
    .local v1, "is":Ljava/io/InputStream;
    iget-boolean v3, p0, Ljava/util/ResourceBundle$Control$1;->val$reloadFlag:Z

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 2592
    iget-object v3, p0, Ljava/util/ResourceBundle$Control$1;->val$classLoader:Ljava/lang/ClassLoader;

    #@7
    iget-object v4, p0, Ljava/util/ResourceBundle$Control$1;->val$resourceName:Ljava/lang/String;

    #@9
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@c
    move-result-object v2

    #@d
    .line 2593
    .local v2, "url":Ljava/net/URL;
    if-eqz v2, :cond_0

    #@f
    .line 2594
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@12
    move-result-object v0

    #@13
    .line 2595
    .local v0, "connection":Ljava/net/URLConnection;
    if-eqz v0, :cond_0

    #@15
    .line 2598
    const/4 v3, 0x0

    #@16
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    #@19
    .line 2599
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@1c
    move-result-object v1

    #@1d
    .line 2605
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v1

    #@1e
    .line 2603
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_1
    iget-object v3, p0, Ljava/util/ResourceBundle$Control$1;->val$classLoader:Ljava/lang/ClassLoader;

    #@20
    iget-object v4, p0, Ljava/util/ResourceBundle$Control$1;->val$resourceName:Ljava/lang/String;

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@25
    move-result-object v1

    #@26
    .local v1, "is":Ljava/io/InputStream;
    goto :goto_0
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
    .line 2589
    invoke-virtual {p0}, Ljava/util/ResourceBundle$Control$1;->run()Ljava/io/InputStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
