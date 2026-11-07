.class Lcom/android/internal/telephony/VisualVoicemailSmsFilter$1;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilter.java"

# interfaces
.implements Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/VisualVoicemailSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist fromSubId(ILandroid/content/Context;)Landroid/telecom/PhoneAccountHandle;
    .registers 5

    .line 83
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 86
    :cond_8
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_10

    return-object v0

    .line 90
    :cond_10
    const-string v0, "telephony_subscription_service"

    .line 91
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    .line 93
    invoke-virtual {p2, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 95
    new-instance p2, Landroid/telecom/PhoneAccountHandle;

    invoke-static {}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->-$$Nest$sfgetPSTN_CONNECTION_SERVICE_COMPONENT()Landroid/content/ComponentName;

    move-result-object v0

    .line 96
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0, p1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object p2

    .line 99
    :cond_34
    new-instance p1, Landroid/telecom/PhoneAccountHandle;

    invoke-static {}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->-$$Nest$sfgetPSTN_CONNECTION_SERVICE_COMPONENT()Landroid/content/ComponentName;

    move-result-object p2

    .line 100
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object p1
.end method
