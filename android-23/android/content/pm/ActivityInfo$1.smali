.class final Landroid/content/pm/ActivityInfo$1;
.super Ljava/lang/Object;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ActivityInfo;
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
        "Landroid/content/pm/ActivityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 801
    new-instance v0, Landroid/content/pm/ActivityInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/ActivityInfo;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 800
    invoke-virtual {p0, p1}, Landroid/content/pm/ActivityInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ActivityInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 804
    new-array v0, p1, [Landroid/content/pm/ActivityInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 803
    invoke-virtual {p0, p1}, Landroid/content/pm/ActivityInfo$1;->newArray(I)[Landroid/content/pm/ActivityInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
