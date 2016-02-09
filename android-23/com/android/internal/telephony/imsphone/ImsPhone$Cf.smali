.class Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
.super Ljava/lang/Object;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cf"
.end annotation


# instance fields
.field final mIsCfu:Z

.field final mOnComplete:Landroid/os/Message;

.field final mSetCfNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "cfNumber"    # Ljava/lang/String;
    .param p2, "isCfu"    # Z
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 166
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    #@5
    .line 167
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mIsCfu:Z

    #@7
    .line 168
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mOnComplete:Landroid/os/Message;

    #@9
    .line 165
    return-void
.end method
