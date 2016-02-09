.class public Lcom/android/internal/telephony/sip/SipPhoneFactory;
.super Ljava/lang/Object;
.source "SipPhoneFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 4
    .param p0, "sipUri"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNotifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    #@0
    .prologue
    .line 42
    :try_start_0
    new-instance v2, Landroid/net/sip/SipProfile$Builder;

    #@2
    invoke-direct {v2, p0}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v2}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    #@8
    move-result-object v1

    #@9
    .line 43
    .local v1, "profile":Landroid/net/sip/SipProfile;
    new-instance v2, Lcom/android/internal/telephony/sip/SipPhone;

    #@b
    invoke-direct {v2, p1, p2, v1}, Lcom/android/internal/telephony/sip/SipPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    return-object v2

    #@f
    .line 44
    .end local v1    # "profile":Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v0

    #@10
    .line 45
    .local v0, "e":Ljava/text/ParseException;
    const-string/jumbo v2, "SipPhoneFactory"

    #@13
    const-string/jumbo v3, "makePhone"

    #@16
    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 46
    const/4 v2, 0x0

    #@1a
    return-object v2
.end method
