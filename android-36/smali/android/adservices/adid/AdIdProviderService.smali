.class public abstract Landroid/adservices/adid/AdIdProviderService;
.super Landroid/app/Service;
.source "AdIdProviderService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.adservices.adid.AdIdProviderService"


# instance fields
.field private final blacklist mInterface:Landroid/adservices/adid/IAdIdProviderService;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Landroid/adservices/adid/AdIdProviderService$1;

    invoke-direct {v0, p0}, Landroid/adservices/adid/AdIdProviderService$1;-><init>(Landroid/adservices/adid/AdIdProviderService;)V

    iput-object v0, p0, Landroid/adservices/adid/AdIdProviderService;->mInterface:Landroid/adservices/adid/IAdIdProviderService;

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Landroid/adservices/adid/AdIdProviderService;->mInterface:Landroid/adservices/adid/IAdIdProviderService;

    invoke-interface {v0}, Landroid/adservices/adid/IAdIdProviderService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onGetAdId(ILjava/lang/String;)Landroid/adservices/adid/AdId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
