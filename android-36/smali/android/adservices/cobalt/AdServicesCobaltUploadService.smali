.class public abstract Landroid/adservices/cobalt/AdServicesCobaltUploadService;
.super Landroid/app/Service;
.source "AdServicesCobaltUploadService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.adservices.cobalt.AdServicesCobaltUploadService"


# instance fields
.field private final blacklist mInterface:Landroid/adservices/cobalt/IAdServicesCobaltUploadService;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Landroid/adservices/cobalt/AdServicesCobaltUploadService$1;

    invoke-direct {v0, p0}, Landroid/adservices/cobalt/AdServicesCobaltUploadService$1;-><init>(Landroid/adservices/cobalt/AdServicesCobaltUploadService;)V

    iput-object v0, p0, Landroid/adservices/cobalt/AdServicesCobaltUploadService;->mInterface:Landroid/adservices/cobalt/IAdServicesCobaltUploadService;

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Landroid/adservices/cobalt/AdServicesCobaltUploadService;->mInterface:Landroid/adservices/cobalt/IAdServicesCobaltUploadService;

    invoke-interface {v0}, Landroid/adservices/cobalt/IAdServicesCobaltUploadService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onUploadEncryptedCobaltEnvelope(Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;)V
.end method
