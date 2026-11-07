.class public final Lcom/android/internal/inputmethod/InputBindResult;
.super Ljava/lang/Object;
.source "InputBindResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputBindResult$ResultCode;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/inputmethod/InputBindResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DISPLAY_ID_MISMATCH:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist IME_NOT_CONNECTED:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist INVALID_DISPLAY_ID:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist INVALID_PACKAGE_NAME:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NO_EDITOR:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NULL:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NULL_EDITOR_INFO:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;


# instance fields
.field public final blacklist accessibilitySessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist channel:Landroid/view/InputChannel;

.field public final blacklist id:Ljava/lang/String;

.field public final blacklist isInputMethodSuppressingSpellChecker:Z

.field public final blacklist method:Lcom/android/internal/inputmethod/IInputMethodSession;

.field public final blacklist result:I

.field public final blacklist sequence:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 312
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputBindResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 381
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;

    .line 385
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    .line 389
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NO_EDITOR:Lcom/android/internal/inputmethod/InputBindResult;

    .line 393
    nop

    .line 394
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/inputmethod/InputBindResult;

    .line 398
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/inputmethod/InputBindResult;

    .line 402
    nop

    .line 403
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;

    .line 407
    nop

    .line 408
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/inputmethod/InputBindResult;

    .line 412
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

    .line 417
    nop

    .line 418
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->DISPLAY_ID_MISMATCH:Lcom/android/internal/inputmethod/InputBindResult;

    .line 423
    nop

    .line 424
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_DISPLAY_ID:Lcom/android/internal/inputmethod/InputBindResult;

    .line 430
    nop

    .line 431
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;

    .line 430
    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "result"    # I
    .param p2, "method"    # Lcom/android/internal/inputmethod/IInputMethodSession;
    .param p4, "channel"    # Landroid/view/InputChannel;
    .param p5, "id"    # Ljava/lang/String;
    .param p6, "sequence"    # I
    .param p7, "isInputMethodSuppressingSpellChecker"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/inputmethod/IInputMethodSession;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;",
            ">;",
            "Landroid/view/InputChannel;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 230
    .local p3, "accessibilitySessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput p1, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    .line 232
    iput-object p2, p0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 233
    iput-object p3, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 234
    iput-object p4, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 235
    iput-object p5, p0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    .line 236
    iput p6, p0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    .line 237
    iput-boolean p7, p0, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    .line 238
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 244
    .local v0, "n":I
    const/4 v1, 0x0

    if-gez v0, :cond_1d

    .line 245
    iput-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    goto :goto_3c

    .line 247
    :cond_1d
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 248
    :goto_24
    if-lez v0, :cond_3c

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 250
    .local v2, "key":I
    nop

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 251
    invoke-static {v3}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    move-result-object v3

    .line 253
    .local v3, "value":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 254
    nop

    .end local v2    # "key":I
    .end local v3    # "value":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    add-int/lit8 v0, v0, -0x1

    .line 255
    goto :goto_24

    .line 257
    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4d

    .line 258
    sget-object v1, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputChannel;

    iput-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    goto :goto_4f

    .line 260
    :cond_4d
    iput-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 262
    :goto_4f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    .line 265
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/inputmethod/InputBindResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist error(I)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 9
    .param p0, "result"    # I

    .line 375
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p0

    .end local p0    # "result":I
    .local v1, "result":I
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v0
.end method

.method private blacklist getResultString()Ljava/lang/String;
    .registers 3

    .line 334
    iget v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    packed-switch v0, :pswitch_data_54

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 368
    :pswitch_21
    const-string v0, "SUCCESS_WITH_ACCESSIBILITY_SESSION"

    return-object v0

    .line 366
    :pswitch_24
    const-string v0, "ERROR_INVALID_DISPLAY_ID"

    return-object v0

    .line 364
    :pswitch_27
    const-string v0, "ERROR_DISPLAY_ID_MISMATCH"

    return-object v0

    .line 350
    :pswitch_2a
    const-string v0, "ERROR_NO_EDITOR"

    return-object v0

    .line 362
    :pswitch_2d
    const-string v0, "ERROR_NOT_IME_TARGET_WINDOW"

    return-object v0

    .line 360
    :pswitch_30
    const-string v0, "ERROR_NULL_EDITOR_INFO"

    return-object v0

    .line 358
    :pswitch_33
    const-string v0, "ERROR_INVALID_USER"

    return-object v0

    .line 356
    :pswitch_36
    const-string v0, "ERROR_IME_NOT_CONNECTED"

    return-object v0

    .line 354
    :pswitch_39
    const-string v0, "ERROR_SYSTEM_NOT_READY"

    return-object v0

    .line 352
    :pswitch_3c
    const-string v0, "ERROR_INVALID_PACKAGE_NAME"

    return-object v0

    .line 348
    :pswitch_3f
    const-string v0, "ERROR_NO_IME"

    return-object v0

    .line 346
    :pswitch_42
    const-string v0, "ERROR_NULL"

    return-object v0

    .line 344
    :pswitch_45
    const-string v0, "SUCCESS_REPORT_WINDOW_FOCUS_ONLY"

    return-object v0

    .line 342
    :pswitch_48
    const-string v0, "SUCCESS_WAITING_USER_SWITCHING"

    return-object v0

    .line 340
    :pswitch_4b
    const-string v0, "SUCCESS_WAITING_IME_BINDING"

    return-object v0

    .line 338
    :pswitch_4e
    const-string v0, "SUCCESS_WAITING_IME_SESSION"

    return-object v0

    .line 336
    :pswitch_51
    const-string v0, "SUCCESS_WITH_IME_SESSION"

    return-object v0

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->describeContents()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputBindResult{result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputBindResult;->getResultString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isInputMethodSuppressingSpellChecker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 284
    iget v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-nez v0, :cond_13

    .line 287
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .line 289
    :cond_13
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 290
    .local v0, "n":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, "i":I
    :goto_1d
    if-ge v1, v0, :cond_36

    .line 293
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 298
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_44

    .line 299
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0, p1, p2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_48

    .line 302
    :cond_44
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    :goto_48
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget-boolean v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 307
    return-void
.end method
