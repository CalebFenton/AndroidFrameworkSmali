.class public Lcom/android/internal/backup/LocalTransportService;
.super Landroid/app/Service;
.source "LocalTransportService.java"


# static fields
.field private static sTransport:Lcom/android/internal/backup/LocalTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 24
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    #@3
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/backup/LocalTransport;->getBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onCreate()V
    .locals 1

    #@0
    .prologue
    .line 28
    sget-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 29
    new-instance v0, Lcom/android/internal/backup/LocalTransport;

    #@6
    invoke-direct {v0, p0}, Lcom/android/internal/backup/LocalTransport;-><init>(Landroid/content/Context;)V

    #@9
    sput-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    #@b
    .line 27
    :cond_0
    return-void
.end method
