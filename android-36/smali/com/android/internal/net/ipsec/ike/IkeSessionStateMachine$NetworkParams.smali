.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;
.super Ljava/lang/Object;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkParams"
.end annotation


# instance fields
.field public final blacklist encapType:I

.field public final blacklist ipVersion:I

.field public final blacklist keepaliveDelaySeconds:I

.field public final blacklist network:Landroid/net/Network;


# direct methods
.method constructor blacklist <init>(Landroid/net/Network;III)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "ipVersion"    # I
    .param p3, "encapType"    # I
    .param p4, "keepaliveDelaySeconds"    # I

    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;->network:Landroid/net/Network;

    .line 998
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;->ipVersion:I

    .line 999
    iput p3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;->encapType:I

    .line 1000
    iput p4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;->keepaliveDelaySeconds:I

    .line 1001
    return-void
.end method
