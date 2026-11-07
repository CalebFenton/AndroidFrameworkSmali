.class public Landroid/se/omapi/SeServiceManager;
.super Ljava/lang/Object;
.source "SeServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/SeServiceManager$ServiceRegisterer;,
        Landroid/se/omapi/SeServiceManager$ServiceNotFoundException;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist getSeManagerServiceRegisterer()Landroid/se/omapi/SeServiceManager$ServiceRegisterer;
    .registers 3

    .line 138
    new-instance v0, Landroid/se/omapi/SeServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "secure_element"

    invoke-direct {v0, v1}, Landroid/se/omapi/SeServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
