.class Landroid/app/assist/AssistStructure$ViewNodeBuilder;
.super Landroid/view/ViewStructure;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewNodeBuilder"
.end annotation


# instance fields
.field final mAssist:Landroid/app/assist/AssistStructure;

.field final mAsync:Z

.field final mNode:Landroid/app/assist/AssistStructure$ViewNode;


# direct methods
.method constructor <init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V
    .locals 0
    .param p1, "assist"    # Landroid/app/assist/AssistStructure;
    .param p2, "node"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p3, "async"    # Z

    #@0
    .prologue
    .line 1058
    invoke-direct {p0}, Landroid/view/ViewStructure;-><init>()V

    #@3
    .line 1059
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    #@5
    .line 1060
    iput-object p2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@7
    .line 1061
    iput-boolean p3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAsync:Z

    #@9
    .line 1058
    return-void
.end method

.method private final getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;
    .locals 2

    #@0
    .prologue
    .line 1189
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1190
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@8
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@a
    return-object v0

    #@b
    .line 1192
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@d
    new-instance v1, Landroid/app/assist/AssistStructure$ViewNodeText;

    #@f
    invoke-direct {v1}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>()V

    #@12
    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@14
    .line 1193
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@16
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@18
    return-object v0
.end method


# virtual methods
.method public addChildCount(I)I
    .locals 4
    .param p1, "num"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1273
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@3
    iget-object v2, v2, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 1274
    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setChildCount(I)V

    #@a
    .line 1275
    return v3

    #@b
    .line 1277
    :cond_0
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@d
    iget-object v2, v2, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@f
    array-length v1, v2

    #@10
    .line 1278
    .local v1, "start":I
    add-int v2, v1, p1

    #@12
    new-array v0, v2, [Landroid/app/assist/AssistStructure$ViewNode;

    #@14
    .line 1279
    .local v0, "newArray":[Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@16
    iget-object v2, v2, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@18
    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1b
    .line 1280
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@1d
    iput-object v0, v2, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@1f
    .line 1281
    return v1
.end method

.method public asyncCommit()V
    .locals 4

    #@0
    .prologue
    .line 1309
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    #@2
    monitor-enter v1

    #@3
    .line 1310
    :try_start_0
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAsync:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1311
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Child "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 1312
    const-string/jumbo v3, " was not created with ViewStructure.asyncNewChild"

    #@1c
    .line 1311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 1309
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0

    #@2b
    .line 1314
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    #@2d
    iget-object v0, v0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_1

    #@35
    .line 1315
    new-instance v0, Ljava/lang/IllegalStateException;

    #@37
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "Child "

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    const-string/jumbo v3, " already committed"

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@55
    throw v0

    #@56
    .line 1317
    :cond_1
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    #@58
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    monitor-exit v1

    #@5c
    .line 1308
    return-void
.end method

.method public asyncNewChild(I)Landroid/view/ViewStructure;
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1298
    iget-object v3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    #@2
    monitor-enter v3

    #@3
    .line 1299
    :try_start_0
    new-instance v1, Landroid/app/assist/AssistStructure$ViewNode;

    #@5
    invoke-direct {v1}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    #@8
    .line 1300
    .local v1, "node":Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@a
    iget-object v2, v2, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@c
    aput-object v1, v2, p1

    #@e
    .line 1301
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    #@10
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    #@12
    const/4 v4, 0x1

    #@13
    invoke-direct {v0, v2, v1, v4}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    #@16
    .line 1302
    .local v0, "builder":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    #@18
    iget-object v2, v2, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v3

    #@1e
    .line 1303
    return-object v0

    #@1f
    .line 1298
    .end local v0    # "builder":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    .end local v1    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2
.end method

.method public getChildCount()I
    .locals 1

    #@0
    .prologue
    .line 1286
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@8
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@a
    array-length v0, v0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    #@0
    .prologue
    .line 1254
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1255
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@8
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    #@a
    return-object v0

    #@b
    .line 1257
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@d
    new-instance v1, Landroid/os/Bundle;

    #@f
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@12
    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    #@14
    .line 1258
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@16
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    #@18
    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1249
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@3
    iget-object v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@9
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@b
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    #@d
    :cond_0
    return-object v0
.end method

.method public getTempRect()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 1323
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    #@2
    iget-object v0, v0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    #@4
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1234
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@3
    iget-object v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@9
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@b
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    #@d
    :cond_0
    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    #@0
    .prologue
    .line 1244
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@8
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@a
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, -0x1

    #@e
    goto :goto_0
.end method

.method public getTextSelectionStart()I
    .locals 1

    #@0
    .prologue
    .line 1239
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@8
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@a
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, -0x1

    #@e
    goto :goto_0
.end method

.method public hasExtras()Z
    .locals 1

    #@0
    .prologue
    .line 1263
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public newChild(I)Landroid/view/ViewStructure;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1291
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    #@5
    .line 1292
    .local v0, "node":Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@7
    iget-object v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@9
    aput-object v0, v1, p1

    #@b
    .line 1293
    new-instance v1, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    #@d
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    #@f
    const/4 v3, 0x0

    #@10
    invoke-direct {v1, v2, v0, v3}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    #@13
    return-object v1
.end method

.method public setAccessibilityFocused(Z)V
    .locals 3
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1150
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@6
    and-int/lit16 v2, v0, -0x1001

    #@8
    .line 1151
    if-eqz p1, :cond_0

    #@a
    const/16 v0, 0x1000

    #@c
    .line 1150
    :goto_0
    or-int/2addr v0, v2

    #@d
    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@f
    .line 1149
    return-void

    #@10
    .line 1151
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setActivated(Z)V
    .locals 3
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1174
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@6
    and-int/lit16 v2, v0, -0x2001

    #@8
    .line 1175
    if-eqz p1, :cond_0

    #@a
    const/16 v0, 0x2000

    #@c
    .line 1174
    :goto_0
    or-int/2addr v0, v2

    #@d
    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@f
    .line 1173
    return-void

    #@10
    .line 1175
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 1098
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    #@4
    .line 1097
    return-void
.end method

.method public setAssistBlocked(Z)V
    .locals 3
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1108
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@6
    and-int/lit16 v2, v0, -0x81

    #@8
    .line 1109
    if-eqz p1, :cond_0

    #@a
    const/16 v0, 0x80

    #@c
    .line 1108
    :goto_0
    or-int/2addr v0, v2

    #@d
    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@f
    .line 1107
    return-void

    #@10
    .line 1109
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setCheckable(Z)V
    .locals 3
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1156
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@6
    and-int/lit16 v2, v0, -0x101

    #@8
    .line 1157
    if-eqz p1, :cond_0

    #@a
    const/16 v0, 0x100

    #@c
    .line 1156
    :goto_0
    or-int/2addr v0, v2

    #@d
    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@f
    .line 1155
    return-void

    #@10
    .line 1157
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1162
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@6
    and-int/lit16 v2, v0, -0x201

    #@8
    .line 1163
    if-eqz p1, :cond_0

    #@a
    const/16 v0, 0x200

    #@c
    .line 1162
    :goto_0
    or-int/2addr v0, v2

    #@d
    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@f
    .line 1161
    return-void

    #@10
    .line 1163
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setChildCount(I)V
    .locals 2
    .param p1, "num"    # I

    #@0
    .prologue
    .line 1268
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    new-array v1, p1, [Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@6
    .line 1267
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1180
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    #@4
    .line 1179
    return-void
.end method

.method public setClickable(Z)V
    .locals 3
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1120
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@6
    and-int/lit16 v2, v0, -0x401

    #@8
    .line 1121
    if-eqz p1, :cond_0

    #@a
    const/16 v0, 0x400

    #@c
    .line 1120
    :goto_0
    or-int/2addr v0, v2

    #@d
    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@f
    .line 1119
    return-void

    #@10
    .line 1121
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1185
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    #@4
    .line 1184
    return-void
.end method

.method public setContextClickable(Z)V
    .locals 3
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1132
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@6
    and-int/lit16 v2, v0, -0x4001

    #@8
    .line 1133
    if-eqz p1, :cond_0

    #@a
    const/16 v0, 0x4000

    #@c
    .line 1132
    :goto_0
    or-int/2addr v0, v2

    #@d
    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@f
    .line 1131
    return-void

    #@10
    .line 1133
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setDimens(IIIIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    #@0
    .prologue
    .line 1074
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    #@4
    .line 1075
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@6
    iput p2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    #@8
    .line 1076
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@a
    iput p3, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    #@c
    .line 1077
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@e
    iput p4, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    #@10
    .line 1078
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@12
    iput p5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    #@14
    .line 1079
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@16
    iput p6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    #@18
    .line 1073
    return-void
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    #@0
    .prologue
    .line 1093
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    #@4
    .line 1092
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1114
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@6
    and-int/lit8 v2, v0, -0x2

    #@8
    .line 1115
    if-eqz p1, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    .line 1114
    :goto_0
    or-int/2addr v0, v2

    #@c
    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@e
    .line 1113
    return-void

    #@f
    .line 1115
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 3
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1138
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@6
    and-int/lit8 v2, v0, -0x11

    #@8
    .line 1139
    if-eqz p1, :cond_0

    #@a
    const/16 v0, 0x10

    #@c
    .line 1138
    :goto_0
    or-int/2addr v0, v2

    #@d
    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@f
    .line 1137
    return-void

    #@10
    .line 1139
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setFocused(Z)V
    .locals 3
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1144
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@6
    and-int/lit8 v2, v0, -0x21

    #@8
    .line 1145
    if-eqz p1, :cond_0

    #@a
    const/16 v0, 0x20

    #@c
    .line 1144
    :goto_0
    or-int/2addr v0, v2

    #@d
    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@f
    .line 1143
    return-void

    #@10
    .line 1145
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "hint"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1229
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    #@4
    move-result-object v1

    #@5
    if-eqz p1, :cond_0

    #@7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    :cond_0
    iput-object v0, v1, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    #@d
    .line 1228
    return-void
.end method

.method public setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "typeName"    # Ljava/lang/String;
    .param p4, "entryName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1066
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    #@4
    .line 1067
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@6
    iput-object p2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    #@8
    .line 1068
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@a
    iput-object p3, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    #@c
    .line 1069
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@e
    iput-object p4, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    #@10
    .line 1065
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 3
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1126
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@6
    and-int/lit16 v2, v0, -0x801

    #@8
    .line 1127
    if-eqz p1, :cond_0

    #@a
    const/16 v0, 0x800

    #@c
    .line 1126
    :goto_0
    or-int/2addr v0, v2

    #@d
    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@f
    .line 1125
    return-void

    #@10
    .line 1127
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1168
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@6
    and-int/lit8 v2, v0, -0x41

    #@8
    .line 1169
    if-eqz p1, :cond_0

    #@a
    const/16 v0, 0x40

    #@c
    .line 1168
    :goto_0
    or-int/2addr v0, v2

    #@d
    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@f
    .line 1167
    return-void

    #@10
    .line 1169
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 1198
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    #@4
    move-result-object v0

    #@5
    .line 1199
    .local v0, "t":Landroid/app/assist/AssistStructure$ViewNodeText;
    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    #@7
    .line 1200
    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    #@9
    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    #@b
    .line 1197
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I

    #@0
    .prologue
    .line 1205
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    #@3
    move-result-object v0

    #@4
    .line 1206
    .local v0, "t":Landroid/app/assist/AssistStructure$ViewNodeText;
    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    #@6
    .line 1207
    iput p2, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    #@8
    .line 1208
    iput p3, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    #@a
    .line 1204
    return-void
.end method

.method public setTextLines([I[I)V
    .locals 1
    .param p1, "charOffsets"    # [I
    .param p2, "baselines"    # [I

    #@0
    .prologue
    .line 1222
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    #@3
    move-result-object v0

    #@4
    .line 1223
    .local v0, "t":Landroid/app/assist/AssistStructure$ViewNodeText;
    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    #@6
    .line 1224
    iput-object p2, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    #@8
    .line 1221
    return-void
.end method

.method public setTextStyle(FIII)V
    .locals 1
    .param p1, "size"    # F
    .param p2, "fgColor"    # I
    .param p3, "bgColor"    # I
    .param p4, "style"    # I

    #@0
    .prologue
    .line 1213
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    #@3
    move-result-object v0

    #@4
    .line 1214
    .local v0, "t":Landroid/app/assist/AssistStructure$ViewNodeText;
    iput p2, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    #@6
    .line 1215
    iput p3, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    #@8
    .line 1216
    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    #@a
    .line 1217
    iput p4, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    #@c
    .line 1212
    return-void
.end method

.method public setTransformation(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1084
    if-nez p1, :cond_0

    #@3
    .line 1085
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@5
    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    #@7
    .line 1083
    :goto_0
    return-void

    #@8
    .line 1087
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@a
    new-instance v1, Landroid/graphics/Matrix;

    #@c
    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@f
    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    #@11
    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 1103
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    #@4
    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@6
    and-int/lit8 v1, v1, -0xd

    #@8
    or-int/2addr v1, p1

    #@9
    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@b
    .line 1102
    return-void
.end method
