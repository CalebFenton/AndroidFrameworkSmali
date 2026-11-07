.class Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/VisualVoicemailSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullMessage"
.end annotation


# instance fields
.field public blacklist firstMessage:Landroid/telephony/SmsMessage;

.field public blacklist fullMessageBody:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/VisualVoicemailSmsFilter-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;-><init>()V

    return-void
.end method
