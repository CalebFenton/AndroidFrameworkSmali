.class public Lcom/android/internal/telephony/imsphone/ImsPhone$SS;
.super Ljava/lang/Object;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SS"
.end annotation


# instance fields
.field blacklist mCfAction:I

.field blacklist mCfReason:I

.field blacklist mClirMode:I

.field blacklist mDialingNumber:Ljava/lang/String;

.field blacklist mEnable:Z

.field blacklist mFacility:Ljava/lang/String;

.field blacklist mLockState:Z

.field public blacklist mOnComplete:Landroid/os/Message;

.field blacklist mPassword:Ljava/lang/String;

.field blacklist mServiceClass:I

.field blacklist mTimerSeconds:I


# direct methods
.method constructor blacklist <init>(IILandroid/os/Message;)V
    .registers 4

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfReason:I

    .line 439
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 440
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(IILjava/lang/String;IILandroid/os/Message;)V
    .registers 7

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfAction:I

    .line 447
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfReason:I

    .line 448
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mDialingNumber:Ljava/lang/String;

    .line 449
    iput p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 450
    iput p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mTimerSeconds:I

    .line 451
    iput-object p6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/os/Message;)V
    .registers 3

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mClirMode:I

    .line 426
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Message;)V
    .registers 2

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 5

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mFacility:Ljava/lang/String;

    .line 457
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mPassword:Ljava/lang/String;

    .line 458
    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 459
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 6

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mFacility:Ljava/lang/String;

    .line 466
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mLockState:Z

    .line 467
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mPassword:Ljava/lang/String;

    .line 468
    iput p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 469
    iput-object p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(ZILandroid/os/Message;)V
    .registers 4

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mEnable:Z

    .line 432
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 433
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method
