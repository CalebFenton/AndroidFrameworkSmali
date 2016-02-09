.class final Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UEventInfo"
.end annotation


# instance fields
.field private final mDevName:Ljava/lang/String;

.field private final mState1Bits:I

.field private final mState2Bits:I

.field private final mStateNbits:I

.field final synthetic this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    .param p2, "devName"    # Ljava/lang/String;
    .param p3, "state1Bits"    # I
    .param p4, "state2Bits"    # I
    .param p5, "stateNbits"    # I

    #@0
    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 434
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    #@7
    .line 435
    iput p3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    #@9
    .line 436
    iput p4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    #@b
    .line 437
    iput p5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    #@d
    .line 433
    return-void
.end method


# virtual methods
.method public checkSwitchExists()Z
    .locals 2

    #@0
    .prologue
    .line 451
    new-instance v0, Ljava/io/File;

    #@2
    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    .line 452
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public computeNewHeadsetState(II)I
    .locals 4
    .param p1, "headsetState"    # I
    .param p2, "switchState"    # I

    #@0
    .prologue
    .line 456
    iget v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    #@2
    iget v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    #@4
    or-int/2addr v2, v3

    #@5
    iget v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    #@7
    or-int/2addr v2, v3

    #@8
    not-int v0, v2

    #@9
    .line 457
    .local v0, "preserveMask":I
    const/4 v2, 0x1

    #@a
    if-ne p2, v2, :cond_0

    #@c
    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    #@e
    .line 461
    .local v1, "setBits":I
    :goto_0
    and-int v2, p1, v0

    #@10
    or-int/2addr v2, v1

    #@11
    return v2

    #@12
    .line 458
    .end local v1    # "setBits":I
    :cond_0
    const/4 v2, 0x2

    #@13
    if-ne p2, v2, :cond_1

    #@15
    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    #@17
    .restart local v1    # "setBits":I
    goto :goto_0

    #@18
    .line 459
    .end local v1    # "setBits":I
    :cond_1
    iget v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    #@1a
    if-ne p2, v2, :cond_2

    #@1c
    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    #@1e
    .restart local v1    # "setBits":I
    goto :goto_0

    #@1f
    .end local v1    # "setBits":I
    :cond_2
    const/4 v1, 0x0

    #@20
    .restart local v1    # "setBits":I
    goto :goto_0
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDevPath()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 443
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    const-string/jumbo v1, "/devices/virtual/switch/%s"

    #@5
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    #@a
    const/4 v4, 0x0

    #@b
    aput-object v3, v2, v4

    #@d
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 447
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    const-string/jumbo v1, "/sys/class/switch/%s/state"

    #@5
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    #@a
    const/4 v4, 0x0

    #@b
    aput-object v3, v2, v4

    #@d
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method
