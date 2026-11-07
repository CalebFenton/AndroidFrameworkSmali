.class public Landroid/app/assist/AssistStructure$ViewNodeBuilder;
.super Landroid/view/ViewStructure;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewNodeBuilder"
.end annotation


# instance fields
.field final greylist-max-o mAssist:Landroid/app/assist/AssistStructure;

.field final greylist-max-o mAsync:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field final greylist-max-o mNode:Landroid/app/assist/AssistStructure$ViewNode;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 1920
    invoke-direct {p0}, Landroid/view/ViewStructure;-><init>()V

    .line 1921
    new-instance v0, Landroid/app/assist/AssistStructure;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    .line 1922
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    .line 1923
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAsync:Z

    .line 1924
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V
    .registers 4
    .param p1, "assist"    # Landroid/app/assist/AssistStructure;
    .param p2, "node"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p3, "async"    # Z

    .line 1926
    invoke-direct {p0}, Landroid/view/ViewStructure;-><init>()V

    .line 1927
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    .line 1928
    iput-object p2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    .line 1929
    iput-boolean p3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAsync:Z

    .line 1930
    return-void
.end method

.method private final greylist-max-o getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;
    .registers 3

    .line 2069
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_b

    .line 2070
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    return-object v0

    .line 2072
    :cond_b
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v1, Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-direct {v1}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>()V

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 2073
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    return-object v0
.end method

