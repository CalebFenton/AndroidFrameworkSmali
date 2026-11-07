.class public Landroid/database/CursorWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o STATS_TAG:Ljava/lang/String; = "CursorWindowStats"

.field private static greylist sCursorWindowSize:I


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mStartPos:I

.field public greylist mWindowPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    const/4 v0, -0x1

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 750
    new-instance v0, Landroid/database/CursorWindow$1;

    invoke-direct {v0}, Landroid/database/CursorWindow$1;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 194
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 196
    invoke-static {p1}, Landroid/database/CursorWindow;->nativeCreateFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 197
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    .line 200
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeGetName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Landroid/database/CursorWindow;->createCloseGuard()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 202
    return-void

    .line 198
    :cond_26
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/database/CursorWindow-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 145
    invoke-static {}, Landroid/database/CursorWindow;->getCursorWindowSize()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    .line 146
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "windowSizeBytes"    # J

    .line 163
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 164
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_36

    .line 167
    const/4 v2, 0x0

    iput v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 168
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_16

    move-object v2, p1

    goto :goto_18

    :cond_16
    const-string v2, "<unnamed>"

    :goto_18
    iput-object v2, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 169
    iget-object v2, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    long-to-int v3, p2

    invoke-static {v2, v3}, Landroid/database/CursorWindow;->nativeCreate(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 170
    iget-wide v2, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_30

    .line 173
    invoke-direct {p0}, Landroid/database/CursorWindow;->createCloseGuard()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 174
    return-void

    .line 171
    :cond_30
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window size cannot be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Z)V
    .registers 4
    .param p1, "localWindow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private blacklist createCloseGuard()Ldalvik/system/CloseGuard;
    .registers 3

    .line 206
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    .line 207
    .local v0, "closeGuard":Ldalvik/system/CloseGuard;
    const-string v1, "CursorWindow.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 208
    return-object v0
.end method

.method private blacklist createCloseGuard$ravenwood()Ldalvik/system/CloseGuard;
    .registers 2

    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o dispose()V
    .registers 5

    .line 228
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 229
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 231
    :cond_9
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 232
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeDispose(J)V

    .line 233
    iput-wide v2, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 235
    :cond_18
    return-void
.end method

.method private static greylist-max-o getCursorWindowSize()I
    .registers 2

    .line 790
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    if-gez v0, :cond_13

    .line 793
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 796
    :cond_13
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    return v0
.end method

.method private static blacklist getCursorWindowSize$ravenwood()I
    .registers 1

    .line 800
    const/16 v0, 0x400

    return v0
.end method

