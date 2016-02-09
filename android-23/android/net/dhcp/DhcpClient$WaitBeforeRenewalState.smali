.class Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;
.super Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitBeforeRenewalState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;
    .param p2, "otherState"    # Lcom/android/internal/util/State;

    #@0
    .prologue
    .line 583
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    .line 584
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@5
    .line 585
    iput-object p2, p0, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;->mOtherState:Lcom/android/internal/util/State;

    #@7
    .line 583
    return-void
.end method
