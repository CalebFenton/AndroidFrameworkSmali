.class final Landroid/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mBreadCrumbShortTitleRes:I

.field final blacklist mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final blacklist mBreadCrumbTitleRes:I

.field final blacklist mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final blacklist mIndex:I

.field final blacklist mName:Ljava/lang/String;

.field final blacklist mOps:[I

.field final blacklist mReorderingAllowed:Z

.field final blacklist mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTransition:I

.field final blacklist mTransitionStyle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 158
    new-instance v0, Landroid/app/BackStackState$1;

    invoke-direct {v0}, Landroid/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V
    .registers 10
    .param p1, "fm"    # Landroid/app/FragmentManagerImpl;
    .param p2, "bse"    # Landroid/app/BackStackRecord;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p2, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 50
    .local v0, "numOps":I
    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    .line 52
    iget-boolean v1, p2, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v1, :cond_88

    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "opNum":I
    :goto_15
    if-ge v2, v0, :cond_5b

    .line 58
    iget-object v3, p2, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord$Op;

    .line 59
    .local v3, "op":Landroid/app/BackStackRecord$Op;
    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "pos":I
    .local v5, "pos":I
    iget v6, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    aput v6, v4, v1

    .line 60
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .local v4, "pos":I
    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v6, :cond_34

    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    goto :goto_35

    :cond_34
    const/4 v6, -0x1

    :goto_35
    aput v6, v1, v5

    .line 61
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v6, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    aput v6, v1, v4

    .line 62
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v6, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    aput v6, v1, v5

    .line 63
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v6, v3, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    aput v6, v1, v4

    .line 64
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v6, v3, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    aput v6, v1, v5

    .line 57
    .end local v3    # "op":Landroid/app/BackStackRecord$Op;
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_15

    .line 66
    .end local v2    # "opNum":I
    .end local v4    # "pos":I
    .restart local v1    # "pos":I
    :cond_5b
    iget v2, p2, Landroid/app/BackStackRecord;->mTransition:I

    iput v2, p0, Landroid/app/BackStackState;->mTransition:I

    .line 67
    iget v2, p2, Landroid/app/BackStackRecord;->mTransitionStyle:I

    iput v2, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    .line 68
    iget-object v2, p2, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v2, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    .line 69
    iget v2, p2, Landroid/app/BackStackRecord;->mIndex:I

    iput v2, p0, Landroid/app/BackStackState;->mIndex:I

    .line 70
    iget v2, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v2, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 71
    iget-object v2, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 72
    iget v2, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v2, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 73
    iget-object v2, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 74
    iget-object v2, p2, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 75
    iget-object v2, p2, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 76
    iget-boolean v2, p2, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    iput-boolean v2, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    .line 77
    return-void

    .line 53
    .end local v1    # "pos":I
    :cond_88
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not on back stack"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mOps:[I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mTransition:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mIndex:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 86
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 88
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_55

    const/4 v0, 0x1

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    iput-boolean v0, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    .line 92
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;
    .registers 9
    .param p1, "fm"    # Landroid/app/FragmentManagerImpl;

    .line 95
    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 96
    .local v0, "bse":Landroid/app/BackStackRecord;
    const/4 v1, 0x0

    .line 97
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 98
    .local v2, "num":I
    :goto_7
    iget-object v3, p0, Landroid/app/BackStackState;->mOps:[I

    array-length v3, v3

    if-ge v1, v3, :cond_9c

    .line 99
    new-instance v3, Landroid/app/BackStackRecord$Op;

    invoke-direct {v3}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 100
    .local v3, "op":Landroid/app/BackStackRecord$Op;
    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "pos":I
    .local v5, "pos":I
    aget v1, v4, v1

    iput v1, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 101
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4d

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instantiate "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " op #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " base fragment #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FragmentManager"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_4d
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .local v4, "pos":I
    aget v1, v1, v5

    .line 106
    .local v1, "findex":I
    if-ltz v1, :cond_60

    .line 107
    iget-object v5, p1, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 108
    .local v5, "f":Landroid/app/Fragment;
    iput-object v5, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 109
    .end local v5    # "f":Landroid/app/Fragment;
    goto :goto_63

    .line 110
    :cond_60
    const/4 v5, 0x0

    iput-object v5, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 112
    :goto_63
    iget-object v5, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "pos":I
    .local v6, "pos":I
    aget v4, v5, v4

    iput v4, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    .line 113
    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .local v5, "pos":I
    aget v4, v4, v6

    iput v4, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    .line 114
    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    aget v4, v4, v5

    iput v4, v3, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    .line 115
    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    aget v4, v4, v6

    iput v4, v3, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    .line 116
    iget v4, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v4, v0, Landroid/app/BackStackRecord;->mEnterAnim:I

    .line 117
    iget v4, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v4, v0, Landroid/app/BackStackRecord;->mExitAnim:I

    .line 118
    iget v4, v3, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v4, v0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    .line 119
    iget v4, v3, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v4, v0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    .line 120
    invoke-virtual {v0, v3}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 121
    nop

    .end local v1    # "findex":I
    .end local v3    # "op":Landroid/app/BackStackRecord$Op;
    add-int/lit8 v2, v2, 0x1

    .line 122
    move v1, v5

    goto/16 :goto_7

    .line 123
    .end local v5    # "pos":I
    .local v1, "pos":I
    :cond_9c
    iget v3, p0, Landroid/app/BackStackState;->mTransition:I

    iput v3, v0, Landroid/app/BackStackRecord;->mTransition:I

    .line 124
    iget v3, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    iput v3, v0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 125
    iget-object v3, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 126
    iget v3, p0, Landroid/app/BackStackState;->mIndex:I

    iput v3, v0, Landroid/app/BackStackRecord;->mIndex:I

    .line 127
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    .line 128
    iget v4, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v4, v0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 129
    iget-object v4, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v4, v0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 130
    iget v4, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v4, v0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 131
    iget-object v4, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v4, v0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 132
    iget-object v4, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v4, v0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 133
    iget-object v4, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v4, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 134
    iget-boolean v4, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    iput-boolean v4, v0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    .line 135
    invoke-virtual {v0, v3}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 136
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 144
    iget-object v0, p0, Landroid/app/BackStackState;->mOps:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 145
    iget v0, p0, Landroid/app/BackStackState;->mTransition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Landroid/app/BackStackState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 151
    iget v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 153
    iget-object v0, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 154
    iget-object v0, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    iget-boolean v0, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void
.end method
