.class public Lcom/android/org/conscrypt/Spake2PlusTrustManager;
.super Ljava/lang/Object;
.source "Spake2PlusTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/TrustManager;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist checkClientTrusted()V
    .registers 1

    .line 30
    return-void
.end method

.method public blacklist checkServerTrusted()V
    .registers 1

    .line 32
    return-void
.end method
