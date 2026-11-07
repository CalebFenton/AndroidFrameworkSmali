.class public final Landroid/view/WindowRelayoutResult;
.super Ljava/lang/Object;
.source "WindowRelayoutResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/WindowRelayoutResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist activeControls:Landroid/view/InsetsSourceControl$Array;

.field public blacklist activityWindowInfo:Landroid/window/ActivityWindowInfo;

.field public final blacklist frames:Landroid/window/ClientWindowFrames;

.field public final blacklist insetsState:Landroid/view/InsetsState;

.field public final blacklist mergedConfiguration:Landroid/util/MergedConfiguration;

.field public final blacklist surfaceControl:Landroid/view/SurfaceControl;

.field public blacklist syncSeqId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 123
    new-instance v0, Landroid/view/WindowRelayoutResult$1;

    invoke-direct {v0}, Landroid/view/WindowRelayoutResult$1;-><init>()V

    sput-object v0, Landroid/view/WindowRelayoutResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 7

    .line 69
    new-instance v1, Landroid/window/ClientWindowFrames;

    invoke-direct {v1}, Landroid/window/ClientWindowFrames;-><init>()V

    new-instance v2, Landroid/util/MergedConfiguration;

    invoke-direct {v2}, Landroid/util/MergedConfiguration;-><init>()V

    new-instance v3, Landroid/view/SurfaceControl;

    invoke-direct {v3}, Landroid/view/SurfaceControl;-><init>()V

    new-instance v4, Landroid/view/InsetsState;

    invoke-direct {v4}, Landroid/view/InsetsState;-><init>()V

    new-instance v5, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v5}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowRelayoutResult;-><init>(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    .line 71
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    invoke-direct {p0}, Landroid/view/WindowRelayoutResult;-><init>()V

    .line 97
    invoke-virtual {p0, p1}, Landroid/view/WindowRelayoutResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 98
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/WindowRelayoutResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/WindowRelayoutResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    .registers 7
    .param p1, "frames"    # Landroid/window/ClientWindowFrames;
    .param p2, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p3, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p4, "insetsState"    # Landroid/view/InsetsState;
    .param p5, "activeControls"    # Landroid/view/InsetsSourceControl$Array;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ClientWindowFrames;

    iput-object v0, p0, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    .line 89
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MergedConfiguration;

    iput-object v0, p0, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    .line 90
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/view/WindowRelayoutResult;->surfaceControl:Landroid/view/SurfaceControl;

    .line 91
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    iput-object v0, p0, Landroid/view/WindowRelayoutResult;->insetsState:Landroid/view/InsetsState;

    .line 92
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceControl$Array;

    iput-object v0, p0, Landroid/view/WindowRelayoutResult;->activeControls:Landroid/view/InsetsSourceControl$Array;

    .line 93
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 102
    iget-object v0, p0, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    invoke-virtual {v0, p1}, Landroid/window/ClientWindowFrames;->readFromParcel(Landroid/os/Parcel;)V

    .line 103
    iget-object v0, p0, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 104
    iget-object v0, p0, Landroid/view/WindowRelayoutResult;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    .line 105
    iget-object v0, p0, Landroid/view/WindowRelayoutResult;->insetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)Landroid/util/SparseArray;

    .line 106
    iget-object v0, p0, Landroid/view/WindowRelayoutResult;->activeControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceControl$Array;->readFromParcel(Landroid/os/Parcel;)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    .line 108
    sget-object v0, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ActivityWindowInfo;

    iput-object v0, p0, Landroid/view/WindowRelayoutResult;->activityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 109
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    iget-object v0, p0, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    invoke-virtual {v0, p1, p2}, Landroid/window/ClientWindowFrames;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    iget-object v0, p0, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/util/MergedConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 115
    iget-object v0, p0, Landroid/view/WindowRelayoutResult;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    iget-object v0, p0, Landroid/view/WindowRelayoutResult;->insetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 117
    iget-object v0, p0, Landroid/view/WindowRelayoutResult;->activeControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsSourceControl$Array;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    iget v0, p0, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Landroid/view/WindowRelayoutResult;->activityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 120
    return-void
.end method
