.class Lcom/android/server/connectivity/DataConnectionStats$1;
.super Landroid/telephony/PhoneStateListener;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DataConnectionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/DataConnectionStats;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/DataConnectionStats;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/DataConnectionStats;

    #@0
    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    #@2
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->-wrap0(Lcom/android/server/connectivity/DataConnectionStats;)V

    #@5
    .line 150
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->-set0(Lcom/android/server/connectivity/DataConnectionStats;I)I

    #@5
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    #@7
    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->-wrap0(Lcom/android/server/connectivity/DataConnectionStats;)V

    #@a
    .line 144
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->-set1(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    #@5
    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    #@7
    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->-wrap0(Lcom/android/server/connectivity/DataConnectionStats;)V

    #@a
    .line 138
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->-set2(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    #@5
    .line 133
    return-void
.end method
