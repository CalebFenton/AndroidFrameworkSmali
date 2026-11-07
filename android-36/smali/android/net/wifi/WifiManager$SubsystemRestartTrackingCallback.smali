.class public abstract Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SubsystemRestartTrackingCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;
    }
.end annotation


# instance fields
.field private final blacklist mProxy:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 5228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5229
    new-instance v0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;

    invoke-direct {v0}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;->mProxy:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;

    .line 5230
    return-void
.end method


# virtual methods
.method blacklist getProxy()Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;
    .registers 2

    .line 5234
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;->mProxy:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;

    return-object v0
.end method

.method public abstract whitelist onSubsystemRestarted()V
.end method

.method public abstract whitelist onSubsystemRestarting()V
.end method
