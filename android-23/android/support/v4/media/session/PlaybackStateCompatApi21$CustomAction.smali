.class final Landroid/support/v4/media/session/PlaybackStateCompatApi21$CustomAction;
.super Ljava/lang/Object;
.source "PlaybackStateCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CustomAction"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAction(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "customActionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 81
    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    #@2
    .end local p0    # "customActionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p0, "customActionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 92
    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    #@2
    .end local p0    # "customActionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getIcon(Ljava/lang/Object;)I
    .locals 1
    .param p0, "customActionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 89
    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    #@2
    .end local p0    # "customActionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "customActionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 85
    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    #@2
    .end local p0    # "customActionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 98
    new-instance v0, Landroid/media/session/PlaybackState$CustomAction$Builder;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    #@5
    .line 99
    .local v0, "customActionObj":Landroid/media/session/PlaybackState$CustomAction$Builder;
    invoke-virtual {v0, p3}, Landroid/media/session/PlaybackState$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;

    #@8
    .line 100
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method
