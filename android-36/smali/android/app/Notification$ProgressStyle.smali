.class public Landroid/app/Notification$ProgressStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$ProgressStyle$Segment;,
        Landroid/app/Notification$ProgressStyle$Point;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_PROGRESS_MAX:I = 0x64

.field private static final blacklist KEY_ELEMENT_COLOR:Ljava/lang/String; = "colorInt"

.field private static final blacklist KEY_ELEMENT_ID:Ljava/lang/String; = "id"

.field private static final blacklist KEY_POINT_POSITION:Ljava/lang/String; = "position"

.field private static final blacklist KEY_SEGMENT_LENGTH:Ljava/lang/String; = "length"

.field private static final blacklist MAX_PROGRESS_POINT_LIMIT:I = 0x4

.field private static final blacklist MAX_PROGRESS_SEGMENT_LIMIT:I = 0xa


# instance fields
.field private blacklist mEndIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mIndeterminate:Z

.field private blacklist mIsStyledByProgress:Z

.field private blacklist mProgress:I

.field private blacklist mProgressPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProgressSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStartIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mTrackerIcon:Landroid/graphics/drawable/Icon;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 11423
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 11433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 11434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 11436
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    .line 11440
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    return-void
.end method

.method public static blacklist getProgressPointsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 11989
    .local p0, "progressPoints":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11990
    .local v0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz p0, :cond_49

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 11991
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 11992
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Point;

    .line 11993
    .local v2, "point":Landroid/app/Notification$ProgressStyle$Point;
    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v3

    if-gez v3, :cond_21

    .line 11994
    goto :goto_46

    .line 11997
    :cond_21
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11998
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "position"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11999
    const-string/jumbo v4, "id"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12000
    const-string v4, "colorInt"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12002
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11991
    .end local v2    # "point":Landroid/app/Notification$ProgressStyle$Point;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 12006
    .end local v1    # "i":I
    :cond_49
    return-object v0
.end method

