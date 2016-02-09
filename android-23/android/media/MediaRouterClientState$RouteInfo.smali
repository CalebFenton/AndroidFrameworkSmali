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
    .line 188
    new-instance v0, Landroid/media/MediaRouterClientState$RouteInfo$1;

    #@2
    invoke-direct {v0}, Landroid/media/MediaRouterClientState$RouteInfo$1;-><init>()V

    #@5
    .line 187
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
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 119
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@7
    .line 120
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@b
    .line 121
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@d
    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@f
    .line 122
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@11
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@13
    .line 123
    iget-boolean v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@15
    iput-boolean v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@17
    .line 124
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@19
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@1b
    .line 125
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@1d
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@1f
    .line 126
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@21
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@23
    .line 127
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@25
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@27
    .line 128
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@29
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@2b
    .line 129
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@2d
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@2f
    .line 130
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@31
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@33
    .line 118
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@a
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@10
    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@16
    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@1c
    .line 138
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
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v0

    #@29
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@2b
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@31
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@37
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v0

    #@3b
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@3d
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v0

    #@41
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@43
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@49
    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v0

    #@4d
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@4f
    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v0, -0x1

    #@3
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 109
    iput-object p1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@8
    .line 110
    iput-boolean v2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@a
    .line 111
    iput v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@c
    .line 112
    iput v2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@e
    .line 113
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@10
    .line 114
    iput v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@12
    .line 115
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@14
    .line 108
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 150
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 171
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
    .line 172
    const-string/jumbo v1, ", name="

    #@15
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 172
    iget-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@1b
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 173
    const-string/jumbo v1, ", description="

    #@22
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 173
    iget-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@28
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 174
    const-string/jumbo v1, ", supportedTypes=0x"

    #@2f
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 174
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@35
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 175
    const-string/jumbo v1, ", enabled="

    #@40
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 175
    iget-boolean v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@46
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 176
    const-string/jumbo v1, ", statusCode="

    #@4d
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 176
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@53
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 177
    const-string/jumbo v1, ", playbackType="

    #@5a
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 177
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@60
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    .line 178
    const-string/jumbo v1, ", playbackStream="

    #@67
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    .line 178
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@6d
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    .line 179
    const-string/jumbo v1, ", volume="

    #@74
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    .line 179
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@7a
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    .line 180
    const-string/jumbo v1, ", volumeMax="

    #@81
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    .line 180
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@87
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    .line 181
    const-string/jumbo v1, ", volumeHandling="

    #@8e
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    .line 181
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@94
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    .line 182
    const-string/jumbo v1, ", presentationDisplayId="

    #@9b
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v0

    #@9f
    .line 182
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@a1
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v0

    #@a5
    .line 183
    const-string/jumbo v1, " }"

    #@a8
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v0

    #@ac
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v0

    #@b0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 156
    iget-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 157
    iget-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 158
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 159
    iget-boolean v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 160
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 161
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 162
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 163
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 164
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 165
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 166
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 154
    return-void

    #@40
    .line 159
    :cond_0
    const/4 v0, 0x0

    #@41
    goto :goto_0
.end method
