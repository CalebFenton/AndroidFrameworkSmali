.class Landroid/widget/DigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/DigitalClock;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/DigitalClock;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Landroid/widget/DigitalClock$FormatChangeObserver;->this$0:Landroid/widget/DigitalClock;

    .line 109
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 110
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 114
    iget-object v0, p0, Landroid/widget/DigitalClock$FormatChangeObserver;->this$0:Landroid/widget/DigitalClock;

    invoke-static {v0}, Landroid/widget/DigitalClock;->-$$Nest$msetFormat(Landroid/widget/DigitalClock;)V

    .line 115
    return-void
.end method
