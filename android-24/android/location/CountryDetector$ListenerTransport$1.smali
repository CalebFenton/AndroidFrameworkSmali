.class Landroid/location/CountryDetector$ListenerTransport$1;
.super Ljava/lang/Object;
.source "CountryDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/CountryDetector$ListenerTransport;->onCountryDetected(Landroid/location/Country;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/CountryDetector$ListenerTransport;

.field final synthetic val$country:Landroid/location/Country;


# direct methods
.method constructor <init>(Landroid/location/CountryDetector$ListenerTransport;Landroid/location/Country;)V
    .locals 0
    .param p1, "this$1"    # Landroid/location/CountryDetector$ListenerTransport;
    .param p2, "val$country"    # Landroid/location/Country;

    #@0
    .prologue
    .line 73
    iput-object p1, p0, Landroid/location/CountryDetector$ListenerTransport$1;->this$1:Landroid/location/CountryDetector$ListenerTransport;

    #@2
    iput-object p2, p0, Landroid/location/CountryDetector$ListenerTransport$1;->val$country:Landroid/location/Country;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/location/CountryDetector$ListenerTransport$1;->this$1:Landroid/location/CountryDetector$ListenerTransport;

    #@2
    invoke-static {v0}, Landroid/location/CountryDetector$ListenerTransport;->-get0(Landroid/location/CountryDetector$ListenerTransport;)Landroid/location/CountryListener;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/location/CountryDetector$ListenerTransport$1;->val$country:Landroid/location/Country;

    #@8
    invoke-interface {v0, v1}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    #@b
    .line 74
    return-void
.end method
