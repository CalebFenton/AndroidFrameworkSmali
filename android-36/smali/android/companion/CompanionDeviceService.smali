.class public abstract Landroid/companion/CompanionDeviceService;
.super Landroid/app/Service;
.source "CompanionDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/CompanionDeviceService$Stub;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CDM_CompanionDeviceService"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.companion.CompanionDeviceService"


# instance fields
.field private final blacklist mRemote:Landroid/companion/CompanionDeviceService$Stub;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 100
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 135
    new-instance v0, Landroid/companion/CompanionDeviceService$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/companion/CompanionDeviceService$Stub;-><init>(Landroid/companion/CompanionDeviceService;Landroid/companion/CompanionDeviceService-IA;)V

    iput-object v0, p0, Landroid/companion/CompanionDeviceService;->mRemote:Landroid/companion/CompanionDeviceService$Stub;

    return-void
.end method


# virtual methods
.method public final whitelist attachSystemDataTransport(ILjava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "associationId"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .line 238
    const-class v0, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/CompanionDeviceManager;

    .line 240
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 241
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/OutputStream;

    .line 239
    invoke-virtual {v0, p1, v1, v2}, Landroid/companion/CompanionDeviceManager;->attachSystemDataTransport(ILjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 242
    return-void
.end method

.method public final whitelist detachSystemDataTransport(I)V
    .registers 3
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .line 257
    const-class v0, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/CompanionDeviceManager;

    .line 258
    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceManager;->detachSystemDataTransport(I)V

    .line 259
    return-void
.end method

.method public final blacklist dispatchMessageToSystem(II[B)V
    .registers 6
    .param p1, "messageId"    # I
    .param p2, "associationId"    # I
    .param p3, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    const-string v0, "CDM_CompanionDeviceService"

    const-string v1, "Replaced by attachSystemDataTransport"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 305
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.companion.CompanionDeviceService"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 306
    invoke-virtual {p0, p1}, Landroid/companion/CompanionDeviceService;->onBindCompanionDeviceService(Landroid/content/Intent;)V

    .line 307
    iget-object v0, p0, Landroid/companion/CompanionDeviceService;->mRemote:Landroid/companion/CompanionDeviceService$Stub;

    return-object v0

    .line 309
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.companion.CompanionDeviceService): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionDeviceService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBindCompanionDeviceService(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 320
    return-void
.end method

.method public whitelist onDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .registers 3
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v0

    if-nez v0, :cond_d

    .line 272
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceService;->onDeviceAppeared(Ljava/lang/String;)V

    .line 274
    :cond_d
    return-void
.end method

.method public whitelist onDeviceAppeared(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    return-void
.end method

.method public whitelist onDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .registers 3
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v0

    if-nez v0, :cond_d

    .line 287
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceService;->onDeviceDisappeared(Ljava/lang/String;)V

    .line 289
    :cond_d
    return-void
.end method

.method public whitelist onDeviceDisappeared(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    return-void
.end method

.method public whitelist onDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/companion/DevicePresenceEvent;

    .line 300
    return-void
.end method

.method public blacklist onMessageDispatchedFromSystem(II[B)V
    .registers 6
    .param p1, "messageId"    # I
    .param p2, "associationId"    # I
    .param p3, "message"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    const-string v0, "CDM_CompanionDeviceService"

    const-string v1, "Replaced by attachSystemDataTransport"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method
