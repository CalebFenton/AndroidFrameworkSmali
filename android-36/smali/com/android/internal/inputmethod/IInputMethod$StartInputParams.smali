.class public Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;
.super Ljava/lang/Object;
.source "IInputMethod.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartInputParams"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist editorInfo:Landroid/view/inputmethod/EditorInfo;

.field public blacklist imeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field public blacklist navigationBarFlags:I

.field public blacklist remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public blacklist restarting:Z

.field public blacklist startInputToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 768
    new-instance v0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->restarting:Z

    .line 766
    iput v0, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->navigationBarFlags:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 828
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 829
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 830
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 832
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 822
    const/4 v0, 0x0

    .line 823
    .local v0, "_mask":I
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p0, v1}, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 824
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->imeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-direct {p0, v1}, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 825
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 797
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 798
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 800
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_d6

    .line 801
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 814
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 817
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 801
    return-void

    .line 815
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 802
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->startInputToken:Landroid/os/IBinder;

    .line 803
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_d4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 814
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 817
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 803
    return-void

    .line 815
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 804
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 805
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_d4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 814
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 817
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 805
    return-void

    .line 815
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 806
    :cond_62
    :try_start_62
    sget-object v2, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/EditorInfo;

    iput-object v2, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 807
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_d4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 814
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 817
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 807
    return-void

    .line 815
    :cond_7c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 808
    :cond_82
    :try_start_82
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->restarting:Z

    .line 809
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_d4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9e

    .line 814
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_98

    .line 817
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 809
    return-void

    .line 815
    :cond_98
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 810
    :cond_9e
    :try_start_9e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->navigationBarFlags:I

    .line 811
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_d4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ba

    .line 814
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b4

    .line 817
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 811
    return-void

    .line 815
    :cond_b4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 812
    :cond_ba
    :try_start_ba
    sget-object v2, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/ImeOnBackInvokedDispatcher;

    iput-object v2, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->imeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;
    :try_end_c4
    .catchall {:try_start_ba .. :try_end_c4} :catchall_d4

    .line 814
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ce

    .line 817
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 818
    nop

    .line 819
    return-void

    .line 815
    :cond_ce
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 814
    :catchall_d4
    move-exception v2

    goto :goto_de

    .line 800
    :cond_d6
    :try_start_d6
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_de
    .catchall {:try_start_d6 .. :try_end_de} :catchall_d4

    .line 814
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_de
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_e7

    .line 815
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 817
    :cond_e7
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 818
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 783
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->startInputToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 785
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 786
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 787
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->restarting:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 788
    iget v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->navigationBarFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->imeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 790
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 791
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 792
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 794
    return-void
.end method
