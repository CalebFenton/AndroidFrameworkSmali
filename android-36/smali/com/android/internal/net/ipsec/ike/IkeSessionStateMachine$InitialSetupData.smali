.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;
.super Ljava/lang/Object;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InitialSetupData"
.end annotation


# instance fields
.field public final blacklist firstChildCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

.field public final blacklist firstChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

.field public final blacklist peerSelectedDhGroup:I


# direct methods
.method constructor blacklist <init>(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;I)V
    .registers 4
    .param p1, "firstChildSessionParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p2, "firstChildCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;
    .param p3, "peerSelectedDhGroup"    # I

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;->firstChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 666
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;->firstChildCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 667
    iput p3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;->peerSelectedDhGroup:I

    .line 668
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;)V
    .registers 5
    .param p1, "initialSetupData"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    .line 671
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;->firstChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;->firstChildCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    iget v2, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;->peerSelectedDhGroup:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;-><init>(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;I)V

    .line 675
    return-void
.end method
