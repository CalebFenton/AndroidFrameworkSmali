.class Lcom/android/internal/telephony/SmsUsageMonitor$1;
.super Ljava/lang/Object;
.source "SmsUsageMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SmsUsageMonitor;->setPremiumSmsPermission(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsUsageMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 593
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 1

    .line 596
    iget-object p0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-static {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->-$$Nest$mwritePremiumSmsPolicyDb(Lcom/android/internal/telephony/SmsUsageMonitor;)V

    return-void
.end method
