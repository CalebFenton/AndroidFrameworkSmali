.class public Landroid/se/omapi/SeFrameworkInitializer;
.super Ljava/lang/Object;
.source "SeFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static volatile blacklist sSeServiceManager:Landroid/se/omapi/SeServiceManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getSeServiceManager()Landroid/se/omapi/SeServiceManager;
    .registers 1

    .line 68
    sget-object v0, Landroid/se/omapi/SeFrameworkInitializer;->sSeServiceManager:Landroid/se/omapi/SeServiceManager;

    return-object v0
.end method

.method public static blacklist setSeServiceManager(Landroid/se/omapi/SeServiceManager;)V
    .registers 3
    .param p0, "seServiceManager"    # Landroid/se/omapi/SeServiceManager;

    .line 47
    sget-object v0, Landroid/se/omapi/SeFrameworkInitializer;->sSeServiceManager:Landroid/se/omapi/SeServiceManager;

    if-nez v0, :cond_12

    .line 51
    if-eqz p0, :cond_9

    .line 55
    sput-object p0, Landroid/se/omapi/SeFrameworkInitializer;->sSeServiceManager:Landroid/se/omapi/SeServiceManager;

    .line 56
    return-void

    .line 52
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "seServiceManager must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setSeServiceManager called twice!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
