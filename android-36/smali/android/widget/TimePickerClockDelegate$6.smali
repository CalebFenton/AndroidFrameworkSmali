.class Landroid/widget/TimePickerClockDelegate$6;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TimePickerClockDelegate;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/TimePickerClockDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 982
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 985
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmMinuteView(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/NumericTextView;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerClockDelegate;->setMinute(I)V

    .line 986
    return-void
.end method
