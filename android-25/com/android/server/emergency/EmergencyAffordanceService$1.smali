.class Lcom/android/server/emergency/EmergencyAffordanceService$1;
.super Landroid/telephony/PhoneStateListener;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/emergency/EmergencyAffordanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emergency/EmergencyAffordanceService;


# direct methods
.method constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    #@0
    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    #@2
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 78
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    #@2
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->-wrap2(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 79
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    #@a
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->-wrap4(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    #@d
    .line 77
    :cond_0
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .param p1, "location"    # Landroid/telephony/CellLocation;

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    #@2
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->-wrap2(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 86
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    #@a
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->-wrap4(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    #@d
    .line 84
    :cond_0
    return-void
.end method
