.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mIndex:I

.field mInstance:Landroid/support/v4/app/Fragment;

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 142
    new-instance v0, Landroid/support/v4/app/FragmentState$1;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/FragmentState$1;-><init>()V

    #@5
    .line 141
    sput-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    #@b
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/support/v4/app/FragmentState;->mIndex:I

    #@11
    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    move v0, v1

    #@18
    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    #@1a
    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    #@20
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroid/support/v4/app/FragmentState;->mContainerId:I

    #@26
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    #@2c
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_1

    #@32
    move v0, v1

    #@33
    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    #@35
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_2

    #@3b
    :goto_2
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentState;->mDetached:Z

    #@3d
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@43
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@49
    .line 79
    return-void

    #@4a
    :cond_0
    move v0, v2

    #@4b
    .line 82
    goto :goto_0

    #@4c
    :cond_1
    move v0, v2

    #@4d
    .line 86
    goto :goto_1

    #@4e
    :cond_2
    move v1, v2

    #@4f
    .line 87
    goto :goto_2
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "frag"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    #@d
    .line 69
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@f
    iput v0, p0, Landroid/support/v4/app/FragmentState;->mIndex:I

    #@11
    .line 70
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@13
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    #@15
    .line 71
    iget v0, p1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@17
    iput v0, p0, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    #@19
    .line 72
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@1b
    iput v0, p0, Landroid/support/v4/app/FragmentState;->mContainerId:I

    #@1d
    .line 73
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@1f
    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    #@21
    .line 74
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    #@23
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    #@25
    .line 75
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@27
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mDetached:Z

    #@29
    .line 76
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@2b
    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@2d
    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 125
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public instantiate(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "host"    # Landroid/support/v4/app/FragmentHostCallback;
    .param p2, "parent"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 93
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 94
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@6
    return-object v1

    #@7
    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    .line 98
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 99
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@11
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@18
    .line 102
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    #@1a
    iget-object v2, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@1c
    invoke-static {v0, v1, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@22
    .line 104
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 105
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@28
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@2f
    .line 106
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@31
    iget-object v2, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@33
    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@35
    .line 108
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@37
    iget v2, p0, Landroid/support/v4/app/FragmentState;->mIndex:I

    #@39
    invoke-virtual {v1, v2, p2}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    #@3c
    .line 109
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@3e
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    #@40
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@42
    .line 110
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@44
    const/4 v2, 0x1

    #@45
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mRestored:Z

    #@47
    .line 111
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@49
    iget v2, p0, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    #@4b
    iput v2, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@4d
    .line 112
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@4f
    iget v2, p0, Landroid/support/v4/app/FragmentState;->mContainerId:I

    #@51
    iput v2, v1, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@53
    .line 113
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@55
    iget-object v2, p0, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    #@57
    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@59
    .line 114
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@5b
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    #@5d
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    #@5f
    .line 115
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@61
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentState;->mDetached:Z

    #@63
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@65
    .line 116
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@67
    iget-object v2, p1, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@69
    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6b
    .line 118
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@6d
    if-eqz v1, :cond_3

    #@6f
    const-string/jumbo v1, "FragmentManager"

    #@72
    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v3, "Instantiated fragment "

    #@7a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    iget-object v3, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    .line 118
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 121
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@8d
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 129
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 130
    iget v0, p0, Landroid/support/v4/app/FragmentState;->mIndex:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 131
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    move v0, v1

    #@11
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 132
    iget v0, p0, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 133
    iget v0, p0, Landroid/support/v4/app/FragmentState;->mContainerId:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 134
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 135
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    #@25
    if-eqz v0, :cond_1

    #@27
    move v0, v1

    #@28
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 136
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mDetached:Z

    #@2d
    if-eqz v0, :cond_2

    #@2f
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 137
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@37
    .line 138
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@3c
    .line 128
    return-void

    #@3d
    :cond_0
    move v0, v2

    #@3e
    .line 131
    goto :goto_0

    #@3f
    :cond_1
    move v0, v2

    #@40
    .line 135
    goto :goto_1

    #@41
    :cond_2
    move v1, v2

    #@42
    .line 136
    goto :goto_2
.end method
