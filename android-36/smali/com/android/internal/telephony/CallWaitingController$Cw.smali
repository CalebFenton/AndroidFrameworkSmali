.class Lcom/android/internal/telephony/CallWaitingController$Cw;
.super Ljava/lang/Object;
.source "CallWaitingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallWaitingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cw"
.end annotation


# instance fields
.field final blacklist mEnable:Z

.field final blacklist mImsRegistered:Z

.field final blacklist mOnComplete:Landroid/os/Message;


# direct methods
.method constructor blacklist <init>(ZZLandroid/os/Message;)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mEnable:Z

    .line 76
    iput-object p3, p0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mOnComplete:Landroid/os/Message;

    .line 77
    iput-boolean p2, p0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mImsRegistered:Z

    return-void
.end method
