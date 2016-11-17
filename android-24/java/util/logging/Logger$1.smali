.class final Ljava/util/logging/Logger$1;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/Logger;->findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
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
        "Ljava/util/ResourceBundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "val$locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1378
    iput-object p1, p0, Ljava/util/logging/Logger$1;->val$locale:Ljava/util/Locale;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1379
    invoke-virtual {p0}, Ljava/util/logging/Logger$1;->run()Ljava/util/ResourceBundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/util/ResourceBundle;
    .locals 4

    #@0
    .prologue
    .line 1381
    :try_start_0
    const-string/jumbo v1, "sun.util.logging.resources.logging"

    #@3
    .line 1382
    iget-object v2, p0, Ljava/util/logging/Logger$1;->val$locale:Ljava/util/Locale;

    #@5
    .line 1383
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@8
    move-result-object v3

    #@9
    .line 1381
    invoke-static {v1, v2, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 1384
    :catch_0
    move-exception v0

    #@f
    .line 1385
    .local v0, "e":Ljava/util/MissingResourceException;
    new-instance v1, Ljava/lang/InternalError;

    #@11
    invoke-virtual {v0}, Ljava/util/MissingResourceException;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@18
    throw v1
.end method
