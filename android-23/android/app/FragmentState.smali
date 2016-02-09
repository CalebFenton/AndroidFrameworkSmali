.class final Landroid/app/FragmentState;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/FragmentState;",
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

.field mInstance:Landroid/app/Fragment;

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 145
    new-instance v0, Landroid/app/FragmentState$1;

    #@2
    invoke-direct {v0}, Landroid/app/FragmentState$1;-><init>()V

    #@5
    .line 144
    sput-object v0, Landroid/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "frag"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    invoke-virtual {p1}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    #@d
    .line 73
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    #@f
    iput v0, p0, Landroid/app/FragmentState;->mIndex:I

    #@11
    .line 74
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    #@13
    iput-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    #@15
    .line 75
    iget v0, p1, Landroid/app/Fragment;->mFragmentId:I

    #@17
    iput v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    #@19
    .line 76
    iget v0, p1, Landroid/app/Fragment;->mContainerId:I

    #@1b
    iput v0, p0, Landroid/app/FragmentState;->mContainerId:I

    #@1d
    .line 77
    iget-object v0, p1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@1f
    iput-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    #@21
    .line 78
    iget-boolean v0, p1, Landroid/app/Fragment;->mRetainInstance:Z

    #@23
    iput-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    #@25
    .line 79
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    #@27
    iput-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    #@29
    .line 80
    iget-object v0, p1, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@2b
    iput-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@2d
    .line 71
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
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    #@b
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/app/FragmentState;->mIndex:I

    #@11
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    move v0, v1

    #@18
    :goto_0
    iput-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    #@1a
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    #@20
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroid/app/FragmentState;->mContainerId:I

    #@26
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    #@2c
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_1

    #@32
    move v0, v1

    #@33
    :goto_1
    iput-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    #@35
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_2

    #@3b
    :goto_2
    iput-boolean v1, p0, Landroid/app/FragmentState;->mDetached:Z

    #@3d
    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@43
    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@49
    .line 83
    return-void

    #@4a
    :cond_0
    move v0, v2

    #@4b
    .line 86
    goto :goto_0

    #@4c
    :cond_1
    move v0, v2

    #@4d
    .line 90
    goto :goto_1

    #@4e
    :cond_2
    move v1, v2

    #@4f
    .line 91
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 128
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public instantiate(Landroid/app/FragmentHostCallback;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 4
    .param p1, "host"    # Landroid/app/FragmentHostCallback;
    .param p2, "parent"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 97
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 98
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@6
    return-object v1

    #@7
    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    .line 102
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 103
    iget-object v1, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@11
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@18
    .line 106
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    #@1a
    iget-object v2, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@1c
    invoke-static {v0, v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@22
    .line 108
    iget-object v1, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 109
    iget-object v1, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@28
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@2f
    .line 110
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@31
    iget-object v2, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@33
    iput-object v2, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@35
    .line 112
    :cond_2
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@37
    iget v2, p0, Landroid/app/FragmentState;->mIndex:I

    #@39
    invoke-virtual {v1, v2, p2}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    #@3c
    .line 113
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@3e
    iget-boolean v2, p0, Landroid/app/FragmentState;->mFromLayout:Z

    #@40
    iput-boolean v2, v1, Landroid/app/Fragment;->mFromLayout:Z

    #@42
    .line 114
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@44
    const/4 v2, 0x1

    #@45
    iput-boolean v2, v1, Landroid/app/Fragment;->mRestored:Z

    #@47
    .line 115
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@49
    iget v2, p0, Landroid/app/FragmentState;->mFragmentId:I

    #@4b
    iput v2, v1, Landroid/app/Fragment;->mFragmentId:I

    #@4d
    .line 116
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@4f
    iget v2, p0, Landroid/app/FragmentState;->mContainerId:I

    #@51
    iput v2, v1, Landroid/app/Fragment;->mContainerId:I

    #@53
    .line 117
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@55
    iget-object v2, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    #@57
    iput-object v2, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@59
    .line 118
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@5b
    iget-boolean v2, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    #@5d
    iput-boolean v2, v1, Landroid/app/Fragment;->mRetainInstance:Z

    #@5f
    .line 119
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@61
    iget-boolean v2, p0, Landroid/app/FragmentState;->mDetached:Z

    #@63
    iput-boolean v2, v1, Landroid/app/Fragment;->mDetached:Z

    #@65
    .line 120
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@67
    iget-object v2, p1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@69
    iput-object v2, v1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6b
    .line 121
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@6d
    if-eqz v1, :cond_3

    #@6f
    const-string/jumbo v1, "FragmentManager"

    #@72
    .line 122
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
    iget-object v3, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    .line 121
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 124
    :cond_3
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

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
    .line 132
    iget-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 133
    iget v0, p0, Landroid/app/FragmentState;->mIndex:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 134
    iget-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    move v0, v1

    #@11
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 135
    iget v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 136
    iget v0, p0, Landroid/app/FragmentState;->mContainerId:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 137
    iget-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 138
    iget-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    #@25
    if-eqz v0, :cond_1

    #@27
    move v0, v1

    #@28
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 139
    iget-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    #@2d
    if-eqz v0, :cond_2

    #@2f
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 140
    iget-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@37
    .line 141
    iget-object v0, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@3c
    .line 131
    return-void

    #@3d
    :cond_0
    move v0, v2

    #@3e
    .line 134
    goto :goto_0

    #@3f
    :cond_1
    move v0, v2

    #@40
    .line 138
    goto :goto_1

    #@41
    :cond_2
    move v1, v2

    #@42
    .line 139
    goto :goto_2
.end method
