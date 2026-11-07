.class Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;
.super Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnDriverCountryCodeChangedProxy"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$Lma9yPVFHgqqSEjGIb3Fh5VC904(Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;->lambda$onDriverCountryCodeChanged$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wzxvpsX_11fqcrVDRH3JoUfbt2s(Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;->lambda$onDriverCountryCodeChanged$1()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;

    .line 4726
    invoke-direct {p0}, Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener$Stub;-><init>()V

    .line 4727
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4728
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4729
    iput-object p1, p0, Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4730
    iput-object p2, p0, Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;->mCallback:Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;

    .line 4731
    return-void
.end method

.method private synthetic blacklist lambda$onDriverCountryCodeChanged$0(Ljava/lang/String;)V
    .registers 3
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 4739
    iget-object v0, p0, Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;->mCallback:Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;->onActiveCountryCodeChanged(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDriverCountryCodeChanged$1()V
    .registers 2

    .line 4741
    iget-object v0, p0, Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;->mCallback:Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;

    invoke-interface {v0}, Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;->onCountryCodeInactive()V

    return-void
.end method


# virtual methods
.method public blacklist onDriverCountryCodeChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 4735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnDriverCountryCodeChangedProxy: receive onDriverCountryCodeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4738
    if-eqz p1, :cond_28

    .line 4739
    iget-object v0, p0, Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_32

    .line 4741
    :cond_28
    iget-object v0, p0, Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4743
    :goto_32
    return-void
.end method
