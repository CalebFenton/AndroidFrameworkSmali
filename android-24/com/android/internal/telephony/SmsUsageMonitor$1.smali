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
.field final synthetic this$0:Lcom/android/internal/telephony/SmsUsageMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    #@0
    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@2
    invoke-static {v0}, Lcom/android/internal/telephony/SmsUsageMonitor;->-wrap0(Lcom/android/internal/telephony/SmsUsageMonitor;)V

    #@5
    .line 576
    return-void
.end method
