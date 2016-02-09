.class Lcom/android/internal/telephony/imsphone/ImsPhone$2;
.super Lcom/android/ims/ImsEcbmStateListener;
.source "ImsPhone.java"


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
    .line 1206
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    invoke-direct {p0}, Lcom/android/ims/ImsEcbmStateListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onECBMEntered()V
    .locals 2

    #@0
    .prologue
    .line 1209
    const-string/jumbo v0, "ImsPhone"

    #@3
    const-string/jumbo v1, "onECBMEntered"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1210
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@b
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@e
    .line 1208
    return-void
.end method

.method public onECBMExited()V
    .locals 2

    #@0
    .prologue
    .line 1215
    const-string/jumbo v0, "ImsPhone"

    #@3
    const-string/jumbo v1, "onECBMExited"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1216
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@b
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-wrap1(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@e
    .line 1214
    return-void
.end method
