.class public final Landroid/media/RemoteDisplayState;
.super Ljava/lang/Object;
.source "RemoteDisplayState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplayState$RemoteDisplayInfo;,
        Landroid/media/RemoteDisplayState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/RemoteDisplayState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISCOVERY_MODE_ACTIVE:I = 0x2

.field public static final DISCOVERY_MODE_NONE:I = 0x0

.field public static final DISCOVERY_MODE_PASSIVE:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "com.android.media.remotedisplay.RemoteDisplayProvider"


# instance fields
.field public final displays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/RemoteDisplayState$RemoteDisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 77
    new-instance v0, Landroid/media/RemoteDisplayState$1;

    #@2
    invoke-direct {v0}, Landroid/media/RemoteDisplayState$1;-><init>()V

    #@5
    .line 76
    sput-object v0, Landroid/media/RemoteDisplayState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    #@a
    .line 45
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    sget-object v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    #@b
    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isValid()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 54
    iget-object v2, p0, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 55
    return v3

    #@6
    .line 57
    :cond_0
    iget-object v2, p0, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    .line 58
    .local v0, "count":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@f
    .line 59
    iget-object v2, p0, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@17
    invoke-virtual {v2}, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->isValid()Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_1

    #@1d
    .line 60
    return v3

    #@1e
    .line 58
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 63
    :cond_2
    const/4 v2, 0x1

    #@22
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@5
    .line 72
    return-void
.end method
