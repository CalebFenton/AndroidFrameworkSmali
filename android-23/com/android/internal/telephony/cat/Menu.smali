.class public Lcom/android/internal/telephony/cat/Menu;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/Menu$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/Menu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultItem:I

.field public helpAvailable:Z

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/Item;",
            ">;"
        }
    .end annotation
.end field

.field public itemsIconSelfExplanatory:Z

.field public presentationType:Lcom/android/internal/telephony/cat/PresentationType;

.field public softKeyPreferred:Z

.field public title:Ljava/lang/String;

.field public titleAttrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public titleIcon:Landroid/graphics/Bitmap;

.field public titleIconSelfExplanatory:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 98
    new-instance v0, Lcom/android/internal/telephony/cat/Menu$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Menu$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/cat/Menu;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    #@c
    .line 45
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    #@e
    .line 46
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->titleAttrs:Ljava/util/List;

    #@10
    .line 47
    iput v1, p0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    #@12
    .line 48
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    #@14
    .line 49
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    #@16
    .line 50
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    #@18
    .line 51
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    #@1a
    .line 52
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    #@1c
    .line 54
    sget-object v0, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    #@1e
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    #@20
    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x1

    #@3
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    iput-object v3, p0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    #@c
    .line 59
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/graphics/Bitmap;

    #@12
    iput-object v3, p0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    #@14
    .line 61
    new-instance v3, Ljava/util/ArrayList;

    #@16
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v3, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    #@1b
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v2

    #@1f
    .line 63
    .local v2, "size":I
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@22
    .line 64
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    #@28
    .line 65
    .local v1, "item":Lcom/android/internal/telephony/cat/Item;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    #@2a
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    .line 63
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 67
    .end local v1    # "item":Lcom/android/internal/telephony/cat/Item;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v3

    #@34
    iput v3, p0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    #@36
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v3

    #@3a
    if-ne v3, v4, :cond_1

    #@3c
    move v3, v4

    #@3d
    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    #@3f
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v3

    #@43
    if-ne v3, v4, :cond_2

    #@45
    move v3, v4

    #@46
    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    #@48
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v3

    #@4c
    if-ne v3, v4, :cond_3

    #@4e
    move v3, v4

    #@4f
    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    #@51
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@54
    move-result v3

    #@55
    if-ne v3, v4, :cond_4

    #@57
    :goto_4
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    #@59
    .line 72
    invoke-static {}, Lcom/android/internal/telephony/cat/PresentationType;->values()[Lcom/android/internal/telephony/cat/PresentationType;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v4

    #@61
    aget-object v3, v3, v4

    #@63
    iput-object v3, p0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    #@65
    .line 57
    return-void

    #@66
    :cond_1
    move v3, v5

    #@67
    .line 68
    goto :goto_1

    #@68
    :cond_2
    move v3, v5

    #@69
    .line 69
    goto :goto_2

    #@6a
    :cond_3
    move v3, v5

    #@6b
    .line 70
    goto :goto_3

    #@6c
    :cond_4
    move v4, v5

    #@6d
    .line 71
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/Menu;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/Menu;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 77
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 82
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 83
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    #@9
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@c
    .line 85
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    #@e
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@11
    move-result v1

    #@12
    .line 86
    .local v1, "size":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 87
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@18
    .line 88
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    #@1a
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/os/Parcelable;

    #@20
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@23
    .line 87
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 90
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    #@28
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 91
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    #@2d
    if-eqz v2, :cond_1

    #@2f
    move v2, v3

    #@30
    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 92
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    #@35
    if-eqz v2, :cond_2

    #@37
    move v2, v3

    #@38
    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 93
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    #@3d
    if-eqz v2, :cond_3

    #@3f
    move v2, v3

    #@40
    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 94
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    #@45
    if-eqz v2, :cond_4

    #@47
    :goto_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 95
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    #@4c
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/PresentationType;->ordinal()I

    #@4f
    move-result v2

    #@50
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 81
    return-void

    #@54
    :cond_1
    move v2, v4

    #@55
    .line 91
    goto :goto_1

    #@56
    :cond_2
    move v2, v4

    #@57
    .line 92
    goto :goto_2

    #@58
    :cond_3
    move v2, v4

    #@59
    .line 93
    goto :goto_3

    #@5a
    :cond_4
    move v3, v4

    #@5b
    .line 94
    goto :goto_4
.end method
