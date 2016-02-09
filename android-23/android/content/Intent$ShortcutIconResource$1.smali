.class final Landroid/content/Intent$ShortcutIconResource$1;
.super Ljava/lang/Object;
.source "Intent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent$ShortcutIconResource;
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
        "Landroid/content/Intent$ShortcutIconResource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/Intent$ShortcutIconResource;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 785
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    #@2
    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    #@5
    .line 786
    .local v0, "icon":Landroid/content/Intent$ShortcutIconResource;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    #@b
    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    #@11
    .line 788
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 784
    invoke-virtual {p0, p1}, Landroid/content/Intent$ShortcutIconResource$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/Intent$ShortcutIconResource;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/content/Intent$ShortcutIconResource;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 792
    new-array v0, p1, [Landroid/content/Intent$ShortcutIconResource;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 791
    invoke-virtual {p0, p1}, Landroid/content/Intent$ShortcutIconResource$1;->newArray(I)[Landroid/content/Intent$ShortcutIconResource;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
