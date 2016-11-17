.class public final Landroid/service/quicksettings/Tile;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quicksettings/Tile$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/quicksettings/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_ACTIVE:I = 0x2

.field public static final STATE_INACTIVE:I = 0x1

.field public static final STATE_UNAVAILABLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Tile"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mLabel:Ljava/lang/CharSequence;

.field private mService:Landroid/service/quicksettings/IQSService;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 237
    new-instance v0, Landroid/service/quicksettings/Tile$1;

    #@2
    invoke-direct {v0}, Landroid/service/quicksettings/Tile$1;-><init>()V

    #@5
    sput-object v0, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    #@6
    .line 82
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mComponentName:Landroid/content/ComponentName;

    #@8
    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    #@6
    .line 75
    invoke-direct {p0, p1}, Landroid/service/quicksettings/Tile;->readFromParcel(Landroid/os/Parcel;)V

    #@9
    .line 74
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 223
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/content/ComponentName;

    #@f
    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mComponentName:Landroid/content/ComponentName;

    #@11
    .line 227
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 228
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@1f
    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    #@21
    .line 232
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    #@27
    .line 233
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@29
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Ljava/lang/CharSequence;

    #@2f
    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    #@31
    .line 234
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@33
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Ljava/lang/CharSequence;

    #@39
    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    #@3b
    .line 221
    return-void

    #@3c
    .line 225
    :cond_0
    iput-object v1, p0, Landroid/service/quicksettings/Tile;->mComponentName:Landroid/content/ComponentName;

    #@3e
    goto :goto_0

    #@3f
    .line 230
    :cond_1
    iput-object v1, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    #@41
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 188
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mComponentName:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getQsService()Landroid/service/quicksettings/IQSService;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mService:Landroid/service/quicksettings/IQSService;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 114
    iget v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    #@2
    return v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 183
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    #@2
    .line 182
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 147
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    .line 146
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 165
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    #@2
    .line 164
    return-void
.end method

.method public setService(Landroid/service/quicksettings/IQSService;)V
    .locals 0
    .param p1, "service"    # Landroid/service/quicksettings/IQSService;

    #@0
    .prologue
    .line 89
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mService:Landroid/service/quicksettings/IQSService;

    #@2
    .line 88
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 126
    iput p1, p0, Landroid/service/quicksettings/Tile;->mState:I

    #@2
    .line 125
    return-void
.end method

.method public updateTile()V
    .locals 3

    #@0
    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/Tile;->mService:Landroid/service/quicksettings/IQSService;

    #@2
    invoke-interface {v1, p0}, Landroid/service/quicksettings/IQSService;->updateQsTile(Landroid/service/quicksettings/Tile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 194
    :goto_0
    return-void

    #@6
    .line 197
    :catch_0
    move-exception v0

    #@7
    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Tile"

    #@a
    const-string/jumbo v2, "Couldn\'t update tile"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 204
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mComponentName:Landroid/content/ComponentName;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 205
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@9
    .line 206
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mComponentName:Landroid/content/ComponentName;

    #@b
    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 210
    :goto_0
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 211
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@15
    .line 212
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    #@17
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 216
    :goto_1
    iget v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 217
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    #@21
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@24
    .line 218
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    #@26
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@29
    .line 203
    return-void

    #@2a
    .line 208
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@2d
    goto :goto_0

    #@2e
    .line 214
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@31
    goto :goto_1
.end method
