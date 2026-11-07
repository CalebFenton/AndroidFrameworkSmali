.class public final Landroid/window/TaskFragmentParentInfo;
.super Ljava/lang/Object;
.source "TaskFragmentParentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentParentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mDecorSurface:Landroid/view/SurfaceControl;

.field private final blacklist mDisplayId:I

.field private final blacklist mHasDirectActivity:Z

.field private final blacklist mTaskId:I

.field private final blacklist mVisible:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 221
    new-instance v0, Landroid/window/TaskFragmentParentInfo$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentParentInfo$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentParentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/Configuration;IIZZLandroid/view/SurfaceControl;)V
    .registers 8
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I
    .param p3, "taskId"    # I
    .param p4, "visible"    # Z
    .param p5, "hasDirectActivity"    # Z
    .param p6, "decorSurface"    # Landroid/view/SurfaceControl;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    .line 56
    iget-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 57
    iput p2, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    .line 58
    iput p3, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    .line 59
    iput-boolean p4, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    .line 60
    iput-boolean p5, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    .line 61
    iput-object p6, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    .line 62
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    .line 211
    iget-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    .line 216
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    .line 217
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentParentInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentParentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/TaskFragmentParentInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/window/TaskFragmentParentInfo;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    .line 66
    iget-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/window/TaskFragmentParentInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 67
    iget v0, p1, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    iput v0, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    .line 68
    iget v0, p1, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    iput v0, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    .line 69
    iget-boolean v0, p1, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    iput-boolean v0, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    .line 70
    iget-boolean v0, p1, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    iput-boolean v0, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    .line 71
    iget-object v0, p1, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    .line 72
    return-void
.end method

.method private blacklist getWindowingMode()I
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 173
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 174
    return v0

    .line 176
    :cond_4
    instance-of v1, p1, Landroid/window/TaskFragmentParentInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 177
    return v2

    .line 179
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/window/TaskFragmentParentInfo;

    .line 180
    .local v1, "that":Landroid/window/TaskFragmentParentInfo;
    iget-object v3, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, v1, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget v3, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    iget v4, v1, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    iget v4, v1, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    if-ne v3, v4, :cond_36

    iget-boolean v3, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    iget-boolean v4, v1, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    if-ne v3, v4, :cond_36

    iget-boolean v3, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    iget-boolean v4, v1, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    iget-object v4, v1, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    if-ne v3, v4, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    return v0
.end method

.method public blacklist equalsForTaskFragmentOrganizer(Landroid/window/TaskFragmentParentInfo;)Z
    .registers 5
    .param p1, "that"    # Landroid/window/TaskFragmentParentInfo;

    .line 133
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 134
    return v0

    .line 136
    :cond_4
    invoke-direct {p0}, Landroid/window/TaskFragmentParentInfo;->getWindowingMode()I

    move-result v1

    invoke-direct {p1}, Landroid/window/TaskFragmentParentInfo;->getWindowingMode()I

    move-result v2

    if-ne v1, v2, :cond_2d

    iget v1, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    iget v2, p1, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    if-ne v1, v2, :cond_2d

    iget v1, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    iget v2, p1, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    if-ne v1, v2, :cond_2d

    iget-boolean v1, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    iget-boolean v2, p1, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    if-ne v1, v2, :cond_2d

    iget-boolean v1, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    iget-boolean v2, p1, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    if-ne v1, v2, :cond_2d

    iget-object v1, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    iget-object v2, p1, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    if-ne v1, v2, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    return v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public blacklist getDecorSurface()Landroid/view/SurfaceControl;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    return v0
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    return v0
.end method

.method public blacklist hasDirectActivity()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 190
    iget-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    .line 191
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    add-int/2addr v1, v2

    .line 192
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    add-int/2addr v0, v2

    .line 193
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    add-int/2addr v1, v2

    .line 194
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    add-int/2addr v0, v2

    .line 195
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 196
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist isVisible()Z
    .registers 2

    .line 109
    iget-boolean v0, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/window/TaskFragmentParentInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":{config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasDirectActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decorSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

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

    .line 202
    iget-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 203
    iget v0, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget v0, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-boolean v0, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 206
    iget-boolean v0, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 207
    iget-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    return-void
.end method
