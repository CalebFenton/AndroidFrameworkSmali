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
.field final synthetic this$0:Landroid/widget/DigitalClock;


# direct methods
.method public constructor <init>(Landroid/widget/DigitalClock;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/DigitalClock;

    #@0
    .prologue
    .line 105
    iput-object p1, p0, Landroid/widget/DigitalClock$FormatChangeObserver;->this$0:Landroid/widget/DigitalClock;

    #@2
    .line 106
    new-instance v0, Landroid/os/Handler;

    #@4
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@7
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@a
    .line 105
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/widget/DigitalClock$FormatChangeObserver;->this$0:Landroid/widget/DigitalClock;

    #@2
    invoke-static {v0}, Landroid/widget/DigitalClock;->-wrap0(Landroid/widget/DigitalClock;)V

    #@5
    .line 110
    return-void
.end method
