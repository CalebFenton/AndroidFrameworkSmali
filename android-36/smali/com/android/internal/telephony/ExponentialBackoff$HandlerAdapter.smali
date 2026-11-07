.class public interface abstract Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ExponentialBackoff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HandlerAdapter"
.end annotation


# virtual methods
.method public abstract blacklist postDelayed(Ljava/lang/Runnable;J)Z
.end method

.method public abstract blacklist removeCallbacks(Ljava/lang/Runnable;)V
.end method
