.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;
.super Ljava/lang/Object;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateChildResult"
.end annotation


# instance fields
.field public final blacklist exception:Landroid/net/ipsec/ike/exceptions/IkeException;

.field public final blacklist initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

.field public final blacklist initTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

.field public final blacklist negotiatedProposal:Landroid/net/ipsec/ike/ChildSaProposal;

.field public final blacklist respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

.field public final blacklist respTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

.field public final blacklist status:I


# direct methods
.method private constructor blacklist <init>(ILandroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/ipsec/ike/ChildSaProposal;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "initSpi"    # Landroid/net/IpSecManager$SecurityParameterIndex;
    .param p3, "respSpi"    # Landroid/net/IpSecManager$SecurityParameterIndex;
    .param p4, "negotiatedProposal"    # Landroid/net/ipsec/ike/ChildSaProposal;
    .param p5, "initTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p6, "respTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p7, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 2791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2792
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->status:I

    .line 2793
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    .line 2794
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    .line 2795
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->negotiatedProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 2796
    iput-object p5, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 2797
    iput-object p6, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 2798
    iput-object p7, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->exception:Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 2799
    return-void
.end method

.method constructor blacklist <init>(ILandroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 11
    .param p1, "status"    # I
    .param p2, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 2820
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    .end local p1    # "status":I
    .end local p2    # "exception":Landroid/net/ipsec/ike/exceptions/IkeException;
    .local v1, "status":I
    .local v7, "exception":Landroid/net/ipsec/ike/exceptions/IkeException;
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;-><init>(ILandroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/ipsec/ike/ChildSaProposal;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 2828
    return-void
.end method

.method constructor blacklist <init>(Landroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/ipsec/ike/ChildSaProposal;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;)V
    .registers 14
    .param p1, "initSpi"    # Landroid/net/IpSecManager$SecurityParameterIndex;
    .param p2, "respSpi"    # Landroid/net/IpSecManager$SecurityParameterIndex;
    .param p3, "negotiatedProposal"    # Landroid/net/ipsec/ike/ChildSaProposal;
    .param p4, "initTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p5, "respTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 2808
    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "initSpi":Landroid/net/IpSecManager$SecurityParameterIndex;
    .end local p2    # "respSpi":Landroid/net/IpSecManager$SecurityParameterIndex;
    .end local p3    # "negotiatedProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    .end local p4    # "initTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .end local p5    # "respTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .local v2, "initSpi":Landroid/net/IpSecManager$SecurityParameterIndex;
    .local v3, "respSpi":Landroid/net/IpSecManager$SecurityParameterIndex;
    .local v4, "negotiatedProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    .local v5, "initTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .local v6, "respTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;-><init>(ILandroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/ipsec/ike/ChildSaProposal;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 2816
    return-void
.end method
