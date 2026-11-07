.class public abstract Landroid/net/wifi/WifiManager$CoexCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CoexCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;
    }
.end annotation


# instance fields
.field private final blacklist mCoexCallbackProxy:Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 5742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5743
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5746
    new-instance v0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;

    invoke-direct {v0}, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$CoexCallback;->mCoexCallbackProxy:Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;

    .line 5747
    return-void

    .line 5744
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method blacklist getProxy()Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;
    .registers 2

    .line 5751
    iget-object v0, p0, Landroid/net/wifi/WifiManager$CoexCallback;->mCoexCallbackProxy:Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;

    return-object v0
.end method

.method public abstract whitelist onCoexUnsafeChannelsChanged(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/CoexUnsafeChannel;",
            ">;I)V"
        }
    .end annotation
.end method
