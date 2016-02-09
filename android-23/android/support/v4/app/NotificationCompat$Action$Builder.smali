.class public final Landroid/support/v4/app/NotificationCompat$Action$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mIntent:Landroid/app/PendingIntent;

.field private mRemoteInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1888
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    #@8
    .line 1887
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1901
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIcon:I

    #@5
    .line 1902
    invoke-static {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    #@b
    .line 1903
    iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    #@d
    .line 1904
    iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    #@f
    .line 1900
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Action;)V
    .locals 5
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$Action;

    #@0
    .prologue
    .line 1897
    iget v0, p1, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    #@2
    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    #@4
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    #@6
    new-instance v3, Landroid/os/Bundle;

    #@8
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Action;->-get0(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;

    #@b
    move-result-object v4

    #@c
    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@f
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    #@12
    .line 1896
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1915
    if-eqz p1, :cond_0

    #@2
    .line 1916
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    #@4
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@7
    .line 1918
    :cond_0
    return-object p0
.end method

.method public addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 1
    .param p1, "remoteInput"    # Landroid/support/v4/app/RemoteInput;

    #@0
    .prologue
    .line 1938
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1939
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@b
    .line 1941
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 1942
    return-object p0
.end method

.method public build()Landroid/support/v4/app/NotificationCompat$Action;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1960
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1961
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@7
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    new-array v1, v1, [Landroid/support/v4/app/RemoteInput;

    #@f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, [Landroid/support/v4/app/RemoteInput;

    #@15
    .line 1962
    :goto_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    #@17
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIcon:I

    #@19
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    #@1b
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    #@1d
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    #@1f
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;Landroid/support/v4/app/NotificationCompat$Action;)V

    #@22
    return-object v0

    #@23
    .line 1961
    :cond_0
    const/4 v5, 0x0

    #@24
    .local v5, "remoteInputs":[Landroid/support/v4/app/RemoteInput;
    goto :goto_0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Action$Extender;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/support/v4/app/NotificationCompat$Action$Extender;

    #@0
    .prologue
    .line 1950
    invoke-interface {p1, p0}, Landroid/support/v4/app/NotificationCompat$Action$Extender;->extend(Landroid/support/v4/app/NotificationCompat$Action$Builder;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    #@3
    .line 1951
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 1927
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method
