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
.field private blacklist intermediateDigit:Ljava/lang/Integer;

.field private final blacklist mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

.field private final blacklist timeoutInMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetintermediateDigit(Landroid/widget/DoubleDigitManager;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallBack(Landroid/widget/DoubleDigitManager;)Landroid/widget/DoubleDigitManager$CallBack;
    .registers 1

    iget-object p0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputintermediateDigit(Landroid/widget/DoubleDigitManager;Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    return-void
.end method

.method public constructor blacklist <init>(JLandroid/widget/DoubleDigitManager$CallBack;)V
    .registers 4
    .param p1, "timeoutInMillis"    # J
    .param p3, "callBack"    # Landroid/widget/DoubleDigitManager$CallBack;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Landroid/widget/DoubleDigitManager;->timeoutInMillis:J

    .line 41
    iput-object p3, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist reportDigit(I)V
    .registers 7
    .param p1, "digit"    # I

    .line 49
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroid/widget/DoubleDigitManager$1;

    invoke-direct {v2, p0}, Landroid/widget/DoubleDigitManager$1;-><init>(Landroid/widget/DoubleDigitManager;)V

    iget-wide v3, p0, Landroid/widget/DoubleDigitManager;->timeoutInMillis:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    invoke-interface {v0, p1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 66
    iput-object v1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    .line 67
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    invoke-interface {v0, p1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitFinal(I)V

    goto :goto_3a

    .line 69
    :cond_2a
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    iget-object v2, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2, p1}, Landroid/widget/DoubleDigitManager$CallBack;->twoDigitsFinal(II)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 70
    iput-object v1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    .line 72
    :cond_3a
    :goto_3a
    return-void
.end method
