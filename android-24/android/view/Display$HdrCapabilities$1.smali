.class final Landroid/view/Display$HdrCapabilities$1;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display$HdrCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/Display$HdrCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/Display$HdrCapabilities;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1211
    new-instance v0, Landroid/view/Display$HdrCapabilities;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/view/Display$HdrCapabilities;-><init>(Landroid/os/Parcel;Landroid/view/Display$HdrCapabilities;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1210
    invoke-virtual {p0, p1}, Landroid/view/Display$HdrCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/Display$HdrCapabilities;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/Display$HdrCapabilities;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1216
    new-array v0, p1, [Landroid/view/Display$HdrCapabilities;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1215
    invoke-virtual {p0, p1}, Landroid/view/Display$HdrCapabilities$1;->newArray(I)[Landroid/view/Display$HdrCapabilities;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
