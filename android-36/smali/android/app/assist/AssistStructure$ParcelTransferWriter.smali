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
.field greylist-max-o mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

.field greylist-max-o mCurViewStackPos:I

.field greylist-max-o mCurWindow:I

.field greylist-max-o mNumWindows:I

.field greylist-max-o mNumWrittenViews:I

.field greylist-max-o mNumWrittenWindows:I

.field final greylist-max-o mSanitizeOnWrite:Z

.field final greylist-max-o mTmpMatrix:[F

.field final greylist-max-o mViewStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/assist/AssistStructure$ViewStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mWriteStructure:Z


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V
    .registers 5
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;

    .line 218
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    .line 215
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mTmpMatrix:[F

    .line 219
    invoke-static {p1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmSanitizeOnWrite(Landroid/app/assist/AssistStructure;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mSanitizeOnWrite:Z

    .line 220
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure;->waitForReady()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mWriteStructure:Z

    .line 221
    invoke-static {p1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmFlags(Landroid/app/assist/AssistStructure;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    invoke-static {p1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmAutofillFlags(Landroid/app/assist/AssistStructure;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    invoke-static {p1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmAcquisitionStartTime(Landroid/app/assist/AssistStructure;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 224
    invoke-static {p1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmAcquisitionEndTime(Landroid/app/assist/AssistStructure;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 225
    invoke-static {p1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmWindowNodes(Landroid/app/assist/AssistStructure;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    .line 226
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mWriteStructure:Z

    if-eqz v0, :cond_50

    iget v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    if-lez v0, :cond_50

    .line 227
    iget v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_54

    .line 229
    :cond_50
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    :goto_54
    return-void
.end method


# virtual methods
.method greylist-max-o pushViewStackEntry(Landroid/app/assist/AssistStructure$ViewNode;I)V
    .registers 5
    .param p1, "node"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p2, "pos"    # I

    .line 274
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_13

    .line 275
    new-instance v0, Landroid/app/assist/AssistStructure$ViewStackEntry;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewStackEntry;-><init>()V

    .line 276
    .local v0, "entry":Landroid/app/assist/AssistStructure$ViewStackEntry;
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 279
    .end local v0    # "entry":Landroid/app/assist/AssistStructure$ViewStackEntry;
    :cond_13
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure$ViewStackEntry;

    .line 282
    .restart local v0    # "entry":Landroid/app/assist/AssistStructure$ViewStackEntry;
    :goto_1b
    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->node:Landroid/app/assist/AssistStructure$ViewNode;

    .line 283
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v1

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->numChildren:I

    .line 284
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    .line 285
    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    .line 286
    return-void
.end method

.method greylist-max-o writeNextEntryToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;Landroid/os/PooledStringWriter;)Z
    .registers 9
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;
    .param p3, "pwriter"    # Landroid/os/PooledStringWriter;

    .line 317
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_46

    .line 318
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v2, v2, Landroid/app/assist/AssistStructure$ViewStackEntry;->numChildren:I

    if-ge v0, v2, :cond_26

    .line 322
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->node:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v2, v2, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    aget-object v0, v0, v2

    .line 323
    .local v0, "child":Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v3, v2, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    .line 324
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeView(Landroid/app/assist/AssistStructure$ViewNode;Landroid/os/Parcel;Landroid/os/PooledStringWriter;I)V

    .line 325
    return v1

    .line 330
    .end local v0    # "child":Landroid/app/assist/AssistStructure$ViewNode;
    :cond_26
    iget v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    .line 333
    .local v0, "pos":I
    if-gez v0, :cond_31

    .line 336
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    .line 337
    goto :goto_45

    .line 339
    :cond_31
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/assist/AssistStructure$ViewStackEntry;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    .line 340
    .end local v0    # "pos":I
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v2, v2, Landroid/app/assist/AssistStructure$ViewStackEntry;->numChildren:I

    if-ge v0, v2, :cond_26

    .line 341
    :goto_45
    return v1

    .line 345
    :cond_46
    iget v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurWindow:I

    .line 346
    .restart local v0    # "pos":I
    iget v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_74

    .line 347
    invoke-static {p1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmWindowNodes(Landroid/app/assist/AssistStructure;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/assist/AssistStructure$WindowNode;

    .line 348
    .local v2, "win":Landroid/app/assist/AssistStructure$WindowNode;
    iget v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurWindow:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurWindow:I

    .line 352
    const v4, 0x11111111

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mTmpMatrix:[F

    invoke-virtual {v2, p2, p3, v4}, Landroid/app/assist/AssistStructure$WindowNode;->writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;[F)V

    .line 354
    iget v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    .line 355
    iget-object v4, v2, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    .line 356
    .local v4, "root":Landroid/app/assist/AssistStructure$ViewNode;
    iput v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    .line 358
    invoke-virtual {p0, v4, p2, p3, v3}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeView(Landroid/app/assist/AssistStructure$ViewNode;Landroid/os/Parcel;Landroid/os/PooledStringWriter;I)V

    .line 359
    return v1

    .line 362
    .end local v2    # "win":Landroid/app/assist/AssistStructure$WindowNode;
    .end local v4    # "root":Landroid/app/assist/AssistStructure$ViewNode;
    :cond_74
    return v3
.end method

.method greylist-max-o writeToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V
    .registers 7
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 235
    .local v0, "start":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    .line 236
    iput v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    .line 237
    invoke-virtual {p0, p1, p2}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeToParcelInner(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)Z

    move-result v1

    .line 238
    .local v1, "more":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flattened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_1e

    const-string/jumbo v3, "partial"

    goto :goto_20

    :cond_1e
    const-string v3, "final"

    :goto_20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " assist data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, containing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " windows, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " views"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    const-string v3, "AssistStructure"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method greylist-max-o writeToParcelInner(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;

    .line 245
    iget v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 246
    return v1

    .line 249
    :cond_6
    new-instance v0, Landroid/os/PooledStringWriter;

    invoke-direct {v0, p2}, Landroid/os/PooledStringWriter;-><init>(Landroid/os/Parcel;)V

    .line 250
    .local v0, "pwriter":Landroid/os/PooledStringWriter;
    :cond_b
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeNextEntryToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;Landroid/os/PooledStringWriter;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/high16 v3, 0x10000

    if-le v2, v3, :cond_b

    .line 257
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 261
    invoke-virtual {v0}, Landroid/os/PooledStringWriter;->finish()V

    .line 262
    const/4 v1, 0x1

    return v1

    .line 267
    :cond_24
    invoke-virtual {v0}, Landroid/os/PooledStringWriter;->finish()V

    .line 268
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 269
    return v1
.end method

.method greylist-max-o writeView(Landroid/app/assist/AssistStructure$ViewNode;Landroid/os/Parcel;Landroid/os/PooledStringWriter;I)V
    .registers 11
    .param p1, "child"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p2, "out"    # Landroid/os/Parcel;
    .param p3, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p4, "levelAdj"    # I

    .line 294
    const v0, 0x22222222

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    invoke-static {}, Landroid/app/assist/flags/Flags;->addPlaceholderViewForNullChild()Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p1, :cond_15

    .line 298
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    move-object p1, v0

    goto :goto_16

    .line 300
    :cond_15
    move-object v0, p1

    .end local p1    # "child":Landroid/app/assist/AssistStructure$ViewNode;
    .local v0, "child":Landroid/app/assist/AssistStructure$ViewNode;
    :goto_16
    iget-boolean v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mSanitizeOnWrite:Z

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mTmpMatrix:[F

    const/4 v5, 0x1

    move-object v1, p2

    move-object v2, p3

    .end local p2    # "out":Landroid/os/Parcel;
    .end local p3    # "pwriter":Landroid/os/PooledStringWriter;
    .local v1, "out":Landroid/os/Parcel;
    .local v2, "pwriter":Landroid/os/PooledStringWriter;
    invoke-virtual/range {v0 .. v5}, Landroid/app/assist/AssistStructure$ViewNode;->writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Z[FZ)I

    move-result p1

    .line 302
    .local p1, "flags":I
    iget p2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    .line 304
    const/high16 p2, 0x100000

    and-int/2addr p2, p1

    if-eqz p2, :cond_3b

    .line 309
    iget-object p2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length p2, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget p2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    .line 311
    .local p2, "pos":I
    invoke-virtual {p0, v0, p2}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->pushViewStackEntry(Landroid/app/assist/AssistStructure$ViewNode;I)V

    .line 313
    .end local p2    # "pos":I
    :cond_3b
    return-void
.end method
