.class public final Landroid/app/Notification$WearableExtender;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/Notification$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_CONTENT_ICON_GRAVITY:I = 0x800005

.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final DEFAULT_GRAVITY:I = 0x50

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE:I = 0x1

.field private static final FLAG_HINT_AVOID_BACKGROUND_CLIPPING:I = 0x10

.field private static final FLAG_HINT_HIDE_ICON:I = 0x2

.field private static final FLAG_HINT_SHOW_BACKGROUND_ONLY:I = 0x4

.field private static final FLAG_START_SCROLL_BOTTOM:I = 0x8

.field private static final KEY_ACTIONS:Ljava/lang/String; = "actions"

.field private static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field private static final KEY_CONTENT_ACTION_INDEX:Ljava/lang/String; = "contentActionIndex"

.field private static final KEY_CONTENT_ICON:Ljava/lang/String; = "contentIcon"

.field private static final KEY_CONTENT_ICON_GRAVITY:Ljava/lang/String; = "contentIconGravity"

.field private static final KEY_CUSTOM_CONTENT_HEIGHT:Ljava/lang/String; = "customContentHeight"

.field private static final KEY_CUSTOM_SIZE_PRESET:Ljava/lang/String; = "customSizePreset"

.field private static final KEY_DISPLAY_INTENT:Ljava/lang/String; = "displayIntent"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_GRAVITY:Ljava/lang/String; = "gravity"

.field private static final KEY_HINT_SCREEN_TIMEOUT:Ljava/lang/String; = "hintScreenTimeout"

.field private static final KEY_PAGES:Ljava/lang/String; = "pages"

.field public static final SCREEN_TIMEOUT_LONG:I = -0x1

.field public static final SCREEN_TIMEOUT_SHORT:I = 0x0

.field public static final SIZE_DEFAULT:I = 0x0

.field public static final SIZE_FULL_SCREEN:I = 0x5

.field public static final SIZE_LARGE:I = 0x4

.field public static final SIZE_MEDIUM:I = 0x3

.field public static final SIZE_SMALL:I = 0x2

.field public static final SIZE_XSMALL:I = 0x1

.field public static final UNSET_ACTION_INDEX:I = -0x1


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Landroid/graphics/Bitmap;

.field private mContentActionIndex:I

.field private mContentIcon:I

.field private mContentIconGravity:I

.field private mCustomContentHeight:I

.field private mCustomSizePreset:I

.field private mDisplayIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mGravity:I

.field private mHintScreenTimeout:I

