.class final Landroid/app/FragmentState;
.super Ljava/lang/Object;
.source "FragmentState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mArguments:Landroid/os/Bundle;

.field final blacklist mClassName:Ljava/lang/String;

.field final blacklist mContainerId:I

.field final blacklist mDetached:Z

.field final blacklist mFragmentId:I

.field final blacklist mFromLayout:Z

.field final blacklist mHidden:Z

.field final blacklist mIndex:I

.field blacklist mInstance:Landroid/app/Fragment;

.field final blacklist mRetainInstance:Z

.field blacklist mSavedFragmentState:Landroid/os/Bundle;

.field final blacklist mTag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 125
    new-instance v0, Landroid/app/FragmentState$1;

    invoke-direct {v0}, Landroid/app/FragmentState$1;-><init>()V

    sput-object v0, Landroid/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/Fragment;)V
    .registers 3
    .param p1, "frag"    # Landroid/app/Fragment;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 43
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    iput v0, p0, Landroid/app/FragmentState;->mIndex:I

    .line 44
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    iput-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    .line 45
    iget v0, p1, Landroid/app/Fragment;->mFragmentId:I

    iput v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    .line 46
    iget v0, p1, Landroid/app/Fragment;->mContainerId:I

    iput v0, p0, Landroid/app/FragmentState;->mContainerId:I

    .line 47
    iget-object v0, p1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    .line 48
    iget-boolean v0, p1, Landroid/app/Fragment;->mRetainInstance:Z

    iput-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    .line 49
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    iput-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    .line 50
    iget-object v0, p1, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 51
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    iput-boolean v0, p0, Landroid/app/FragmentState;->mHidden:Z

    .line 52
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/FragmentState;->mIndex:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    iput-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/FragmentState;->mContainerId:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    move v0, v1

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    iput-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    move v0, v1

    goto :goto_42

    :cond_41
    move v0, v2

    :goto_42
    iput-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_52

    :cond_51
    move v1, v2

    :goto_52
    iput-boolean v1, p0, Landroid/app/FragmentState;->mHidden:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist instantiate(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;Landroid/app/FragmentManagerNonConfig;)Landroid/app/Fragment;
    .registers 8
    .param p1, "host"    # Landroid/app/FragmentHostCallback;
    .param p2, "container"    # Landroid/app/FragmentContainer;
    .param p3, "parent"    # Landroid/app/Fragment;
    .param p4, "childNonConfig"    # Landroid/app/FragmentManagerNonConfig;

    .line 70
    iget-object v0, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    if-nez v0, :cond_99

    .line 71
    invoke-virtual {p1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    if-eqz v1, :cond_15

    .line 73
    iget-object v1, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 76
    :cond_15
    if-eqz p2, :cond_22

    .line 77
    iget-object v1, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    goto :goto_2c

    .line 79
    :cond_22
    iget-object v1, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 82
    :goto_2c
    iget-object v1, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_3f

    .line 83
    iget-object v1, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 84
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-object v2, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 86
    :cond_3f
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget v2, p0, Landroid/app/FragmentState;->mIndex:I

    invoke-virtual {v1, v2, p3}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    .line 87
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-boolean v2, p0, Landroid/app/FragmentState;->mFromLayout:Z

    iput-boolean v2, v1, Landroid/app/Fragment;->mFromLayout:Z

    .line 88
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/Fragment;->mRestored:Z

    .line 89
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget v2, p0, Landroid/app/FragmentState;->mFragmentId:I

    iput v2, v1, Landroid/app/Fragment;->mFragmentId:I

    .line 90
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget v2, p0, Landroid/app/FragmentState;->mContainerId:I

    iput v2, v1, Landroid/app/Fragment;->mContainerId:I

    .line 91
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-object v2, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-boolean v2, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    iput-boolean v2, v1, Landroid/app/Fragment;->mRetainInstance:Z

    .line 93
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-boolean v2, p0, Landroid/app/FragmentState;->mDetached:Z

    iput-boolean v2, v1, Landroid/app/Fragment;->mDetached:Z

    .line 94
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-boolean v2, p0, Landroid/app/FragmentState;->mHidden:Z

    iput-boolean v2, v1, Landroid/app/Fragment;->mHidden:Z

    .line 95
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-object v2, p1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iput-object v2, v1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 97
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_99

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instantiated fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v0    # "context":Landroid/content/Context;
    :cond_99
    iget-object v0, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iput-object p4, v0, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 102
    iget-object v0, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 112
    iget-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Landroid/app/FragmentState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Landroid/app/FragmentState;->mContainerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 121
    iget-boolean v0, p0, Landroid/app/FragmentState;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method
