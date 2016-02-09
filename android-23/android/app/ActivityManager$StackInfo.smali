.class public Landroid/app/ActivityManager$StackInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$StackInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bounds:Landroid/graphics/Rect;

.field public displayId:I

.field public stackId:I

.field public taskIds:[I

.field public taskNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1804
    new-instance v0, Landroid/app/ActivityManager$StackInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityManager$StackInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/ActivityManager$StackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1771
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1773
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@a
    .line 1815
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1773
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@a
    .line 1819
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$StackInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@d
    .line 1818
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$StackInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$StackInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1780
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1796
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    #@6
    .line 1797
    new-instance v0, Landroid/graphics/Rect;

    #@8
    .line 1798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v1

    #@c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v2

    #@10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v3

    #@14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v4

    #@18
    .line 1797
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@1b
    iput-object v0, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@1d
    .line 1799
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@23
    .line 1800
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    #@29
    .line 1801
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v0

    #@2d
    iput v0, p0, Landroid/app/ActivityManager$StackInfo;->displayId:I

    #@2f
    .line 1795
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1838
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$StackInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1823
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const/16 v2, 0x100

    #@4
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 1824
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    const-string/jumbo v2, "Stack id="

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    iget v2, p0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    .line 1825
    const-string/jumbo v2, " bounds="

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@1d
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 1826
    const-string/jumbo v2, " displayId="

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    iget v2, p0, Landroid/app/ActivityManager$StackInfo;->displayId:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    .line 1827
    const-string/jumbo v2, "\n"

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 1828
    new-instance v2, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, "  "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object p1

    #@49
    .line 1829
    const/4 v0, 0x0

    #@4a
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@4c
    array-length v2, v2

    #@4d
    if-ge v0, v2, :cond_0

    #@4f
    .line 1830
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    const-string/jumbo v2, "taskId="

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@5a
    aget v2, v2, v0

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    .line 1831
    const-string/jumbo v2, ": "

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    #@67
    aget-object v2, v2, v0

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    const-string/jumbo v2, "\n"

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    .line 1829
    add-int/lit8 v0, v0, 0x1

    #@74
    goto :goto_0

    #@75
    .line 1833
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1785
    iget v0, p0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1786
    iget-object v0, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@7
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1787
    iget-object v0, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@e
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1788
    iget-object v0, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@15
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1789
    iget-object v0, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@1c
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1790
    iget-object v0, p0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@26
    .line 1791
    iget-object v0, p0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@2b
    .line 1792
    iget v0, p0, Landroid/app/ActivityManager$StackInfo;->displayId:I

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 1784
    return-void
.end method
