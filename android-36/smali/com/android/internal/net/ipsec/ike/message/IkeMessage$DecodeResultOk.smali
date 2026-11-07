.class public Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;
.super Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
.source "IkeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeResultOk"
.end annotation


# instance fields
.field public final blacklist firstPacket:[B

.field public final blacklist ikeMessage:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;[B)V
    .registers 4
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "firstPacket"    # [B

    .line 979
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;-><init>(I)V

    .line 980
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;->ikeMessage:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 981
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;->firstPacket:[B

    .line 982
    return-void
.end method
