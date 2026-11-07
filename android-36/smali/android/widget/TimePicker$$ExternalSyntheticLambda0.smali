.class public final synthetic Landroid/widget/TimePicker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/TimePicker;

.field public final synthetic blacklist f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/TimePicker;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TimePicker$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TimePicker;

    iput-object p2, p0, Landroid/widget/TimePicker$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist onTimeChanged(Landroid/widget/TimePicker;II)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/widget/TimePicker$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/TimePicker$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/widget/TimePicker;->$r8$lambda$bLumAqwrdHSPv4Q43T8JelnCgTc(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/widget/TimePicker;II)V

    return-void
.end method