.method private blacklist setUpResultReceiver(Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 2298
    .local p1, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;>;"
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_11

    .line 2299
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mHandler:Landroid/os/Handler;

    .line 2301
    :cond_11
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeBuilder$1;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Landroid/app/assist/AssistStructure$ViewNodeBuilder$1;-><init>(Landroid/app/assist/AssistStructure$ViewNodeBuilder;Landroid/os/Handler;Landroid/os/OutcomeReceiver;)V

    .line 2328
    .local v0, "resultReceiver":Landroid/os/ResultReceiver;
    nop

    .line 2329
    invoke-direct {p0, v0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->toIpcFriendlyResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v1

    .line 2330
    .local v1, "ipcFriendlyResultReceiver":Landroid/os/ResultReceiver;
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v1, v2, Landroid/app/assist/AssistStructure$ViewNode;->mGetCredentialResultReceiver:Landroid/os/ResultReceiver;

    .line 2331
    return-void
.end method

.method private blacklist stripAllSpansFromText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 2395
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_9

    .line 2396
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2398
    :cond_9
    return-object p1
.end method

.method private blacklist toIpcFriendlyResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .registers 4
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2335
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2336
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2338
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 2339
    .local v1, "ipcFriendly":Landroid/os/ResultReceiver;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2341
    return-object v1
.end method


# virtual methods
.method public whitelist addChildCount(I)I
    .registers 6
    .param p1, "num"    # I

    .line 2165
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2166
    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setChildCount(I)V

    .line 2167
    return v1

    .line 2169
    :cond_b
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length v0, v0

    .line 2170
    .local v0, "start":I
    add-int v2, v0, p1

    new-array v2, v2, [Landroid/app/assist/AssistStructure$ViewNode;

    .line 2171
    .local v2, "newArray":[Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v3, v3, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2172
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v2, v1, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    .line 2173
    return v0
.end method

.method public whitelist asyncCommit()V
    .registers 5

    .line 2214
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    monitor-enter v0

    .line 2215
    :try_start_3
    iget-boolean v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAsync:Z

    if-eqz v1, :cond_39

    .line 2219
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    invoke-static {v1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmPendingAsyncChildren(Landroid/app/assist/AssistStructure;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2222
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2223
    monitor-exit v0

    .line 2224
    return-void

    .line 2220
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already committed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    throw v1

    .line 2216
    .restart local p0    # "this":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not created with ViewStructure.asyncNewChild"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    throw v1

    .line 2223
    .restart local p0    # "this":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public whitelist asyncNewChild(I)Landroid/view/ViewStructure;
    .registers 7
    .param p1, "index"    # I

    .line 2190
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    monitor-enter v0

    .line 2191
    :try_start_3
    new-instance v1, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v1}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    .line 2192
    .local v1, "node":Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v2, v2, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aput-object v1, v2, p1

    .line 2193
    new-instance v2, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    iget-object v3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    .line 2194
    .local v2, "builder":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    iget-object v3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    invoke-static {v3}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmPendingAsyncChildren(Landroid/app/assist/AssistStructure;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2195
    monitor-exit v0

    return-object v2

    .line 2196
    .end local v1    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v2    # "builder":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 2243
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getChildCount()I
    .registers 2

    .line 2178
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length v0, v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 3

    .line 2146
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 2147
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0

    .line 2149
    :cond_b
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    .line 2150
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getHint()Ljava/lang/CharSequence;
    .registers 2

    .line 2141
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public whitelist getPendingCredentialCallback()Landroid/os/OutcomeReceiver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;"
        }
    .end annotation

    .line 2209
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mGetCredentialCallback:Landroid/os/OutcomeReceiver;

    return-object v0
.end method

.method public whitelist getPendingCredentialRequest()Landroid/credentials/GetCredentialRequest;
    .registers 2

    .line 2202
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mGetCredentialRequest:Landroid/credentials/GetCredentialRequest;

    return-object v0
.end method

.method public greylist-max-o getTempRect()Landroid/graphics/Rect;
    .registers 2

    .line 2228
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    invoke-static {v0}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmTmpRect(Landroid/app/assist/AssistStructure;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 2126
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public whitelist getTextSelectionEnd()I
    .registers 2

    .line 2136
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method public whitelist getTextSelectionStart()I
    .registers 2

    .line 2131
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method public blacklist getViewNode()Landroid/app/assist/AssistStructure$ViewNode;
    .registers 2

    .line 1934
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    return-object v0
.end method

.method public whitelist hasExtras()Z
    .registers 2

    .line 2155
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist newChild(I)Landroid/view/ViewStructure;
    .registers 6
    .param p1, "index"    # I

    .line 2183
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    .line 2184
    .local v0, "node":Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aput-object v0, v1, p1

    .line 2185
    new-instance v1, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    return-object v1
.end method

.method public whitelist newHtmlInfoBuilder(Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;
    .registers 3
    .param p1, "tagName"    # Ljava/lang/String;

    .line 2386
    new-instance v0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;

    invoke-direct {v0, p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist setAccessibilityFocused(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 2024
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, -0x1001

    .line 2025
    if-eqz p1, :cond_d

    const/16 v2, 0x1000

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 2026
    return-void
.end method

.method public whitelist setActivated(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 2048
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, -0x2001

    .line 2049
    if-eqz p1, :cond_d

    const/16 v2, 0x2000

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 2050
    return-void
.end method

.method public whitelist setAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .line 1971
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 1972
    return-void
.end method

.method public greylist-max-o setAssistBlocked(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 1982
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, -0x81

    .line 1983
    if-eqz p1, :cond_d

    const/16 v2, 0x80

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1984
    return-void
.end method

.method public whitelist setAutofillHints([Ljava/lang/String;)V
    .registers 3
    .param p1, "hints"    # [Ljava/lang/String;

    .line 2253
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    .line 2254
    return-void
.end method

.method public whitelist setAutofillId(Landroid/view/autofill/AutofillId;)V
    .registers 3
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 2233
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 2234
    return-void
.end method

.method public whitelist setAutofillId(Landroid/view/autofill/AutofillId;I)V
    .registers 5
    .param p1, "parentId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualId"    # I

    .line 2238
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v1, Landroid/view/autofill/AutofillId;

    invoke-direct {v1, p1, p2}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;I)V

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 2239
    return-void
.end method

.method public whitelist setAutofillOptions([Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "options"    # [Ljava/lang/CharSequence;

    .line 2263
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    .line 2264
    return-void
.end method

.method public whitelist setAutofillType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 2248
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 2249
    return-void
.end method

.method public whitelist setAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .registers 3
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 2258
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 2259
    return-void
.end method

.method public whitelist setCheckable(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 2030
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, -0x101

    .line 2031
    if-eqz p1, :cond_d

    const/16 v2, 0x100

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 2032
    return-void
.end method

.method public whitelist setChecked(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 2036
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, -0x201

    .line 2037
    if-eqz p1, :cond_d

    const/16 v2, 0x200

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 2038
    return-void
.end method

.method public whitelist setChildCount(I)V
    .registers 4
    .param p1, "num"    # I

    .line 2160
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    new-array v1, p1, [Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    .line 2161
    return-void
.end method

.method public whitelist setClassName(Ljava/lang/String;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .line 2060
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    .line 2061
    return-void
.end method

.method public whitelist setClickable(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 1994
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, -0x401

    .line 1995
    if-eqz p1, :cond_d

    const/16 v2, 0x400

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1996
    return-void
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 2065
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    .line 2066
    return-void
.end method

.method public whitelist setContextClickable(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 2006
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, -0x4001

    .line 2007
    if-eqz p1, :cond_d

    const/16 v2, 0x4000

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 2008
    return-void
.end method

.method public whitelist setDataIsSensitive(Z)V
    .registers 4
    .param p1, "sensitive"    # Z

    .line 2371
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    .line 2372
    return-void
.end method

.method public whitelist setDimens(IIIIII)V
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 1947
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 1948
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 1949
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p3, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    .line 1950
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p4, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    .line 1951
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 1952
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    .line 1953
    return-void
.end method

.method public whitelist setElevation(F)V
    .registers 3
    .param p1, "elevation"    # F

    .line 1966
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    .line 1967
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 1988
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, -0x2

    .line 1989
    xor-int/lit8 v2, p1, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1990
    return-void
.end method

.method public whitelist setFocusable(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 2012
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, -0x11

    .line 2013
    if-eqz p1, :cond_d

    const/16 v2, 0x10

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 2014
    return-void
.end method

.method public whitelist setFocused(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 2018
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, -0x21

    .line 2019
    if-eqz p1, :cond_d

    const/16 v2, 0x20

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 2020
    return-void
.end method

.method public whitelist setHint(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 2116
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    .line 2117
    return-void
.end method

.method public whitelist setHintIdEntry(Ljava/lang/String;)V
    .registers 4
    .param p1, "entryName"    # Ljava/lang/String;

    .line 2121
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    .line 2122
    return-void
.end method

.method public whitelist setHtmlInfo(Landroid/view/ViewStructure$HtmlInfo;)V
    .registers 3
    .param p1, "htmlInfo"    # Landroid/view/ViewStructure$HtmlInfo;

    .line 2391
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    .line 2392
    return-void
.end method

.method public whitelist setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "typeName"    # Ljava/lang/String;
    .param p4, "entryName"    # Ljava/lang/String;

    .line 1939
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 1940
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    .line 1941
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p3, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    .line 1942
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p4, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    .line 1943
    return-void
.end method

.method public whitelist setImportantForAutofill(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 2268
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    .line 2269
    return-void
.end method

.method public whitelist setInputType(I)V
    .registers 3
    .param p1, "inputType"    # I

    .line 2351
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    .line 2352
    return-void
.end method

.method public blacklist setIsCredential(Z)V
    .registers 3
    .param p1, "isCredential"    # Z

    .line 2273
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-boolean p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIsCredential:Z

    .line 2274
    return-void
.end method

.method public whitelist setLocaleList(Landroid/os/LocaleList;)V
    .registers 3
    .param p1, "localeList"    # Landroid/os/LocaleList;

    .line 2381
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    .line 2382
    return-void
.end method

.method public whitelist setLongClickable(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 2000
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, -0x801

    .line 2001
    if-eqz p1, :cond_d

    const/16 v2, 0x800

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 2002
    return-void
.end method

.method public whitelist setMaxTextEms(I)V
    .registers 3
    .param p1, "maxEms"    # I

    .line 2361
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    .line 2362
    return-void
.end method

.method public whitelist setMaxTextLength(I)V
    .registers 3
    .param p1, "maxLength"    # I

    .line 2366
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    .line 2367
    return-void
.end method

.method public whitelist setMinTextEms(I)V
    .registers 3
    .param p1, "minEms"    # I

    .line 2356
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    .line 2357
    return-void
.end method

.method public whitelist setOpaque(Z)V
    .registers 5
    .param p1, "opaque"    # Z

    .line 2054
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    .line 2055
    if-eqz p1, :cond_10

    const v2, 0x8000

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 2056
    return-void
.end method

.method public whitelist setPendingCredentialRequest(Landroid/credentials/GetCredentialRequest;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "request"    # Landroid/credentials/GetCredentialRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/credentials/GetCredentialRequest;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 2279
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;>;"
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mGetCredentialRequest:Landroid/credentials/GetCredentialRequest;

    .line 2280
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mGetCredentialCallback:Landroid/os/OutcomeReceiver;

    .line 2281
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/CredentialOption;

    .line 2282
    .local v1, "option":Landroid/credentials/CredentialOption;
    invoke-virtual {v1}, Landroid/credentials/CredentialOption;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v2

    const-class v3, Landroid/view/autofill/AutofillId;

    .line 2283
    const-string v4, "android.service.credentials.extra.AUTOFILL_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2285
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    if-eqz v2, :cond_2c

    move-object v3, v2

    goto :goto_31

    :cond_2c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2286
    .end local v2    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :goto_31
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 2287
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2289
    :cond_42
    invoke-virtual {v1}, Landroid/credentials/CredentialOption;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v2

    .line 2290
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2291
    .end local v1    # "option":Landroid/credentials/CredentialOption;
    .end local v3    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    goto :goto_10

    .line 2292
    :cond_4a
    invoke-direct {p0, p2}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setUpResultReceiver(Landroid/os/OutcomeReceiver;)V

    .line 2293
    return-void
.end method

.method public whitelist setReceiveContentMimeTypes([Ljava/lang/String;)V
    .registers 3
    .param p1, "mimeTypes"    # [Ljava/lang/String;

    .line 2346
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    .line 2347
    return-void
.end method

.method public whitelist setSelected(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 2042
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, -0x41

    .line 2043
    if-eqz p1, :cond_d

    const/16 v2, 0x40

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 2044
    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 2078
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v0

    .line 2080
    .local v0, "t":Landroid/app/assist/AssistStructure$ViewNodeText;
    invoke-direct {p0, p1}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->stripAllSpansFromText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 2081
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    .line 2082
    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;II)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I

    .line 2086
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v0

    .line 2088
    .local v0, "t":Landroid/app/assist/AssistStructure$ViewNodeText;
    invoke-direct {p0, p1}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->stripAllSpansFromText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 2089
    iput p2, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    .line 2090
    iput p3, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    .line 2091
    return-void
.end method

.method public whitelist setTextIdEntry(Ljava/lang/String;)V
    .registers 4
    .param p1, "entryName"    # Ljava/lang/String;

    .line 2111
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    .line 2112
    return-void
.end method

.method public whitelist setTextLines([I[I)V
    .registers 4
    .param p1, "charOffsets"    # [I
    .param p2, "baselines"    # [I

    .line 2104
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v0

    .line 2105
    .local v0, "t":Landroid/app/assist/AssistStructure$ViewNodeText;
    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    .line 2106
    iput-object p2, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    .line 2107
    return-void
.end method

.method public whitelist setTextStyle(FIII)V
    .registers 6
    .param p1, "size"    # F
    .param p2, "fgColor"    # I
    .param p3, "bgColor"    # I
    .param p4, "style"    # I

    .line 2095
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v0

    .line 2096
    .local v0, "t":Landroid/app/assist/AssistStructure$ViewNodeText;
    iput p2, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    .line 2097
    iput p3, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    .line 2098
    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    .line 2099
    iput p4, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    .line 2100
    return-void
.end method

.method public whitelist setTransformation(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 1957
    if-nez p1, :cond_8

    .line 1958
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    goto :goto_11

    .line 1960
    :cond_8
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    .line 1962
    :goto_11
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .line 1976
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, -0xd

    and-int/lit8 v2, p1, 0xc

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1978
    return-void
.end method

.method public whitelist setWebDomain(Ljava/lang/String;)V
    .registers 3
    .param p1, "domain"    # Ljava/lang/String;

    .line 2376
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v0, p1}, Landroid/app/assist/AssistStructure$ViewNode;->setWebDomain(Ljava/lang/String;)V

    .line 2377
    return-void
.end method
