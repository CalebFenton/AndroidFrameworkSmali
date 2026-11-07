.class public final Landroid/hardware/biometrics/PromptVerticalListContentView;
.super Ljava/lang/Object;
.source "PromptVerticalListContentView.java"

# interfaces
.implements Landroid/hardware/biometrics/PromptContentViewParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/PromptVerticalListContentView;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist MAX_DESCRIPTION_CHARACTER_NUMBER:I = 0xe1

.field static final blacklist MAX_EACH_ITEM_CHARACTER_NUMBER:I = 0x280

.field static final blacklist MAX_ITEM_NUMBER:I = 0x14

.field private static final blacklist TAG:Ljava/lang/String; = "PromptVerticalListContentView"


# instance fields
.field private final blacklist mContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/PromptContentItemParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDescription:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 131
    new-instance v0, Landroid/hardware/biometrics/PromptVerticalListContentView$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/PromptVerticalListContentView$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/PromptVerticalListContentView;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-class v0, Landroid/hardware/biometrics/PromptContentItemParcelable;

    .line 69
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/biometrics/PromptContentItemParcelable;

    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mContentList:Ljava/util/List;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mDescription:Ljava/lang/String;

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/biometrics/PromptVerticalListContentView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/PromptVerticalListContentView;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/PromptContentItemParcelable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 62
    .local p1, "contentList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/PromptContentItemParcelable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mContentList:Ljava/util/List;

    .line 64
    iput-object p2, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mDescription:Ljava/lang/String;

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Ljava/lang/String;Landroid/hardware/biometrics/PromptVerticalListContentView-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/PromptVerticalListContentView;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static whitelist getMaxEachItemCharacterNumber()I
    .registers 1

    .line 85
    const/16 v0, 0x280

    return v0
.end method

.method public static whitelist getMaxItemCount()I
    .registers 1

    .line 78
    const/16 v0, 0x14

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getListItems()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/PromptContentItem;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mContentList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    iget-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mContentList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return-void
.end method
