.class public abstract Lcom/android/internal/net/eap/EapResult;
.super Ljava/lang/Object;
.source "EapResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/EapResult$EapError;,
        Lcom/android/internal/net/eap/EapResult$EapResponse;,
        Lcom/android/internal/net/eap/EapResult$EapFailure;,
        Lcom/android/internal/net/eap/EapResult$EapSuccess;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
