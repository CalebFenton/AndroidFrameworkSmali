.class Lcom/android/internal/telephony/cdma/CDMAPhone$1;
.super Ljava/lang/Object;
.source "CDMAPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CDMAPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@0
    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$1;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

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
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$1;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->exitEmergencyCallbackMode()V

    #@5
    .line 136
    return-void
.end method
