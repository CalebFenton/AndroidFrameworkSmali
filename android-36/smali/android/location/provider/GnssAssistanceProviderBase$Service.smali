.class Landroid/location/provider/GnssAssistanceProviderBase$Service;
.super Landroid/location/provider/IGnssAssistanceProvider$Stub;
.source "GnssAssistanceProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/GnssAssistanceProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Service"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/location/provider/GnssAssistanceProviderBase;


# direct methods
.method private constructor blacklist <init>(Landroid/location/provider/GnssAssistanceProviderBase;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Landroid/location/provider/GnssAssistanceProviderBase$Service;->this$0:Landroid/location/provider/GnssAssistanceProviderBase;

    invoke-direct {p0}, Landroid/location/provider/IGnssAssistanceProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/provider/GnssAssistanceProviderBase;Landroid/location/provider/GnssAssistanceProviderBase-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/provider/GnssAssistanceProviderBase$Service;-><init>(Landroid/location/provider/GnssAssistanceProviderBase;)V

    return-void
.end method

.method static synthetic blacklist lambda$request$0(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 119
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public blacklist request(Landroid/location/provider/IGnssAssistanceCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/location/provider/IGnssAssistanceCallback;

    .line 112
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/GnssAssistanceProviderBase$Service;->this$0:Landroid/location/provider/GnssAssistanceProviderBase;

    new-instance v1, Landroid/location/provider/GnssAssistanceProviderBase$SingleUseCallback;

    invoke-direct {v1, p1}, Landroid/location/provider/GnssAssistanceProviderBase$SingleUseCallback;-><init>(Landroid/location/provider/IGnssAssistanceCallback;)V

    invoke-virtual {v0, v1}, Landroid/location/provider/GnssAssistanceProviderBase;->onRequest(Landroid/os/OutcomeReceiver;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    .line 121
    goto :goto_24

    .line 113
    :catch_b
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/location/provider/GnssAssistanceProviderBase$Service;->this$0:Landroid/location/provider/GnssAssistanceProviderBase;

    iget-object v1, v1, Landroid/location/provider/GnssAssistanceProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/location/provider/GnssAssistanceProviderBase$Service$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/location/provider/GnssAssistanceProviderBase$Service$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    .line 117
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_24
    return-void
.end method
