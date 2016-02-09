.class Lcom/android/server/wm/AppWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "AppWindowToken.java"


# instance fields
.field final allAppWindows:Lcom/android/server/wm/WindowList;

.field allDrawn:Z

.field appFullscreen:Z

.field final appToken:Landroid/view/IApplicationToken;

.field clientHidden:Z

.field deferClearAllDrawn:Z

.field firstWindowDrawn:Z

.field hiddenRequested:Z

.field inPendingTransaction:Z

.field inputDispatchingTimeoutNanos:J

.field lastTransactionSequence:J

.field layoutConfigChanges:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field final mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field mEnteringAnimation:Z

.field final mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field mIsExiting:Z

.field mLaunchTaskBehind:Z

.field mTask:Lcom/android/server/wm/Task;

.field numDrawnWindows:I

.field numInterestingWindows:I

.field removed:Z

.field reportedDrawn:Z

.field reportedVisible:Z

.field requestedOrientation:I

.field showForAllUsers:Z

.field startingData:Lcom/android/server/wm/StartingData;

.field startingDisplayed:Z

.field startingMoved:Z

.field startingView:Landroid/view/View;

.field startingWindow:Lcom/android/server/wm/WindowState;

.field final voiceInteraction:Z

.field willBeHidden:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Z)V
    .locals 3
    .param p1, "_service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/view/IApplicationToken;
    .param p3, "_voiceInteraction"    # Z

    #@0
    .prologue
    .line 117
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    .line 118
    const/4 v1, 0x2

    #@5
    const/4 v2, 0x1

    #@6
    .line 117
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    #@9
    .line 48
    new-instance v0, Lcom/android/server/wm/WindowList;

    #@b
    invoke-direct {v0}, Lcom/android/server/wm/WindowList;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@10
    .line 57
    const/4 v0, -0x1

    #@11
    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    #@13
    .line 68
    const-wide/high16 v0, -0x8000000000000000L

    #@15
    iput-wide v0, p0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    #@17
    .line 119
    iput-object p0, p0, Lcom/android/server/wm/AppWindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    #@19
    .line 120
    iput-object p2, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@1b
    .line 121
    iput-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    #@1d
    .line 122
    new-instance v0, Lcom/android/server/input/InputApplicationHandle;

    #@1f
    invoke-direct {v0, p0}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    #@22
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@24
    .line 123
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@26
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@28
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@2a
    .line 124
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator;

    #@2c
    invoke-direct {v0, p0}, Lcom/android/server/wm/AppWindowAnimator;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    #@2f
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@31
    .line 116
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@3
    .line 293
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 294
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    const-string/jumbo v0, "app=true voiceInteraction="

    #@d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    #@12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@15
    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@17
    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    #@1a
    move-result v0

    #@1b
    if-lez v0, :cond_1

    #@1d
    .line 297
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    const-string/jumbo v0, "allAppWindows="

    #@23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2b
    .line 299
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    const-string/jumbo v0, "task="

    #@31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@39
    .line 300
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    const-string/jumbo v0, " appFullscreen="

    #@3f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    #@44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@47
    .line 301
    const-string/jumbo v0, " requestedOrientation="

    #@4a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    #@4f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@52
    .line 302
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55
    const-string/jumbo v0, "hiddenRequested="

    #@58
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@60
    .line 303
    const-string/jumbo v0, " clientHidden="

    #@63
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    #@68
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@6b
    .line 304
    const-string/jumbo v0, " willBeHidden="

    #@6e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    #@73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@76
    .line 305
    const-string/jumbo v0, " reportedDrawn="

    #@79
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    #@7e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@81
    .line 306
    const-string/jumbo v0, " reportedVisible="

    #@84
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@87
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    #@89
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@8c
    .line 307
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    #@8e
    if-eqz v0, :cond_2

    #@90
    .line 308
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@93
    const-string/jumbo v0, "paused="

    #@96
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@99
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    #@9b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@9e
    .line 310
    :cond_2
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    #@a0
    if-nez v0, :cond_3

    #@a2
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    #@a4
    if-eqz v0, :cond_a

    #@a6
    .line 312
    :cond_3
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a9
    const-string/jumbo v0, "numInterestingWindows="

    #@ac
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@af
    .line 313
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    #@b1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@b4
    .line 314
    const-string/jumbo v0, " numDrawnWindows="

    #@b7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ba
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    #@bc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@bf
    .line 315
    const-string/jumbo v0, " inPendingTransaction="

    #@c2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c5
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    #@c7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@ca
    .line 316
    const-string/jumbo v0, " allDrawn="

    #@cd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d0
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@d2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@d5
    .line 317
    const-string/jumbo v0, " (animator="

    #@d8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@db
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@dd
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    #@df
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@e2
    .line 318
    const-string/jumbo v0, ")"

    #@e5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e8
    .line 320
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    #@ea
    if-eqz v0, :cond_5

    #@ec
    .line 321
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ef
    const-string/jumbo v0, "inPendingTransaction="

    #@f2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f5
    .line 322
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    #@f7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@fa
    .line 324
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@fc
    if-nez v0, :cond_6

    #@fe
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    #@100
    if-nez v0, :cond_6

    #@102
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    #@104
    if-nez v0, :cond_6

    #@106
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@108
    if-eqz v0, :cond_7

    #@10a
    .line 325
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10d
    const-string/jumbo v0, "startingData="

    #@110
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@113
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@115
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@118
    .line 326
    const-string/jumbo v0, " removed="

    #@11b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11e
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    #@120
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@123
    .line 327
    const-string/jumbo v0, " firstWindowDrawn="

    #@126
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@129
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    #@12b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@12e
    .line 328
    const-string/jumbo v0, " mIsExiting="

    #@131
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@134
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@136
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@139
    .line 330
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@13b
    if-nez v0, :cond_8

    #@13d
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    #@13f
    if-eqz v0, :cond_b

    #@141
    .line 332
    :cond_8
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@144
    const-string/jumbo v0, "startingWindow="

    #@147
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14a
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@14c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@14f
    .line 333
    const-string/jumbo v0, " startingView="

    #@152
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@155
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    #@157
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@15a
    .line 334
    const-string/jumbo v0, " startingDisplayed="

    #@15d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@160
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    #@162
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@165
    .line 335
    const-string/jumbo v0, " startingMoved"

    #@168
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16b
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    #@16d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@170
    .line 291
    :cond_9
    return-void

    #@171
    .line 311
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@173
    .line 310
    if-nez v0, :cond_3

    #@175
    .line 311
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@177
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    #@179
    .line 310
    if-eqz v0, :cond_4

    #@17b
    goto/16 :goto_0

    #@17d
    .line 331
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    #@17f
    .line 330
    if-nez v0, :cond_8

    #@181
    .line 331
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    #@183
    .line 330
    if-eqz v0, :cond_9

    #@185
    goto :goto_1
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .locals 4

    #@0
    .prologue
    .line 228
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v0

    #@6
    .line 229
    .local v0, "j":I
    :cond_0
    if-lez v0, :cond_2

    #@8
    .line 230
    add-int/lit8 v0, v0, -0x1

    #@a
    .line 231
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 232
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@14
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@16
    const/4 v3, 0x1

    #@17
    if-eq v2, v3, :cond_1

    #@19
    .line 233
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1b
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1d
    const/4 v3, 0x3

    #@1e
    if-ne v2, v3, :cond_0

    #@20
    .line 234
    :cond_1
    return-object v1

    #@21
    .line 237
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v2, 0x0

    #@22
    return-object v2
