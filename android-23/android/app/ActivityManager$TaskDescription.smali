.class public Landroid/app/ActivityManager$TaskDescription;
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
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$TaskDescription$1;
    }
.end annotation


# static fields
.field private static final ATTR_TASKDESCRIPTIONCOLOR:Ljava/lang/String; = "task_description_color"

.field private static final ATTR_TASKDESCRIPTIONICONFILENAME:Ljava/lang/String; = "task_description_icon_filename"

.field private static final ATTR_TASKDESCRIPTIONLABEL:Ljava/lang/String; = "task_description_label"

.field public static final ATTR_TASKDESCRIPTION_PREFIX:Ljava/lang/String; = "task_description_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColorPrimary:I

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconFilename:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 784
    new-instance v0, Landroid/app/ActivityManager$TaskDescription$1;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription$1;-><init>()V

    #@5
    .line 783
    sput-object v0, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 562
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 623
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, v1, v1, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    #@5
    .line 622
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;

    #@0
    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 630
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    #@7
    .line 631
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    #@9
    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    #@b
    .line 632
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    #@d
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    #@f
    .line 633
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    #@11
    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    #@13
    .line 629
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 637
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 636
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 616
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    #@5
    .line 615
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "colorPrimary"    # I
    .param p3, "iconFilename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 596
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    #@4
    .line 597
    iput-object p3, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    #@6
    .line 595
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 607
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    #@4
    .line 606
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "colorPrimary"    # I

    #@0
    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 585
    if-eqz p3, :cond_0

    #@5
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    #@8
    move-result v0

    #@9
    const/16 v1, 0xff

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 586
    new-instance v0, Ljava/lang/RuntimeException;

    #@f
    const-string/jumbo v1, "A TaskDescription\'s primary color should be opaque"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 589
    :cond_0
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    #@18
    .line 590
    iput-object p2, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    #@1a
    .line 591
    iput p3, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    #@1c
    .line 584
    return-void
.end method

.method public static loadTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "iconFilename"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 707
    if-eqz p0, :cond_0

    #@3
    .line 709
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 711
    :catch_0
    move-exception v0

    #@d
    .line 714
    :cond_0
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 750
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 689
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 690
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    #@6
    return-object v0

    #@7
    .line 692
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    #@9
    invoke-static {v0}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getIconFilename()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 697
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInMemoryIcon()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 702
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPrimaryColor()I
    .locals 1

    #@0
    .prologue
    .line 721
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    #@2
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    if-lez v0, :cond_1

    #@7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    :goto_0
    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    #@d
    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v0

    #@11
    if-lez v0, :cond_2

    #@13
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/graphics/Bitmap;

    #@1b
    :goto_1
    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    #@1d
    .line 779
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    #@23
    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v0

    #@27
    if-lez v0, :cond_0

    #@29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    :cond_0
    iput-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    #@2f
    .line 776
    return-void

    #@30
    :cond_1
    move-object v0, v1

    #@31
    .line 777
    goto :goto_0

    #@32
    :cond_2
    move-object v0, v1

    #@33
    .line 778
    goto :goto_1
.end method

.method public restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 739
    const-string/jumbo v0, "task_description_label"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 740
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    #@c
    .line 738
    :cond_0
    :goto_0
    return-void

    #@d
    .line 741
    :cond_1
    const-string/jumbo v0, "task_description_color"

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 742
    const/16 v0, 0x10

    #@18
    invoke-static {p2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@1b
    move-result-wide v0

    #@1c
    long-to-int v0, v0

    #@1d
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    #@20
    goto :goto_0

    #@21
    .line 743
    :cond_2
    const-string/jumbo v0, "task_description_icon_filename"

    #@24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 744
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    #@2d
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
    .line 726
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 727
    const-string/jumbo v0, "task_description_label"

    #@8
    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    #@a
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d
    .line 729
    :cond_0
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 730
    const-string/jumbo v0, "task_description_color"

    #@14
    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    #@16
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d
    .line 732
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 733
    const-string/jumbo v0, "task_description_icon_filename"

    #@24
    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    #@26
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29
    .line 725
    :cond_2
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 665
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    #@2
    .line 664
    return-void
.end method

.method public setIconFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "iconFilename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 674
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    #@2
    .line 675
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    #@5
    .line 673
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 645
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    #@2
    .line 644
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 2
    .param p1, "primaryColor"    # I

    #@0
    .prologue
    .line 654
    if-eqz p1, :cond_0

    #@2
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@5
    move-result v0

    #@6
    const/16 v1, 0xff

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 655
    new-instance v0, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v1, "A TaskDescription\'s primary color should be opaque"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 657
    :cond_0
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    #@15
    .line 652
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "TaskDescription Label: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " Icon: "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 796
    const-string/jumbo v1, " colorPrimary: "

    #@22
    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 796
    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    #@28
    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 755
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 756
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 761
    :goto_0
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    #@b
    if-nez v0, :cond_1

    #@d
    .line 762
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 767
    :goto_1
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 768
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    #@17
    if-nez v0, :cond_2

    #@19
    .line 769
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 754
    :goto_2
    return-void

    #@1d
    .line 758
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 759
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    #@22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    goto :goto_0

    #@26
    .line 764
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 765
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    #@2b
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e
    goto :goto_1

    #@2f
    .line 771
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 772
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@37
    goto :goto_2
.end method
