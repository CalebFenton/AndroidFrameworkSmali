.class public Landroid/app/ActivityManager$TaskThumbnailInfo;
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
    name = "TaskThumbnailInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$TaskThumbnailInfo$1;
    }
.end annotation


# static fields
.field private static final ATTR_SCREEN_ORIENTATION:Ljava/lang/String; = "task_thumbnailinfo_screen_orientation"

.field private static final ATTR_TASK_HEIGHT:Ljava/lang/String; = "task_thumbnailinfo_task_height"

.field public static final ATTR_TASK_THUMBNAILINFO_PREFIX:Ljava/lang/String; = "task_thumbnailinfo_"

.field private static final ATTR_TASK_WIDTH:Ljava/lang/String; = "task_thumbnailinfo_task_width"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$TaskThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public screenOrientation:I

.field public taskHeight:I

.field public taskWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1921
    new-instance v0, Landroid/app/ActivityManager$TaskThumbnailInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityManager$TaskThumbnailInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1846
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1858
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    #@6
    .line 1860
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1858
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    #@6
    .line 1865
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskThumbnailInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@9
    .line 1864
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$TaskThumbnailInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$TaskThumbnailInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/app/ActivityManager$TaskThumbnailInfo;)V
    .locals 1
    .param p1, "o"    # Landroid/app/ActivityManager$TaskThumbnailInfo;

    #@0
    .prologue
    .line 1882
    iget v0, p1, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    #@2
    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    #@4
    .line 1883
    iget v0, p1, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    #@6
    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    #@8
    .line 1884
    iget v0, p1, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    #@a
    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    #@c
    .line 1881
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1906
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1916
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    #@6
    .line 1917
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    #@c
    .line 1918
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    #@12
    .line 1915
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1873
    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    #@3
    .line 1874
    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    #@5
    .line 1875
    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    #@7
    .line 1872
    return-void
.end method

.method public restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1896
    const-string/jumbo v0, "task_thumbnailinfo_task_width"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 1897
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    #@f
    .line 1895
    :cond_0
    :goto_0
    return-void

    #@10
    .line 1898
    :cond_1
    const-string/jumbo v0, "task_thumbnailinfo_task_height"

    #@13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 1899
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    #@1f
    goto :goto_0

    #@20
    .line 1900
    :cond_2
    const-string/jumbo v0, "task_thumbnailinfo_screen_orientation"

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 1901
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2c
    move-result v0

    #@2d
    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    #@2f
    goto :goto_0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1889
    const-string/jumbo v0, "task_thumbnailinfo_task_width"

    #@4
    iget v1, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d
    .line 1890
    const-string/jumbo v0, "task_thumbnailinfo_task_height"

    #@10
    iget v1, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    #@12
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@19
    .line 1891
    const-string/jumbo v0, "task_thumbnailinfo_screen_orientation"

    #@1c
    iget v1, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    #@1e
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 1888
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1910
    iget v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1911
    iget v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1912
    iget v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1909
    return-void
.end method
