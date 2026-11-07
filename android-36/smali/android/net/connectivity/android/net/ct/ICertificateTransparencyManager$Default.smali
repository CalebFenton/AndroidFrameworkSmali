.class public Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager$Default;
.super Ljava/lang/Object;
.source "ICertificateTransparencyManager.java"

# interfaces
.implements Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method
