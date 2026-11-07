.class public Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultProtectedError;
.super Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;
.source "IkeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeResultProtectedError"
.end annotation


# instance fields
.field public final blacklist firstPacket:[B


# direct methods
.method public constructor blacklist <init>(Landroid/net/ipsec/ike/exceptions/IkeException;[B)V
    .registers 4
    .param p1, "ikeException"    # Landroid/net/ipsec/ike/exceptions/IkeException;
    .param p2, "firstPacket"    # [B

    .line 1085
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;-><init>(ILandroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1086
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultProtectedError;->firstPacket:[B

    .line 1087
    return-void
.end method
