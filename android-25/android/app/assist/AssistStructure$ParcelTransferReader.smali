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
.field private final mChannel:Landroid/os/IBinder;

.field private mCurParcel:Landroid/os/Parcel;

.field mNumReadViews:I

.field mNumReadWindows:I

.field mStringReader:Landroid/os/PooledStringReader;

.field final mTmpMatrix:[F

.field private mTransferToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/app/assist/AssistStructure;


# direct methods
.method constructor <init>(Landroid/app/assist/AssistStructure;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/assist/AssistStructure;
    .param p2, "channel"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 263
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 253
    const/16 v0, 0x9

    #@7
    new-array v0, v0, [F

    #@9
    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    #@b
    .line 264
    iput-object p2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mChannel:Landroid/os/IBinder;

    #@d
    .line 263
    return-void
.end method

.method private fetchData()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 321
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.AssistStructure"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 322
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTransferToken:Landroid/os/IBinder;

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10
    .line 324
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 325
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    #@16
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 327
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@1c
    move-result-object v2

    #@1d
    iput-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    #@1f
    .line 329
    :try_start_0
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mChannel:Landroid/os/IBinder;

    #@21
    iget-object v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    #@23
    const/4 v4, 0x2

    #@24
    const/4 v5, 0x0

    #@25
    invoke-interface {v2, v4, v0, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 335
    iput v6, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    #@2d
    iput v6, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    #@2f
    .line 319
    return-void

    #@30
    .line 330
    :catch_0
    move-exception v1

    #@31
    .line 331
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AssistStructure"

    #@34
    const-string/jumbo v3, "Failure reading AssistStructure data"

    #@37
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    .line 332
    new-instance v2, Ljava/lang/IllegalStateException;

    #@3c
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v4, "Failure reading AssistStructure data: "

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@53
    throw v2
.end method


# virtual methods
.method go()V
    .locals 4

    #@0
    .prologue
    .line 268
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->fetchData()V

    #@3
    .line 269
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    #@5
    iget-object v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    #@7
    invoke-static {v3}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@a
    move-result-object v3

    #@b
    iput-object v3, v2, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    #@d
    .line 270
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    #@f
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    .line 271
    .local v0, "N":I
    if-lez v0, :cond_0

    #@15
    .line 274
    new-instance v2, Landroid/os/PooledStringReader;

    #@17
    iget-object v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    #@19
    invoke-direct {v2, v3}, Landroid/os/PooledStringReader;-><init>(Landroid/os/Parcel;)V

    #@1c
    iput-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    #@1e
    .line 277
    const/4 v1, 0x0

    #@1f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@21
    .line 278
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    #@23
    iget-object v2, v2, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    #@25
    new-instance v3, Landroid/app/assist/AssistStructure$WindowNode;

    #@27
    invoke-direct {v3, p0}, Landroid/app/assist/AssistStructure$WindowNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;)V

    #@2a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 277
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 267
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method readParcel(II)Landroid/os/Parcel;
    .locals 4
    .param p1, "validateToken"    # I
    .param p2, "level"    # I

    #@0
    .prologue
    .line 290
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v0

    #@6
    .line 291
    .local v0, "token":I
    if-eqz v0, :cond_1

    #@8
    .line 292
    if-eq v0, p1, :cond_0

    #@a
    .line 293
    new-instance v1, Landroid/os/BadParcelableException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Got token "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 294
    const-string/jumbo v3, ", expected token "

    #@23
    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 294
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 296
    :cond_0
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    #@39
    return-object v1

    #@3a
    .line 299
    :cond_1
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    #@3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTransferToken:Landroid/os/IBinder;

    #@42
    .line 300
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTransferToken:Landroid/os/IBinder;

    #@44
    if-nez v1, :cond_2

    #@46
    .line 301
    new-instance v1, Ljava/lang/IllegalStateException;

    #@48
    .line 302
    const-string/jumbo v2, "Reached end of partial data without transfer token"

    #@4b
    .line 301
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v1

    #@4f
    .line 306
    :cond_2
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->fetchData()V

    #@52
    .line 309
    new-instance v1, Landroid/os/PooledStringReader;

    #@54
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    #@56
    invoke-direct {v1, v2}, Landroid/os/PooledStringReader;-><init>(Landroid/os/Parcel;)V

    #@59
    iput-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    #@5b
    .line 315
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    #@5d
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@60
    .line 316
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    #@62
    return-object v1
.end method
