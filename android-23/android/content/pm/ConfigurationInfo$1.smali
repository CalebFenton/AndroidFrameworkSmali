.class final Landroid/content/pm/ConfigurationInfo$1;
.super Ljava/lang/Object;
.source "ConfigurationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ConfigurationInfo;
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
        "Landroid/content/pm/ConfigurationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ConfigurationInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 119
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/content/pm/ConfigurationInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/ConfigurationInfo;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 118
    invoke-virtual {p0, p1}, Landroid/content/pm/ConfigurationInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ConfigurationInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/ConfigurationInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 122
    new-array v0, p1, [Landroid/content/pm/ConfigurationInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/content/pm/ConfigurationInfo$1;->newArray(I)[Landroid/content/pm/ConfigurationInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
