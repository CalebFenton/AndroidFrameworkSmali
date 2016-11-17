.class public final Landroid/media/MediaRouterClientState$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterClientState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouterClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouterClientState$RouteInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/MediaRouterClientState$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public description:Ljava/lang/String;

.field public deviceType:I

.field public enabled:Z

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public playbackStream:I

.field public playbackType:I

.field public presentationDisplayId:I

.field public statusCode:I

.field public supportedTypes:I

.field public volume:I

.field public volumeHandling:I

.field public volumeMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 194
    new-instance v0, Landroid/media/MediaRouterClientState$RouteInfo$1;

    #@2
    invoke-direct {v0}, Landroid/media/MediaRouterClientState$RouteInfo$1;-><init>()V

    #@5
    .line 193
    sput-object v0, Landroid/media/MediaRouterClientState$RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaRouterClientState$RouteInfo;)V
    .locals 1
    .param p1, "other"    # Landroid/media/MediaRouterClientState$RouteInfo;

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 121
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@7
    .line 122
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@b
    .line 123
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@d
    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@f
    .line 124
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@11
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@13
    .line 125
    iget-boolean v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@15
    iput-boolean v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@17
    .line 126
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@19
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@1b
    .line 127
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@1d
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@1f
    .line 128
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@21
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@23
    .line 129
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@25
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@27
    .line 130
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@29
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@2b
    .line 131
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@2d
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@2f
    .line 132
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@31
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@33
    .line 133
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    #@35
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    #@37
    .line 120
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@a
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@10
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@16
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@1c
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_0

    #@22
    const/4 v0, 0x1

    #@23
    :cond_0
    iput-boolean v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@25
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v0

    #@29
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@2b
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@31
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@37
    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v0

    #@3b
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@3d
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v0

    #@41
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@43
    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@49
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v0

    #@4d
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@4f
    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@52
    move-result v0

    #@53
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    #@55
    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 110
    iput-object p1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@8
    .line 111
    iput-boolean v2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@a
    .line 112
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@c
    .line 113
    iput v2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@e
    .line 114
    iput v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@10
    .line 115
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@12
    .line 116
    iput v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@14
    .line 117
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    #@16
    .line 109
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 154
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "RouteInfo{ id="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 177
    const-string/jumbo v1, ", name="

    #@15
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 177
    iget-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@1b
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 178
    const-string/jumbo v1, ", description="

    #@22
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 178
    iget-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@28
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 179
    const-string/jumbo v1, ", supportedTypes=0x"

    #@2f
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 179
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@35
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 180
    const-string/jumbo v1, ", enabled="

    #@40
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 180
    iget-boolean v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@46
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 181
    const-string/jumbo v1, ", statusCode="

    #@4d
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 181
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@53
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 182
    const-string/jumbo v1, ", playbackType="

    #@5a
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 182
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@60
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    .line 183
    const-string/jumbo v1, ", playbackStream="

    #@67
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    .line 183
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@6d
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    .line 184
    const-string/jumbo v1, ", volume="

    #@74
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    .line 184
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@7a
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    .line 185
    const-string/jumbo v1, ", volumeMax="

    #@81
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    .line 185
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@87
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    .line 186
    const-string/jumbo v1, ", volumeHandling="

    #@8e
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    .line 186
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@94
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    .line 187
    const-string/jumbo v1, ", presentationDisplayId="

    #@9b
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v0

    #@9f
    .line 187
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@a1
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v0

    #@a5
    .line 188
    const-string/jumbo v1, ", deviceType="

    #@a8
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v0

    #@ac
    .line 188
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    #@ae
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v0

    #@b2
    .line 189
    const-string/jumbo v1, " }"

    #@b5
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v0

    #@b9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v0

    #@bd
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 160
    iget-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 161
    iget-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 162
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 163
    iget-boolean v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 164
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 165
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 166
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 167
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 168
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 169
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 170
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 171
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    #@41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 158
    return-void

    #@45
    .line 163
    :cond_0
    const/4 v0, 0x0

    #@46
    goto :goto_0
.end method