.end method

.method isVisible()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 241
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@3
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@6
    move-result v0

    #@7
    .line 242
    .local v0, "N":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@a
    .line 243
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@12
    .line 244
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@14
    if-nez v3, :cond_0

    #@16
    .line 245
    iget v3, v2, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 246
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1c
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 247
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@24
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@26
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 242
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 248
    :cond_1
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@31
    if-nez v3, :cond_0

    #@33
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@36
    move-result v3

    #@37
    .line 244
    if-eqz v3, :cond_0

    #@39
    .line 249
    const/4 v3, 0x1

    #@3a
    return v3

    #@3b
    .line 252
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    return v4
.end method

.method removeAllWindows()V
    .locals 4

    #@0
    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "winNdx":I
    :goto_0
    if-ltz v1, :cond_0

    #@a
    .line 279
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@12
    .line 284
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@14
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    #@17
    .line 278
    add-int/lit8 v2, v1, -0x1

    #@19
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@1b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@1e
    move-result v3

    #@1f
    add-int/lit8 v3, v3, -0x1

    #@21
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@24
    move-result v1

    #@25
    goto :goto_0

    #@26
    .line 286
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@28
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->clear()V

    #@2b
    .line 287
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@2d
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->clear()V

    #@30
    .line 271
    return-void
