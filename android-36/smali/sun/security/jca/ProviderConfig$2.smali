.class Lsun/security/jca/ProviderConfig$2;
.super Ljava/lang/Object;
.source "ProviderConfig.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/jca/ProviderConfig;->doLoadProvider()Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/security/Provider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/security/jca/ProviderConfig;


# direct methods
.method constructor blacklist <init>(Lsun/security/jca/ProviderConfig;)V
    .registers 2
    .param p1, "this$0"    # Lsun/security/jca/ProviderConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 206
    invoke-virtual {p0}, Lsun/security/jca/ProviderConfig$2;->run()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/security/Provider;
    .registers 7

    .line 208
    invoke-static {}, Lsun/security/jca/ProviderConfig;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 209
    invoke-static {}, Lsun/security/jca/ProviderConfig;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 215
    :cond_22
    :try_start_22
    iget-object v0, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    iget-object v1, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-static {v1}, Lsun/security/jca/ProviderConfig;->-$$Nest$fgetclassName(Lsun/security/jca/ProviderConfig;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lsun/security/jca/ProviderConfig;->-$$Nest$minitProvider(Lsun/security/jca/ProviderConfig;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_34} :catch_35

    return-object v0

    .line 216
    :catch_35
    move-exception v0

    .line 219
    .local v0, "e1":Ljava/lang/Exception;
    :try_start_36
    iget-object v1, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    iget-object v2, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-static {v2}, Lsun/security/jca/ProviderConfig;->-$$Nest$fgetclassName(Lsun/security/jca/ProviderConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lsun/security/jca/ProviderConfig;->-$$Nest$minitProvider(Lsun/security/jca/ProviderConfig;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;

    move-result-object v1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_46} :catch_47

    return-object v1

    .line 220
    :catch_47
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    instance-of v2, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_54

    .line 223
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .local v2, "t":Ljava/lang/Throwable;
    goto :goto_55

    .line 225
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_54
    move-object v2, v1

    .line 227
    .restart local v2    # "t":Ljava/lang/Throwable;
    :goto_55
    invoke-static {}, Lsun/security/jca/ProviderConfig;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v3

    if-eqz v3, :cond_7a

    .line 228
    invoke-static {}, Lsun/security/jca/ProviderConfig;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    :cond_7a
    instance-of v3, v2, Ljava/security/ProviderException;

    if-nez v3, :cond_89

    .line 236
    instance-of v3, v2, Ljava/lang/UnsupportedOperationException;

    if-eqz v3, :cond_87

    .line 237
    iget-object v3, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-static {v3}, Lsun/security/jca/ProviderConfig;->-$$Nest$mdisableLoad(Lsun/security/jca/ProviderConfig;)V

    .line 239
    :cond_87
    const/4 v3, 0x0

    return-object v3

    .line 233
    :cond_89
    move-object v3, v2

    check-cast v3, Ljava/security/ProviderException;

    throw v3
.end method
