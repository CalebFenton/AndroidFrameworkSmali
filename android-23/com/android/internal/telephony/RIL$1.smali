.class Lcom/android/internal/telephony/RIL$1;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/RIL;

    #@0
    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 297
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 304
    if-nez p1, :cond_0

    #@2
    .line 305
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    #@4
    iget v0, v1, Lcom/android/internal/telephony/RIL;->mDefaultDisplayState:I

    #@6
    .line 306
    .local v0, "oldState":I
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    #@8
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    #@a
    iget-object v2, v2, Lcom/android/internal/telephony/RIL;->mDefaultDisplay:Landroid/view/Display;

    #@c
    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    #@f
    move-result v2

    #@10
    iput v2, v1, Lcom/android/internal/telephony/RIL;->mDefaultDisplayState:I

    #@12
    .line 307
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    #@14
    iget v1, v1, Lcom/android/internal/telephony/RIL;->mDefaultDisplayState:I

    #@16
    if-eq v1, v0, :cond_0

    #@18
    .line 308
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    #@1a
    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->-wrap7(Lcom/android/internal/telephony/RIL;)V

    #@1d
    .line 303
    .end local v0    # "oldState":I
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 300
    return-void
.end method
