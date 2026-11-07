.class final Landroid/view/InputQueue$ActiveInputEvent;
.super Ljava/lang/Object;
.source "InputQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveInputEvent"
.end annotation


# instance fields
.field public greylist-max-o mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

.field public greylist-max-o mToken:Ljava/lang/Object;


# direct methods
.method private constructor blacklist <init>(Landroid/view/InputQueue;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/InputQueue;Landroid/view/InputQueue-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/InputQueue$ActiveInputEvent;-><init>(Landroid/view/InputQueue;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o recycle()V
    .registers 2

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    .line 138
    iput-object v0, p0, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    .line 139
    return-void
.end method
