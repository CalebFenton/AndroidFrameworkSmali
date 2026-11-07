.class final Landroid/view/AccessibilityInteractionController$MessageHolder;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageHolder"
.end annotation


# instance fields
.field final greylist-max-o mInterrogatingPid:I

.field final greylist-max-o mInterrogatingTid:J

.field final greylist-max-o mMessage:Landroid/os/Message;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/Message;IJ)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "interrogatingPid"    # I
    .param p3, "interrogatingTid"    # J

    .line 1823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1824
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$MessageHolder;->mMessage:Landroid/os/Message;

    .line 1825
    iput p2, p0, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingPid:I

    .line 1826
    iput-wide p3, p0, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingTid:J

    .line 1827
    return-void
.end method
