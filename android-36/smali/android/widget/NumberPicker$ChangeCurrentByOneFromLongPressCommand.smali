.class Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private greylist-max-o mIncrement:Z

.field final synthetic blacklist this$0:Landroid/widget/NumberPicker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetStep(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/NumberPicker;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/NumberPicker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2431
    iput-object p1, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o setStep(Z)V
    .registers 2
    .param p1, "increment"    # Z

    .line 2435
    iput-boolean p1, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2436
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 2440
    iget-object v0, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    iget-boolean v1, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-$$Nest$mchangeValueByOne(Landroid/widget/NumberPicker;Z)V

    .line 2441
    iget-object v0, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmLongPressUpdateInterval(Landroid/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2442
    return-void
.end method
