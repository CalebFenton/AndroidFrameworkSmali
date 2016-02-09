.class public final Landroid/media/session/PlaybackState$CustomAction$Builder;
.super Ljava/lang/Object;
.source "PlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/PlaybackState$CustomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I

    #@0
    .prologue
    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 709
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 710
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    .line 711
    const-string/jumbo v1, "You must specify an action to build a CustomAction."

    #@e
    .line 710
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 713
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 714
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    .line 715
    const-string/jumbo v1, "You must specify a name to build a CustomAction."

    #@1d
    .line 714
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 717
    :cond_1
    if-nez p3, :cond_2

    #@23
    .line 718
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    .line 719
    const-string/jumbo v1, "You must specify an icon resource id to build a CustomAction."

    #@28
    .line 718
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 721
    :cond_2
    iput-object p1, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mAction:Ljava/lang/String;

    #@2e
    .line 722
    iput-object p2, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    #@30
    .line 723
    iput p3, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mIcon:I

    #@32
    .line 708
    return-void
.end method


# virtual methods
.method public build()Landroid/media/session/PlaybackState$CustomAction;
    .locals 6

    #@0
    .prologue
    .line 745
    new-instance v0, Landroid/media/session/PlaybackState$CustomAction;

    #@2
    iget-object v1, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mAction:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    #@6
    iget v3, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mIcon:I

    #@8
    iget-object v4, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    #@a
    const/4 v5, 0x0

    #@b
    invoke-direct/range {v0 .. v5}, Landroid/media/session/PlaybackState$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/media/session/PlaybackState$CustomAction;)V

    #@e
    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 735
    iput-object p1, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    .line 736
    return-object p0
.end method
