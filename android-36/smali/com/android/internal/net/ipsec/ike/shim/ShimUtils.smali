.class public abstract Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;
.super Ljava/lang/Object;
.source "ShimUtils.java"


# static fields
.field private static final blacklist INSTANCE:Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-le v0, v1, :cond_e

    .line 43
    new-instance v0, Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsMinW;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsMinW;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->INSTANCE:Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    goto :goto_31

    .line 44
    :cond_e
    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 45
    new-instance v0, Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsU;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsU;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->INSTANCE:Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    goto :goto_31

    .line 46
    :cond_1c
    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 47
    new-instance v0, Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsT;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsT;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->INSTANCE:Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    goto :goto_31

    .line 49
    :cond_2a
    new-instance v0, Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsRAndS;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsRAndS;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->INSTANCE:Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    .line 51
    :goto_31
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;
    .registers 1

    .line 58
    sget-object v0, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->INSTANCE:Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist executeOrSendFatalError(Ljava/lang/Runnable;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;)V
.end method

.method public abstract blacklist getDnsFailedException(Ljava/lang/String;)Ljava/io/IOException;
.end method

.method public abstract blacklist getRetransmissionFailedException(Ljava/lang/String;)Ljava/lang/Exception;
.end method

.method public abstract blacklist getWrappedIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;
.end method

.method public abstract blacklist onUnderlyingNetworkDiedWithoutMobility(Lcom/android/internal/net/ipsec/ike/shim/IIkeSessionStateMachineShim;Landroid/net/Network;)V
.end method

.method public abstract blacklist shouldSkipIfSameNetwork(Z)Z
.end method

.method public abstract blacklist startKeepalive(Landroid/net/SocketKeepalive;IILandroid/net/Network;)V
.end method

.method public abstract blacklist supportsSameSocketKernelMigration(Landroid/content/Context;)Z
.end method

.method public abstract blacklist suspendOnNetworkLossEnabled()Z
.end method
