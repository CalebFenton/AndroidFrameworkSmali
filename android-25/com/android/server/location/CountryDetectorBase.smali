.class public abstract Lcom/android/server/location/CountryDetectorBase;
.super Ljava/lang/Object;
.source "CountryDetectorBase.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mDetectedCountry:Landroid/location/Country;

.field protected final mHandler:Landroid/os/Handler;

.field protected mListener:Landroid/location/CountryListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Lcom/android/server/location/CountryDetectorBase;->mContext:Landroid/content/Context;

    #@5
    .line 41
    new-instance v0, Landroid/os/Handler;

    #@7
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/location/CountryDetectorBase;->mHandler:Landroid/os/Handler;

    #@c
    .line 39
    return-void
.end method


# virtual methods
.method public abstract detectCountry()Landroid/location/Country;
.end method

.method protected notifyListener(Landroid/location/Country;)V
    .locals 1
    .param p1, "country"    # Landroid/location/Country;

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 69
    iget-object v0, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    #@6
    invoke-interface {v0, p1}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    #@9
    .line 67
    :cond_0
    return-void
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/CountryListener;

    #@0
    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    #@2
    .line 57
    return-void
.end method

.method public abstract stop()V
.end method
