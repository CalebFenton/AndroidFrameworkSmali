.class final Landroid/app/assist/AssistStructure$ParcelTransferReader;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ParcelTransferReader"
.end annotation


# instance fields
.field private final greylist-max-o mChannel:Landroid/os/IBinder;

.field private greylist-max-o mCurParcel:Landroid/os/Parcel;

.field greylist-max-o mNumReadViews:I

.field greylist-max-o mNumReadWindows:I

.field greylist-max-o mStringReader:Landroid/os/PooledStringReader;

.field final greylist-max-o mTmpMatrix:[F

.field private greylist-max-o mTransferToken:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Landroid/app/assist/AssistStructure;


# direct methods
.method constructor blacklist <init>(Landroid/app/assist/AssistStructure;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/assist/AssistStructure;
    .param p2, "channel"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 377
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    .line 378
    iput-object p2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mChannel:Landroid/os/IBinder;

    .line 379
    return-void
.end method

.method private greylist-max-o fetchData()V
    .registers 6

    .line 439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 441
    .local v0, "data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.app.AssistStructure"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTransferToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 444
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_17

    .line 445
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    :cond_17
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_51

    .line 449
    :try_start_1d
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mChannel:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_30
    .catchall {:try_start_1d .. :try_end_26} :catchall_51

    .line 453
    nop

    .line 455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    nop

    .line 457
    iput v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    iput v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    .line 458
    return-void

    .line 450
    :catch_30
    move-exception v1

    .line 451
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_31
    const-string v2, "AssistStructure"

    const-string v3, "Failure reading AssistStructure data"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading AssistStructure data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/app/assist/AssistStructure$ParcelTransferReader;
    throw v2
    :try_end_51
    .catchall {:try_start_31 .. :try_end_51} :catchall_51

    .line 455
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/app/assist/AssistStructure$ParcelTransferReader;
    :catchall_51
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    throw v1
.end method


# virtual methods
.method greylist-max-o go()V
    .registers 5

    .line 382
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->fetchData()V

    .line 383
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/assist/AssistStructure;->-$$Nest$fputmFlags(Landroid/app/assist/AssistStructure;I)V

    .line 384
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/assist/AssistStructure;->-$$Nest$fputmAutofillFlags(Landroid/app/assist/AssistStructure;I)V

    .line 385
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/app/assist/AssistStructure;->-$$Nest$fputmAcquisitionStartTime(Landroid/app/assist/AssistStructure;J)V

    .line 386
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/app/assist/AssistStructure;->-$$Nest$fputmAcquisitionEndTime(Landroid/app/assist/AssistStructure;J)V

    .line 387
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 388
    .local v0, "N":I
    if-lez v0, :cond_54

    .line 391
    new-instance v1, Landroid/os/PooledStringReader;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-direct {v1, v2}, Landroid/os/PooledStringReader;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    .line 394
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    if-ge v1, v0, :cond_54

    .line 395
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    invoke-static {v2}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmWindowNodes(Landroid/app/assist/AssistStructure;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/app/assist/AssistStructure$WindowNode;

    invoke-direct {v3, p0}, Landroid/app/assist/AssistStructure$WindowNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 401
    .end local v1    # "i":I
    :cond_54
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 402
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 403
    return-void
.end method

.method greylist-max-o readParcel(II)Landroid/os/Parcel;
    .registers 7
    .param p1, "validateToken"    # I
    .param p2, "level"    # I

    .line 409
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 410
    .local v0, "token":I
    if-eqz v0, :cond_38

    .line 411
    if-ne v0, p1, :cond_d

    .line 415
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    return-object v1

    .line 412
    :cond_d
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 413
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_38
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTransferToken:Landroid/os/IBinder;

    .line 419
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTransferToken:Landroid/os/IBinder;

    if-eqz v1, :cond_58

    .line 425
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->fetchData()V

    .line 428
    new-instance v1, Landroid/os/PooledStringReader;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-direct {v1, v2}, Landroid/os/PooledStringReader;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    .line 434
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 435
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    return-object v1

    .line 420
    :cond_58
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Reached end of partial data without transfer token"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
