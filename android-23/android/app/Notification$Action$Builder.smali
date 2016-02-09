.class public final Landroid/app/Notification$Action$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mIntent:Landroid/app/PendingIntent;

.field private mRemoteInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1006
    const-string/jumbo v0, ""

    #@3
    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    #@6
    move-result-object v1

    #@7
    new-instance v4, Landroid/os/Bundle;

    #@9
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@c
    const/4 v5, 0x0

    #@d
    move-object v0, p0

    #@e
    move-object v2, p2

    #@f
    move-object v3, p3

    #@10
    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;)V

    #@13
    .line 1005
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Action;)V
    .locals 6
    .param p1, "action"    # Landroid/app/Notification$Action;

    #@0
    .prologue
    .line 1025
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@6
    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@8
    new-instance v4, Landroid/os/Bundle;

    #@a
    invoke-static {p1}, Landroid/app/Notification$Action;->-get0(Landroid/app/Notification$Action;)Landroid/os/Bundle;

    #@d
    move-result-object v0

    #@e
    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@11
    .line 1026
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    #@14
    move-result-object v5

    #@15
    move-object v0, p0

    #@16
    .line 1025
    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;)V

    #@19
    .line 1024
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1016
    new-instance v4, Landroid/os/Bundle;

    #@2
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@5
    const/4 v5, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move-object v2, p2

    #@9
    move-object v3, p3

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;)V

    #@d
    .line 1015
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/app/RemoteInput;

    #@0
    .prologue
    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1031
    iput-object p1, p0, Landroid/app/Notification$Action$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    #@5
    .line 1032
    iput-object p2, p0, Landroid/app/Notification$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    #@7
    .line 1033
    iput-object p3, p0, Landroid/app/Notification$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    #@9
    .line 1034
    iput-object p4, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    #@b
    .line 1035
    if-eqz p5, :cond_0

    #@d
    .line 1036
    new-instance v0, Ljava/util/ArrayList;

    #@f
    array-length v1, p5

    #@10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    iput-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@15
    .line 1037
    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@17
    invoke-static {v0, p5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@1a
    .line 1030
    :cond_0
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1049
    if-eqz p1, :cond_0

    #@2
    .line 1050
    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    #@4
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@7
    .line 1052
    :cond_0
    return-object p0
.end method

.method public addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;
    .locals 1
    .param p1, "remoteInput"    # Landroid/app/RemoteInput;

    #@0
    .prologue
    .line 1072
    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1073
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@b
    .line 1075
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 1076
    return-object p0
.end method

.method public build()Landroid/app/Notification$Action;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1094
    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1095
    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@7
    iget-object v1, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    new-array v1, v1, [Landroid/app/RemoteInput;

    #@f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, [Landroid/app/RemoteInput;

    #@15
    .line 1096
    :goto_0
    new-instance v0, Landroid/app/Notification$Action;

    #@17
    iget-object v1, p0, Landroid/app/Notification$Action$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    #@19
    iget-object v2, p0, Landroid/app/Notification$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    #@1b
    iget-object v3, p0, Landroid/app/Notification$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    #@1d
    iget-object v4, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    #@1f
    invoke-direct/range {v0 .. v6}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;Landroid/app/Notification$Action;)V

    #@22
    return-object v0

    #@23
    .line 1095
    :cond_0
    const/4 v5, 0x0

    #@24
    .local v5, "remoteInputs":[Landroid/app/RemoteInput;
    goto :goto_0
.end method

.method public extend(Landroid/app/Notification$Action$Extender;)Landroid/app/Notification$Action$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/app/Notification$Action$Extender;

    #@0
    .prologue
    .line 1084
    invoke-interface {p1, p0}, Landroid/app/Notification$Action$Extender;->extend(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action$Builder;

    #@3
    .line 1085
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 1061
    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method
