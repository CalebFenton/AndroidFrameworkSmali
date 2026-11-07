.class Lcom/android/internal/telephony/TelephonyTester$1;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/TelephonyTester;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/TelephonyTester;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 183
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sIntentReceiver.onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4b

    .line 185
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string p2, "simulate detaching"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RegistrantList;

    .line 187
    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void

    :catch_48
    move-exception p1

    goto/16 :goto_159

    .line 188
    :cond_4b
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 189
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string p2, "simulate attaching"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RegistrantList;

    .line 191
    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void

    .line 192
    :cond_78
    const-string v1, "com.android.internal.telephony.TestConferenceEventPackage"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string v1, "inject simulated conference event package"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string v1, "filename"

    .line 195
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bypassImsCall"

    const/4 v3, 0x0

    .line 196
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 194
    invoke-static {v0, p1, v1, p2}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mhandleTestConferenceEventPackage(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 197
    :cond_9a
    const-string p1, "com.android.internal.telephony.TestDialogEventPackage"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    .line 198
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string v0, "handle test dialog event package intent"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mhandleTestDialogEventPackageIntent(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V

    return-void

    .line 200
    :cond_af
    const-string p1, "com.android.internal.telephony.TestSuppSrvcFail"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 201
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string v0, "handle test supp svc failed intent"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mhandleSuppServiceFailedIntent(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V

    return-void

    .line 203
    :cond_c4
    const-string p1, "com.android.internal.telephony.TestHandoverFail"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d9

    .line 204
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string p2, "handle handover fail test intent"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mhandleHandoverFailedIntent(Lcom/android/internal/telephony/TelephonyTester;)V

    return-void

    .line 206
    :cond_d9
    const-string p1, "com.android.internal.telephony.TestSuppSrvcNotification"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ee

    .line 207
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string v0, "handle supp service notification test intent"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$msendTestSuppServiceNotification(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V

    return-void

    .line 209
    :cond_ee
    const-string p1, "com.android.internal.telephony.TestServiceState"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_103

    .line 210
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string v0, "handle test service state changed intent"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->setServiceStateTestIntent(Landroid/content/Intent;)V

    return-void

    .line 212
    :cond_103
    const-string p1, "com.android.internal.telephony.TestImsECall"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_118

    .line 213
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string p2, "handle test IMS ecall intent"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-virtual {p1}, Lcom/android/internal/telephony/TelephonyTester;->testImsECall()V

    return-void

    .line 215
    :cond_118
    const-string p1, "com.android.internal.telephony.TestReceiveDtmf"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12d

    .line 216
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string v0, "handle test DTMF intent"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->testImsReceiveDtmf(Landroid/content/Intent;)V

    return-void

    .line 218
    :cond_12d
    const-string p1, "com.android.internal.telephony.TestChangeNumber"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_142

    .line 219
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string v0, "handle test change number intent"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->testChangeNumber(Landroid/content/Intent;)V

    return-void

    .line 222
    :cond_142
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: unknown action="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V
    :try_end_158
    .catch Landroid/os/BadParcelableException; {:try_start_4 .. :try_end_158} :catch_48

    return-void

    .line 225
    :goto_159
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$fgetmLogTag(Lcom/android/internal/telephony/TelephonyTester;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
