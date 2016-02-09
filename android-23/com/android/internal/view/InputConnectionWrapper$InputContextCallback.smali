.class Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
.super Lcom/android/internal/view/IInputContextCallback$Stub;
.source "InputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/InputConnectionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputContextCallback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputConnectionWrapper.ICC"

.field private static sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

.field private static sSequenceNumber:I


# instance fields
.field public mCursorCapsMode:I

.field public mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field public mHaveValue:Z

.field public mRequestUpdateCursorAnchorInfoResult:Z

.field public mSelectedText:Ljava/lang/CharSequence;

.field public mSeq:I

.field public mTextAfterCursor:Ljava/lang/CharSequence;

.field public mTextBeforeCursor:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .locals 1

    #@0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->dispose()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    new-instance v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@2
    invoke-direct {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@7
    .line 48
    const/4 v0, 0x1

    #@8
    sput v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sSequenceNumber:I

    #@a
    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/view/IInputContextCallback$Stub;-><init>()V

    #@3
    return-void
.end method

.method private dispose()V
    .locals 2

    #@0
    .prologue
    .line 80
    const-class v1, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@2
    monitor-enter v1

    #@3
    .line 82
    :try_start_0
    sget-object v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 84
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;

    #@a
    .line 85
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;

    #@d
    .line 86
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@10
    .line 87
    sput-object p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 79
    return-void

    #@14
    .line 80
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method private static getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .locals 4

    #@0
    .prologue
    .line 57
    const-class v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@2
    monitor-enter v2

    #@3
    .line 60
    :try_start_0
    sget-object v1, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 61
    sget-object v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@9
    .line 62
    .local v0, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    const/4 v1, 0x0

    #@a
    sput-object v1, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@c
    .line 65
    const/4 v1, 0x0

    #@d
    iput-boolean v1, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@f
    .line 71
    :goto_0
    sget v1, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sSequenceNumber:I

    #@11
    add-int/lit8 v3, v1, 0x1

    #@13
    sput v3, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sSequenceNumber:I

    #@15
    iput v1, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 72
    return-object v0

    #@19
    .line 67
    .end local v0    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@1b
    invoke-direct {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .restart local v0    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    goto :goto_0

    #@1f
    .line 57
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1
.end method


# virtual methods
.method public setCursorCapsMode(II)V
    .locals 3
    .param p1, "capsMode"    # I
    .param p2, "seq"    # I

    #@0
    .prologue
    .line 132
    monitor-enter p0

    #@1
    .line 133
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@3
    if-ne p2, v0, :cond_0

    #@5
    .line 134
    iput p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCursorCapsMode:I

    #@7
    .line 135
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@a
    .line 136
    invoke-virtual {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :goto_0
    monitor-exit p0

    #@e
    .line 131
    return-void

    #@f
    .line 138
    :cond_0
    :try_start_1
    const-string/jumbo v0, "InputConnectionWrapper.ICC"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Got out-of-sequence callback "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, " (expected "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 139
    const-string/jumbo v2, ") in setCursorCapsMode, ignoring."

    #@32
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 132
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit p0

    #@40
    throw v0
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    .locals 3
    .param p1, "extractedText"    # Landroid/view/inputmethod/ExtractedText;
    .param p2, "seq"    # I

    #@0
    .prologue
    .line 145
    monitor-enter p0

    #@1
    .line 146
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@3
    if-ne p2, v0, :cond_0

    #@5
    .line 147
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@7
    .line 148
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@a
    .line 149
    invoke-virtual {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :goto_0
    monitor-exit p0

    #@e
    .line 144
    return-void

    #@f
    .line 151
    :cond_0
    :try_start_1
    const-string/jumbo v0, "InputConnectionWrapper.ICC"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Got out-of-sequence callback "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, " (expected "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 152
    const-string/jumbo v2, ") in setExtractedText, ignoring."

    #@32
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 145
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit p0

    #@40
    throw v0
.end method

.method public setRequestUpdateCursorAnchorInfoResult(ZI)V
    .locals 3
    .param p1, "result"    # Z
    .param p2, "seq"    # I

    #@0
    .prologue
    .line 158
    monitor-enter p0

    #@1
    .line 159
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@3
    if-ne p2, v0, :cond_0

    #@5
    .line 160
    iput-boolean p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mRequestUpdateCursorAnchorInfoResult:Z

    #@7
    .line 161
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@a
    .line 162
    invoke-virtual {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :goto_0
    monitor-exit p0

    #@e
    .line 157
    return-void

    #@f
    .line 164
    :cond_0
    :try_start_1
    const-string/jumbo v0, "InputConnectionWrapper.ICC"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Got out-of-sequence callback "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, " (expected "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 165
    const-string/jumbo v2, ") in setCursorAnchorInfoRequestResult, ignoring."

    #@32
    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 158
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit p0

    #@40
    throw v0
.end method

.method public setSelectedText(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "selectedText"    # Ljava/lang/CharSequence;
    .param p2, "seq"    # I

    #@0
    .prologue
    .line 119
    monitor-enter p0

    #@1
    .line 120
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@3
    if-ne p2, v0, :cond_0

    #@5
    .line 121
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSelectedText:Ljava/lang/CharSequence;

    #@7
    .line 122
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@a
    .line 123
    invoke-virtual {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :goto_0
    monitor-exit p0

    #@e
    .line 118
    return-void

    #@f
    .line 125
    :cond_0
    :try_start_1
    const-string/jumbo v0, "InputConnectionWrapper.ICC"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Got out-of-sequence callback "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, " (expected "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 126
    const-string/jumbo v2, ") in setSelectedText, ignoring."

    #@32
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 119
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit p0

    #@40
    throw v0
.end method

.method public setTextAfterCursor(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "textAfterCursor"    # Ljava/lang/CharSequence;
    .param p2, "seq"    # I

    #@0
    .prologue
    .line 106
    monitor-enter p0

    #@1
    .line 107
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@3
    if-ne p2, v0, :cond_0

    #@5
    .line 108
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;

    #@7
    .line 109
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@a
    .line 110
    invoke-virtual {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :goto_0
    monitor-exit p0

    #@e
    .line 105
    return-void

    #@f
    .line 112
    :cond_0
    :try_start_1
    const-string/jumbo v0, "InputConnectionWrapper.ICC"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Got out-of-sequence callback "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, " (expected "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 113
    const-string/jumbo v2, ") in setTextAfterCursor, ignoring."

    #@32
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 106
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit p0

    #@40
    throw v0
.end method

.method public setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "textBeforeCursor"    # Ljava/lang/CharSequence;
    .param p2, "seq"    # I

    #@0
    .prologue
    .line 93
    monitor-enter p0

    #@1
    .line 94
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@3
    if-ne p2, v0, :cond_0

    #@5
    .line 95
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;

    #@7
    .line 96
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@a
    .line 97
    invoke-virtual {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :goto_0
    monitor-exit p0

    #@e
    .line 92
    return-void

    #@f
    .line 99
    :cond_0
    :try_start_1
    const-string/jumbo v0, "InputConnectionWrapper.ICC"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Got out-of-sequence callback "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, " (expected "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 100
    const-string/jumbo v2, ") in setTextBeforeCursor, ignoring."

    #@32
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 93
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit p0

    #@40
    throw v0
.end method

.method waitForResultLocked()V
    .locals 10

    #@0
    .prologue
    .line 176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v6

    #@4
    .line 177
    .local v6, "startTime":J
    const-wide/16 v8, 0x7d0

    #@6
    add-long v2, v6, v8

    #@8
    .line 179
    .local v2, "endTime":J
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@a
    if-nez v1, :cond_1

    #@c
    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@f
    move-result-wide v8

    #@10
    sub-long v4, v2, v8

    #@12
    .line 181
    .local v4, "remainingTime":J
    const-wide/16 v8, 0x0

    #@14
    cmp-long v1, v4, v8

    #@16
    if-gtz v1, :cond_0

    #@18
    .line 182
    const-string/jumbo v1, "InputConnectionWrapper.ICC"

    #@1b
    const-string/jumbo v8, "Timed out waiting on IInputContextCallback"

    #@1e
    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 183
    return-void

    #@22
    .line 186
    :cond_0
    :try_start_0
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    goto :goto_0

    #@26
    .line 187
    :catch_0
    move-exception v0

    #@27
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@28
    .line 175
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "remainingTime":J
    :cond_1
    return-void
.end method