.field private mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 4715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4698
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@a
    .line 4699
    const/4 v0, 0x1

    #@b
    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@d
    .line 4701
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@14
    .line 4704
    const v0, 0x800005

    #@17
    iput v0, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    #@19
    .line 4705
    const/4 v0, -0x1

    #@1a
    iput v0, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    #@1c
    .line 4706
    const/4 v0, 0x0

    #@1d
    iput v0, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    #@1f
    .line 4708
    const/16 v0, 0x50

    #@21
    iput v0, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    #@23
    .line 4715
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 9
    .param p1, "notif"    # Landroid/app/Notification;

    #@0
    .prologue
    const/16 v8, 0x50

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v5, -0x1

    #@5
    .line 4718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 4698
    new-instance v3, Ljava/util/ArrayList;

    #@a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v3, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@f
    .line 4699
    iput v7, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@11
    .line 4701
    new-instance v3, Ljava/util/ArrayList;

    #@13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v3, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@18
    .line 4704
    const v3, 0x800005

    #@1b
    iput v3, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    #@1d
    .line 4705
    iput v5, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    #@1f
    .line 4706
    iput v6, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    #@21
    .line 4708
    iput v8, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    #@23
    .line 4719
    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@25
    const-string/jumbo v4, "android.wearable.EXTENSIONS"

    #@28
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@2b
    move-result-object v2

    #@2c
    .line 4720
    .local v2, "wearableBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    #@2e
    .line 4721
    const-string/jumbo v3, "actions"

    #@31
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@34
    move-result-object v0

    #@35
    .line 4722
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    if-eqz v0, :cond_0

    #@37
    .line 4723
    iget-object v3, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@3c
    .line 4726
    :cond_0
    const-string/jumbo v3, "flags"

    #@3f
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@42
    move-result v3

    #@43
    iput v3, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@45
    .line 4727
    const-string/jumbo v3, "displayIntent"

    #@48
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@4b
    move-result-object v3

    #@4c
    check-cast v3, Landroid/app/PendingIntent;

    #@4e
    iput-object v3, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    #@50
    .line 4730
    const-string/jumbo v3, "pages"

    #@53
    .line 4729
    invoke-static {v2, v3}, Landroid/app/Notification;->-wrap0(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    #@56
    move-result-object v1

    #@57
    .line 4731
    .local v1, "pages":[Landroid/app/Notification;
    if-eqz v1, :cond_1

    #@59
    .line 4732
    iget-object v3, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@5b
    invoke-static {v3, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@5e
    .line 4735
    :cond_1
    const-string/jumbo v3, "background"

    #@61
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@64
    move-result-object v3

    #@65
    check-cast v3, Landroid/graphics/Bitmap;

    #@67
    iput-object v3, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    #@69
    .line 4736
    const-string/jumbo v3, "contentIcon"

    #@6c
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@6f
    move-result v3

    #@70
    iput v3, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    #@72
    .line 4737
    const-string/jumbo v3, "contentIconGravity"

    #@75
    .line 4738
    const v4, 0x800005

    #@78
    .line 4737
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@7b
    move-result v3

    #@7c
    iput v3, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    #@7e
    .line 4739
    const-string/jumbo v3, "contentActionIndex"

    #@81
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@84
    move-result v3

    #@85
    iput v3, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    #@87
    .line 4741
    const-string/jumbo v3, "customSizePreset"

    #@8a
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@8d
    move-result v3

    #@8e
    iput v3, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    #@90
    .line 4743
    const-string/jumbo v3, "customContentHeight"

    #@93
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@96
    move-result v3

    #@97
    iput v3, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    #@99
    .line 4744
    const-string/jumbo v3, "gravity"

    #@9c
    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@9f
    move-result v3

    #@a0
    iput v3, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    #@a2
    .line 4745
    const-string/jumbo v3, "hintScreenTimeout"

    #@a5
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@a8
    move-result v3

    #@a9
    iput v3, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    #@ab
    .line 4718
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .end local v1    # "pages":[Landroid/app/Notification;
    :cond_2
    return-void
.end method

.method private setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 5258
    if-eqz p2, :cond_0

    #@2
    .line 5259
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@7
    .line 5257
    :goto_0
    return-void

    #@8
    .line 5261
    :cond_0
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@a
    not-int v1, p1

    #@b
    and-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@e
    goto :goto_0
.end method


# virtual methods
.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    #@0
    .prologue
    .line 4832
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 4833
    return-object p0
.end method

.method public addActions(Ljava/util/List;)Landroid/app/Notification$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$Action;",
            ">;)",
            "Landroid/app/Notification$WearableExtender;"
        }
    .end annotation

    #@0
    .prologue
    .line 4849
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 4850
    return-object p0
.end method

.method public addPage(Landroid/app/Notification;)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "page"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 4924
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 4925
    return-object p0
.end method

.method public addPages(Ljava/util/List;)Landroid/app/Notification$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroid/app/Notification$WearableExtender;"
        }
    .end annotation

    #@0
    .prologue
    .line 4939
    .local p1, "pages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification;>;"
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 4940
    return-object p0
.end method

.method public clearActions()Landroid/app/Notification$WearableExtender;
    .locals 1

    #@0
    .prologue
    .line 4859
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 4860
    return-object p0
.end method

.method public clearPages()Landroid/app/Notification$WearableExtender;
    .locals 1

    #@0
    .prologue
    .line 4949
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 4950
    return-object p0
.end method

.method public clone()Landroid/app/Notification$WearableExtender;
    .locals 3

    #@0
    .prologue
    .line 4803
    new-instance v0, Landroid/app/Notification$WearableExtender;

    #@2
    invoke-direct {v0}, Landroid/app/Notification$WearableExtender;-><init>()V

    #@5
    .line 4804
    .local v0, "that":Landroid/app/Notification$WearableExtender;
    new-instance v1, Ljava/util/ArrayList;

    #@7
    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@9
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@c
    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@e
    .line 4805
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@10
    iput v1, v0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@12
    .line 4806
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    #@14
    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    #@16
    .line 4807
    new-instance v1, Ljava/util/ArrayList;

    #@18
    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@1a
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1d
    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@1f
    .line 4808
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    #@21
    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    #@23
    .line 4809
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    #@25
    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    #@27
    .line 4810
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    #@29
    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    #@2b
    .line 4811
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    #@2d
    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    #@2f
    .line 4812
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    #@31
    iput v1, v0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    #@33
    .line 4813
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    #@35
    iput v1, v0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    #@37
    .line 4814
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    #@39
    iput v1, v0, Landroid/app/Notification$WearableExtender;->mGravity:I

    #@3b
    .line 4815
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    #@3d
    iput v1, v0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    #@3f
    .line 4816
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 4802
    invoke-virtual {p0}, Landroid/app/Notification$WearableExtender;->clone()Landroid/app/Notification$WearableExtender;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    #@0
    .prologue
    .line 4756
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 4758
    .local v0, "wearableBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 4759
    const-string/jumbo v1, "actions"

    #@10
    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@15
    .line 4761
    :cond_0
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@17
    const/4 v2, 0x1

    #@18
    if-eq v1, v2, :cond_1

    #@1a
    .line 4762
    const-string/jumbo v1, "flags"

    #@1d
    iget v2, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@1f
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@22
    .line 4764
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 4765
    const-string/jumbo v1, "displayIntent"

    #@29
    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    #@2b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@2e
    .line 4767
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@33
    move-result v1

    #@34
    if-nez v1, :cond_3

    #@36
    .line 4768
    const-string/jumbo v2, "pages"

    #@39
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@3b
    .line 4769
    iget-object v3, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v3

    #@41
    new-array v3, v3, [Landroid/app/Notification;

    #@43
    .line 4768
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@46
    move-result-object v1

    #@47
    check-cast v1, [Landroid/os/Parcelable;

    #@49
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@4c
    .line 4771
    :cond_3
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    #@4e
    if-eqz v1, :cond_4

    #@50
    .line 4772
    const-string/jumbo v1, "background"

    #@53
    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    #@55
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@58
    .line 4774
    :cond_4
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    #@5a
    if-eqz v1, :cond_5

    #@5c
    .line 4775
    const-string/jumbo v1, "contentIcon"

    #@5f
    iget v2, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    #@61
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@64
    .line 4777
    :cond_5
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    #@66
    const v2, 0x800005

    #@69
    if-eq v1, v2, :cond_6

    #@6b
    .line 4778
    const-string/jumbo v1, "contentIconGravity"

    #@6e
    iget v2, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    #@70
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@73
    .line 4780
    :cond_6
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    #@75
    const/4 v2, -0x1

    #@76
    if-eq v1, v2, :cond_7

    #@78
    .line 4781
    const-string/jumbo v1, "contentActionIndex"

    #@7b
    .line 4782
    iget v2, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    #@7d
    .line 4781
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@80
    .line 4784
    :cond_7
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    #@82
    if-eqz v1, :cond_8

    #@84
    .line 4785
    const-string/jumbo v1, "customSizePreset"

    #@87
    iget v2, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    #@89
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8c
    .line 4787
    :cond_8
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    #@8e
    if-eqz v1, :cond_9

    #@90
    .line 4788
    const-string/jumbo v1, "customContentHeight"

    #@93
    iget v2, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    #@95
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@98
    .line 4790
    :cond_9
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    #@9a
    const/16 v2, 0x50

    #@9c
    if-eq v1, v2, :cond_a

    #@9e
    .line 4791
    const-string/jumbo v1, "gravity"

    #@a1
    iget v2, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    #@a3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a6
    .line 4793
    :cond_a
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    #@a8
    if-eqz v1, :cond_b

    #@aa
    .line 4794
    const-string/jumbo v1, "hintScreenTimeout"

    #@ad
    iget v2, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    #@af
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@b2
    .line 4797
    :cond_b
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    #@b5
    move-result-object v1

    #@b6
    const-string/jumbo v2, "android.wearable.EXTENSIONS"

    #@b9
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@bc
    .line 4798
    return-object p1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4867
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getBackground()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 4987
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getContentAction()I
    .locals 1

    #@0
    .prologue
    .line 5060
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    #@2
    return v0
.end method

.method public getContentIcon()I
    .locals 1

    #@0
    .prologue
    .line 5002
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    #@2
    return v0
.end method

.method public getContentIconGravity()I
    .locals 1

    #@0
    .prologue
    .line 5023
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    #@2
    return v0
.end method

.method public getContentIntentAvailableOffline()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5170
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getCustomContentHeight()I
    .locals 1

    #@0
    .prologue
    .line 5129
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    #@2
    return v0
.end method

.method public getCustomSizePreset()I
    .locals 1

    #@0
    .prologue
    .line 5107
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    #@2
    return v0
.end method

.method public getDisplayIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 4910
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 5081
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    #@2
    return v0
.end method

.method public getHintAvoidBackgroundClipping()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5232
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x10

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getHintHideIcon()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5189
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getHintScreenTimeout()I
    .locals 1

    #@0
    .prologue
    .line 5254
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    #@2
    return v0
.end method

.method public getHintShowBackgroundOnly()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5208
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4961
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getStartScrollBottom()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5148
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "background"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 4974
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    #@2
    .line 4975
    return-object p0
.end method

.method public setContentAction(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "actionIndex"    # I

    #@0
    .prologue
    .line 5041
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    #@2
    .line 5042
    return-object p0
.end method

.method public setContentIcon(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "icon"    # I

    #@0
    .prologue
    .line 4994
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    #@2
    .line 4995
    return-object p0
.end method

.method public setContentIconGravity(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "contentIconGravity"    # I

    #@0
    .prologue
    .line 5012
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    #@2
    .line 5013
    return-object p0
.end method

.method public setContentIntentAvailableOffline(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "contentIntentAvailableOffline"    # Z

    #@0
    .prologue
    .line 5159
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    #@4
    .line 5160
    return-object p0
.end method

.method public setCustomContentHeight(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "height"    # I

    #@0
    .prologue
    .line 5118
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    #@2
    .line 5119
    return-object p0
.end method

.method public setCustomSizePreset(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "sizePreset"    # I

    #@0
    .prologue
    .line 5094
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    #@2
    .line 5095
    return-object p0
.end method

.method public setDisplayIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 4901
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    #@2
    .line 4902
    return-object p0
.end method

.method public setGravity(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 5070
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    #@2
    .line 5071
    return-object p0
.end method

.method public setHintAvoidBackgroundClipping(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "hintAvoidBackgroundClipping"    # Z

    #@0
    .prologue
    .line 5220
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    #@5
    .line 5221
    return-object p0
.end method

.method public setHintHideIcon(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "hintHideIcon"    # Z

    #@0
    .prologue
    .line 5179
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    #@4
    .line 5180
    return-object p0
.end method

.method public setHintScreenTimeout(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 5243
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    #@2
    .line 5244
    return-object p0
.end method

.method public setHintShowBackgroundOnly(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "hintShowBackgroundOnly"    # Z

    #@0
    .prologue
    .line 5198
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    #@4
    .line 5199
    return-object p0
.end method

.method public setStartScrollBottom(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "startScrollBottom"    # Z

    #@0
    .prologue
    .line 5138
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    #@5
    .line 5139
    return-object p0
.end method
