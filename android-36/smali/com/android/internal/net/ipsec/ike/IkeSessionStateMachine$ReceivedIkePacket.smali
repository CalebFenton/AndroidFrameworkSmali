.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;
.super Ljava/lang/Object;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReceivedIkePacket"
.end annotation


# instance fields
.field public final blacklist ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

.field public final blacklist ikePacketBytes:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V
    .registers 3
    .param p1, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "ikePacketBytes"    # [B

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1097
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    .line 1098
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;->ikePacketBytes:[B

    .line 1099
    return-void
.end method
