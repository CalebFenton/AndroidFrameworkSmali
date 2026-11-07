.class public Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultUnprotectedError;
.super Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;
.source "IkeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeResultUnprotectedError"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 3
    .param p1, "ikeException"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 1092
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;-><init>(ILandroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1093
    return-void
.end method
