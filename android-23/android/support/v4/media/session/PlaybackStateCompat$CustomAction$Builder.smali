.class public final Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
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
    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 713
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 714
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    .line 715
    const-string/jumbo v1, "You must specify an action to build a CustomAction."

    #@e
    .line 714
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 717
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 718
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    .line 719
    const-string/jumbo v1, "You must specify a name to build a CustomAction."

    #@1d
    .line 718
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 721
    :cond_1
    if-nez p3, :cond_2

    #@23
    .line 722
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    .line 723
    const-string/jumbo v1, "You must specify an icon resource id to build a CustomAction."

    #@28
    .line 722
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 725
    :cond_2
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mAction:Ljava/lang/String;

    #@2e
    .line 726
    iput-object p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    #@30
    .line 727
    iput p3, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mIcon:I

    #@32
    .line 712
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .locals 6

    #@0
    .prologue
    .line 751
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    #@2
    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mAction:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    #@6
    iget v3, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mIcon:I

    #@8
    iget-object v4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    #@a
    const/4 v5, 0x0

    #@b
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)V

    #@e
    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 740
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    .line 741
    return-object p0
.end method
