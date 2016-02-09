.class public final Landroid/hardware/input/KeyboardLayout;
.super Ljava/lang/Object;
.source "KeyboardLayout.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyboardLayout$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/hardware/input/KeyboardLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCollection:Ljava/lang/String;

.field private final mDescriptor:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private final mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    new-instance v0, Landroid/hardware/input/KeyboardLayout$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/input/KeyboardLayout$1;-><init>()V

    #@5
    .line 34
    sput-object v0, Landroid/hardware/input/KeyboardLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    #@9
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    #@f
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    #@15
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    #@1b
    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/input/KeyboardLayout;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/input/KeyboardLayout;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "collection"    # Ljava/lang/String;
    .param p4, "priority"    # I

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    #@5
    .line 46
    iput-object p2, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    #@7
    .line 47
    iput-object p3, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    #@9
    .line 48
    iput p4, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    #@b
    .line 44
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/hardware/input/KeyboardLayout;)I
    .locals 3
    .param p1, "another"    # Landroid/hardware/input/KeyboardLayout;

    #@0
    .prologue
    .line 103
    iget v1, p1, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    #@2
    iget v2, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    #@4
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    #@7
    move-result v0

    #@8
    .line 104
    .local v0, "result":I
    if-nez v0, :cond_0

    #@a
    .line 105
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    #@c
    iget-object v2, p1, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@11
    move-result v0

    #@12
    .line 107
    :cond_0
    if-nez v0, :cond_1

    #@14
    .line 108
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    #@16
    iget-object v2, p1, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    .line 110
    :cond_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 100
    check-cast p1, Landroid/hardware/input/KeyboardLayout;

    #@2
    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/input/KeyboardLayout;->compareTo(Landroid/hardware/input/KeyboardLayout;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 88
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCollection()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 116
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    #@a
    return-object v0

    #@b
    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, " - "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 94
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 95
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 96
    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 92
    return-void
.end method
