.class public abstract Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeInformationalPayload.java"


# direct methods
.method constructor blacklist <init>(IZ)V
    .registers 3
    .param p1, "payloadType"    # I
    .param p2, "isCritical"    # Z

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 27
    return-void
.end method
