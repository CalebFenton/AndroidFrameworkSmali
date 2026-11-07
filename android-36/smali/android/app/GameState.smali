.class public final Landroid/app/GameState;
.super Ljava/lang/Object;
.source "GameState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/GameState$GameStateMode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/GameState;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MODE_CONTENT:I = 0x4

.field public static final whitelist MODE_GAMEPLAY_INTERRUPTIBLE:I = 0x2

.field public static final whitelist MODE_GAMEPLAY_UNINTERRUPTIBLE:I = 0x3

.field public static final whitelist MODE_NONE:I = 0x1

.field public static final whitelist MODE_UNKNOWN:I


# instance fields
.field private final blacklist mIsLoading:Z

.field private final blacklist mLabel:I

.field private final blacklist mMode:I

.field private final blacklist mQuality:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Landroid/app/GameState$1;

    invoke-direct {v0}, Landroid/app/GameState$1;-><init>()V

    sput-object v0, Landroid/app/GameState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/GameState;->mIsLoading:Z

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/GameState;->mMode:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/GameState;->mLabel:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/GameState;->mQuality:I

    .line 123
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/GameState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/GameState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(ZI)V
    .registers 4
    .param p1, "isLoading"    # Z
    .param p2, "mode"    # I

    .line 101
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/GameState;-><init>(ZIII)V

    .line 102
    return-void
.end method

.method public constructor whitelist <init>(ZIII)V
    .registers 5
    .param p1, "isLoading"    # Z
    .param p2, "mode"    # I
    .param p3, "label"    # I
    .param p4, "quality"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-boolean p1, p0, Landroid/app/GameState;->mIsLoading:Z

    .line 113
    iput p2, p0, Landroid/app/GameState;->mMode:I

    .line 114
    iput p3, p0, Landroid/app/GameState;->mLabel:I

    .line 115
    iput p4, p0, Landroid/app/GameState;->mQuality:I

    .line 116
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLabel()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/app/GameState;->mLabel:I

    return v0
.end method

.method public whitelist getMode()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/app/GameState;->mMode:I

    return v0
.end method

.method public whitelist getQuality()I
    .registers 2

    .line 152
    iget v0, p0, Landroid/app/GameState;->mQuality:I

    return v0
.end method

.method public whitelist isLoading()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Landroid/app/GameState;->mIsLoading:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 162
    iget-boolean v0, p0, Landroid/app/GameState;->mIsLoading:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 163
    iget v0, p0, Landroid/app/GameState;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Landroid/app/GameState;->mLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/app/GameState;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return-void
.end method
