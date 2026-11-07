.class Landroid/ranging/RangingSessionManager$OobSendDataListener;
.super Landroid/ranging/oob/IOobSendDataListener$Stub;
.source "RangingSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/RangingSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OobSendDataListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/ranging/RangingSessionManager;


# direct methods
.method constructor blacklist <init>(Landroid/ranging/RangingSessionManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/ranging/RangingSessionManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 188
    iput-object p1, p0, Landroid/ranging/RangingSessionManager$OobSendDataListener;->this$0:Landroid/ranging/RangingSessionManager;

    invoke-direct {p0}, Landroid/ranging/oob/IOobSendDataListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist sendOobData(Landroid/ranging/oob/OobHandle;[B)V
    .registers 6
    .param p1, "oobHandle"    # Landroid/ranging/oob/OobHandle;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Landroid/ranging/oob/OobHandle;->getSessionHandle()Landroid/ranging/SessionHandle;

    move-result-object v0

    .line 193
    .local v0, "session":Landroid/ranging/SessionHandle;
    iget-object v1, p0, Landroid/ranging/RangingSessionManager$OobSendDataListener;->this$0:Landroid/ranging/RangingSessionManager;

    invoke-static {v1}, Landroid/ranging/RangingSessionManager;->-$$Nest$fgetmSessions(Landroid/ranging/RangingSessionManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionHandle not found, session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RangingSessionManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void

    .line 197
    :cond_29
    iget-object v1, p0, Landroid/ranging/RangingSessionManager$OobSendDataListener;->this$0:Landroid/ranging/RangingSessionManager;

    invoke-static {v1}, Landroid/ranging/RangingSessionManager;->-$$Nest$fgetmSessions(Landroid/ranging/RangingSessionManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/ranging/RangingSession;

    invoke-virtual {p1}, Landroid/ranging/oob/OobHandle;->getRangingDevice()Landroid/ranging/RangingDevice;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/ranging/RangingSession;->sendOobData(Landroid/ranging/RangingDevice;[B)V

    .line 199
    return-void
.end method
