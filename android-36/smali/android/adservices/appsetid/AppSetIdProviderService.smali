.class public abstract Landroid/adservices/appsetid/AppSetIdProviderService;
.super Landroid/app/Service;
.source "AppSetIdProviderService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.adservices.appsetid.AppSetIdProviderService"


# instance fields
.field private final blacklist mInterface:Landroid/adservices/appsetid/IAppSetIdProviderService;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    new-instance v0, Landroid/adservices/appsetid/AppSetIdProviderService$1;

    invoke-direct {v0, p0}, Landroid/adservices/appsetid/AppSetIdProviderService$1;-><init>(Landroid/adservices/appsetid/AppSetIdProviderService;)V

    iput-object v0, p0, Landroid/adservices/appsetid/AppSetIdProviderService;->mInterface:Landroid/adservices/appsetid/IAppSetIdProviderService;

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Landroid/adservices/appsetid/AppSetIdProviderService;->mInterface:Landroid/adservices/appsetid/IAppSetIdProviderService;

    invoke-interface {v0}, Landroid/adservices/appsetid/IAppSetIdProviderService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onGetAppSetId(ILjava/lang/String;)Landroid/adservices/appsetid/AppSetId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