.method public static blacklist getProgressPointsFromBundleList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation

    .line 12014
    .local p0, "pointBundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12016
    .local v0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$ProgressStyle$Point;>;"
    if-eqz p0, :cond_45

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    .line 12017
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 12018
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 12019
    .local v2, "pointBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "position"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 12020
    .local v3, "position":I
    if-gez v3, :cond_24

    .line 12021
    goto :goto_42

    .line 12023
    :cond_24
    const-string/jumbo v4, "id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 12024
    .local v4, "id":I
    const-string v5, "colorInt"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 12026
    .local v5, "color":I
    new-instance v6, Landroid/app/Notification$ProgressStyle$Point;

    invoke-direct {v6, v3}, Landroid/app/Notification$ProgressStyle$Point;-><init>(I)V

    invoke-virtual {v6, v4}, Landroid/app/Notification$ProgressStyle$Point;->setId(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$ProgressStyle$Point;->setColor(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v6

    .line 12027
    .local v6, "point":Landroid/app/Notification$ProgressStyle$Point;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12017
    .end local v2    # "pointBundle":Landroid/os/Bundle;
    .end local v3    # "position":I
    .end local v4    # "id":I
    .end local v5    # "color":I
    .end local v6    # "point":Landroid/app/Notification$ProgressStyle$Point;
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 12031
    .end local v1    # "i":I
    :cond_45
    return-object v0
.end method

.method public static blacklist getProgressSegmentsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 11938
    .local p0, "progressSegments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11939
    .local v0, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz p0, :cond_49

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 11940
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 11941
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Segment;

    .line 11942
    .local v2, "segment":Landroid/app/Notification$ProgressStyle$Segment;
    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v3

    if-gtz v3, :cond_21

    .line 11943
    goto :goto_46

    .line 11946
    :cond_21
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11947
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "length"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11948
    const-string/jumbo v4, "id"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11949
    const-string v4, "colorInt"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11951
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11940
    .end local v2    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 11955
    .end local v1    # "i":I
    :cond_49
    return-object v0
.end method

.method public static blacklist getProgressSegmentsFromBundleList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation

    .line 11963
    .local p0, "segmentBundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11964
    .local v0, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$ProgressStyle$Segment;>;"
    if-eqz p0, :cond_45

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    .line 11965
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 11966
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 11967
    .local v2, "segmentBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "length"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 11968
    .local v3, "length":I
    if-gtz v3, :cond_24

    .line 11969
    goto :goto_42

    .line 11972
    :cond_24
    const-string/jumbo v4, "id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 11973
    .local v4, "id":I
    const-string v5, "colorInt"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 11975
    .local v5, "color":I
    new-instance v6, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-direct {v6, v3}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    .line 11976
    invoke-virtual {v6, v4}, Landroid/app/Notification$ProgressStyle$Segment;->setId(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v6

    .line 11978
    .local v6, "segment":Landroid/app/Notification$ProgressStyle$Segment;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11965
    .end local v2    # "segmentBundle":Landroid/os/Bundle;
    .end local v3    # "length":I
    .end local v4    # "id":I
    .end local v5    # "color":I
    .end local v6    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 11982
    .end local v1    # "i":I
    :cond_45
    return-object v0
.end method

.method private blacklist sanitizePoint(Landroid/app/Notification$ProgressStyle$Point;II)Landroid/app/Notification$ProgressStyle$Point;
    .registers 6
    .param p1, "point"    # Landroid/app/Notification$ProgressStyle$Point;
    .param p2, "bg"    # I
    .param p3, "defaultColor"    # I

    .line 12154
    new-instance v0, Landroid/app/Notification$ProgressStyle$Point;

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/Notification$ProgressStyle$Point;-><init>(I)V

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$ProgressStyle$Point;->setId(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v0

    .line 12155
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getColor()I

    move-result v1

    invoke-static {v1, p2, p3}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$ProgressStyle$Point;->setColor(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v0

    .line 12154
    return-object v0
.end method

.method public static blacklist sanitizeProgressColor(III)I
    .registers 6
    .param p0, "color"    # I
    .param p1, "bg"    # I
    .param p2, "defaultColor"    # I

    .line 12170
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_8

    move v0, p2

    goto :goto_9

    :cond_8
    move v0, p0

    .line 12169
    :goto_9
    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-static {v0, p1, v1, v2}, Landroid/app/Notification$Builder;->-$$Nest$smensureColorContrast(IID)I

    move-result v0

    return v0
.end method

.method private blacklist sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;
    .registers 6
    .param p1, "segment"    # Landroid/app/Notification$ProgressStyle$Segment;
    .param p2, "bg"    # I
    .param p3, "defaultColor"    # I

    .line 12146
    new-instance v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    .line 12147
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$ProgressStyle$Segment;->setId(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    .line 12148
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v1

    invoke-static {v1, p2, p3}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    .line 12146
    return-object v0
.end method


# virtual methods
.method public blacklist addExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 11805
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 11806
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 11807
    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressSegmentsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 11806
    const-string v1, "android.progressSegments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11808
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 11809
    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressPointsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 11808
    const-string v1, "android.progressPoints"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11811
    const-string v0, "android.progress"

    iget v1, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11812
    const-string v0, "android.progressIndeterminate"

    iget-boolean v1, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11813
    const-string v0, "android.progressMax"

    invoke-virtual {p0}, Landroid/app/Notification$ProgressStyle;->getProgressMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11814
    const-string v0, "android.styledByProgress"

    iget-boolean v1, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11816
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.progressTrackerIcon"

    if-eqz v0, :cond_43

    .line 11817
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_46

    .line 11819
    :cond_43
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 11822
    :goto_46
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.progressStartIcon"

    if-eqz v0, :cond_52

    .line 11823
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_55

    .line 11825
    :cond_52
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 11828
    :goto_55
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.progressEndIcon"

    if-eqz v0, :cond_61

    .line 11829
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_64

    .line 11831
    :cond_61
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 11833
    :goto_64
    return-void
.end method

.method public whitelist addProgressPoint(Landroid/app/Notification$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle;
    .registers 5
    .param p1, "point"    # Landroid/app/Notification$ProgressStyle$Point;

    .line 11579
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    if-nez v0, :cond_b

    .line 11580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 11582
    :cond_b
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v0

    const-string v1, "Notification"

    if-lez v0, :cond_27

    .line 11583
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11585
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_2c

    .line 11586
    const-string v0, "Progress points limit is reached. First4 points will be rendered."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 11591
    :cond_27
    const-string v0, "Dropped the point. The position is a negative or zero integer."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11594
    :cond_2c
    :goto_2c
    return-object p0
.end method

.method public whitelist addProgressSegment(Landroid/app/Notification$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle;
    .registers 4
    .param p1, "segment"    # Landroid/app/Notification$ProgressStyle$Segment;

    .line 11522
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    if-nez v0, :cond_b

    .line 11523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 11525
    :cond_b
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v0

    if-lez v0, :cond_17

    .line 11526
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 11528
    :cond_17
    const-string v0, "Notification"

    const-string v1, "Dropped the segment. The length is not a positive integer."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11531
    :goto_1e
    return-object p0
.end method

.method public blacklist areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 8
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 11454
    const/4 v0, 0x1

    if-eqz p1, :cond_8d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto/16 :goto_8d

    .line 11458
    :cond_f
    move-object v1, p1

    check-cast v1, Landroid/app/Notification$ProgressStyle;

    .line 11463
    .local v1, "progressStyle":Landroid/app/Notification$ProgressStyle;
    iget-boolean v2, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v1, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 11464
    return v0

    .line 11466
    :cond_25
    const/4 v2, 0x0

    .line 11467
    .local v2, "nonIndeterminateCheckResult":Z
    iget-boolean v3, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    const/4 v4, 0x0

    if-nez v3, :cond_72

    .line 11468
    iget v3, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, v1, Landroid/app/Notification$ProgressStyle;->mProgress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-boolean v3, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    .line 11469
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v5, v1, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    iget-object v5, v1, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 11470
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    iget-object v5, v1, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 11471
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    iget-object v5, v1, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    .line 11472
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    goto :goto_70

    :cond_6e
    move v3, v4

    goto :goto_71

    :cond_70
    :goto_70
    move v3, v0

    :goto_71
    move v2, v3

    .line 11475
    :cond_72
    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    iget-object v5, v1, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    iget-object v5, v1, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    .line 11476
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    if-eqz v2, :cond_89

    goto :goto_8b

    :cond_89
    move v0, v4

    goto :goto_8c

    :cond_8b
    :goto_8b
    nop

    .line 11475
    :goto_8c
    return v0

    .line 11455
    .end local v1    # "progressStyle":Landroid/app/Notification$ProgressStyle;
    .end local v2    # "nonIndeterminateCheckResult":Z
    :cond_8d
    :goto_8d
    return v0
.end method

.method public blacklist createProgressModel(II)Lcom/android/internal/widget/NotificationProgressModel;
    .registers 12
    .param p1, "defaultProgressColor"    # I
    .param p2, "backgroundColor"    # I

    .line 12040
    iget-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 12042
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 12043
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-static {v0}, Landroid/app/Notification$ProgressStyle$Segment;->-$$Nest$fgetmColor(Landroid/app/Notification$ProgressStyle$Segment;)I

    move-result v0

    .local v0, "indeterminateColor":I
    goto :goto_1b

    .line 12045
    .end local v0    # "indeterminateColor":I
    :cond_1a
    move v0, p1

    .line 12048
    .restart local v0    # "indeterminateColor":I
    :goto_1b
    new-instance v1, Lcom/android/internal/widget/NotificationProgressModel;

    .line 12049
    invoke-static {v0, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/NotificationProgressModel;-><init>(I)V

    .line 12051
    .end local v0    # "indeterminateColor":I
    .local v1, "model":Lcom/android/internal/widget/NotificationProgressModel;
    goto/16 :goto_12b

    .line 12053
    .end local v1    # "model":Lcom/android/internal/widget/NotificationProgressModel;
    :cond_26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 12054
    .local v3, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    const/4 v0, 0x0

    .line 12055
    .local v0, "totalLength":I
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v0

    .end local v0    # "totalLength":I
    .local v4, "totalLength":I
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/Notification$ProgressStyle$Segment;

    .line 12056
    .local v5, "segment":Landroid/app/Notification$ProgressStyle$Segment;
    invoke-virtual {v5}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v6

    .line 12057
    .local v6, "length":I
    if-gtz v6, :cond_48

    goto :goto_34

    .line 12060
    :cond_48
    :try_start_48
    invoke-static {v4, v6}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    move v4, v0

    .line 12061
    invoke-direct {p0, v5, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/lang/ArithmeticException; {:try_start_48 .. :try_end_54} :catch_56

    .line 12067
    nop

    .line 12068
    .end local v5    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    .end local v6    # "length":I
    goto :goto_34

    .line 12063
    .restart local v5    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    .restart local v6    # "length":I
    :catch_56
    move-exception v0

    .line 12064
    .local v0, "e":Ljava/lang/ArithmeticException;
    const/16 v4, 0x64

    .line 12065
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 12066
    nop

    .line 12071
    .end local v0    # "e":Ljava/lang/ArithmeticException;
    .end local v5    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    .end local v6    # "length":I
    :cond_5d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 12072
    const/16 v4, 0x64

    .line 12073
    new-instance v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-direct {v0, v4}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    invoke-direct {p0, v0, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_b6

    .line 12075
    :cond_73
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_b5

    .line 12078
    const/4 v0, 0x1

    .line 12079
    .local v0, "allSameColor":Z
    invoke-interface {v3}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v2

    .line 12081
    .local v2, "firstSegmentColor":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_87
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_9e

    .line 12082
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v6}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v6

    if-eq v6, v2, :cond_9b

    .line 12083
    const/4 v0, 0x0

    .line 12084
    goto :goto_9e

    .line 12081
    :cond_9b
    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    .line 12089
    .end local v5    # "i":I
    :cond_9e
    :goto_9e
    new-instance v5, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-direct {v5, v4}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    .line 12092
    .local v5, "singleSegment":Landroid/app/Notification$ProgressStyle$Segment;
    if-eqz v0, :cond_a7

    move v6, v2

    goto :goto_a8

    .line 12093
    :cond_a7
    move v6, v1

    .line 12092
    :goto_a8
    invoke-virtual {v5, v6}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    .line 12095
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 12096
    invoke-direct {p0, v5, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12102
    .end local v0    # "allSameColor":Z
    .end local v2    # "firstSegmentColor":I
    .end local v5    # "singleSegment":Landroid/app/Notification$ProgressStyle$Segment;
    :cond_b5
    move v0, v4

    .end local v4    # "totalLength":I
    .local v0, "totalLength":I
    :goto_b6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12103
    .local v4, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c1
    :goto_c1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$ProgressStyle$Point;

    .line 12104
    .local v5, "point":Landroid/app/Notification$ProgressStyle$Point;
    invoke-virtual {v5}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v6

    .line 12107
    .local v6, "position":I
    if-lez v6, :cond_c1

    if-lt v6, v0, :cond_d6

    goto :goto_c1

    .line 12108
    :cond_d6
    invoke-direct {p0, v5, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizePoint(Landroid/app/Notification$ProgressStyle$Point;II)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12109
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_e5

    .line 12110
    goto :goto_e6

    .line 12112
    .end local v5    # "point":Landroid/app/Notification$ProgressStyle$Point;
    .end local v6    # "position":I
    :cond_e5
    goto :goto_c1

    .line 12117
    :cond_e6
    :goto_e6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-gt v2, v5, :cond_f0

    .line 12118
    const/4 v2, 0x0

    move v7, v2

    .local v2, "segmentsFallbackColor":I
    goto :goto_11c

    .line 12121
    .end local v2    # "segmentsFallbackColor":I
    :cond_f0
    const/4 v2, 0x1

    .line 12122
    .local v2, "allSameColor":Z
    invoke-interface {v3}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v5}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v5

    .line 12123
    .local v5, "firstSegmentColor":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_fc
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_113

    .line 12124
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v7}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v7

    if-eq v7, v5, :cond_110

    .line 12125
    const/4 v2, 0x0

    .line 12126
    goto :goto_113

    .line 12123
    :cond_110
    add-int/lit8 v6, v6, 0x1

    goto :goto_fc

    .line 12131
    .end local v6    # "i":I
    :cond_113
    :goto_113
    if-eqz v2, :cond_117

    move v6, v1

    goto :goto_11b

    .line 12132
    :cond_117
    invoke-static {v1, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result v6

    :goto_11b
    move v7, v6

    .line 12136
    .end local v2    # "allSameColor":Z
    .end local v5    # "firstSegmentColor":I
    .local v7, "segmentsFallbackColor":I
    :goto_11c
    new-instance v2, Lcom/android/internal/widget/NotificationProgressModel;

    iget v5, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    int-to-long v5, v5

    .line 12137
    invoke-static {v5, v6, v1, v0}, Ljava/lang/Math;->clamp(JII)I

    move-result v5

    iget-boolean v6, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/NotificationProgressModel;-><init>(Ljava/util/List;Ljava/util/List;IZI)V

    move-object v1, v2

    .line 12140
    .end local v0    # "totalLength":I
    .end local v3    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    .end local v7    # "segmentsFallbackColor":I
    .restart local v1    # "model":Lcom/android/internal/widget/NotificationProgressModel;
    :goto_12b
    return-object v1
.end method

.method public blacklist displayCustomViewInline()Z
    .registers 2

    .line 11861
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getProgress()I
    .registers 2

    .line 11602
    iget v0, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    return v0
.end method

.method public whitelist getProgressEndIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 11744
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getProgressMax()I
    .registers 10

    .line 11622
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 11623
    .local v0, "progressSegment":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    const/16 v1, 0x64

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_3a

    .line 11626
    :cond_d
    const/4 v2, 0x0

    .line 11627
    .local v2, "progressMax":I
    const/4 v3, 0x0

    .line 11628
    .local v3, "validSegmentCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_36

    .line 11629
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v5}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v5

    .line 11630
    .local v5, "segmentLength":I
    if-lez v5, :cond_33

    .line 11632
    :try_start_22
    invoke-static {v2, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v6
    :try_end_26
    .catch Ljava/lang/ArithmeticException; {:try_start_22 .. :try_end_26} :catch_2a

    .line 11633
    .end local v2    # "progressMax":I
    .local v6, "progressMax":I
    add-int/lit8 v3, v3, 0x1

    .line 11638
    move v2, v6

    goto :goto_33

    .line 11634
    .end local v6    # "progressMax":I
    .restart local v2    # "progressMax":I
    :catch_2a
    move-exception v6

    .line 11635
    .local v6, "e":Ljava/lang/ArithmeticException;
    const-string v7, "Notification"

    const-string v8, "Notification.ProgressStyle segment total overflowed."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11637
    return v1

    .line 11628
    .end local v5    # "segmentLength":I
    .end local v6    # "e":Ljava/lang/ArithmeticException;
    :cond_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 11642
    .end local v4    # "i":I
    :cond_36
    if-nez v3, :cond_39

    .line 11643
    return v1

    .line 11646
    :cond_39
    return v2

    .line 11624
    .end local v2    # "progressMax":I
    .end local v3    # "validSegmentCount":I
    :cond_3a
    :goto_3a
    return v1
.end method

.method public whitelist getProgressPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation

    .line 11542
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getProgressSegments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation

    .line 11491
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getProgressStartIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 11726
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getProgressTrackerIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 11706
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist isProgressIndeterminate()Z
    .registers 2

    .line 11656
    iget-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    return v0
.end method

.method public whitelist isStyledByProgress()Z
    .registers 2

    .line 11681
    iget-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    return v0
.end method

.method public blacklist makeContentView()Landroid/widget/RemoteViews;
    .registers 4

    .line 11868
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 11869
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11870
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11871
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11873
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$ProgressStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public blacklist makeExpandedContentView()Landroid/widget/RemoteViews;
    .registers 9

    .line 11892
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    .line 11893
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11894
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11895
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11896
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11899
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetProgressLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$ProgressStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 11903
    .local v1, "contentView":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v5, 0x1020439

    if-eqz v2, :cond_3b

    .line 11904
    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11905
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    goto :goto_3e

    .line 11907
    :cond_3b
    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11910
    :goto_3e
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    const v5, 0x1020438

    if-eqz v2, :cond_4e

    .line 11911
    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11912
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    goto :goto_51

    .line 11914
    :cond_4e
    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11917
    :goto_51
    const v2, 0x102000d

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11919
    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3, v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetColors(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v3

    .line 11920
    .local v3, "backgroundColor":I
    iget-object v4, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4, v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetPrimaryAccentColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v4

    .line 11921
    .local v4, "defaultProgressColor":I
    invoke-virtual {p0, v4, v3}, Landroid/app/Notification$ProgressStyle;->createProgressModel(II)Lcom/android/internal/widget/NotificationProgressModel;

    move-result-object v5

    .line 11923
    .local v5, "model":Lcom/android/internal/widget/NotificationProgressModel;
    nop

    .line 11924
    invoke-virtual {v5}, Lcom/android/internal/widget/NotificationProgressModel;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 11923
    const-string/jumbo v7, "setProgressModel"

    invoke-virtual {v1, v2, v7, v6}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 11926
    const-string/jumbo v6, "setProgressTrackerIcon"

    iget-object v7, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v2, v6, v7}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 11930
    return-object v1
.end method

.method public blacklist makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 4

    .line 11880
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 11881
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11882
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11883
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11885
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetHeadsUpBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$ProgressStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public blacklist purgeResources()V
    .registers 2

    .line 11762
    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 11763
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_c

    .line 11764
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 11766
    :cond_c
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_15

    .line 11767
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 11769
    :cond_15
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1e

    .line 11770
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 11772
    :cond_1e
    return-void
.end method

.method public blacklist reduceImageSizes(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 11779
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 11781
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 11783
    .local v0, "resources":Landroid/content/res/Resources;
    nop

    .line 11784
    const v1, 0x10502d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 11785
    .local v1, "progressIconSize":I
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_18

    .line 11786
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 11788
    :cond_18
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_21

    .line 11789
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 11791
    :cond_21
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_38

    .line 11792
    const v2, 0x10502e1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 11794
    .local v2, "progressTrackerWidth":I
    const v3, 0x10502e0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 11796
    .local v3, "progressTrackerHeight":I
    iget-object v4, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 11798
    .end local v2    # "progressTrackerWidth":I
    .end local v3    # "progressTrackerHeight":I
    :cond_38
    return-void
.end method

.method protected blacklist restoreFromExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 11840
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 11841
    const-class v0, Landroid/os/Bundle;

    .line 11842
    const-string v1, "android.progressSegments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 11841
    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressSegmentsFromBundleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 11843
    const-string v0, "android.progress"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    .line 11844
    const-string v0, "android.progressIndeterminate"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    .line 11845
    const-string v0, "android.styledByProgress"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    .line 11846
    const-string v0, "android.progressTrackerIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    .line 11847
    const-string v0, "android.progressStartIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    .line 11848
    const-string v0, "android.progressEndIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    .line 11849
    const-class v0, Landroid/os/Bundle;

    .line 11850
    const-string v1, "android.progressPoints"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 11849
    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressPointsFromBundleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 11851
    return-void
.end method

.method public whitelist setProgress(I)Landroid/app/Notification$ProgressStyle;
    .registers 2
    .param p1, "progress"    # I

    .line 11613
    iput p1, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    .line 11614
    return-object p0
.end method

.method public whitelist setProgressEndIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$ProgressStyle;
    .registers 2
    .param p1, "endIcon"    # Landroid/graphics/drawable/Icon;

    .line 11753
    iput-object p1, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    .line 11754
    return-object p0
.end method

.method public whitelist setProgressIndeterminate(Z)Landroid/app/Notification$ProgressStyle;
    .registers 2
    .param p1, "indeterminate"    # Z

    .line 11672
    iput-boolean p1, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    .line 11673
    return-object p0
.end method

.method public whitelist setProgressPoints(Ljava/util/List;)Landroid/app/Notification$ProgressStyle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;)",
            "Landroid/app/Notification$ProgressStyle;"
        }
    .end annotation

    .line 11554
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    if-nez v0, :cond_b

    .line 11555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 11557
    :cond_b
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11559
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$ProgressStyle$Point;

    .line 11560
    .local v1, "point":Landroid/app/Notification$ProgressStyle$Point;
    invoke-virtual {p0, v1}, Landroid/app/Notification$ProgressStyle;->addProgressPoint(Landroid/app/Notification$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle;

    .line 11561
    .end local v1    # "point":Landroid/app/Notification$ProgressStyle$Point;
    goto :goto_14

    .line 11562
    :cond_24
    return-object p0
.end method

.method public whitelist setProgressSegments(Ljava/util/List;)Landroid/app/Notification$ProgressStyle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;)",
            "Landroid/app/Notification$ProgressStyle;"
        }
    .end annotation

    .line 11503
    .local p1, "progressSegments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    if-nez v0, :cond_b

    .line 11504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 11506
    :cond_b
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11507
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$ProgressStyle$Segment;

    .line 11508
    .local v1, "segment":Landroid/app/Notification$ProgressStyle$Segment;
    invoke-virtual {p0, v1}, Landroid/app/Notification$ProgressStyle;->addProgressSegment(Landroid/app/Notification$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle;

    .line 11509
    .end local v1    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    goto :goto_14

    .line 11510
    :cond_24
    return-object p0
.end method

.method public whitelist setProgressStartIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$ProgressStyle;
    .registers 2
    .param p1, "startIcon"    # Landroid/graphics/drawable/Icon;

    .line 11735
    iput-object p1, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    .line 11736
    return-object p0
.end method

.method public whitelist setProgressTrackerIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$ProgressStyle;
    .registers 2
    .param p1, "trackerIcon"    # Landroid/graphics/drawable/Icon;

    .line 11717
    iput-object p1, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    .line 11718
    return-object p0
.end method

.method public whitelist setStyledByProgress(Z)Landroid/app/Notification$ProgressStyle;
    .registers 2
    .param p1, "enabled"    # Z

    .line 11696
    iput-boolean p1, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    .line 11697
    return-object p0
.end method
