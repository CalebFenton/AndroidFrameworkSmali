.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;
.super Ljava/lang/Object;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildOutboundData"
.end annotation


# instance fields
.field public final blacklist childSession:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

.field public final blacklist exchangeType:I

.field public final blacklist isResp:Z

.field public final blacklist payloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(IZLjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 5
    .param p1, "exchangeType"    # I
    .param p2, "isResp"    # Z
    .param p4, "childSession"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;",
            ")V"
        }
    .end annotation

    .line 1141
    .local p3, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;->exchangeType:I

    .line 1143
    iput-boolean p2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;->isResp:Z

    .line 1144
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;->payloadList:Ljava/util/List;

    .line 1145
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;->childSession:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 1146
    return-void
.end method