.end method

.method removeAppFromTaskLocked()V
    .locals 4

    #@0
    .prologue
    .line 256
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@3
    .line 257
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeAllWindows()V

    #@6
    .line 260
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@8
    .line 261
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    #@a
    .line 262
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 263
    const-string/jumbo v1, "WindowManager"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "removeAppFromTaskLocked: token="

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 264
    const-string/jumbo v3, " not found."

    #@26
    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 266
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@33
    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@35
    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    #@38
    .line 255
    :cond_1
    return-void
.end method

.method sendAppVisibilityToClients()V
    .locals 6

    #@0
    .prologue
    .line 128
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v0

    #@6
    .line 129
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@9
    .line 130
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@b
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Lcom/android/server/wm/WindowState;

    #@11
    .line 131
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@13
    if-ne v3, v4, :cond_0

    #@15
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 129
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 138
    :cond_0
    :try_start_0
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@1e
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    #@20
    if-eqz v4, :cond_1

    #@22
    const/4 v4, 0x0

    #@23
    :goto_2
    invoke-interface {v5, v4}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    goto :goto_1

    #@27
    .line 139
    :catch_0
    move-exception v1

    #@28
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@29
    .line 138
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v4, 0x1

    #@2a
    goto :goto_2

    #@2b
    .line 127
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 343
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "AppWindowToken{"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 344
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 345
    const-string/jumbo v1, " token="

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    const/16 v1, 0x7d

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    #@30
    .line 348
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    #@32
    return-object v1
.end method

