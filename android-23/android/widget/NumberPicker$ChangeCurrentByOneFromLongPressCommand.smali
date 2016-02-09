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
.field private mIncrement:Z

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method static synthetic -wrap0(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .param p1, "increment"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/NumberPicker;

    #@0
    .prologue
    .line 2253
    iput-object p1, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method private setStep(Z)V
    .locals 0
    .param p1, "increment"    # Z

    #@0
    .prologue
    .line 2257
    iput-boolean p1, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    #@2
    .line 2256
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 2262
    iget-object v0, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    #@2
    iget-boolean v1, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    #@4
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    #@7
    .line 2263
    iget-object v0, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    #@9
    iget-object v1, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    #@b
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get9(Landroid/widget/NumberPicker;)J

    #@e
    move-result-wide v2

    #@f
    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    #@12
    .line 2261
    return-void
.end method
