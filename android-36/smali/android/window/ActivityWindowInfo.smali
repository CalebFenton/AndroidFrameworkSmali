.class public final Landroid/window/ActivityWindowInfo;
.super Ljava/lang/Object;
.source "ActivityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ActivityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mIsEmbedded:Z

.field private final blacklist mTaskBounds:Landroid/graphics/Rect;

.field private final blacklist mTaskFragmentBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Landroid/window/ActivityWindowInfo$1;

    invoke-direct {v0}, Landroid/window/ActivityWindowInfo$1;-><init>()V

    sput-object v0, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    .line 42
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    .line 89
    iget-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 90
    iget-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 91
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/ActivityWindowInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/ActivityWindowInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/window/ActivityWindowInfo;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    .line 45
    invoke-virtual {p0, p1}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 46
    return-void
.end method

.method public static blacklist getActivityWindowInfo(Landroid/app/Activity;)Landroid/window/ActivityWindowInfo;
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 154
    return-object v1

    .line 156
    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    .line 158
    .local v0, "record":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getActivityWindowInfo()Landroid/window/ActivityWindowInfo;

    move-result-object v1

    :cond_1a
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 122
    return v0

    .line 124
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 127
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/window/ActivityWindowInfo;

    .line 128
    .local v2, "other":Landroid/window/ActivityWindowInfo;
    iget-boolean v3, p0, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    iget-boolean v4, v2, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    .line 129
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    .line 130
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 128
    :goto_31
    return v0

    .line 125
    .end local v2    # "other":Landroid/window/ActivityWindowInfo;
    :cond_32
    :goto_32
    return v1
.end method

.method public blacklist getTaskBounds()Landroid/graphics/Rect;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getTaskFragmentBounds()Landroid/graphics/Rect;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 135
    const/16 v0, 0x11

    .line 136
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    add-int/2addr v1, v2

    .line 137
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 138
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 139
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist isEmbedded()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    return v0
.end method

.method public blacklist set(Landroid/window/ActivityWindowInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/window/ActivityWindowInfo;

    .line 50
    iget-boolean v0, p1, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    iget-object v1, p1, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Landroid/window/ActivityWindowInfo;->set(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 51
    return-void
.end method

.method public blacklist set(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "isEmbedded"    # Z
    .param p2, "taskBounds"    # Landroid/graphics/Rect;
    .param p3, "taskFragmentBounds"    # Landroid/graphics/Rect;

    .line 56
    iput-boolean p1, p0, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    .line 57
    iget-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 58
    iget-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 59
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityWindowInfo{isEmbedded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskFragmentBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 95
    iget-boolean v0, p0, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 96
    iget-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    iget-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 98
    return-void
.end method
