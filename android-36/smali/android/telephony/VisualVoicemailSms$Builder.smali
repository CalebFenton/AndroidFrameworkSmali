.class public Landroid/telephony/VisualVoicemailSms$Builder;
.super Ljava/lang/Object;
.source "VisualVoicemailSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mFields:Landroid/os/Bundle;

.field private greylist-max-o mMessageBody:Ljava/lang/String;

.field private greylist-max-o mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private greylist-max-o mPrefix:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFields(Landroid/telephony/VisualVoicemailSms$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mFields:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageBody(Landroid/telephony/VisualVoicemailSms$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mMessageBody:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneAccountHandle(Landroid/telephony/VisualVoicemailSms$Builder;)Landroid/telecom/PhoneAccountHandle;
    .registers 1

    iget-object p0, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrefix(Landroid/telephony/VisualVoicemailSms$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o build()Landroid/telephony/VisualVoicemailSms;
    .registers 2

    .line 93
    new-instance v0, Landroid/telephony/VisualVoicemailSms;

    invoke-direct {v0, p0}, Landroid/telephony/VisualVoicemailSms;-><init>(Landroid/telephony/VisualVoicemailSms$Builder;)V

    return-object v0
.end method

.method public greylist-max-o setFields(Landroid/os/Bundle;)Landroid/telephony/VisualVoicemailSms$Builder;
    .registers 2
    .param p1, "fields"    # Landroid/os/Bundle;

    .line 107
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mFields:Landroid/os/Bundle;

    .line 108
    return-object p0
.end method

.method public greylist-max-o setMessageBody(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;
    .registers 2
    .param p1, "messageBody"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mMessageBody:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public greylist-max-o setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/VisualVoicemailSms$Builder;
    .registers 2
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 97
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 98
    return-object p0
.end method

.method public greylist-max-o setPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;
    .registers 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mPrefix:Ljava/lang/String;

    .line 103
    return-object p0
.end method
