.class final Landroid/app/assist/AssistStructure$ParcelTransferWriter;
.super Landroid/os/Binder;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParcelTransferWriter"
.end annotation


# instance fields
.field mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

.field mCurViewStackPos:I

.field mCurWindow:I

.field mNumWindows:I

.field mNumWrittenViews:I

.field mNumWrittenWindows:I

.field final mTmpMatrix:[F

.field final mViewStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/assist/AssistStructure$ViewStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteStructure:Z


# direct methods
.method constructor <init>(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 115
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@4
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    #@b
    .line 113
    const/16 v0, 0x9

    #@d
    new-array v0, v0, [F

    #@f
    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mTmpMatrix:[F

    #@11
    .line 116
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure;->waitForReady()Z

    #@14
    move-result v0

    #@15
    iput-boolean v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mWriteStructure:Z

    #@17
    .line 117
    iget-object v0, p1, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    #@19
    invoke-static {v0, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@1c
    .line 118
    iget-object v0, p1, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    #@24
    .line 119
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mWriteStructure:Z

    #@26
    if-eqz v0, :cond_0

    #@28
    iget v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    #@2a
    if-lez v0, :cond_0

    #@2c
    .line 120
    iget v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    #@2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 115
    :goto_0
    return-void

    #@32
    .line 122
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    goto :goto_0
.end method


# virtual methods
.method pushViewStackEntry(Landroid/app/assist/AssistStructure$ViewNode;I)V
    .locals 2
    .param p1, "node"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 167
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    if-lt p2, v1, :cond_0

    #@8
    .line 168
    new-instance v0, Landroid/app/assist/AssistStructure$ViewStackEntry;

    #@a
    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewStackEntry;-><init>()V

    #@d
    .line 169
    .local v0, "entry":Landroid/app/assist/AssistStructure$ViewStackEntry;
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    .line 175
    :goto_0
    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->node:Landroid/app/assist/AssistStructure$ViewNode;

    #@14
    .line 176
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    #@17
    move-result v1

    #@18
    iput v1, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->numChildren:I

    #@1a
    .line 177
    const/4 v1, 0x0

    #@1b
    iput v1, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    #@1d
    .line 178
    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    #@1f
    .line 165
    return-void

    #@20
    .line 172
    .end local v0    # "entry":Landroid/app/assist/AssistStructure$ViewStackEntry;
    :cond_0
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/app/assist/AssistStructure$ViewStackEntry;

    #@28
    .restart local v0    # "entry":Landroid/app/assist/AssistStructure$ViewStackEntry;
    goto :goto_0
.end method

.method writeNextEntryToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;Landroid/os/PooledStringWriter;)Z
    .locals 8
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;
    .param p3, "pwriter"    # Landroid/os/PooledStringWriter;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 203
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    #@5
    if-eqz v4, :cond_3

    #@7
    .line 204
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    #@9
    iget v4, v4, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    #@b
    iget-object v5, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    #@d
    iget v5, v5, Landroid/app/assist/AssistStructure$ViewStackEntry;->numChildren:I

    #@f
    if-ge v4, v5, :cond_1

    #@11
    .line 208
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    #@13
    iget-object v4, v4, Landroid/app/assist/AssistStructure$ViewStackEntry;->node:Landroid/app/assist/AssistStructure$ViewNode;

    #@15
    iget-object v4, v4, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@17
    iget-object v5, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    #@19
    iget v5, v5, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    #@1b
    aget-object v0, v4, v5

    #@1d
    .line 209
    .local v0, "child":Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    #@1f
    iget v5, v4, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    #@21
    add-int/lit8 v5, v5, 0x1

    #@23
    iput v5, v4, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    #@25
    .line 210
    invoke-virtual {p0, v0, p2, p3, v6}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeView(Landroid/app/assist/AssistStructure$ViewNode;Landroid/os/Parcel;Landroid/os/PooledStringWriter;I)V

    #@28
    .line 211
    return v6

    #@29
    .line 225
    .end local v0    # "child":Landroid/app/assist/AssistStructure$ViewNode;
    .local v1, "pos":I
    :cond_0
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    check-cast v4, Landroid/app/assist/AssistStructure$ViewStackEntry;

    #@31
    iput-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    #@33
    .line 226
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    #@35
    iget v4, v4, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    #@37
    iget-object v5, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    #@39
    iget v5, v5, Landroid/app/assist/AssistStructure$ViewStackEntry;->numChildren:I

    #@3b
    if-lt v4, v5, :cond_2

    #@3d
    .line 216
    .end local v1    # "pos":I
    :cond_1
    iget v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    #@3f
    add-int/lit8 v1, v4, -0x1

    #@41
    iput v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    #@43
    .line 219
    .restart local v1    # "pos":I
    if-gez v1, :cond_0

    #@45
    .line 222
    iput-object v7, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    #@47
    .line 227
    :cond_2
    return v6

    #@48
    .line 231
    .end local v1    # "pos":I
    :cond_3
    iget v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurWindow:I

    #@4a
    .line 232
    .restart local v1    # "pos":I
    iget v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    #@4c
    if-ge v1, v4, :cond_4

    #@4e
    .line 233
    iget-object v4, p1, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v3

    #@54
    check-cast v3, Landroid/app/assist/AssistStructure$WindowNode;

    #@56
    .line 234
    .local v3, "win":Landroid/app/assist/AssistStructure$WindowNode;
    iget v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurWindow:I

    #@58
    add-int/lit8 v4, v4, 0x1

    #@5a
    iput v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurWindow:I

    #@5c
    .line 238
    const v4, 0x11111111

    #@5f
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@62
    .line 239
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mTmpMatrix:[F

    #@64
    invoke-virtual {v3, p2, p3, v4}, Landroid/app/assist/AssistStructure$WindowNode;->writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;[F)V

    #@67
    .line 240
    iget v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    #@69
    add-int/lit8 v4, v4, 0x1

    #@6b
    iput v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    #@6d
    .line 241
    iget-object v2, v3, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    #@6f
    .line 242
    .local v2, "root":Landroid/app/assist/AssistStructure$ViewNode;
    iput v5, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    #@71
    .line 244
    invoke-virtual {p0, v2, p2, p3, v5}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeView(Landroid/app/assist/AssistStructure$ViewNode;Landroid/os/Parcel;Landroid/os/PooledStringWriter;I)V

    #@74
    .line 245
    return v6

    #@75
    .line 248
    .end local v2    # "root":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v3    # "win":Landroid/app/assist/AssistStructure$WindowNode;
    :cond_4
    return v5
.end method

.method writeToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V
    .locals 5
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->dataPosition()I

    #@4
    move-result v1

    #@5
    .line 128
    .local v1, "start":I
    iput v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    #@7
    .line 129
    iput v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    #@9
    .line 130
    invoke-virtual {p0, p1, p2}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeToParcelInner(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)Z

    #@c
    move-result v0

    #@d
    .line 131
    .local v0, "more":Z
    const-string/jumbo v3, "AssistStructure"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Flattened "

    #@18
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    if-eqz v0, :cond_0

    #@1e
    const-string/jumbo v2, "partial"

    #@21
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v4, " assist data: "

    #@28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->dataPosition()I

    #@2f
    move-result v4

    #@30
    sub-int/2addr v4, v1

    #@31
    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 133
    const-string/jumbo v4, " bytes, containing "

    #@38
    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 133
    iget v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    #@3e
    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 133
    const-string/jumbo v4, " windows, "

    #@45
    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    .line 134
    iget v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    #@4b
    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 134
    const-string/jumbo v4, " views"

    #@52
    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 126
    return-void

    #@5e
    .line 131
    :cond_0
    const-string/jumbo v2, "final"

    #@61
    goto :goto_0
.end method

.method writeToParcelInner(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 138
    iget v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    #@3
    if-nez v1, :cond_0

    #@5
    .line 139
    return v3

    #@6
    .line 142
    :cond_0
    new-instance v0, Landroid/os/PooledStringWriter;

    #@8
    invoke-direct {v0, p2}, Landroid/os/PooledStringWriter;-><init>(Landroid/os/Parcel;)V

    #@b
    .line 143
    .local v0, "pwriter":Landroid/os/PooledStringWriter;
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeNextEntryToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;Landroid/os/PooledStringWriter;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    #@14
    move-result v1

    #@15
    const/high16 v2, 0x10000

    #@17
    if-le v1, v2, :cond_1

    #@19
    .line 150
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 151
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1f
    .line 154
    invoke-virtual {v0}, Landroid/os/PooledStringWriter;->finish()V

    #@22
    .line 155
    const/4 v1, 0x1

    #@23
    return v1

    #@24
    .line 160
    :cond_2
    invoke-virtual {v0}, Landroid/os/PooledStringWriter;->finish()V

    #@27
    .line 161
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@2c
    .line 162
    return v3
.end method

.method writeView(Landroid/app/assist/AssistStructure$ViewNode;Landroid/os/Parcel;Landroid/os/PooledStringWriter;I)V
    .locals 3
    .param p1, "child"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p2, "out"    # Landroid/os/Parcel;
    .param p3, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p4, "levelAdj"    # I

    #@0
    .prologue
    .line 186
    const v2, 0x22222222

    #@3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 187
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mTmpMatrix:[F

    #@8
    invoke-virtual {p1, p2, p3, v2}, Landroid/app/assist/AssistStructure$ViewNode;->writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;[F)I

    #@b
    move-result v0

    #@c
    .line 188
    .local v0, "flags":I
    iget v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    #@e
    add-int/lit8 v2, v2, 0x1

    #@10
    iput v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    #@12
    .line 190
    const/high16 v2, 0x100000

    #@14
    and-int/2addr v2, v0

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 195
    iget-object v2, p1, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@19
    array-length v2, v2

    #@1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 196
    iget v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    #@1f
    add-int/lit8 v1, v2, 0x1

    #@21
    iput v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    #@23
    .line 197
    .local v1, "pos":I
    invoke-virtual {p0, p1, v1}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->pushViewStackEntry(Landroid/app/assist/AssistStructure$ViewNode;I)V

    #@26
    .line 181
    .end local v1    # "pos":I
    :cond_0
    return-void
.end method
