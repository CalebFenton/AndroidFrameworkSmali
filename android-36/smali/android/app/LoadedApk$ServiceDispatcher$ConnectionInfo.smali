.class Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionInfo"
.end annotation


# instance fields
.field greylist-max-o binder:Landroid/os/IBinder;

.field greylist-max-o deathMonitor:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/LoadedApk-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;-><init>()V

    return-void
.end method