.method updateReportedVisibilityLocked()V
    .locals 14

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 145
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@4
    if-nez v12, :cond_0

    #@6
    .line 146
    return-void

    #@7
    .line 149
    :cond_0
    const/4 v7, 0x0

    #@8
    .line 150
    .local v7, "numInteresting":I
    const/4 v8, 0x0

    #@9
    .line 151
    .local v8, "numVisible":I
    const/4 v6, 0x0

    #@a
    .line 152
    .local v6, "numDrawn":I
    const/4 v4, 0x1

    #@b
    .line 156
    .local v4, "nowGone":Z
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    #@10
    move-result v0

    #@11
    .line 157
    .local v0, "N":I
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    #@14
    .line 158
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@16
    invoke-virtual {v12, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v9

    #@1a
    check-cast v9, Lcom/android/server/wm/WindowState;

    #@1c
    .line 159
    .local v9, "win":Lcom/android/server/wm/WindowState;
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@1e
    if-eq v9, v12, :cond_1

    #@20
    iget-boolean v12, v9, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@22
    if-nez v12, :cond_1

    #@24
    .line 160
    iget v12, v9, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@26
    if-eqz v12, :cond_2

    #@28
    .line 157
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 161
    :cond_2
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2d
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2f
    const/4 v13, 0x3

    #@30
    if-eq v12, v13, :cond_1

    #@32
    .line 162
    iget-boolean v12, v9, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@34
    .line 159
    if-nez v12, :cond_1

    #@36
    .line 180
    add-int/lit8 v7, v7, 0x1

    #@38
    .line 181
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@3b
    move-result v12

    #@3c
    if-eqz v12, :cond_4

    #@3e
    .line 182
    add-int/lit8 v6, v6, 0x1

    #@40
    .line 183
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@42
    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    #@45
    move-result v12

    #@46
    if-nez v12, :cond_3

    #@48
    .line 184
    add-int/lit8 v8, v8, 0x1

    #@4a
    .line 186
    :cond_3
    const/4 v4, 0x0

    #@4b
    goto :goto_1

    #@4c
    .line 187
    :cond_4
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4e
    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    #@51
    move-result v12

    #@52
    if-eqz v12, :cond_1

    #@54
    .line 188
    const/4 v4, 0x0

    #@55
    goto :goto_1

    #@56
    .line 192
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_5
    if-lez v7, :cond_b

    #@58
    if-lt v6, v7, :cond_b

    #@5a
    const/4 v3, 0x1

    #@5b
    .line 193
    .local v3, "nowDrawn":Z
    :goto_2
    if-lez v7, :cond_c

    #@5d
    if-lt v8, v7, :cond_c

    #@5f
    const/4 v5, 0x1

    #@60
    .line 194
    .local v5, "nowVisible":Z
    :goto_3
    if-nez v4, :cond_7

    #@62
    .line 196
    if-nez v3, :cond_6

    #@64
    .line 197
    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    #@66
    .line 199
    .end local v3    # "nowDrawn":Z
    :cond_6
    if-nez v5, :cond_7

    #@68
    .line 200
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    #@6a
    .line 205
    .end local v5    # "nowVisible":Z
    :cond_7
    iget-boolean v12, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    #@6c
    if-eq v3, v12, :cond_9

    #@6e
    .line 206
    if-eqz v3, :cond_8

    #@70
    .line 207
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@72
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@74
    .line 208
    const/16 v13, 0x9

    #@76
    .line 207
    invoke-virtual {v12, v13, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@79
    move-result-object v2

    #@7a
    .line 209
    .local v2, "m":Landroid/os/Message;
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@7c
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@7e
    invoke-virtual {v12, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    #@81
    .line 211
    .end local v2    # "m":Landroid/os/Message;
    :cond_8
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    #@83
    .line 213
    :cond_9
    iget-boolean v12, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    #@85
    if-eq v5, v12, :cond_a

    #@87
    .line 217
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    #@89
    .line 218
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@8b
    iget-object v13, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@8d
    .line 220
    if-eqz v5, :cond_d

    #@8f
    move v12, v10

    #@90
    .line 221
    :goto_4
    if-eqz v4, :cond_e

    #@92
    .line 219
    :goto_5
    const/16 v11, 0x8

    #@94
    .line 218
    invoke-virtual {v13, v11, v12, v10, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@97
    move-result-object v2

    #@98
    .line 223
    .restart local v2    # "m":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@9a
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@9c
    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    #@9f
    .line 144
    .end local v2    # "m":Landroid/os/Message;
    :cond_a
    return-void

    #@a0
    .line 192
    :cond_b
    const/4 v3, 0x0

    #@a1
    .restart local v3    # "nowDrawn":Z
    goto :goto_2

    #@a2
    .line 193
    :cond_c
    const/4 v5, 0x0

    #@a3
    .restart local v5    # "nowVisible":Z
    goto :goto_3

    #@a4
    .end local v3    # "nowDrawn":Z
    .end local v5    # "nowVisible":Z
    :cond_d
    move v12, v11

    #@a5
    .line 220
    goto :goto_4

    #@a6
    :cond_e
    move v10, v11

    #@a7
    .line 221
    goto :goto_5
.end method
