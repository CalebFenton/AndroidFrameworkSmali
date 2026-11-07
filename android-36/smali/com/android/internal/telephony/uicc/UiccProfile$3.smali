.class Lcom/android/internal/telephony/uicc/UiccProfile$3;
.super Ljava/lang/Object;
.source "UiccProfile.java"

# interfaces
.implements Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCarrierConfigChanged(IIII)V
    .registers 6

    .line 204
    iget-object p4, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result p4

    if-ne p1, p4, :cond_36

    .line 205
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCarrierConfigChanged: slotIndex="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", subId="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", carrierId="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mhandleCarrierNameOverride(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mhandleSimCountryIsoOverride(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    :cond_36
    return-void
.end method
