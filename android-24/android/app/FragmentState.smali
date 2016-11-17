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

.field final mHidden:Z

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
    .line 153
    new-instance v0, Landroid/app/FragmentState$1;

    #@2
    invoke-direct {v0}, Landroid/app/FragmentState$1;-><init>()V

    #@5
    .line 152
    sput-object v0, Landroid/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "frag"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
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
    .line 78
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    #@f
    iput v0, p0, Landroid/app/FragmentState;->mIndex:I

    #@11
    .line 79
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    #@13
    iput-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    #@15
    .line 80
    iget v0, p1, Landroid/app/Fragment;->mFragmentId:I

    #@17
    iput v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    #@19
    .line 81
    iget v0, p1, Landroid/app/Fragment;->mContainerId:I

    #@1b
    iput v0, p0, Landroid/app/FragmentState;->mContainerId:I

    #@1d
    .line 82
    iget-object v0, p1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@1f
    iput-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    #@21
    .line 83
    iget-boolean v0, p1, Landroid/app/Fragment;->mRetainInstance:Z

    #@23
    iput-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    #@25
    .line 84
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    #@27
    iput-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    #@29
    .line 85
    iget-object v0, p1, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@2b
    iput-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@2d
    .line 86
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    #@2f
    iput-boolean v0, p0, Landroid/app/FragmentState;->mHidden:Z

    #@31
    .line 76
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
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    #@b
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/app/FragmentState;->mIndex:I

    #@11
    .line 92
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
    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    #@20
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroid/app/FragmentState;->mContainerId:I

    #@26
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    #@2c
    .line 96
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
    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_2

    #@3b
    move v0, v1

    #@3c
    :goto_2
    iput-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    #@3e
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@44
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_3

    #@4a
    :goto_3
    iput-boolean v1, p0, Landroid/app/FragmentState;->mHidden:Z

    #@4c
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@4f
    move-result-object v0

    #@50
    iput-object v0, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@52
    .line 89
    return-void

    #@53
    :cond_0
    move v0, v2

    #@54
    .line 92
    goto :goto_0

    #@55
    :cond_1
    move v0, v2

    #@56
    .line 96
    goto :goto_1

    #@57
    :cond_2
    move v0, v2

    #@58
    .line 97
    goto :goto_2

    #@59
    :cond_3
    move v1, v2

    #@5a
    .line 99
    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 135
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public instantiate(Landroid/app/FragmentHostCallback;Landroid/app/Fragment;Landroid/app/FragmentManagerNonConfig;)Landroid/app/Fragment;
    .locals 4
    .param p1, "host"    # Landroid/app/FragmentHostCallback;
    .param p2, "parent"    # Landroid/app/Fragment;
    .param p3, "childNonConfig"    # Landroid/app/FragmentManagerNonConfig;

    #@0
    .prologue
    .line 105
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@2
    if-nez v1, :cond_2

    #@4
    .line 106
    invoke-virtual {p1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    .line 107
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 108
    iget-object v1, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@e
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@15
    .line 111
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    #@17
    iget-object v2, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@19
    invoke-static {v0, v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@1f
    .line 113
    iget-object v1, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 114
    iget-object v1, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@25
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@2c
    .line 115
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@2e
    iget-object v2, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@30
    iput-object v2, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@32
    .line 117
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@34
    iget v2, p0, Landroid/app/FragmentState;->mIndex:I

    #@36
    invoke-virtual {v1, v2, p2}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    #@39
    .line 118
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@3b
    iget-boolean v2, p0, Landroid/app/FragmentState;->mFromLayout:Z

    #@3d
    iput-boolean v2, v1, Landroid/app/Fragment;->mFromLayout:Z

    #@3f
    .line 119
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@41
    const/4 v2, 0x1

    #@42
    iput-boolean v2, v1, Landroid/app/Fragment;->mRestored:Z

    #@44
    .line 120
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@46
    iget v2, p0, Landroid/app/FragmentState;->mFragmentId:I

    #@48
    iput v2, v1, Landroid/app/Fragment;->mFragmentId:I

    #@4a
    .line 121
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@4c
    iget v2, p0, Landroid/app/FragmentState;->mContainerId:I

    #@4e
    iput v2, v1, Landroid/app/Fragment;->mContainerId:I

    #@50
    .line 122
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@52
    iget-object v2, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    #@54
    iput-object v2, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@56
    .line 123
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@58
    iget-boolean v2, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    #@5a
    iput-boolean v2, v1, Landroid/app/Fragment;->mRetainInstance:Z

    #@5c
    .line 124
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@5e
    iget-boolean v2, p0, Landroid/app/FragmentState;->mDetached:Z

    #@60
    iput-boolean v2, v1, Landroid/app/Fragment;->mDetached:Z

    #@62
    .line 125
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@64
    iget-boolean v2, p0, Landroid/app/FragmentState;->mHidden:Z

    #@66
    iput-boolean v2, v1, Landroid/app/Fragment;->mHidden:Z

    #@68
    .line 126
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@6a
    iget-object v2, p1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6c
    iput-object v2, v1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6e
    .line 127
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@70
    if-eqz v1, :cond_2

    #@72
    const-string/jumbo v1, "FragmentManager"

    #@75
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v3, "Instantiated fragment "

    #@7d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    iget-object v3, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    .line 127
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 130
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@90
    iput-object p3, v1, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    #@92
    .line 131
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@94
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
    .line 139
    iget-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 140
    iget v0, p0, Landroid/app/FragmentState;->mIndex:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 141
    iget-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    move v0, v1

    #@11
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 142
    iget v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 143
    iget v0, p0, Landroid/app/FragmentState;->mContainerId:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 144
    iget-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 145
    iget-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    #@25
    if-eqz v0, :cond_1

    #@27
    move v0, v1

    #@28
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 146
    iget-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    #@2d
    if-eqz v0, :cond_2

    #@2f
    move v0, v1

    #@30
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 147
    iget-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    #@35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@38
    .line 148
    iget-boolean v0, p0, Landroid/app/FragmentState;->mHidden:Z

    #@3a
    if-eqz v0, :cond_3

    #@3c
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 149
    iget-object v0, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@44
    .line 138
    return-void

    #@45
    :cond_0
    move v0, v2

    #@46
    .line 141
    goto :goto_0

    #@47
    :cond_1
    move v0, v2

    #@48
    .line 145
    goto :goto_1

    #@49
    :cond_2
    move v0, v2

    #@4a
    .line 146
    goto :goto_2

    #@4b
    :cond_3
    move v1, v2

    #@4c
    .line 148
    goto :goto_3
.end method
