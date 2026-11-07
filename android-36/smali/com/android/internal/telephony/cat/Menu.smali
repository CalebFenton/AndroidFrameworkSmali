.class public Lcom/android/internal/telephony/cat/Menu;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/Menu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist defaultItem:I

.field public blacklist helpAvailable:Z

.field public blacklist items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/Item;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist itemsIconSelfExplanatory:Z

.field public blacklist presentationType:Lcom/android/internal/telephony/cat/PresentationType;

.field public blacklist softKeyPreferred:Z

.field public blacklist title:Ljava/lang/String;

.field public greylist-max-r titleAttrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist titleIcon:Landroid/graphics/Bitmap;

.field public blacklist titleIconSelfExplanatory:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Lcom/android/internal/telephony/cat/Menu$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Menu$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/Menu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->titleAttrs:Ljava/util/List;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    .line 51
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    .line 55
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    .line 57
    sget-object v0, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    .line 62
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_24
    if-ge v2, v0, :cond_3a

    .line 67
    const-class v3, Lcom/android/internal/telephony/cat/Item;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cat/Item;

    .line 68
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 70
    :cond_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_49

    move v0, v2

    goto :goto_4a

    :cond_49
    move v0, v1

    :goto_4a
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_54

    move v0, v2

    goto :goto_55

    :cond_54
    move v0, v1

    :goto_55
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5f

    move v0, v2

    goto :goto_60

    :cond_5f
    move v0, v1

    :goto_60
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_69

    move v1, v2

    :cond_69
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    .line 75
    invoke-static {}, Lcom/android/internal/telephony/cat/PresentationType;->values()[Lcom/android/internal/telephony/cat/PresentationType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/Menu-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/Menu;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_24

    .line 91
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 93
    :cond_24
    iget p2, p0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object p0, p0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