.method private static native greylist-max-o nativeAllocRow(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeClear(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
.end method

.method private static native greylist-max-o nativeCreate(Ljava/lang/String;I)J
.end method

.method private static native greylist-max-o nativeCreateFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native greylist-max-o nativeFreeLastRow(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetBlob(JII)[B
.end method

.method private static native greylist-max-o nativeGetDouble(JII)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetLong(JII)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetName(J)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetNumRows(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetString(JII)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetType(JII)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativePutBlob(J[BII)Z
.end method

.method private static native greylist-max-o nativePutDouble(JDII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativePutLong(JJII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativePutNull(JII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativePutString(JLjava/lang/String;II)Z
.end method

.method private static native greylist-max-o nativeSetNumColumns(JI)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static whitelist newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .registers 2
    .param p0, "p"    # Landroid/os/Parcel;

    .line 762
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    return-object v0
.end method


# virtual methods
.method public whitelist allocRow()Z
    .registers 3

    .line 329
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 331
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeAllocRow(J)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 333
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 331
    return v0

    .line 333
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 334
    throw v0
.end method

.method public whitelist clear()V
    .registers 3

    .line 254
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 256
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 257
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeClear(J)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 259
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 260
    nop

    .line 261
    return-void

    .line 259
    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 260
    throw v0
.end method

.method public whitelist copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .registers 7
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "buffer"    # Landroid/database/CharArrayBuffer;

    .line 537
    if-eqz p3, :cond_18

    .line 540
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 542
    :try_start_5
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2, p3}, Landroid/database/CursorWindow;->nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .line 544
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 545
    nop

    .line 546
    return-void

    .line 544
    :catchall_13
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 545
    throw v0

    .line 538
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharArrayBuffer should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 766
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 218
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 219
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 221
    :cond_9
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 223
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 224
    nop

    .line 225
    return-void

    .line 223
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 224
    throw v0
.end method

.method public whitelist freeLastRow()V
    .registers 3

    .line 341
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 343
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeFreeLastRow(J)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 345
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 346
    nop

    .line 347
    return-void

    .line 345
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 346
    throw v0
.end method

.method public whitelist getBlob(II)[B
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 462
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 464
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetBlob(JII)[B

    move-result-object v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 466
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 464
    return-object v0

    .line 466
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 467
    throw v0
.end method

.method public whitelist getDouble(II)D
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 603
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 605
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetDouble(JII)D

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 607
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 605
    return-wide v0

    .line 607
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 608
    throw v0
.end method

.method public whitelist getFloat(II)F
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 656
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist getInt(II)I
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 640
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getLong(II)J
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 571
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 573
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetLong(JII)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 575
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 573
    return-wide v0

    .line 575
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 576
    throw v0
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNumRows()I
    .registers 3

    .line 295
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 297
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeGetNumRows(J)I

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 299
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 297
    return v0

    .line 299
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 300
    throw v0
.end method

.method public whitelist getShort(II)S
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 624
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public whitelist getStartPosition()I
    .registers 2

    .line 273
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    return v0
.end method

.method public whitelist getString(II)Ljava/lang/String;
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 497
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 499
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetString(JII)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 501
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 499
    return-object v0

    .line 501
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 502
    throw v0
.end method

.method public whitelist getType(II)I
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 432
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 434
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetType(JII)I

    move-result v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 436
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 434
    return v0

    .line 436
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 437
    throw v0
.end method

.method public whitelist isBlob(II)Z
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 375
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 376
    .local v0, "type":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    if-nez v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v1, 0x1

    :goto_d
    return v1
.end method

.method public whitelist isFloat(II)Z
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isLong(II)Z
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 390
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public whitelist isNull(II)Z
    .registers 4
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 360
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isString(II)Z
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 419
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 420
    .local v0, "type":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    if-nez v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v1, 0x1

    :goto_d
    return v1
.end method

.method protected whitelist onAllReferencesReleased()V
    .registers 1

    .line 785
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V

    .line 786
    return-void
.end method

.method public whitelist putBlob([BII)Z
    .registers 7
    .param p1, "value"    # [B
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 669
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 672
    :try_start_6
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p2, v2

    invoke-static {v0, v1, p1, v2, p3}, Landroid/database/CursorWindow;->nativePutBlob(J[BII)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_14

    .line 674
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 672
    return v0

    .line 674
    :catchall_14
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 675
    throw v0
.end method

.method public whitelist putDouble(DII)Z
    .registers 11
    .param p1, "value"    # D
    .param p3, "row"    # I
    .param p4, "column"    # I

    .line 726
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 728
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_16

    sub-int v4, p3, v2

    move-wide v2, p1

    move v5, p4

    .end local p1    # "value":D
    .end local p4    # "column":I
    .local v2, "value":D
    .local v5, "column":I
    :try_start_b
    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow;->nativePutDouble(JDII)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    .line 730
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 728
    return p1

    .line 730
    :catchall_13
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v2    # "value":D
    .end local v5    # "column":I
    .restart local p1    # "value":D
    .restart local p4    # "column":I
    :catchall_16
    move-exception v0

    move-wide v2, p1

    move v5, p4

    move-object p1, v0

    .end local p1    # "value":D
    .end local p4    # "column":I
    .restart local v2    # "value":D
    .restart local v5    # "column":I
    :goto_1a
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 731
    throw p1
.end method

.method public whitelist putLong(JII)Z
    .registers 11
    .param p1, "value"    # J
    .param p3, "row"    # I
    .param p4, "column"    # I

    .line 707
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 709
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_16

    sub-int v4, p3, v2

    move-wide v2, p1

    move v5, p4

    .end local p1    # "value":J
    .end local p4    # "column":I
    .local v2, "value":J
    .local v5, "column":I
    :try_start_b
    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow;->nativePutLong(JJII)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    .line 711
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 709
    return p1

    .line 711
    :catchall_13
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v2    # "value":J
    .end local v5    # "column":I
    .restart local p1    # "value":J
    .restart local p4    # "column":I
    :catchall_16
    move-exception v0

    move-wide v2, p1

    move v5, p4

    move-object p1, v0

    .end local p1    # "value":J
    .end local p4    # "column":I
    .restart local v2    # "value":J
    .restart local v5    # "column":I
    :goto_1a
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 712
    throw p1
.end method

.method public whitelist putNull(II)Z
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 742
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 744
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativePutNull(JII)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 746
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 744
    return v0

    .line 746
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 747
    throw v0
.end method

.method public whitelist putString(Ljava/lang/String;II)Z
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 688
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 691
    :try_start_6
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p2, v2

    invoke-static {v0, v1, p1, v2, p3}, Landroid/database/CursorWindow;->nativePutString(JLjava/lang/String;II)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_14

    .line 693
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 691
    return v0

    .line 693
    :catchall_14
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 694
    throw v0
.end method

.method public whitelist setNumColumns(I)Z
    .registers 4
    .param p1, "columnNum"    # I

    .line 315
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 317
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1, p1}, Landroid/database/CursorWindow;->nativeSetNumColumns(JI)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 319
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 317
    return v0

    .line 319
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 320
    throw v0
.end method

.method public whitelist setStartPosition(I)V
    .registers 2
    .param p1, "pos"    # I

    .line 286
    iput p1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 287
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/database/CursorWindow;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 770
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 772
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1, p1}, Landroid/database/CursorWindow;->nativeWriteToParcel(JLandroid/os/Parcel;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19

    .line 775
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 776
    nop

    .line 778
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_18

    .line 779
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 781
    :cond_18
    return-void

    .line 775
    :catchall_19
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 776
    throw v0
.end method
