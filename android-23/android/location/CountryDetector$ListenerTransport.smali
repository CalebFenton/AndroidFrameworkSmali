.class final Landroid/location/CountryDetector$ListenerTransport;
.super Landroid/location/ICountryListener$Stub;
.source "CountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/CountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerTransport"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/location/CountryListener;


# direct methods
.method static synthetic -get0(Landroid/location/CountryDetector$ListenerTransport;)Landroid/location/CountryListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/CountryDetector$ListenerTransport;->mListener:Landroid/location/CountryListener;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/location/CountryListener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/CountryListener;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Landroid/location/ICountryListener$Stub;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Landroid/location/CountryDetector$ListenerTransport;->mListener:Landroid/location/CountryListener;

    #@5
    .line 65
    if-eqz p2, :cond_0

    #@7
    .line 66
    new-instance v0, Landroid/os/Handler;

    #@9
    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@c
    iput-object v0, p0, Landroid/location/CountryDetector$ListenerTransport;->mHandler:Landroid/os/Handler;

    #@e
    .line 63
    :goto_0
    return-void

    #@f
    .line 68
    :cond_0
    new-instance v0, Landroid/os/Handler;

    #@11
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@14
    iput-object v0, p0, Landroid/location/CountryDetector$ListenerTransport;->mHandler:Landroid/os/Handler;

    #@16
    goto :goto_0
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 2
    .param p1, "country"    # Landroid/location/Country;

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Landroid/location/CountryDetector$ListenerTransport;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/location/CountryDetector$ListenerTransport$1;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/location/CountryDetector$ListenerTransport$1;-><init>(Landroid/location/CountryDetector$ListenerTransport;Landroid/location/Country;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 72
    return-void
.end method
