.class Lcom/android/internal/telephony/imsphone/ImsPhone$1;
.super Ljava/lang/Object;
.source "ImsPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

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
    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->exitEmergencyCallbackMode()V

    #@5
    .line 151
    return-void
.end method
