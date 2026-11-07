.class public Lcom/android/internal/inputmethod/IInputMethod$InitParams;
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
    name = "InitParams"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/inputmethod/IInputMethod$InitParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist navigationBarFlags:I

.field public blacklist privilegedOperations:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

.field public blacklist token:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 711
    new-instance v0, Lcom/android/internal/inputmethod/IInputMethod$InitParams$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/IInputMethod$InitParams$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->navigationBarFlags:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 737
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 738
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 740
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7a

    .line 741
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 748
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 751
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 741
    return-void

    .line 749
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 742
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->token:Landroid/os/IBinder;

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 748
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 751
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 743
    return-void

    .line 749
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 744
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->privilegedOperations:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 748
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 751
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 745
    return-void

    .line 749
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 746
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->navigationBarFlags:I
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_78

    .line 748
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_72

    .line 751
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 752
    nop

    .line 753
    return-void

    .line 749
    :cond_72
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 748
    :catchall_78
    move-exception v2

    goto :goto_82

    .line 740
    :cond_7a
    :try_start_7a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Lcom/android/internal/inputmethod/IInputMethod$InitParams;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_78

    .line 748
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Lcom/android/internal/inputmethod/IInputMethod$InitParams;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_82
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8b

    .line 749
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 751
    :cond_8b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 752
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 726
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 728
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->privilegedOperations:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 729
    iget v1, p0, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->navigationBarFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 731
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 732
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 734
    return-void
.end method
