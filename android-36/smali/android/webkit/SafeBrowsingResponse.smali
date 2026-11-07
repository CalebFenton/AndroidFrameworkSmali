.class public abstract Landroid/webkit/SafeBrowsingResponse;
.super Ljava/lang/Object;
.source "SafeBrowsingResponse.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist backToSafety(Z)V
.end method

.method public abstract whitelist proceed(Z)V
.end method

.method public abstract whitelist showInterstitial(Z)V
.end method
