.class Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;
.super Ljava/lang/Object;
.source "EmergencyStateTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->turnOnRadioAndSwitchDds(Lcom/android/internal/telephony/Phone;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

.field final synthetic blacklist val$emergencyType:I

.field final synthetic blacklist val$expectedConnection:Landroid/telecom/Connection;

.field final synthetic blacklist val$phone:Lcom/android/internal/telephony/Phone;

.field final synthetic blacklist val$phoneForEmergency:Lcom/android/internal/telephony/Phone;

.field final synthetic blacklist val$waitForInServiceTimeout:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Landroid/telecom/Connection;ILcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1789
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$expectedConnection:Landroid/telecom/Connection;

    iput p3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$emergencyType:I

    iput-object p4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p5, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$phoneForEmergency:Lcom/android/internal/telephony/Phone;

    iput p6, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$waitForInServiceTimeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isOkToCall(Lcom/android/internal/telephony/Phone;IZ)Z
    .registers 5

    .line 1825
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmOngoingConnection(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Landroid/telecom/Connection;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$expectedConnection:Landroid/telecom/Connection;

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_31

    .line 1826
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isOkToCall "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$expectedConnection:Landroid/telecom/Connection;

    .line 1827
    invoke-virtual {p0}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " canceled."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1826
    const-string p1, "EmergencyStateTracker"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    .line 1831
    :cond_31
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$phoneForEmergency:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_41

    iget p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$waitForInServiceTimeout:I

    if-lez p2, :cond_41

    .line 1833
    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$smisNetworkRegistered(Lcom/android/internal/telephony/Phone;)Z

    move-result p2

    if-nez p2, :cond_41

    return v0

    .line 1836
    :cond_41
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    .line 1837
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->shouldExitSatelliteMode()Z

    move-result p0

    if-nez p0, :cond_54

    return p3

    :cond_54
    return v0
.end method

.method public blacklist onComplete(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Z)V
    .registers 6

    .line 1793
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$expectedConnection:Landroid/telecom/Connection;

    invoke-virtual {p1}, Landroid/telecom/Connection;->getState()I

    move-result p1

    const/4 v0, 0x6

    const-string v1, "EmergencyStateTracker"

    if-ne p1, v0, :cond_29

    .line 1794
    const-string p1, "Call disconnected before the outgoing call was placed.Skipping call placement."

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhoneFactoryProxy(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length p1, p0

    const/4 p2, 0x0

    move v0, p2

    :goto_1d
    if-ge v0, p1, :cond_28

    aget-object v1, p0, v0

    const/4 v2, 0x1

    .line 1799
    invoke-interface {v1, v2, p2, p2, v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPower(ZZZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_28
    return-void

    :cond_29
    if-nez p2, :cond_51

    .line 1804
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->shouldExitSatelliteMode()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 1806
    const-string p1, "Failed to turn off satellite modem."

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$emergencyType:I

    const/16 p2, 0x52

    invoke-static {p1, p0, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mcompleteEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;II)V

    return-void

    .line 1810
    :cond_42
    const-string p1, "Failed to turn on radio."

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$emergencyType:I

    const/16 p2, 0x11

    invoke-static {p1, p0, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mcompleteEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;II)V

    return-void

    .line 1814
    :cond_51
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmOngoingConnection(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Landroid/telecom/Connection;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$expectedConnection:Landroid/telecom/Connection;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7f

    .line 1815
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onComplete "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$expectedConnection:Landroid/telecom/Connection;

    .line 1816
    invoke-virtual {p0}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " canceled."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1815
    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1819
    :cond_7f
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$phone:Lcom/android/internal/telephony/Phone;

    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$emergencyType:I

    invoke-static {p1, p2, p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mswitchDdsAndSetEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method public blacklist onTimeout(Lcom/android/internal/telephony/Phone;IZ)Z
    .registers 4

    .line 1842
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmOngoingConnection(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Landroid/telecom/Connection;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$expectedConnection:Landroid/telecom/Connection;

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_31

    .line 1843
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onTimeout "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->val$expectedConnection:Landroid/telecom/Connection;

    .line 1844
    invoke-virtual {p0}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " canceled."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1843
    const-string p1, "EmergencyStateTracker"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    .line 1848
    :cond_31
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    .line 1849
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->shouldExitSatelliteMode()Z

    move-result p0

    if-nez p0, :cond_44

    return p3

    :cond_44
    const/4 p0, 0x0

    return p0
.end method
