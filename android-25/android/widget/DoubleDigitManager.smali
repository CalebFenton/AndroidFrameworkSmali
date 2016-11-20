.class Landroid/widget/DoubleDigitManager;
.super Ljava/lang/Object;
.source "DoubleDigitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DoubleDigitManager$CallBack;
    }
.end annotation


# instance fields
.field private intermediateDigit:Ljava/lang/Integer;

.field private final mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

.field private final timeoutInMillis:J


# direct methods
.method static synthetic -get0(Landroid/widget/DoubleDigitManager;)Ljava/lang/Integer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/DoubleDigitManager;)Landroid/widget/DoubleDigitManager$CallBack;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/DoubleDigitManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    #@2
    return-object p1
.end method

.method public constructor <init>(JLandroid/widget/DoubleDigitManager$CallBack;)V
    .locals 1
    .param p1, "timeoutInMillis"    # J
    .param p3, "callBack"    # Landroid/widget/DoubleDigitManager$CallBack;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput-wide p1, p0, Landroid/widget/DoubleDigitManager;->timeoutInMillis:J

    #@5
    .line 41
    iput-object p3, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    #@7
    .line 39
    return-void
.end method


# virtual methods
.method public reportDigit(I)V
    .locals 5
    .param p1, "digit"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 49
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    #@3
    if-nez v0, :cond_1

    #@5
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    #@b
    .line 52
    new-instance v0, Landroid/os/Handler;

    #@d
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@10
    new-instance v1, Landroid/widget/DoubleDigitManager$1;

    #@12
    invoke-direct {v1, p0}, Landroid/widget/DoubleDigitManager$1;-><init>(Landroid/widget/DoubleDigitManager;)V

    #@15
    .line 59
    iget-wide v2, p0, Landroid/widget/DoubleDigitManager;->timeoutInMillis:J

    #@17
    .line 52
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1a
    .line 61
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    #@1c
    invoke-interface {v0, p1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitIntermediate(I)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_0

    #@22
    .line 66
    iput-object v4, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    #@24
    .line 67
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    #@26
    invoke-interface {v0, p1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitFinal(I)V

    #@29
    .line 48
    :cond_0
    :goto_0
    return-void

    #@2a
    .line 69
    :cond_1
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    #@2c
    iget-object v1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    #@2e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@31
    move-result v1

    #@32
    invoke-interface {v0, v1, p1}, Landroid/widget/DoubleDigitManager$CallBack;->twoDigitsFinal(II)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_0

    #@38
    .line 70
    iput-object v4, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    #@3a
    goto :goto_0
.end method
