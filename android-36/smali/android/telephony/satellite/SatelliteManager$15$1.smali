.class Landroid/telephony/satellite/SatelliteManager$15$1;
.super Ljava/lang/Object;
.source "SatelliteManager.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager$15;->onSatelliteDatagramReceived(JLandroid/telephony/satellite/SatelliteDatagram;ILcom/android/internal/telephony/IVoidConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$internalAck:Lcom/android/internal/telephony/IVoidConsumer;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager$15;Lcom/android/internal/telephony/IVoidConsumer;)V
    .registers 3
    .param p1, "this$1"    # Landroid/telephony/satellite/SatelliteManager$15;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2153
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$15$1;->val$internalAck:Lcom/android/internal/telephony/IVoidConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2153
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/SatelliteManager$15$1;->accept(Ljava/lang/Void;)V

    return-void
.end method

.method public blacklist accept(Ljava/lang/Void;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Void;

    .line 2157
    :try_start_0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$15$1;->val$internalAck:Lcom/android/internal/telephony/IVoidConsumer;

    invoke-interface {v0}, Lcom/android/internal/telephony/IVoidConsumer;->accept()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2161
    goto :goto_1d

    .line 2158
    :catch_6
    move-exception v0

    .line 2159
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSatelliteDatagramReceived RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 2162
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method
