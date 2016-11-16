.class public Landroid/view/AppTransitionAnimationSpec;
.super Ljava/lang/Object;
.source "AppTransitionAnimationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AppTransitionAnimationSpec$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final rect:Landroid/graphics/Rect;

.field public final taskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    new-instance v0, Landroid/view/AppTransitionAnimationSpec$1;

    #@2
    invoke-direct {v0}, Landroid/view/AppTransitionAnimationSpec$1;-><init>()V

    #@5
    .line 46
    sput-object v0, Landroid/view/AppTransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 16
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 22
    iput p1, p0, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    #@5
    .line 23
    iput-object p2, p0, Landroid/view/AppTransitionAnimationSpec;->bitmap:Landroid/graphics/Bitmap;

    #@7
    .line 24
    iput-object p3, p0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    #@9
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    #@a
    .line 29
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/graphics/Bitmap;

    #@10
    iput-object v0, p0, Landroid/view/AppTransitionAnimationSpec;->bitmap:Landroid/graphics/Bitmap;

    #@12
    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/graphics/Rect;

    #@18
    iput-object v0, p0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    #@1a
    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 35
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{taskId: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", bitmap: "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/view/AppTransitionAnimationSpec;->bitmap:Landroid/graphics/Bitmap;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", rect: "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, "}"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 40
    iget v0, p0, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 41
    iget-object v0, p0, Landroid/view/AppTransitionAnimationSpec;->bitmap:Landroid/graphics/Bitmap;

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@b
    .line 42
    iget-object v0, p0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@10
    .line 39
    return-void
.end method
