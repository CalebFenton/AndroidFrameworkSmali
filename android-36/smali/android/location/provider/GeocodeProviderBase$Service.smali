.class Landroid/location/provider/GeocodeProviderBase$Service;
.super Landroid/location/provider/IGeocodeProvider$Stub;
.source "GeocodeProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/GeocodeProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Service"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/location/provider/GeocodeProviderBase;


# direct methods
.method private constructor blacklist <init>(Landroid/location/provider/GeocodeProviderBase;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 116
    iput-object p1, p0, Landroid/location/provider/GeocodeProviderBase$Service;->this$0:Landroid/location/provider/GeocodeProviderBase;

    invoke-direct {p0}, Landroid/location/provider/IGeocodeProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/provider/GeocodeProviderBase;Landroid/location/provider/GeocodeProviderBase-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/provider/GeocodeProviderBase$Service;-><init>(Landroid/location/provider/GeocodeProviderBase;)V

    return-void
.end method

.method static synthetic blacklist lambda$forwardGeocode$0(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 127
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic blacklist lambda$reverseGeocode$1(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 142
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public blacklist forwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .registers 6
    .param p1, "request"    # Landroid/location/provider/ForwardGeocodeRequest;
    .param p2, "callback"    # Landroid/location/provider/IGeocodeCallback;

    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/GeocodeProviderBase$Service;->this$0:Landroid/location/provider/GeocodeProviderBase;

    new-instance v1, Landroid/location/provider/GeocodeProviderBase$SingleUseCallback;

    invoke-direct {v1, p2}, Landroid/location/provider/GeocodeProviderBase$SingleUseCallback;-><init>(Landroid/location/provider/IGeocodeCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/location/provider/GeocodeProviderBase;->onForwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/os/OutcomeReceiver;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    .line 129
    goto :goto_24

    .line 121
    :catch_b
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/location/provider/GeocodeProviderBase$Service;->this$0:Landroid/location/provider/GeocodeProviderBase;

    iget-object v1, v1, Landroid/location/provider/GeocodeProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/location/provider/GeocodeProviderBase$Service$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroid/location/provider/GeocodeProviderBase$Service$$ExternalSyntheticLambda1;-><init>(Ljava/lang/RuntimeException;)V

    .line 125
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_24
    return-void
.end method

.method public blacklist reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .registers 6
    .param p1, "request"    # Landroid/location/provider/ReverseGeocodeRequest;
    .param p2, "callback"    # Landroid/location/provider/IGeocodeCallback;

    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/GeocodeProviderBase$Service;->this$0:Landroid/location/provider/GeocodeProviderBase;

    new-instance v1, Landroid/location/provider/GeocodeProviderBase$SingleUseCallback;

    invoke-direct {v1, p2}, Landroid/location/provider/GeocodeProviderBase$SingleUseCallback;-><init>(Landroid/location/provider/IGeocodeCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/location/provider/GeocodeProviderBase;->onReverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/os/OutcomeReceiver;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    .line 144
    goto :goto_24

    .line 136
    :catch_b
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/location/provider/GeocodeProviderBase$Service;->this$0:Landroid/location/provider/GeocodeProviderBase;

    iget-object v1, v1, Landroid/location/provider/GeocodeProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/location/provider/GeocodeProviderBase$Service$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/location/provider/GeocodeProviderBase$Service$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    .line 140
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_24
    return-void
.end method
