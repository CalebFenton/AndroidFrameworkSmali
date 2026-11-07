.class Ljava/util/logging/Logger$1;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/Logger;->findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/ResourceBundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$locale:Ljava/util/Locale;


# direct methods
.method constructor blacklist <init>(Ljava/util/Locale;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1815
    iput-object p1, p0, Ljava/util/logging/Logger$1;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 1815
    invoke-virtual {p0}, Ljava/util/logging/Logger$1;->run()Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/util/ResourceBundle;
    .registers 4

    .line 1819
    :try_start_0
    const-string v0, "sun.util.logging.resources.logging"

    iget-object v1, p0, Ljava/util/logging/Logger$1;->val$locale:Ljava/util/Locale;

    .line 1821
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1819
    invoke-static {v0, v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0
    :try_end_c
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 1822
    :catch_d
    move-exception v0

    .line 1823
    .local v0, "e":Ljava/util/MissingResourceException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/util/MissingResourceException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
