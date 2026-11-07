.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeEapOutboundMsgWrapper;
.super Ljava/lang/Object;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IkeEapOutboundMsgWrapper"
.end annotation


# instance fields
.field private final blacklist eapMsg:[B

.field private final blacklist serverAuthenticated:Z


# direct methods
.method public constructor blacklist <init>(Z[B)V
    .registers 3
    .param p1, "serverAuthenticated"    # Z
    .param p2, "eapMsg"    # [B

    .line 6092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6093
    iput-boolean p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeEapOutboundMsgWrapper;->serverAuthenticated:Z

    .line 6094
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeEapOutboundMsgWrapper;->eapMsg:[B

    .line 6095
    return-void
.end method


# virtual methods
.method public blacklist getEapMsg()[B
    .registers 2

    .line 6102
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeEapOutboundMsgWrapper;->eapMsg:[B

    return-object v0
.end method

.method public blacklist isServerAuthenticated()Z
    .registers 2

    .line 6098
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeEapOutboundMsgWrapper;->serverAuthenticated:Z

    return v0
.end method
