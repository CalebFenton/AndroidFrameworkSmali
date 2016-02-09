.class Landroid/widget/DateTimeView$ReceiverInfo$2;
.super Landroid/database/ContentObserver;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView$ReceiverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/DateTimeView$ReceiverInfo;


# direct methods
.method constructor <init>(Landroid/widget/DateTimeView$ReceiverInfo;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/DateTimeView$ReceiverInfo;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 220
    iput-object p1, p0, Landroid/widget/DateTimeView$ReceiverInfo$2;->this$1:Landroid/widget/DateTimeView$ReceiverInfo;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo$2;->this$1:Landroid/widget/DateTimeView$ReceiverInfo;

    #@2
    invoke-virtual {v0}, Landroid/widget/DateTimeView$ReceiverInfo;->updateAll()V

    #@5
    .line 222
    return-void
.end method
