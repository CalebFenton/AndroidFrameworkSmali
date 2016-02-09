.class public Landroid/view/inputmethod/EditorInfo;
.super Ljava/lang/Object;
.source "EditorInfo.java"

# interfaces
.implements Landroid/text/InputType;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/EditorInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/EditorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IME_ACTION_DONE:I = 0x6

.field public static final IME_ACTION_GO:I = 0x2

.field public static final IME_ACTION_NEXT:I = 0x5

.field public static final IME_ACTION_NONE:I = 0x1

.field public static final IME_ACTION_PREVIOUS:I = 0x7

.field public static final IME_ACTION_SEARCH:I = 0x3

.field public static final IME_ACTION_SEND:I = 0x4

.field public static final IME_ACTION_UNSPECIFIED:I = 0x0

.field public static final IME_FLAG_FORCE_ASCII:I = -0x80000000

.field public static final IME_FLAG_NAVIGATE_NEXT:I = 0x8000000

.field public static final IME_FLAG_NAVIGATE_PREVIOUS:I = 0x4000000

.field public static final IME_FLAG_NO_ACCESSORY_ACTION:I = 0x20000000

.field public static final IME_FLAG_NO_ENTER_ACTION:I = 0x40000000

.field public static final IME_FLAG_NO_EXTRACT_UI:I = 0x10000000

.field public static final IME_FLAG_NO_FULLSCREEN:I = 0x2000000

.field public static final IME_MASK_ACTION:I = 0xff

.field public static final IME_NULL:I


# instance fields
.field public actionId:I

.field public actionLabel:Ljava/lang/CharSequence;

.field public extras:Landroid/os/Bundle;

.field public fieldId:I

.field public fieldName:Ljava/lang/String;

.field public hintText:Ljava/lang/CharSequence;

.field public imeOptions:I

.field public initialCapsMode:I

.field public initialSelEnd:I

.field public initialSelStart:I

.field public inputType:I

.field public label:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public privateImeOptions:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 425
    new-instance v0, Landroid/view/inputmethod/EditorInfo$1;

    #@2
    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo$1;-><init>()V

    #@5
    .line 424
    sput-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 41
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@8
    .line 210
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@a
    .line 223
    iput-object v2, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    #@c
    .line 235
    iput-object v2, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@e
    .line 243
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    #@10
    .line 259
    iput v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@12
    .line 275
    iput v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@14
    .line 286
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    #@16
    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 451
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "inputType=0x"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 382
    const-string/jumbo v1, " imeOptions=0x"

    #@1d
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 382
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@23
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 383
    const-string/jumbo v1, " privateImeOptions="

    #@2e
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 383
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    #@34
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3f
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    const-string/jumbo v1, "actionLabel="

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    .line 385
    const-string/jumbo v1, " actionId="

    #@58
    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    .line 385
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    #@5e
    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@69
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    const-string/jumbo v1, "initialSelStart="

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    .line 387
    const-string/jumbo v1, " initialSelEnd="

    #@82
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    .line 387
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@88
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    .line 388
    const-string/jumbo v1, " initialCapsMode=0x"

    #@8f
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    .line 389
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    #@95
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v0

    #@a1
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@a4
    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v0

    #@ad
    const-string/jumbo v1, "hintText="

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v0

    #@b4
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    #@b6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v0

    #@ba
    .line 391
    const-string/jumbo v1, " label="

    #@bd
    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v0

    #@c1
    .line 391
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    #@c3
    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v0

    #@c7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v0

    #@cb
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@ce
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    const-string/jumbo v1, "packageName="

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v0

    #@de
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    #@e0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v0

    #@e4
    .line 393
    const-string/jumbo v1, " fieldId="

    #@e7
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v0

    #@eb
    .line 393
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    #@ed
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v0

    #@f1
    .line 394
    const-string/jumbo v1, " fieldName="

    #@f4
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v0

    #@f8
    .line 394
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    #@fa
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v0

    #@fe
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v0

    #@102
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@105
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    #@107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v0

    #@10e
    const-string/jumbo v1, "extras="

    #@111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v0

    #@115
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v0

    #@11b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v0

    #@11f
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@122
    .line 380
    return-void
.end method

.method public final makeCompatible(I)V
    .locals 2
    .param p1, "targetSdkVersion"    # I

    #@0
    .prologue
    const v1, 0xfff000

    #@3
    .line 358
    const/16 v0, 0xb

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 359
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@9
    and-int/lit16 v0, v0, 0xfff

    #@b
    sparse-switch v0, :sswitch_data_0

    #@e
    .line 357
    :cond_0
    :goto_0
    return-void

    #@f
    .line 362
    :sswitch_0
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@11
    and-int/2addr v0, v1

    #@12
    .line 361
    or-int/lit8 v0, v0, 0x21

    #@14
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@16
    goto :goto_0

    #@17
    .line 366
    :sswitch_1
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@19
    and-int/2addr v0, v1

    #@1a
    .line 365
    or-int/lit16 v0, v0, 0x81

    #@1c
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@1e
    goto :goto_0

    #@1f
    .line 371
    :sswitch_2
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@21
    and-int/2addr v0, v1

    #@22
    .line 370
    or-int/lit8 v0, v0, 0x2

    #@24
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@26
    goto :goto_0

    #@27
    .line 359
    nop

    #@28
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x12 -> :sswitch_2
        0xd1 -> :sswitch_0
        0xe1 -> :sswitch_1
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 405
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 406
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 407
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 408
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@11
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@14
    .line 409
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 410
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 411
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 412
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 413
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    #@2a
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@2d
    .line 414
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    #@2f
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@32
    .line 415
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@37
    .line 416
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 417
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@41
    .line 418
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@46
    .line 404
    return-void
.end method
