.class public Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;
.super Ljava/lang/Object;
.source "ImsPhoneFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static makePhone(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNotifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p2, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 41
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 42
    :catch_0
    move-exception v0

    #@7
    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "VoltePhoneFactory"

    #@a
    const-string/jumbo v2, "makePhone"

    #@d
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 44
    const/4 v1, 0x0

    #@11
    return-object v1
.end method
