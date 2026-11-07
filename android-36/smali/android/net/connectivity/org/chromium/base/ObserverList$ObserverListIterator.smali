.class Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;
.super Ljava/lang/Object;
.source "ObserverList.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/ObserverList$RewindableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/ObserverList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/org/chromium/base/ObserverList$RewindableIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private blacklist mIndex:I

.field private blacklist mIsExhausted:Z

.field private blacklist mListEndMarker:I

.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/ObserverList;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/ObserverList;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 220
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>.ObserverListIterator;"
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->this$0:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->-$$Nest$mincrementIterationDepth(Landroid/net/connectivity/org/chromium/base/ObserverList;)V

    .line 222
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->-$$Nest$mcapacity(Landroid/net/connectivity/org/chromium/base/ObserverList;)I

    move-result p1

    iput p1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mListEndMarker:I

    .line 223
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/ObserverList;Landroid/net/connectivity/org/chromium/base/ObserverList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;-><init>(Landroid/net/connectivity/org/chromium/base/ObserverList;)V

    return-void
.end method

.method private blacklist compactListIfNeeded()V
    .registers 2

    .line 273
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>.ObserverListIterator;"
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mIsExhausted:Z

    if-nez v0, :cond_c

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mIsExhausted:Z

    .line 275
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->this$0:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->-$$Nest$mdecrementIterationDepthAndCompactIfNeeded(Landroid/net/connectivity/org/chromium/base/ObserverList;)V

    .line 277
    :cond_c
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 238
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>.ObserverListIterator;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->this$0:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->-$$Nest$fgetmEnableThreadAsserts(Landroid/net/connectivity/org/chromium/base/ObserverList;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->this$0:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->-$$Nest$fgetmThreadChecker(Landroid/net/connectivity/org/chromium/base/ObserverList;)Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 240
    :cond_11
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    .line 241
    .local v0, "lookupIndex":I
    :goto_13
    iget v1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mListEndMarker:I

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->this$0:Landroid/net/connectivity/org/chromium/base/ObserverList;

    .line 242
    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->-$$Nest$mgetObserverAt(Landroid/net/connectivity/org/chromium/base/ObserverList;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_22

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 245
    :cond_22
    iget v1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mListEndMarker:I

    if-ge v0, v1, :cond_28

    const/4 v1, 0x1

    return v1

    .line 248
    :cond_28
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->compactListIfNeeded()V

    .line 249
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 254
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>.ObserverListIterator;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->this$0:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->-$$Nest$fgetmEnableThreadAsserts(Landroid/net/connectivity/org/chromium/base/ObserverList;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->this$0:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->-$$Nest$fgetmThreadChecker(Landroid/net/connectivity/org/chromium/base/ObserverList;)Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 257
    :cond_11
    :goto_11
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    iget v1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mListEndMarker:I

    if-ge v0, v1, :cond_28

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->this$0:Landroid/net/connectivity/org/chromium/base/ObserverList;

    iget v1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->-$$Nest$mgetObserverAt(Landroid/net/connectivity/org/chromium/base/ObserverList;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    .line 258
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    goto :goto_11

    .line 260
    :cond_28
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    iget v1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mListEndMarker:I

    if-ge v0, v1, :cond_3b

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->this$0:Landroid/net/connectivity/org/chromium/base/ObserverList;

    iget v1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->-$$Nest$mgetObserverAt(Landroid/net/connectivity/org/chromium/base/ObserverList;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 263
    :cond_3b
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->compactListIfNeeded()V

    .line 264
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 269
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>.ObserverListIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist rewind()V
    .registers 2

    .line 227
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>.ObserverListIterator;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->this$0:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->-$$Nest$fgetmEnableThreadAsserts(Landroid/net/connectivity/org/chromium/base/ObserverList;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->this$0:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->-$$Nest$fgetmThreadChecker(Landroid/net/connectivity/org/chromium/base/ObserverList;)Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 229
    :cond_11
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->compactListIfNeeded()V

    .line 230
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->this$0:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->-$$Nest$mincrementIterationDepth(Landroid/net/connectivity/org/chromium/base/ObserverList;)V

    .line 231
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->this$0:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->-$$Nest$mcapacity(Landroid/net/connectivity/org/chromium/base/ObserverList;)I

    move-result v0

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mListEndMarker:I

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mIsExhausted:Z

    .line 233
    iput v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    .line 234
    return-void
.end method
