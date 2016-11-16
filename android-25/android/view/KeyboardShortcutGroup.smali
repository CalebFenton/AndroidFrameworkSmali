.class public final Landroid/view/KeyboardShortcutGroup;
.super Ljava/lang/Object;
.source "KeyboardShortcutGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyboardShortcutGroup$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLabel:Ljava/lang/CharSequence;

.field private mSystemGroup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 125
    new-instance v0, Landroid/view/KeyboardShortcutGroup$1;

    #@2
    invoke-direct {v0}, Landroid/view/KeyboardShortcutGroup$1;-><init>()V

    #@5
    .line 124
    sput-object v0, Landroid/view/KeyboardShortcutGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v1, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    #@b
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    #@11
    .line 80
    iget-object v1, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    #@13
    sget-object v2, Landroid/view/KeyboardShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    #@18
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v1

    #@1c
    if-ne v1, v0, :cond_0

    #@1e
    :goto_0
    iput-boolean v0, p0, Landroid/view/KeyboardShortcutGroup;->mSystemGroup:Z

    #@20
    .line 77
    return-void

    #@21
    .line 81
    :cond_0
    const/4 v0, 0x0

    #@22
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/KeyboardShortcutGroup;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/KeyboardShortcutGroup;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    #@7
    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 42
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    #@5
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/util/Collection;

    #@d
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@10
    iput-object v1, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    #@12
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;Z)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p3, "isSystemGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 61
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput-object p1, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    #@5
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/util/Collection;

    #@d
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@10
    iput-object v1, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    #@12
    .line 65
    iput-boolean p3, p0, Landroid/view/KeyboardShortcutGroup;->mSystemGroup:Z

    #@14
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "isSystemGroup"    # Z

    #@0
    .prologue
    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0, p2}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Z)V

    #@7
    .line 73
    return-void
.end method


# virtual methods
.method public addItem(Landroid/view/KeyboardShortcutInfo;)V
    .locals 1
    .param p1, "item"    # Landroid/view/KeyboardShortcutInfo;

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 108
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 114
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public isSystemGroup()Z
    .locals 1

    #@0
    .prologue
    .line 100
    iget-boolean v0, p0, Landroid/view/KeyboardShortcutGroup;->mSystemGroup:Z

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@5
    .line 120
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a
    .line 121
    iget-boolean v0, p0, Landroid/view/KeyboardShortcutGroup;->mSystemGroup:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 118
    return-void

    #@13
    .line 121
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method
