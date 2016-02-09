.class final Landroid/content/res/ColorStateList$1;
.super Ljava/lang/Object;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ColorStateList;
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
        "Landroid/content/res/ColorStateList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 663
    .local v0, "N":I
    new-array v3, v0, [[I

    #@6
    .line 664
    .local v3, "stateSpecs":[[I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@9
    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@c
    move-result-object v4

    #@d
    aput-object v4, v3, v2

    #@f
    .line 664
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 667
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@15
    move-result-object v1

    #@16
    .line 668
    .local v1, "colors":[I
    new-instance v4, Landroid/content/res/ColorStateList;

    #@18
    invoke-direct {v4, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@1b
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 661
    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 657
    new-array v0, p1, [Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 656
    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList$1;->newArray(I)[Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
