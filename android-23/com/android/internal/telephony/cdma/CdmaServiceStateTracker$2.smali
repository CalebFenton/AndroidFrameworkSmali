.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;
.super Landroid/database/ContentObserver;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    const-string/jumbo v1, "Auto time zone state changed"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@8
    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@a
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->-wrap0(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    #@d
    .line 165
    return-void
.end method
