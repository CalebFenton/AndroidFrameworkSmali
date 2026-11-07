.class Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;
.super Ljava/lang/Object;
.source "UiccCarrierPrivilegeRules.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 205
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->-$$Nest$fgetmAIDInUse(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->-$$Nest$mopenChannel(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;I)V

    return-void
.end method
