.class public final Landroid/view/KeyboardShortcutGroup;
.super Ljava/lang/Object;
.source "KeyboardShortcutGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private blacklist mPackageName:Ljava/lang/CharSequence;

.field private greylist-max-o mSystemGroup:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 148
    new-instance v0, Landroid/view/KeyboardShortcutGroup$1;

    invoke-direct {v0}, Landroid/view/KeyboardShortcutGroup$1;-><init>()V

    sput-object v0, Landroid/view/KeyboardShortcutGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    .line 85
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    sget-object v1, Landroid/view/KeyboardShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iput-boolean v1, p0, Landroid/view/KeyboardShortcutGroup;->mSystemGroup:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mPackageName:Ljava/lang/CharSequence;

    .line 88
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/KeyboardShortcutGroup-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/KeyboardShortcutGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 56
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .registers 5
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/util/List;Z)V
    .registers 6
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p3, "isSystemGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 66
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    .line 69
    iput-boolean p3, p0, Landroid/view/KeyboardShortcutGroup;->mSystemGroup:Z

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "isSystemGroup"    # Z

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Z)V

    .line 80
    return-void
.end method


# virtual methods
.method public whitelist addItem(Landroid/view/KeyboardShortcutInfo;)V
    .registers 3
    .param p1, "item"    # Landroid/view/KeyboardShortcutInfo;

    .line 132
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/CharSequence;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist isSystemGroup()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Landroid/view/KeyboardShortcutGroup;->mSystemGroup:Z

    return v0
.end method

.method public blacklist setPackageName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .line 115
    iput-object p1, p0, Landroid/view/KeyboardShortcutGroup;->mPackageName:Ljava/lang/CharSequence;

    .line 116
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 142
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 144
    iget-boolean v0, p0, Landroid/view/KeyboardShortcutGroup;->mSystemGroup:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method
