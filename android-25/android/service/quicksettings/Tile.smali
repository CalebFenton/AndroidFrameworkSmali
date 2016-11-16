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
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mLabel:Ljava/lang/CharSequence;

.field private mService:Landroid/service/quicksettings/IQSService;

.field private mState:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 212
    new-instance v0, Landroid/service/quicksettings/Tile$1;

    #@2
    invoke-direct {v0}, Landroid/service/quicksettings/Tile$1;-><init>()V

    #@5
    sput-object v0, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

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
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 203
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@e
    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    #@10
    .line 207
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    #@16
    .line 208
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@18
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/lang/CharSequence;

    #@1e
    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    #@20
    .line 209
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Ljava/lang/CharSequence;

    #@28
    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    #@2a
    .line 201
    return-void

    #@2b
    .line 205
    :cond_0
    const/4 v0, 0x0

    #@2c
    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    #@2e
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 174
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    #@2
    return v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 169
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    #@2
    .line 168
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 133
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    .line 132
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 151
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    #@2
    .line 150
    return-void
.end method

.method public setService(Landroid/service/quicksettings/IQSService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "service"    # Landroid/service/quicksettings/IQSService;
    .param p2, "stub"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 88
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mService:Landroid/service/quicksettings/IQSService;

    #@2
    .line 89
    iput-object p2, p0, Landroid/service/quicksettings/Tile;->mToken:Landroid/os/IBinder;

    #@4
    .line 87
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 112
    iput p1, p0, Landroid/service/quicksettings/Tile;->mState:I

    #@2
    .line 111
    return-void
.end method

.method public updateTile()V
    .locals 3

    #@0
    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/Tile;->mService:Landroid/service/quicksettings/IQSService;

    #@2
    iget-object v2, p0, Landroid/service/quicksettings/Tile;->mToken:Landroid/os/IBinder;

    #@4
    invoke-interface {v1, p0, v2}, Landroid/service/quicksettings/IQSService;->updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 180
    :goto_0
    return-void

    #@8
    .line 183
    :catch_0
    move-exception v0

    #@9
    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Tile"

    #@c
    const-string/jumbo v2, "Couldn\'t update tile"

    #@f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 191
    const/4 v0, 0x1

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@8
    .line 192
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    #@a
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@d
    .line 196
    :goto_0
    iget v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 197
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    #@14
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@17
    .line 198
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    #@19
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@1c
    .line 189
    return-void

    #@1d
    .line 194
    :cond_0
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@21
    goto :goto_0
.end method
