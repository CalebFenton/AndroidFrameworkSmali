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
.field public mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

.field public mToken:Ljava/lang/Object;

.field final synthetic this$0:Landroid/view/InputQueue;


# direct methods
.method private constructor <init>(Landroid/view/InputQueue;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/InputQueue;

    #@0
    .prologue
    .line 129
    iput-object p1, p0, Landroid/view/InputQueue$ActiveInputEvent;->this$0:Landroid/view/InputQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/InputQueue;Landroid/view/InputQueue$ActiveInputEvent;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/InputQueue;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/InputQueue$ActiveInputEvent;-><init>(Landroid/view/InputQueue;)V

    #@3
    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 134
    iput-object v0, p0, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    #@3
    .line 135
    iput-object v0, p0, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    #@5
    .line 133
    return-void
.end method
